library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is
  port   (
	 OPCODE : in std_logic_vector(5 downto 0);
	 FUNCT  : in std_logic_vector(5 downto 0);
	 OUTPUT : out std_logic_vector(10 downto 0)
  );
end entity;

architecture arch_name of Decoder is
  constant LW    : std_logic_vector(5 downto 0) := "100011";
  constant SW    : std_logic_vector(5 downto 0) := "101011";
  constant BEQ   : std_logic_vector(5 downto 0) := "000100";
  constant RIN   : std_logic_vector(5 downto 0) := "000000";
  constant J     : std_logic_vector(5 downto 0) := "000010";
  constant ORI   : std_logic_vector(5 downto 0) := "001101";
  constant LUI   : std_logic_vector(5 downto 0) := "001111";
  
  constant SOM   : std_logic_vector(5 downto 0) := "100000";
  constant SUB   : std_logic_vector(5 downto 0) := "100010";
  constant ANDD  : std_logic_vector(5 downto 0) := "100100";
  constant ORR   : std_logic_vector(5 downto 0) := "100101";
  constant SLT   : std_logic_vector(5 downto 0) := "101010";
  
  
  alias ram_we   : std_logic        is OUTPUT(0         );
  alias ram_re   : std_logic        is OUTPUT(1         );
  alias beq_flag : std_logic        is OUTPUT(2         );
  alias ram_mux  : std_logic_vector is OUTPUT(4 downto 3);
  alias tipor    : std_logic        is OUTPUT(5         );
  alias ula_mux  : std_logic        is OUTPUT(6         );
  alias rd_wr    : std_logic        is OUTPUT(7         );
  alias ext_sina : std_logic        is OUTPUT(8         );
  alias mux_addr : std_logic        is OUTPUT(9         );
  alias mux_jump : std_logic        is OUTPUT(10        );
  
begin


   ram_we  <= '1'  when (OPCODE = SW) else '0';
   ram_re  <= '1'  when (OPCODE = LW) else '0';
   beq_flag<= '1'  when (OPCODE = BEQ) else '0';
	ram_mux <= "00" when (OPCODE = RIN or OPCODE = ORI) else
              "11" when (OPCODE = LUI) else
              "01";
	tipor   <= '1'  when (OPCODE = RIN) else '0';		  
   ula_mux <= '1'  when (OPCODE = LW or OPCODE = SW or OPCODE = ORI) else '0';
   rd_wr   <= '0'  when (OPCODE = SW or OPCODE = BEQ) else '1';
	ext_sina<= '1'  when (OPCODE = ORI) else '0';
   mux_addr<= '1'  when (OPCODE = RIN) else '0';
	mux_jump<= '1'  when (OPCODE = J) else '0';
	
	
end architecture;