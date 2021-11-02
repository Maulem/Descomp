library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Aula13 is
  generic   (
    larguraDados     : natural :=  32;
    larguraAddress   : natural :=  32;
    simulacao        : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    -- Input ports
    CLOCK_50   :  in   std_logic;
    rd_wr      :  in   std_logic;
    ula_op     :  in   std_logic_vector(2 downto 0);
	 

    -- Output ports
    opcode_out :  out  std_logic_vector(5 downto 0);
    funct_out  :  out  std_logic_vector(5 downto 0);
	 debug      :  out  std_logic_vector(larguraDados-1 downto 0);
	 debug2     :  out  std_logic_vector(larguraDados-1 downto 0);
	 debug3     :  out  std_logic_vector(4 downto 0);
	 debug4     :  out  std_logic_vector(4 downto 0);
	 ULA_out    :  out  std_logic_vector(larguraDados-1 downto 0)
  );
end entity;


architecture mips of Aula13 is


  signal pc_som  : std_logic_vector(larguraAddress-1 downto 0);
  signal som_pc  : std_logic_vector(larguraAddress-1 downto 0);
  signal inst    : std_logic_vector(larguraAddress-1 downto 0);
  signal reg_ulaA: std_logic_vector(larguraDados-1 downto 0);
  signal reg_ulaB: std_logic_vector(larguraDados-1 downto 0);
  signal ula_reg : std_logic_vector(larguraDados-1 downto 0);
  
  alias RsAddr   : std_logic_vector(4 downto 0) is inst(25 downto 21);
  alias RtAddr   : std_logic_vector(4 downto 0) is inst(20 downto 16);
  alias RdAddr   : std_logic_vector(4 downto 0) is inst(15 downto 11);
  signal lixo    : std_logic;
  
begin

-- O port map completo do Somador:
SOM: entity work.somadorGenerico       generic map (larguraDados => larguraDados)
        port map (   entradaA    => pc_som,
                     entradaB    => x"00000004",
                     saida       => som_pc
                  );
						
-- O port map completo do Program Counter:
PC:  entity work.registradorGenerico   generic map (larguraDados => larguraDados)
        port map (   DIN         => som_pc,
                     DOUT        => pc_som,
                     ENABLE      => '1',
                     CLK         => CLOCK_50,
                     RST         => '0'
                  );
						
-- O port map completo do Banco de Registradores:	
BRG: entity work.bancoRegistradores    generic map (larguraDados => larguraDados)
        port map (   clk         => CLOCK_50,
                     enderecoA   => RsAddr,
                     enderecoB   => RtAddr,
                     enderecoC   => RdAddr,
                     dadoEscritaC=> ula_reg,
                     escreveC    => rd_wr,
                     saidaA      => reg_ulaA,
                     saidaB      => reg_ulaB
                  );	

-- O port map completo da ULA:		
ULA: entity work.ULA                   generic map (larguraDados => larguraDados)
        port map (   entradaA    => reg_ulaA,
                     entradaB    => reg_ulaB,
                     saida       => ula_reg,
                     seletor     => ula_op,
                     flagZero    => lixo
                  );	
						
ROM: entity work.ROM                   generic map (dataWidth => larguraDados, addrWidth => larguraAddress, memoryAddrWidth => 6)
        port map (   Endereco    => pc_som,
                     Dado        => inst,
                     clk         => CLOCK_50
                  );



opcode_out <= inst(31 downto 26);
funct_out  <= inst(5 downto 0);
ULA_out    <= ula_reg;
debug      <= reg_ulaA;
debug2     <= reg_ulaB;
debug3     <= RsAddr;
debug4     <= RtAddr;
										 
end architecture;