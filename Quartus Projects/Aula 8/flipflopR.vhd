library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity flipflopR is

    port (
      entrada		:  in std_logic;
      RST			:  in std_logic;
      saida			:  out std_logic;
		CLK			:  in std_logic
    );
end entity;

architecture comportamento of flipflopR is
begin
   process(RST, CLK)
	begin
      if (rising_edge(CLK)) then
         saida <= entrada;
      end if;
		if(RST = '1') then
			saida <= '0';
		end if;
	end process;
end architecture;