library ieee;
use ieee.std_logic_1164.all;

entity muxGenerico4x1 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8);
  port (
    entradaA, entradaB, entradaC, entradaD  : in std_logic_vector((larguraDados-1) downto 0);
    seletor : in std_logic_vector;
    saida   : out std_logic_vector((larguraDados-1) downto 0)
  );
end entity;

architecture comportamento of muxGenerico4x1 is
  begin
    saida <= entradaA when (seletor = "00") else
             entradaB when (seletor = "01") else
             entradaC when (seletor = "10") else
             entradaD;
end architecture;