library ieee;
use ieee.std_logic_1164.all;

entity muxGenerico2x1bit is
  port (
    entradaA, entradaB : in std_logic;
    seletor            : in std_logic;
    saida              : out std_logic
  );
end entity;

architecture comportamento of muxGenerico2x1bit is
  begin
    saida <= entradaB when (seletor = '1') else entradaA;
end architecture;