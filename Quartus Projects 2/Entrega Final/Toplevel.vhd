library ieee;
use ieee.std_logic_1164.all;


entity Toplevel is
  generic   (
    larguraDados     : natural :=  32;
    larguraAddress   : natural :=  32;
    simulacao        : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    -- Input ports
    CLOCK_50      : in std_logic;
    FPGA_RESET_N  : in std_logic;
    KEY           : in std_logic_vector(3 downto 0);
    SW            : in std_logic_vector(9 downto 0);

    -- Output ports
	 --OUTS          : out std_logic_vector(larguraAddress-1 downto 0);
	 --DEBUG         : out std_logic_vector(1 downto 0);
    LEDR          : out std_logic_vector(9 downto 0);
    HEX0          : out std_logic_vector(6 downto 0);
    HEX1          : out std_logic_vector(6 downto 0);
    HEX2          : out std_logic_vector(6 downto 0);
    HEX3          : out std_logic_vector(6 downto 0);
    HEX4          : out std_logic_vector(6 downto 0);
    HEX5          : out std_logic_vector(6 downto 0)
  );
end entity;


architecture mips of Toplevel is


  signal pc_som       : std_logic_vector(larguraAddress-1 downto 0);
  signal som_mux      : std_logic_vector(larguraAddress-1 downto 0);
  signal gsom_mux     : std_logic_vector(larguraAddress-1 downto 0);
  signal des_gsom     : std_logic_vector(larguraAddress-1 downto 0);
  signal muxpc_muxj   : std_logic_vector(larguraAddress-1 downto 0);
  signal inst         : std_logic_vector(larguraAddress-1 downto 0);
  signal estens_deslo : std_logic_vector(larguraAddress-1 downto 0);
  signal ram_mux      : std_logic_vector(larguraAddress-1 downto 0);
  signal mux_bgrw     : std_logic_vector(larguraAddress-1 downto 0);
  signal muxj_pc      : std_logic_vector(larguraAddress-1 downto 0);
  signal bgr_ulaA     : std_logic_vector(larguraDados-1 downto 0);
  signal mux_ulaB     : std_logic_vector(larguraDados-1 downto 0);
  signal brg_muxORram : std_logic_vector(larguraDados-1 downto 0);
  signal ula_ramORmux : std_logic_vector(larguraDados-1 downto 0);
  signal muxd_out     : std_logic_vector(larguraDados-1 downto 0);
  signal extJUMP_muxj : std_logic_vector(27 downto 0);
  signal ctrl         : std_logic_vector(10 downto 0);
  signal mux_bgr3     : std_logic_vector(4 downto 0);
  signal deco_muxu    : std_logic_vector(2 downto 0);
  signal decf_muxu    : std_logic_vector(2 downto 0);
  signal ulactrl      : std_logic_vector(2 downto 0);
  signal CLK          : std_logic;
  
  alias RsAddr        : std_logic_vector(4 downto 0) is inst(25 downto 21);
  alias RtAddr        : std_logic_vector(4 downto 0) is inst(20 downto 16);
  alias RdAddr        : std_logic_vector(4 downto 0) is inst(15 downto 11);
  alias opcode        : std_logic_vector(5 downto 0) is inst(31 downto 26);
  alias funct         : std_logic_vector(5 downto 0) is inst(5 downto 0);
  alias addrORimed    : std_logic_vector(15 downto 0) is inst(15 downto 0);
  alias jumpaddr      : std_logic_vector(25 downto 0) is inst(25 downto 0);
  
  alias ram_we     : std_logic        is ctrl(0         );
  alias ram_re     : std_logic        is ctrl(1         );
  alias beq_flag   : std_logic        is ctrl(2         );
  alias ram_mux_sig: std_logic_vector is ctrl(4 downto 3);
  alias tipor      : std_logic        is ctrl(5         );
  alias ula_mux    : std_logic        is ctrl(6         );
  alias rd_wr      : std_logic        is ctrl(7         );
  alias ext_sina   : std_logic        is ctrl(8         );
  alias mux_addr   : std_logic        is ctrl(9         );
  alias mux_jump   : std_logic        is ctrl(10        );
  
  signal flag_z       : std_logic;
  
