library IEEE;
use ieee.std_logic_1164.all;

entity butBuffer8x is
    port		(
        -- Input ports
        data_in 		: in std_logic_vector 	(7 downto 0);
		  habilita 		: in std_logic;
		  
        -- Output ports
        data_out 		: out std_logic_vector 	(7 downto 0)
    );
	 
end entity;

architecture comportamento of butBuffer8x is

begin

   data_out 	<= 	data_in when (habilita = '1') else 
							"ZZZZZZZZ"; 
	 
end architecture;