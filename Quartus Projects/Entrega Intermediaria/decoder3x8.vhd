library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder3x8 is
  generic   (
    dadosEntrada  : natural :=  3;
	 dadosSaida    : natural :=  8
  );

  port   (
    -- Input ports
    entradaDecoder  :  in  std_logic_vector((dadosEntrada-1) downto 0);
    
    -- Output ports
    saidaDecoder    :  out std_logic_vector((dadosSaida-1) downto 0)
	 
  );
end entity;


architecture comportamento of decoder3x8 is

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

      -- 0000 NOP
		--	0001 LDA
		--	0010 SOMA
		--	0011 SUB
		-- 0100 LDI
		-- 0101 STA
		--	0110 JMP
		--	0111 JEQ
		--	1000 CEQ
		--	1001 JSR
		--	1010 RET

			  --/       
	saidaDecoder <=	"00000001" when (entradaDecoder = "000") else	-- Ativa RAM ou LEDR
							"00000010" when (entradaDecoder = "001") else	--
							"00000100" when (entradaDecoder = "010") else
							"00001000" when (entradaDecoder = "011") else	
							"00010000" when (entradaDecoder = "100") else	-- Ativa LEDS
							"00100000" when (entradaDecoder = "101") else
							"01000000" when (entradaDecoder = "110") else
							"10000000" when (entradaDecoder = "111") else
							"00000000";

end architecture;