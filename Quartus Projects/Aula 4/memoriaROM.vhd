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

        tmp(0)  := "0100" & '0' & x"00"; -- Zera
        tmp(1)  := "0100" & '0' & x"03"; -- Carrega x em A
        tmp(2)  := "0010" & '0' & x"03"; -- Soma x+x
        tmp(3)  := "0010" & '0' & x"03"; -- Soma x+2x
        tmp(4)  := "0011" & '0' & x"04"; -- Faz 3x-4
        tmp(5)  := "0101" & '1' & x"00"; -- Salva a memoria
        tmp(6)  := "0100" & '0' & x"00"; -- Zera
        tmp(7)  := "0001" & '0' & x"00"; -- Lê a memoria
        tmp(8)  := "0000" & '0' & x"00";
        tmp(9)  := "0000" & '0' & x"00";
        tmp(10) := "0000" & '0' & x"00";
        tmp(11) := "0000" & '0' & x"00";
        tmp(12) := "0000" & '0' & x"00";
        tmp(13) := "0000" & '0' & x"00";
        tmp(14) := "0000" & '0' & x"00";
        tmp(15) := "0000" & '0' & x"00";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;