library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 4
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- CTRL = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:

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
									-- 256 + 0x## se for endereco
			tmp(0)  	:= "0100" & '0' & x"01"; -- LDI 1
			tmp(1)  	:= "0101" & '0' & x"00"; -- STA 0
			tmp(2)  	:= "0010" & '0' & x"00"; -- SOMA 0
			tmp(3)  	:= "0101" & '1' & x"00"; -- STA 256 -- endereco LED 0 a LED 7
			tmp(4)  	:= "0001" & '0' & x"00"; -- LDA 0 	-- puxa o 1 da memoria
			tmp(5)  	:= "0101" & '1' & x"01"; -- STA 257	-- salva 1 no LED 8
			tmp(6)  	:= "0101" & '1' & x"02"; -- STA 258	-- salva 1 no LED 9 
			tmp(7)  	:= "0100" & '0' & x"55"; -- LDI 85
			tmp(8)  	:= "0101" & '1' & x"00"; -- STA 256 -- endereco LED 0 a LED 7
			tmp(9)  	:= "0100" & '0' & x"aa"; -- LDI 170
			tmp(10) 	:= "0101" & '1' & x"00"; -- STA 256 -- endereco LED 0 a LED 7
			tmp(11) 	:= "0110" & '0' & x"0b"; -- JMP 11 	-- fim
			tmp(12) 	:= "0000" & '0' & x"00";
			tmp(13) 	:= "0000" & '0' & x"00";
			tmp(14) 	:= "0000" & '0' & x"00";
			tmp(15) 	:= "0000" & '0' & x"00";
			tmp(16) 	:= "0000" & '0' & x"00";
			tmp(17) 	:= "0000" & '0' & x"00";
			tmp(18)	:= "0000" & '0' & x"00";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;