library ieee;
use ieee.std_logic_1164.all;


entity Aula15 is
  generic   (
    larguraDados     : natural :=  32;
    larguraAddress   : natural :=  32;
    simulacao        : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    -- Input ports
    CLOCK_50   :  in   std_logic;

    -- Output ports
    opcode_out :  out  std_logic_vector(5 downto 0);
    funct_out  :  out  std_logic_vector(5 downto 0);
    entradaBGRW:  out  std_logic_vector(larguraDados-1 downto 0);
    ULA_A      :  out  std_logic_vector(larguraDados-1 downto 0);
    ULA_B      :  out  std_logic_vector(larguraDados-1 downto 0);
    saida2BGR  :  out  std_logic_vector(larguraDados-1 downto 0);
	 PC_OUT      :  out  std_logic_vector(larguraDados-1 downto 0);
    ULA_out    :  out  std_logic_vector(larguraDados-1 downto 0)
  );
end entity;


architecture mips of Aula15 is


  signal pc_som       : std_logic_vector(larguraAddress-1 downto 0);
  signal som_mux      : std_logic_vector(larguraAddress-1 downto 0);
  signal gsom_mux     : std_logic_vector(larguraAddress-1 downto 0);
  signal des_gsom     : std_logic_vector(larguraAddress-1 downto 0);
  signal mux_pc       : std_logic_vector(larguraAddress-1 downto 0);
  signal inst         : std_logic_vector(larguraAddress-1 downto 0);
  signal estens_deslo : std_logic_vector(larguraAddress-1 downto 0);
  signal ram_mux      : std_logic_vector(larguraAddress-1 downto 0);
  signal mux_bgrw     : std_logic_vector(larguraAddress-1 downto 0);
  signal bgr_ulaA     : std_logic_vector(larguraDados-1 downto 0);
  signal mux_ulaB     : std_logic_vector(larguraDados-1 downto 0);
  signal brg_muxORram : std_logic_vector(larguraDados-1 downto 0);
  signal ula_ramORmux : std_logic_vector(larguraDados-1 downto 0);
  signal ctrl         : std_logic_vector(9 downto 0);
  signal mux_bgr3     : std_logic_vector(4 downto 0);
  
  alias RsAddr        : std_logic_vector(4 downto 0) is inst(25 downto 21);
  alias RtAddr        : std_logic_vector(4 downto 0) is inst(20 downto 16);
  alias RdAddr        : std_logic_vector(4 downto 0) is inst(15 downto 11);
  alias opcode        : std_logic_vector(5 downto 0) is inst(31 downto 26);
  alias funct         : std_logic_vector(5 downto 0) is inst(5 downto 0);
  alias addrORimed     : std_logic_vector(15 downto 0) is inst(15 downto 0);
  
  signal flag_z       : std_logic;
  
begin

-- O port map completo do Somador constante:
SOMC:entity work.somadorGenerico         generic map (larguraDados => larguraDados)
        port map (   entradaA      => pc_som,
                     entradaB      => x"00000004",
                     saida         => som_mux
                  );
						
-- O port map completo do Program Counter:
PC:  entity work.registradorGenerico     generic map (larguraDados => larguraDados)
        port map (   DIN           => mux_pc,
                     DOUT          => pc_som,
                     ENABLE        => '1',
                     CLK           => CLOCK_50,
                     RST           => '0'
                  );
						
-- O port map completo do Banco de Registradores:	
BRG: entity work.bancoRegistradores      generic map (larguraDados => larguraDados)
        port map (   clk           => CLOCK_50,
                     enderecoA     => RsAddr,
                     enderecoB     => RtAddr,
                     enderecoC     => mux_bgr3,
                     dadoEscritaC  => mux_bgrw,
                     escreveC      => ctrl(8),
                     saidaA        => bgr_ulaA,
                     saidaB        => brg_muxORram
                  );	

-- O port map completo da ULA:		
ULA: entity work.ULA                     generic map (larguraDados => larguraDados)
        port map (   entradaA      => bgr_ulaA,
                     entradaB      => mux_ulaB,
                     saida         => ula_ramORmux,
                     seletor       => ctrl(6 downto 4),
                     flagZero      => flag_z
                  );	
						
ROM: entity work.ROM                     generic map (dataWidth => larguraDados, addrWidth => larguraAddress, memoryAddrWidth => 6)
        port map (   Endereco      => pc_som,
                     Dado          => inst,
                     clk           => CLOCK_50
                  );
						
MUXP:entity work.muxGenerico2x1          generic map (larguraDados => larguraDados)
        port map(    entradaA_MUX  => som_mux,
                     entradaB_MUX  => gsom_mux,
                     seletor_MUX   => ctrl(2) and flag_z,
                     saida_MUX     => mux_pc
                  );

SOMX:entity work.somadorGenerico         generic map (larguraDados => larguraDados)
        port map(    entradaA      => som_mux,
                     entradaB      => des_gsom,
                     saida         => gsom_mux
                  );
						

DESL:entity work.deslocadorSinalGenerico generic map (larguraDados => larguraDados, deslocamento => 2)
        port map (   DATA_IN       => estens_deslo,
                     DATA_OUT      => des_gsom
                  );
						
SIGE:entity work.estensorSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
        port map (   Signal_IN     => addrORimed,
                     Signal_OUT    => estens_deslo
                  );
						
DEC: entity work.Decoder
        port map (   OPCODE        => opcode,
                     FUNCT         => funct,
                     OUTPUT        => ctrl
                  );
							
RAM: entity work.RAMMIPS                 generic map (dataWidth => larguraDados, addrWidth => larguraDados, memoryAddrWidth => 6)
        port map (   clk           => CLOCK_50,
                     Endereco      => ula_ramORmux,
                     Dado_in       => brg_muxORram,
                     Dado_out      => ram_mux,
                     we            => ctrl(0),
                     re            => ctrl(1)
                  );
						
MUXR:entity work.muxGenerico2x1          generic map (larguraDados => 5)
        port map(    entradaA_MUX  => RtAddr,
                     entradaB_MUX  => RdAddr,
                     seletor_MUX   => ctrl(9),
                     saida_MUX     => mux_bgr3
                  );
						
MUXU:entity work.muxGenerico2x1          generic map (larguraDados => larguraDados)
        port map(    entradaA_MUX  => brg_muxORram,
                     entradaB_MUX  => estens_deslo,
                     seletor_MUX   => ctrl(7),
                     saida_MUX     => mux_ulaB
                  );
						
MUXM:entity work.muxGenerico2x1          generic map (larguraDados => larguraDados)
        port map(    entradaA_MUX  => ula_ramORmux,
                     entradaB_MUX  => ram_mux,
                     seletor_MUX   => ctrl(3),
                     saida_MUX     => mux_bgrw
                  );

opcode_out <= opcode;
funct_out  <= funct;
ULA_out    <= ula_ramORmux;
entradaBGRW<= mux_bgrw;
ULA_A      <= bgr_ulaA;
ULA_B      <= mux_ulaB;
saida2BGR  <= brg_muxORram;
PC_OUT     <= pc_som;
										 
end architecture;