library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM IS
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 32;
          memoryAddrWidth:  natural := 6  -- 64 posicoes de 32 bits cada
			);   
   port ( clk      : IN  STD_LOGIC;
          Endereco : IN  STD_LOGIC_VECTOR (addrWidth-1 DOWNTO 0);
          Dado     : OUT STD_LOGIC_VECTOR (dataWidth-1 DOWNTO 0) );
end entity;

architecture assincrona OF ROM IS
  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 DOWNTO 0);
  
  --OPCODE
  constant LW    : std_logic_vector(5 downto 0) := "100011";
  constant SW    : std_logic_vector(5 downto 0) := "101011";
  constant BEQ   : std_logic_vector(5 downto 0) := "000100";
  constant RIN   : std_logic_vector(5 downto 0) := "000000";
  constant J     : std_logic_vector(5 downto 0) := "000010";
  
  --FUNCT
  constant SOM   : std_logic_vector(5 downto 0) := "100000";
  constant SUB   : std_logic_vector(5 downto 0) := "100010";
  constant ANDD  : std_logic_vector(5 downto 0) := "100100";
  constant ORR   : std_logic_vector(5 downto 0) := "100101";
  constant SLT   : std_logic_vector(5 downto 0) := "101010";
  
  --REG
  constant Z0    : std_logic_vector(4 downto 0) := "00000";
  constant T0    : std_logic_vector(4 downto 0) := "01000";
  constant T1    : std_logic_vector(4 downto 0) := "01001";
  constant T2    : std_logic_vector(4 downto 0) := "01010";
  constant T3    : std_logic_vector(4 downto 0) := "01011";
  constant T4    : std_logic_vector(4 downto 0) := "01100";
  constant T5    : std_logic_vector(4 downto 0) := "01101";
  constant T6    : std_logic_vector(4 downto 0) := "01110";
  
  --CONST
  constant SHAMT : std_logic_vector(4 downto 0) := "00000";
  constant IM1   : std_logic_vector(15 downto 0) := "0000000000000001";
  constant IM9   : std_logic_vector(15 downto 0) := "0000000000000010";
  constant ADDR  : std_logic_vector(25 downto 0) := "00000000000000000000001010";

  
  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
		  -- opcode Rs    Rt    Rd    shamt funct
		  -- 000000 01001 01000 01010 00000 100000
        -- 6 bit  5 bit 5 bit 5 bit 5 bit 6 bit
		  
		  tmp(0) := RIN & T1 & T1 & T0 & SHAMT & SOM;
		  tmp(1) := RIN & T0 & T2 & T0 & SHAMT & SUB;
		  tmp(2) := SW  & T3 & T0 & IM1;
		  tmp(3) := BEQ & T1 & T1 & IM1;
		  tmp(4) := 32x"00";
        tmp(5) := LW  & T3 & T0 & IM1;
		  tmp(6) := J   & ADDR;
        
		  tmp(10):= RIN & T2 & T1 & T0 & SHAMT & SLT;
		  tmp(11):= RIN & T1 & T2 & T0 & SHAMT & SLT;
		  
		  
        tmp(7) := 32x"00";
        tmp(8) := 32x"00";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;