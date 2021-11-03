library ieee;
use ieee.std_logic_1164.all;


entity Aula14 is
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
    debug      :  out  std_logic_vector(larguraDados-1 downto 0);
    debug2     :  out  std_logic_vector(larguraDados-1 downto 0);
    debug3     :  out  std_logic_vector(larguraDados-1 downto 0);
    debug4     :  out  std_logic_vector(4 downto 0);
    ULA_out    :  out  std_logic_vector(larguraDados-1 downto 0)
  );
end entity;


architecture mips of Aula14 is


  signal pc_som  : std_logic_vector(larguraAddress-1 downto 0);
  signal som_mux : std_logic_vector(larguraAddress-1 downto 0);
  signal gsom_mux: std_logic_vector(larguraAddress-1 downto 0);
  signal des_gsom: std_logic_vector(larguraAddress-1 downto 0);
  signal mux_pc  : std_logic_vector(larguraAddress-1 downto 0);
  signal inst    : std_logic_vector(larguraAddress-1 downto 0);
  signal est_des : std_logic_vector(larguraAddress-1 downto 0);
  signal ram_brg : std_logic_vector(larguraAddress-1 downto 0);
  signal reg_ulaA: std_logic_vector(larguraDados-1 downto 0);
  signal reg_ram : std_logic_vector(larguraDados-1 downto 0);
  signal ula_ram : std_logic_vector(larguraDados-1 downto 0);
  signal ctrl    : std_logic_vector(6 downto 0);
  
  alias RsAddr   : std_logic_vector(4 downto 0) is inst(25 downto 21);
  alias RtAddr   : std_logic_vector(4 downto 0) is inst(20 downto 16);
  alias RdAddr   : std_logic_vector(4 downto 0) is inst(15 downto 11);
  alias opcode   : std_logic_vector(5 downto 0) is inst(31 downto 26);
  alias addr     : std_logic_vector(15 downto 0) is inst(15 downto 0);
  
  signal flag_z  : std_logic;
  
begin

-- O port map completo do Somador constante:
SOMC:entity work.somadorGenerico         generic map (larguraDados => larguraDados)
        port map (   entradaA    => pc_som,
                     entradaB    => x"00000004",
                     saida       => som_mux
                  );
						
-- O port map completo do Program Counter:
PC:  entity work.registradorGenerico     generic map (larguraDados => larguraDados)
        port map (   DIN         => mux_pc,
                     DOUT        => pc_som,
                     ENABLE      => '1',
                     CLK         => CLOCK_50,
                     RST         => '0'
                  );
						
-- O port map completo do Banco de Registradores:	
BRG: entity work.bancoRegistradores      generic map (larguraDados => larguraDados)
        port map (   clk         => CLOCK_50,
                     enderecoA   => RsAddr,
                     enderecoB   => RtAddr,
                     enderecoC   => RtAddr,
                     dadoEscritaC=> ram_brg,
                     escreveC    => ctrl(0),
                     saidaA      => reg_ulaA,
                     saidaB      => reg_ram
                  );	

-- O port map completo da ULA:		
ULA: entity work.ULA                     generic map (larguraDados => larguraDados)
        port map (   entradaA    => reg_ulaA,
                     entradaB    => est_des,
                     saida       => ula_ram,
                     seletor     => ctrl(3 downto 1),
                     flagZero    => flag_z
                  );	
						
ROM: entity work.ROM                     generic map (dataWidth => larguraDados, addrWidth => larguraAddress, memoryAddrWidth => 6)
        port map (   Endereco    => pc_som,
                     Dado        => inst,
                     clk         => CLOCK_50
                  );
						
MUXP:entity work.muxGenerico2x1          generic map (larguraDados => larguraDados)
        port map(    entradaA_MUX=> som_mux,
                     entradaB_MUX=> gsom_mux,
                     seletor_MUX => ctrl(6) and flag_z,
                     saida_MUX   => mux_pc
                  );

SOMX:entity work.somadorGenerico         generic map (larguraDados => larguraDados)
        port map(    entradaA    => som_mux,
                     entradaB    => des_gsom,
                     saida       => gsom_mux
                  );
						

DESL:entity work.deslocadorSinalGenerico generic map (larguraDados => larguraDados, deslocamento => 2)
        port map (   DATA_IN     => est_des,
                     DATA_OUT    => des_gsom
                  );
						
SIGE:entity work.estensorSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
        port map (   Signal_IN   => addr,
                     Signal_OUT  => est_des
                  );
						
DEC: entity work.Decoder
        port map (   OPCODE      => opcode,
                     OUTPUT      => ctrl);
							
RAM: entity work.RAMMIPS                 generic map (dataWidth => larguraDados, addrWidth => larguraDados, memoryAddrWidth => 6)
        port map (   clk         => CLOCK_50,
                     Endereco    => ula_ram,
                     Dado_in     => reg_ram,
                     Dado_out    => ram_brg,
                     we          => ctrl(5),
                     re          => ctrl(4)
                  );

opcode_out <= opcode;
funct_out  <= inst(5 downto 0);
ULA_out    <= ula_ram;
debug      <= reg_ram;
debug2     <= 31x"00" & ctrl(4);
debug3     <= ram_brg;
debug4     <= RsAddr;
										 
end architecture;