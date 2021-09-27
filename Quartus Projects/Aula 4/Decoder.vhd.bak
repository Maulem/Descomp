library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is
  generic   (
    larguraDados  : natural :=  4
  );

  port   (
    -- Input ports
    entradaDecoder  :  in  std_logic_vector((larguraDados-1) downto 0);
    
    -- Output ports
    saidaDecoder    :  out std_logic_vector((larguraDados-1) downto 0)
	 
  );
end entity;


architecture comportamento of Decoder is

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
	saidaDecoder <= 	"1011" when (entradaDecoder = "0000") else
							"1100" when (entradaDecoder = "0001") else
							"1101" when (entradaDecoder = "0010") else
							"1100";

end architecture;