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
  
  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
		  -- opcode Rs    Rt    Rd    shamt funct
		  -- 000000 01001 01000 01010 00000 100000
        -- 6 bit  5 bit 5 bit 5 bit 5 bit 6 bit
        tmp(0) := "000000" & "01001" & "01010" & "01000" & "00000" & "100000";
        tmp(1) := "000000" & "01000" & "01000" & "01000" & "00000" & "100100";
        tmp(2) := "000000" & "01000" & "01010" & "01000" & "00000" & "100111";
        tmp(3) := 32x"00";
        tmp(4) := 32x"00";
        tmp(5) := 32x"00";
        tmp(6) := 32x"00";
        tmp(7) := 32x"00";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;