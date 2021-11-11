library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULAbit32 is
    port
    (
      entradaA :  in std_logic;
		entradaB :  in std_logic;
		slt      :  in std_logic;
      inverteB :  in std_logic;
		cIn      :  in std_logic;
		seletor  :  in std_logic_vector(1 downto 0);
		saida    :  out std_logic;
		set      :  out std_logic
    );
end entity;

architecture comportamento of ULAbit32 is

	signal muxB_som       : std_logic;
	signal cOut           : std_logic;
	signal som_muxS       : std_logic;
	signal andd           : std_logic;
	signal orr            : std_logic;
	signal overflow       : std_logic;

begin

	
  MuxB: entity work.muxGenerico2x1bit
          port map( entradaA => entradaB,
                    entradaB => not(entradaB),
                    seletor  => inverteB,
                    saida    => muxB_som
                   );
	
  som : entity work.somadorGenerico1bit
          port map( entradaA => entradaA,
                    entradaB => muxB_som,
                    cIn      => cIn,
						  cOut     => cOut,
                    saida    => som_muxS
                   );

  MuxS: entity work.muxGenerico4x1bit
          port map( entradaA => andd,
                    entradaB => orr,
                    entradaC => som_muxS,
                    entradaD => slt,
                    seletor  => seletor,
                    saida    => saida
                   );
							
  andd     <= entradaA and entradaB;
  orr      <= entradaA or  entradaB;
  overflow <= cin      xor cOut;
  set      <= som_muxS xor overflow;
							
end architecture;