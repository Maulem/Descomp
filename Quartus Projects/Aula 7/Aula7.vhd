library ieee;
use ieee.std_logic_1164.all;

entity Aula7 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados 	: natural := 8;
				larguraAddress : natural := 9;
				simulacao 		: boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
    LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of Aula7 is

-- Sinais usados:
  signal MEM_MUX_A 		: std_logic_vector (larguraDados-1 downto 0);
  signal ACU_ULA_A 		: std_logic_vector (larguraDados-1 downto 0);
  signal PERI_signals	: std_logic_vector (larguraDados-1 downto 0);
  signal LEDs_signals	: std_logic_vector (larguraDados-1 downto 0);
  signal ROM_DEC 			: std_logic_vector (12 downto 0);
  signal DEC_signals 	: std_logic_vector (10 downto 0);
  signal RAM_ADDRESS		: std_logic_vector (larguraAddress-1 downto 0);
  signal PC_ROMandSOM	: std_logic_vector (larguraAddress-1 downto 0);
  signal CLK 				: std_logic;


begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
				CLK <= KEY(0);
			else generate
				detectorSub0: work.edgeDetector(bordaSubida)
			port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;



-- O port map completo da ROM:
ROM : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
         port map(	Endereco 		=> PC_ROMandSOM,
							Dado 				=> ROM_DEC
						);

-- O port map completo do RAM:					
RAM :  entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => 6)
         port map(	addr 				=> RAM_ADDRESS(5 downto 0),
							we 				=> DEC_signals(9),
							re					=> DEC_signals(8),
							habilita			=> PERI_signals(0),
							dado_in			=> ACU_ULA_A,
							dado_out 		=> MEM_MUX_A,
							clk 				=> CLK
						);
							
-- O port map completo do Processador:
CPU : entity work.processor   generic map (larguraDados => larguraDados, larguraAddress => larguraAddress)
         port map(	Data_In 			=> MEM_MUX_A,
							Instruction_In => ROM_DEC,
							CLK 				=> CLK,
							Data_Address 	=> RAM_ADDRESS,
							Data_Out 		=> ACU_ULA_A,
							ROM_Address 	=> PC_ROMandSOM,
							wr 				=> DEC_signals(9),
							rd 				=> DEC_signals(8),
							reset				=> '0'
						);
				 
-- O port map completo do Decoder da Memoria:
DEM : entity work.decoder3x8   generic map (dadosEntrada => 3, dadosSaida => larguraDados)
         port map(	entradaDecoder	=> RAM_ADDRESS(8 downto 6),
							saidaDecoder 	=> PERI_signals
						);
						
-- O port map completo do Decoder3x8:
D3C : entity work.decoder3x8   generic map (dadosEntrada => 3, dadosSaida => larguraDados)
         port map(	entradaDecoder	=> RAM_ADDRESS(2 downto 0),
							saidaDecoder 	=> LEDs_signals
						);
						
-- O port map completo do Register 0-7:
REG7:	 entity work.registradorGenerico   generic map (larguraDados => 8)
			port map(	DIN 				=> ACU_ULA_A, 
							DOUT 				=> LEDR (7 downto 0), 
							ENABLE 			=> PERI_signals(4) and LEDs_signals(0) and DEC_signals(9), 
							CLK 				=> CLK, 
							RST 				=> '0');
							
-- O port map completo do Register 8:
REG8:	 entity work.registrador1bit   generic map (larguraDados => 1)
         port map(	DIN 				=> ACU_ULA_A(0), 
							DOUT 				=> LEDR(8), 
							ENABLE 			=> PERI_signals(4) and LEDs_signals(1) and DEC_signals(9), 
							CLK 				=> CLK, 
							RST 				=> '0'
						);
						
-- O port map completo do Register 9:
REG9:	 entity work.registrador1bit   generic map (larguraDados => 1)
         port map(	DIN 				=> ACU_ULA_A(0), 
							DOUT 				=> LEDR(9), 
							ENABLE 			=> PERI_signals(4) and LEDs_signals(2) and DEC_signals(9), 
							CLK 				=> CLK, 
							RST 				=> '0'
						);



end architecture;