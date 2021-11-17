library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity logic7 is
  generic   (
    IN_WIDTH  	: natural :=  4;
    OUT_WIDTH  : natural :=  7
  );

  port   (
    -- Input ports
    dataIN  : in  std_logic_vector(IN_WIDTH-1 downto 0);
    enable  : in  std_logic;
    clk     : in  std_logic;

    -- Inout ports
    

    -- Output ports
    displayOUT : out  std_logic_vector(OUT_WIDTH-1 downto 0)
    
  );
end entity;


architecture arch_name of logic7 is

    signal Seven_signals 	: std_logic_vector (3 downto 0);

begin
  

  -- O port map completo do Register 7 Display:
REGD:	 entity work.registradorGenerico   generic map (larguraDados => 4)
			port map(	DIN 				=> dataIN, 
							DOUT 				=> Seven_signals,
							ENABLE 			=> enable, 
							CLK 				=> clk, 
							RST 				=> '0'
						);

-- O port map completo do Conversor 7 Display:							
CON :  entity work.conversorHex7Seg
			port map(	dadoHex 			=> Seven_signals,
							apaga 			=> '0',
							negativo 		=> '0',
							overFlow 		=> '0',
							saida7seg 		=> displayOUT
						);

end architecture;