begin

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
            CLK <= CLOCK_50;
			else generate
            detectorSub0: work.edgeDetector(bordaSubida)
               port map(   clk      => CLOCK_50,
                           entrada  => (not KEY(0)),
                           saida    => CLK
                        );
end generate;


-- O port map completo do Somador constante:
SOMC:entity work.somadorGenerico         generic map (larguraDados => larguraDados)
        port map (   entradaA      => pc_som,
                     entradaB      => x"00000004",
                     saida         => som_mux
                  );
                  
-- O port map completo do Program Counter:
PC:  entity work.registradorGenerico     generic map (larguraDados => larguraDados)
        port map (   DIN           => muxj_pc,
                     DOUT          => pc_som,
                     ENABLE        => '1',
                     CLK           => CLK,
                     RST           => '0'
                  );
                  
-- O port map completo do Banco de Registradores:   
BRG: entity work.bancoRegistradores      generic map (larguraDados => larguraDados)
        port map (   clk           => CLK,
                     enderecoA     => RsAddr,
                     enderecoB     => RtAddr,
                     enderecoC     => mux_bgr3,
                     dadoEscritaC  => mux_bgrw,
                     escreveC      => rd_wr,
                     saidaA        => bgr_ulaA,
                     saidaB        => brg_muxORram
                  );   

-- O port map completo da ULA:      
ULA: entity work.ULA
        port map (   entradaA      => bgr_ulaA,
                     entradaB      => mux_ulaB,
                     saida         => ula_ramORmux,
                     seletor       => ulactrl(1 downto 0),
                     inverteB      => ulactrl(2),
                     flagZero      => flag_z
                  );   

-- O port map completo da ROM do MIPS:               
ROM: entity work.ROM                     generic map (dataWidth => larguraDados, addrWidth => larguraAddress, memoryAddrWidth => 6)
        port map (   Endereco      => pc_som,
                     Dado          => inst,
                     clk           => CLK
                  );

-- O port map completo do Mux do Program Counter:                  
MUXP:entity work.muxGenerico2x1          generic map (larguraDados => larguraDados)
        port map(    entradaA_MUX  => som_mux,
                     entradaB_MUX  => gsom_mux,
                     seletor_MUX   => beq_flag and flag_z,
                     saida_MUX     => muxpc_muxj
                  );

-- O port map completo do Somador 32bits:
SOMX:entity work.somadorGenerico         generic map (larguraDados => larguraDados)
        port map(    entradaA      => som_mux,
                     entradaB      => des_gsom,
                     saida         => gsom_mux
                  );
                  
-- O port map completo do Deslocador que vem depois do Extensor:
DESL:entity work.deslocadorSinalGenerico generic map (larguraDados => larguraDados, deslocamento => 2)
        port map (   DATA_IN       => estens_deslo,
                     DATA_OUT      => des_gsom
                  );

-- O port map completo do Extensor:            
SIGE:entity work.estensorSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
        port map (   Signal_IN     => addrORimed,
                     Seletor       => ext_sina,
                     Signal_OUT    => estens_deslo
                  );

-- O port map completo do Decoder:
DEC: entity work.Decoder
        port map (   OPCODE        => opcode,
                     FUNCT         => funct,
                     OUTPUT        => ctrl
                  );

-- O port map completo da RAM do MIPS:                  
RAM: entity work.RAMMIPS                 generic map (dataWidth => larguraDados, addrWidth => larguraDados, memoryAddrWidth => 6)
        port map (   clk           => CLK,
                     Endereco      => ula_ramORmux,
                     Dado_in       => brg_muxORram,
                     Dado_out      => ram_mux,
                     we            => ram_we,
                     re            => ram_re
                  );

-- O port map completo do Mux dos endereços do Banco de registradores:                  
MUXR:entity work.muxGenerico2x1          generic map (larguraDados => 5)
        port map(    entradaA_MUX  => RtAddr,
                     entradaB_MUX  => RdAddr,
                     seletor_MUX   => mux_addr,
                     saida_MUX     => mux_bgr3
                  );

-- O port map completo do Mux que decide a entrada B da ULA:                  
MUXB:entity work.muxGenerico2x1          generic map (larguraDados => larguraDados)
        port map(    entradaA_MUX  => brg_muxORram,
                     entradaB_MUX  => estens_deslo,
                     seletor_MUX   => ula_mux,
                     saida_MUX     => mux_ulaB
                  );

