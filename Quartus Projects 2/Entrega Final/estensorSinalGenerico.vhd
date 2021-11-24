
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
		  Seletor   : in  std_logic;
        Signal_OUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
    );
end entity;

architecture comportamento of estensorSinalGenerico is

signal out0: std_logic_vector(larguraDadoSaida-1 downto 0);

begin
    process (Signal_IN) is
    begin
            if (Signal_IN(larguraDadoEntrada-1) = '1') then
                out0 <= (larguraDadoSaida-1 downto larguraDadoEntrada => '1') & Signal_IN;
            else
                out0 <= (larguraDadoSaida-1 downto larguraDadoEntrada => '0') & Signal_IN;
            end if;
    end process;
	 
	 MUX:entity work.muxGenerico2x1          generic map (larguraDados => larguraDadoSaida)
        port map(    entradaA_MUX  => out0,
                     entradaB_MUX  => 16x"00" & Signal_IN,
                     seletor_MUX   => Seletor,
                     saida_MUX     => Signal_OUT
                  );
	 
end architecture;