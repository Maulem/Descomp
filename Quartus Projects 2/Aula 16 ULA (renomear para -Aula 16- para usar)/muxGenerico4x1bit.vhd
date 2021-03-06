library ieee;
use ieee.std_logic_1164.all;

entity muxGenerico4x1bit is
  port (
    entradaA, entradaB, entradaC, entradaD : in std_logic;
    seletor                                : in std_logic_vector(1 downto 0);
    saida                                  : out std_logic
  );
end entity;

architecture comportamento of muxGenerico4x1bit is
  begin
    saida <= entradaA when (seletor = "00") else
             entradaB when (seletor = "01") else
             entradaC when (seletor = "10") else
             entradaD;
end architecture;