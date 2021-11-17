library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DecoderFunct is
  port   (
	 FUNCT  : in std_logic_vector(5 downto 0);
	 OUTPUT : out std_logic_vector(2 downto 0)
  );
end entity;

architecture arch_name of DecoderFunct is
  
  constant SOM   : std_logic_vector(5 downto 0) := "100000";
  constant SUB   : std_logic_vector(5 downto 0) := "100010";
  constant ANDD  : std_logic_vector(5 downto 0) := "100100";
  constant ORR   : std_logic_vector(5 downto 0) := "100101";
  constant SLT   : std_logic_vector(5 downto 0) := "101010";
  
  
begin
	
	OUTPUT  <= "010" when (FUNCT = SOM) else
              "110" when (FUNCT = SUB) else
				  "000" when (FUNCT = ANDD)else
				  "001" when (FUNCT = ORR) else
				  "111" when (FUNCT = SLT) else
				  "000";
	
	
end architecture;