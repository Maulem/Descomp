library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA is
    port
    (
      entradaA:       in std_logic_vector(31 downto 0);
		entradaB:       in std_logic_vector(31 downto 0);
		seletor:        in std_logic_vector(1 downto 0);
      inverteB:       in std_logic;
      saida:          out std_logic_vector(31 downto 0);
		flagZero:       out std_logic
		
    );
end entity;

architecture comportamento of ULA is


	constant zero : std_logic_vector(31 downto 0) := (others => '0');
	
	signal carry0 , carry1 , carry2 , carry3  : std_logic;
   signal carry4 , carry5 , carry6 , carry7  : std_logic; 
   signal carry8 , carry9 , carry10, carry11 : std_logic;
   signal carry12, carry13, carry14, carry15 : std_logic;
   signal carry16, carry17, carry18, carry19 : std_logic;
   signal carry20, carry21, carry22, carry23 : std_logic;
   signal carry24, carry25, carry26, carry27 : std_logic;
   signal carry28, carry29, carry30          : std_logic;
	signal set : std_logic;
	
begin
	
ULA1: entity work.ULAbit_1a31
        port map (  entradaA => entradaA(0),
                    entradaB => entradaB(0),
                    slt      => set,
                    inverteB => inverteB,
                    saida    => saida(0),
                    cIn      => inverteB,
                    cOut     => carry0,
                    seletor  => seletor
                   );

ULA2: entity work.ULAbit_1a31
        port map (  entradaA => entradaA(1),
                    entradaB => entradaB(1),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(1),
                    cIn      => carry0,
                    cOut     => carry1,
                    seletor  => seletor
                   );
                    	
ULA3: entity work.ULAbit_1a31
        port map (  entradaA => entradaA(2),
                    entradaB => entradaB(2),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(2),
                    cIn      => carry1,
                    cOut     => carry2,
                    seletor  => seletor
                   );

ULA4: entity work.ULAbit_1a31
        port map (  entradaA => entradaA(3),
                    entradaB => entradaB(3),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(3),
                    cIn      => carry2,
                    cOut     => carry3,
                    seletor  => seletor
                   );
                    	
ULA5: entity work.ULAbit_1a31
        port map (  entradaA => entradaA(4),
                    entradaB => entradaB(4),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(4),
                    cIn      => carry3,
                    cOut     => carry4,
                    seletor  => seletor
                   );

ULA6: entity work.ULAbit_1a31
        port map (  entradaA => entradaA(5),
                    entradaB => entradaB(5),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(5),
                    cIn      => carry4,
                    cOut     => carry5,
                    seletor  => seletor
                   );
                    	
ULA7: entity work.ULAbit_1a31
        port map (  entradaA => entradaA(6),
                    entradaB => entradaB(6),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(6),
                    cIn      => carry5,
                    cOut     => carry6,
                    seletor  => seletor
                   );

ULA8: entity work.ULAbit_1a31
        port map (  entradaA => entradaA(7),
                    entradaB => entradaB(7),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(7),
                    cIn      => carry6,
                    cOut     => carry7,
                    seletor  => seletor
                   );
                    
ULA9: entity work.ULAbit_1a31
        port map (  entradaA => entradaA(8),
                    entradaB => entradaB(8),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(8),
                    cIn      => carry7,
                    cOut     => carry8,
                    seletor  => seletor
                   );

ULA10:entity work.ULAbit_1a31
        port map (  entradaA => entradaA(9),
                    entradaB => entradaB(9),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(9),
                    cIn      => carry8,
                    cOut     => carry9,
                    seletor  => seletor
                   );
                    
ULA11:entity work.ULAbit_1a31
        port map (  entradaA => entradaA(10),
                    entradaB => entradaB(10),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(10),
                    cIn      => carry9,
                    cOut     => carry10,
                    seletor  => seletor
                   );

