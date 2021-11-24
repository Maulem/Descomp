
library ieee;
use ieee.std_logic_1164.all;

entity estensorSinalGenerico is
    generic
    (
        larguraDadoEntrada : natural  :=    16;
        larguraDadoSaida   : natural  :=    32
    );
    port
    (
        Signal_IN : in  std_logic_vector(larguraDadoEntrada-1 downto 0);
        Signal_OUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
    );
end entity;

architecture comportamento of estensorSinalGenerico is
begin
    process (Signal_IN) is
    begin
            if (Signal_IN(larguraDadoEntrada-1) = '1') then
                Signal_OUT <= (larguraDadoSaida-1 downto larguraDadoEntrada => '1') & Signal_IN;
            else
                Signal_OUT <= (larguraDadoSaida-1 downto larguraDadoEntrada => '0') & Signal_IN;
            end if;
    end process;
end architecture;