-- O port map completo do Mux que decide se vai ser escrito em Rd a saida da ULA ou da RAM:               
MUXM:entity work.muxGenerico4x1          generic map (larguraDados => larguraDados)
        port map(    entradaA      => ula_ramORmux,
                     entradaB      => ram_mux,
							entradaC      => 32x"00",
							entradaD      => addrORimed & 16x"00",
                     seletor       => ram_mux_sig,
                     saida         => mux_bgrw
                  );
                  
-- O port map completo do Mux que decide o Jump ou fluxo de dados normal para o PC:                
MUXJ:entity work.muxGenerico2x1          generic map (larguraDados => larguraDados)
        port map(    entradaA_MUX  => muxpc_muxj,
                     entradaB_MUX  => som_mux(31 downto 28) & extJUMP_muxj,
                     seletor_MUX   => mux_jump,
                     saida_MUX     => muxj_pc
                  );
                  
-- O port map completo do Deslocador do Jump:
DESJ:entity work.deslocadorSinalGenerico generic map (larguraDados => 28, deslocamento => 2)
        port map (   DATA_IN       => "00" & jumpaddr,
                     DATA_OUT      => extJUMP_muxj
                  );
                  
-- O port map completo do Mux que decide o controle da ULA:                
MUXU:entity work.muxGenerico2x1          generic map (larguraDados => 3)
        port map(    entradaA_MUX  => deco_muxu,
                     entradaB_MUX  => decf_muxu,
                     seletor_MUX   => tipor,
                     saida_MUX     => ulactrl
                  );
                  
-- O port map completo do Decoder do Opcode:                   
DECO:entity work.DecoderOpcode
        port map(    OPCODE        => opcode,
                     OUTPUT        => deco_muxu
                  );
                  
-- O port map completo do Decoder do Funct:                
DECF:entity work.DecoderFunct
        port map(    FUNCT         => funct,
                     OUTPUT        => decf_muxu
                  );
                  
-- O port map completo do Mux   dos Displays:                
MUXD:entity work.muxGenerico2x1          generic map (larguraDados => larguraDados)
        port map(    entradaA_MUX  => pc_som,
                     entradaB_MUX  => ula_ramORmux,
                     seletor_MUX   => SW(0),
                     saida_MUX     => muxd_out
                  );
                  
-- O port map completo do Display 7a:
L7Ga:entity work.logic7                  generic map (IN_WIDTH => 4, OUT_WIDTH => 7)
         port map(   dataIN        => muxd_out(3 downto 0), 
                     displayOUT    => HEX0, 
                     clk           => CLK
                  );
                  
-- O port map completo do Display 7b:
L7Gb:entity work.logic7                  generic map (IN_WIDTH => 4, OUT_WIDTH => 7)
         port map(   dataIN        => muxd_out(7 downto 4), 
                     displayOUT    => HEX1, 
                     clk           => CLK
                  );
                  
-- O port map completo do Display 7c:
L7Gc:entity work.logic7                  generic map (IN_WIDTH => 4, OUT_WIDTH => 7)
         port map(   dataIN        => muxd_out(11 downto 8), 
                     displayOUT    => HEX2, 
                     clk           => CLK
                  );
                  
-- O port map completo do Display 7d:
L7Gd:entity work.logic7                  generic map (IN_WIDTH => 4, OUT_WIDTH => 7)
         port map(   dataIN        => muxd_out(15 downto 12), 
                     displayOUT    => HEX3, 
                     clk           => CLK
                  );
                  
-- O port map completo do Display 7e:
L7Ge:entity work.logic7                  generic map (IN_WIDTH => 4, OUT_WIDTH => 7)
         port map(   dataIN        => muxd_out(19 downto 16), 
                     displayOUT    => HEX4, 
                     clk           => CLK
                  );
                  
-- O port map completo do Display 7f:
L7Gf:entity work.logic7                  generic map (IN_WIDTH => 4, OUT_WIDTH => 7)
         port map(   dataIN        => muxd_out(23 downto 20), 
                     displayOUT    => HEX5, 
                     clk           => CLK
                  );

LEDR(7 downto 0) <= muxd_out(31 downto 24);
--OUTS  <= mux_bgrw;
--DEBUG <= ram_mux_sig;
end architecture;