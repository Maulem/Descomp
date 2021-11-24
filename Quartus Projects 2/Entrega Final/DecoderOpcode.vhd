library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DecoderOpcode is
  port   (
	 OPCODE : in std_logic_vector(5 downto 0);
	 OUTPUT : out std_logic_vector(2 downto 0)
  );
end entity;

architecture arch_name of DecoderOpcode is

  constant LW    : std_logic_vector(5 downto 0) := "100011";
  constant SW    : std_logic_vector(5 downto 0) := "101011";
  constant BEQ   : std_logic_vector(5 downto 0) := "000100";
  constant RIN   : std_logic_vector(5 downto 0) := "000000";
  constant J     : std_logic_vector(5 downto 0) := "000010";
  constant ORI   : std_logic_vector(5 downto 0) := "001101";
  
begin
	
	OUTPUT  <= "010" when (OPCODE = LW or OPCODE = SW) else
              "110" when (OPCODE = BEQ) else
				  "001" when (OPCODE = ORI) else
				  "000";
	
	
	
end architecture;