library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LogicBlock is
  generic   (
    larguraDados  : natural :=  4;
	 var2    : natural :=  6
  );

  port   (
    -- Input ports
    entradaJMP  :  in  std_logic;
	 entradaJEQ  :  in  std_logic;
	 entradaFlag :  in  std_logic;
	 entradaJSR  :  in  std_logic;
	 entradaRET  :  in  std_logic;
    
    -- Output ports
    saidaLogica    :  out std_logic_vector(1 downto 0)
	 
  );
end entity;


architecture comportamento of LogicBlock is

  -- Declarations (optional):
  -- signal <name> : std_logic;
  -- signal <name> : std_logic_vector(<msb_index> downto <lsb_index>);
  -- constant FUNCT_WIDTH : natural := 6;
  -- subtype funct_t  is  std_logic_vector(FUNCT_WIDTH-1 downto 0);
  -- constant functADD   : funct_t := "100000";
  -- constant functSUB   : funct_t := "100010";
  -- alias memWRsignal: std_logic is controlWord(0);
  -- alias ulaOPvalue:  std_logic_vector(1 downto 0) is controlWord(5 downto 4);

begin

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  -- regA:  entity work.nome_do_componente generic map (DATA_WIDTH => DATA_WIDTH)
  --        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst);
  
  saidaLogica <= 	"01" when (entradaJMP = '1' or (entradaJEQ = '1' and entradaFlag = '1') or entradaJSR = '1') else
						"10" when (entradaRET = '1') else
						"00";


end architecture;