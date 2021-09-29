library IEEE;
use ieee.std_logic_1164.all;

entity butBuffer is
    port		(
        -- Input ports
        data_in 		: in std_logic;
		  habilita 		: in std_logic;
		  
        -- Output ports
        data_out 		: out std_logic
    );
	 
end entity;

architecture comportamento of butBuffer is

begin

   data_out 	<= 	data_in when (habilita = '1') else 
							'Z'; 
	 
end architecture;