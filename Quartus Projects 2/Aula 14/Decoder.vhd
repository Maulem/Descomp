library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is
  port   (
	 OPCODE: in std_logic_vector(5 downto 0);
	 OUTPUT: out std_logic_vector(6 downto 0)
  );
end entity;

architecture arch_name of Decoder is
  constant LW    : std_logic_vector(5 downto 0) := "100011";
  constant SW    : std_logic_vector(5 downto 0) := "101011";
  constant BEQ   : std_logic_vector(5 downto 0) := "000100";
  
  alias rd_wr    : std_logic is OUTPUT(0);
  alias ula_op   : std_logic_vector(2 downto 0) is OUTPUT(3 downto 1);
  alias ram_re   : std_logic is OUTPUT(4);
  alias ram_we   : std_logic is OUTPUT(5);
  alias beq_flag : std_logic is OUTPUT(6);
  
begin
				 
	rd_wr   <= '1' when (OPCODE = LW) else '0';
	
	ram_re  <= '1' when (OPCODE = LW) else '0';
	ram_we  <= '1' when (OPCODE = SW) else '0';
	
	beq_flag<= '1' when (OPCODE = BEQ) else '0';
	
	ula_op  <= "000" when (OPCODE = LW or OPCODE = SW) else
              "001" when (OPCODE = BEQ) else
              "000";
	
end architecture;