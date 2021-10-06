library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is
  generic   (
    dadosEntrada  : natural :=  4;
	 dadosSaida    : natural :=  6
  );

  port   (
    -- Input ports
    entradaDecoder  :  in  std_logic_vector((dadosEntrada-1) downto 0);
    
    -- Output ports
    saidaDecoder    :  out std_logic_vector((dadosSaida-1) downto 0)
	 
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

			  --/        RD /  WR / JSR / RET / JEQ / FREG/ JMP / Sel / ACU / ULA
	saidaDecoder <= 	'0' & '0' & '0' & '0' & '0' & '0' & '0' & '1' & '0' & "11" when (entradaDecoder = "0000") else -- NOP
	
							'1' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '1' & "11" when (entradaDecoder = "0001") else -- LDA
							
							'1' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '1' & "01" when (entradaDecoder = "0010") else -- SOMA
							
							'1' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '1' & "00" when (entradaDecoder = "0011") else -- SUB
							
							'0' & '0' & '0' & '0' & '0' & '0' & '0' & '1' & '1' & "11" when (entradaDecoder = "0100") else -- LDI
							
							'0' & '1' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & "11" when (entradaDecoder = "0101") else -- STA
							
							'0' & '0' & '0' & '0' & '0' & '0' & '1' & '1' & '0' & "11" when (entradaDecoder = "0110") else -- JMP
							
							'0' & '0' & '0' & '0' & '1' & '0' & '0' & '1' & '0' & "11" when (entradaDecoder = "0111") else -- JEQ
							
							'1' & '0' & '0' & '0' & '0' & '1' & '0' & '0' & '0' & "00" when (entradaDecoder = "1000") else -- CEQ
							
							'0' & '0' & '1' & '0' & '0' & '0' & '0' & '1' & '0' & "11" when (entradaDecoder = "1001") else -- JSR
							
							'0' & '0' & '0' & '1' & '0' & '0' & '0' & '1' & '0' & "11" when (entradaDecoder = "1010") else -- RET
							
							'0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & "00" ;

end architecture;