ULA12:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(11),
                    entradaB => entradaB(11),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(11),
                    cIn      => carry10,
                    cOut     => carry11,
                    seletor  => seletor
                   );
                    	
ULA13:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(12),
                    entradaB => entradaB(12),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(12),
                    cIn      => carry11,
                    cOut     => carry12,
                    seletor  => seletor
                   );

ULA14:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(13),
                    entradaB => entradaB(13),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(13),
                    cIn      => carry12,
                    cOut     => carry13,
                    seletor  => seletor
                   );
                    	
ULA15:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(14),
                    entradaB => entradaB(14),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(14),
                    cIn      => carry13,
                    cOut     => carry14,
                    seletor  => seletor
                   );

ULA16:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(15),
                    entradaB => entradaB(15),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(15),
                    cIn      => carry14,
                    cOut     => carry15,
                    seletor  => seletor
                   );
                    	
ULA17:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(16),
                    entradaB => entradaB(16),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(16),
                    cIn      => carry15,
                    cOut     => carry16,
                    seletor  => seletor
                   );

ULA18:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(17),
                    entradaB => entradaB(17),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(17),
                    cIn      => carry16,
                    cOut     => carry17,
                    seletor  => seletor
                   );
                    	
ULA19:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(18),
                    entradaB => entradaB(18),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(18),
                    cIn      => carry17,
                    cOut     => carry18,
                    seletor  => seletor
                   );

ULA20:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(19),
                    entradaB => entradaB(19),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(19),
                    cIn      => carry18,
                    cOut     => carry19,
                    seletor  => seletor
                   );
                    
ULA21:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(20),
                    entradaB => entradaB(20),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(20),
                    cIn      => carry19,
                    cOut     => carry20,
                    seletor  => seletor
                   );

ULA22:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(21),
                    entradaB => entradaB(21),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(21),
                    cIn      => carry20,
                    cOut     => carry21,
                    seletor  => seletor
                   );
                    	
ULA23:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(22),
                    entradaB => entradaB(22),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(22),
                    cIn      => carry21,
                    cOut     => carry22,
                    seletor  => seletor
                   );

ULA24:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(23),
                    entradaB => entradaB(23),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(23),
                    cIn      => carry22,
                    cOut     => carry23,
                    seletor  => seletor
                   );
                    	
ULA25:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(24),
                    entradaB => entradaB(24),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(24),
                    cIn      => carry23,
                    cOut     => carry24,
                    seletor  => seletor
                   );

ULA26:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(25),
                    entradaB => entradaB(25),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(25),
                    cIn      => carry24,
                    cOut     => carry25,
                    seletor  => seletor
                   );
                    	
ULA27:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(26),
                    entradaB => entradaB(26),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(26),
                    cIn      => carry25,
                    cOut     => carry26,
                    seletor  => seletor
                   );

ULA28:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(27),
                    entradaB => entradaB(27),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(27),
                    cIn      => carry26,
                    cOut     => carry27,
                    seletor  => seletor
                   );
                    	
ULA29:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(28),
                    entradaB => entradaB(28),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(28),
                    cIn      => carry27,
                    cOut     => carry28,
                    seletor  => seletor
                   );

ULA30:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(29),
                    entradaB => entradaB(29),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(29),
                    cIn      => carry28,
                    cOut     => carry29,
                    seletor  => seletor
                   );
                    
ULA31:  entity work.ULAbit_1a31
        port map (  entradaA => entradaA(30),
                    entradaB => entradaB(30),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(30),
                    cIn      => carry29,
                    cOut     => carry30,
                    seletor  => seletor
                   );
                    
ULA32:entity work.ULAbit32
        port map (  entradaA => entradaA(31),
                    entradaB => entradaB(31),
                    slt      => '0',
                    inverteB => inverteB,
                    saida    => saida(31),
                    cIn      => carry30,
                    set      => set,
                    seletor  => seletor
                   );
                    
flagZero <= '1' when unsigned(saida) = unsigned(zero) else '0';
          	
end architecture;