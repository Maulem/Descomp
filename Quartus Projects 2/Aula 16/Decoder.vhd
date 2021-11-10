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
  
  constant SOM   : std_logic_vector(5 downto 0) := "100000";
  constant SUB   : std_logic_vector(5 downto 0) := "100010";
  constant ANDD  : std_logic_vector(5 downto 0) := "100100";
  constant ORR   : std_logic_vector(5 downto 0) := "100101";
  constant SLT   : std_logic_vector(5 downto 0) := "101010";
  
  
  alias ram_we   : std_logic is OUTPUT(0);
  alias ram_re   : std_logic is OUTPUT(1);
  alias beq_flag : std_logic is OUTPUT(2);
  alias ram_mux  : std_logic is OUTPUT(3);
  alias ula_op   : std_logic_vector(2 downto 0) is OUTPUT(6 downto 4);
  alias ula_mux  : std_logic is OUTPUT(7);
  alias rd_wr    : std_logic is OUTPUT(8);
  alias mux_addr : std_logic is OUTPUT(9);
  alias mux_jump : std_logic is OUTPUT(10);
  
begin
   ram_we  <= '1' when (OPCODE = SW) else '0';
   ram_re  <= '1' when (OPCODE = LW) else '0';
   beq_flag<= '1' when (OPCODE = BEQ) else '0';
	ram_mux <= '0' when (OPCODE = RIN) else '1';
	
    -- B Inverter / Seletor ULA --
	ula_op  <= '0' & "10" when (OPCODE = LW or OPCODE = SW or (FUNCT = SOM and OPCODE = RIN)) else --SOM
              '1' & "10" when (OPCODE = BEQ or (FUNCT = SUB and OPCODE = RIN)) else               --SUB
				  '0' & "00" when ((FUNCT = ANDD and OPCODE = RIN)) else                              --AND
				  '0' & "01" when ((FUNCT = ORR and OPCODE = RIN)) else                               --OR
				  '1' & "11" when ((FUNCT = SLT and OPCODE = RIN)) else                               --SLT
              "000";
				  
   ula_mux <= '1' when (OPCODE = LW or OPCODE = SW) else '0';
   rd_wr   <= '0' when (OPCODE = SW or OPCODE = BEQ) else '1';
   mux_addr<= '1' when (OPCODE = RIN) else '0';
	mux_jump<= '1' when (OPCODE = J) else '0';
	
	
	
	
	
	
end architecture;