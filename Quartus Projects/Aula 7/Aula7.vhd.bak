library ieee;
use ieee.std_logic_1164.all;

entity Aula5 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
    LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of Aula5 is

-- Sinais usados:
  signal MUX_ULA_B 		: std_logic_vector (larguraDados-1 downto 0);
  signal MEM_MUX_A 		: std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1 		: std_logic_vector (larguraDados-1 downto 0);
  signal ACU_ULA_A 		: std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA 		: std_logic_vector (larguraDados-1 downto 0);
  signal ROM_DEC 			: std_logic_vector (12 downto 0);
  signal DEC_signals 	: std_logic_vector (10 downto 0);
  signal PC_ROMandSOM	: std_logic_vector (8 downto 0);
  signal SOM_MUX 			: std_logic_vector (8 downto 0);
  signal MUX4_PC 			: std_logic_vector (8 downto 0);
  signal LOG_MUX4		 	: std_logic_vector (1 downto 0);
  signal RET_MUX4 		: std_logic_vector (8 downto 0);
  signal CLK 				: std_logic;
  signal FLAG_ZF 			: std_logic;
  signal ULA_FLAG 		: std_logic;
  


begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- MUX 2x1 para ULA e RAM:
MUX :	entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
			port map( 	entradaA_MUX 	=> MEM_MUX_A,
							entradaB_MUX 	=> ROM_DEC(7 downto 0),
							seletor_MUX 	=> DEC_signals(3),
							saida_MUX 		=> MUX_ULA_B
						);
		
-- O port map completo do Acumulador:
ACU : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
			port map(	DIN 				=> Saida_ULA,
							DOUT 				=> ACU_ULA_A,
							ENABLE 			=> DEC_signals(2),
							CLK 				=> CLK,
							RST 				=> '0'
						);

-- O port map completo do Program Counter:
PC  : entity work.registradorGenerico   generic map (larguraDados => 9)
         port map(	DIN 				=> MUX4_PC,
							DOUT 				=> PC_ROMandSOM,
							ENABLE 			=> '1', 
							CLK 				=> CLK,
							RST 				=> '0'
						);

-- O port map completo da ULA:
ULA : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
         port map(	entradaA 		=> ACU_ULA_A,
							entradaB 		=> MUX_ULA_B, 
							saida 			=> Saida_ULA,
							seletor 			=> DEC_signals(1 downto 0),
							comp_flag 		=> ULA_FLAG
						);

-- O port map completo da ROM:
ROM : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
         port map(	Endereco 		=> PC_ROMandSOM,
							Dado 				=> ROM_DEC
						);
			 
-- O port map completo do Decoder:
DEC : entity work.Decoder   generic map (dadosEntrada => 4, dadosSaida => 11)
         port map(	entradaDecoder => ROM_DEC(12 downto 9),
							saidaDecoder 	=> DEC_signals
						);
			 
-- O port map completo do Somador:
SOM :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
         port map( 	entrada 			=> PC_ROMandSOM,
							saida 			=> SOM_MUX
						);

-- O port map completo do RAM:					
MEM :  entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => larguraDados)
         port map(	addr 				=> ROM_DEC(7 downto 0),
							we 				=> DEC_signals(9),
							re					=> DEC_signals(8),
							habilita			=> ROM_DEC(8),
							dado_in			=> ACU_ULA_A,
							dado_out 		=> MEM_MUX_A,
							clk 				=> CLK
						);
							
-- O port map completo do MUX4way:
MUX4:  entity work.muxGenerico4x1  generic map (larguraDados => 9)
			port map(	entradaA_MUX 	=> SOM_MUX,
							entradaB_MUX 	=> ROM_DEC(8 downto 0),
							entradaC_MUX 	=> RET_MUX4,
							entradaD_MUX 	=> "000000000",
							seletor_MUX 	=> LOG_MUX4,
							saida_MUX 		=> MUX4_PC
						);
						
-- O port map completo do Logic Block:
LOG :  entity work.LogicBlock  generic map (larguraDados => 1)
			port map(	entradaJMP 		=> DEC_signals(4),
							entradaJEQ 		=> DEC_signals(6),
							entradaFlag 	=> FLAG_ZF,
							entradaJSR  	=> DEC_signals(8),
							entradaRET  	=>	DEC_signals(7),
							saidaLogica 	=> LOG_MUX4
						);
					  
-- O port map completo do Flag Register:
FREG:	 entity work.registrador1bit   generic map (larguraDados => 1)
         port map(	DIN 				=> ULA_FLAG, 
							DOUT 				=> FLAG_ZF, 
							ENABLE 			=> DEC_signals(5), 
							CLK 				=> CLK, 
							RST 				=> '0'
						);
			 
-- O port map completo do Return Register:
RREG:	 entity work.registradorGenerico   generic map (larguraDados => 9)
			port map(	DIN 				=> SOM_MUX, 
							DOUT 				=> RET_MUX4, 
							ENABLE 			=> DEC_signals(8), 
							CLK 				=> CLK, 
							RST 				=> '0');
				 
				 



-- A ligacao dos LEDs para DEBUG:
LEDR (9) <= FLAG_ZF;
LEDR (8 downto 0) <= MUX4_PC;

end architecture;