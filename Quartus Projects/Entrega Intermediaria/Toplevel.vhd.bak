library ieee;
use ieee.std_logic_1164.all;

entity Aula9 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados 	: natural := 8;
				larguraAddress : natural := 9;
				simulacao 		: boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50		: in std_logic;
	 FPGA_RESET_N	: in std_logic;
    KEY				: in std_logic_vector(3 downto 0);
    SW				: in std_logic_vector(9 downto 0);
	 --DEBUG  		: out std_logic_vector(6 downto 0);
    LEDR  			: out std_logic_vector(9 downto 0);
	 HEX0  			: out std_logic_vector(6 downto 0);
	 HEX1  			: out std_logic_vector(6 downto 0);
	 HEX2  			: out std_logic_vector(6 downto 0);
	 HEX3  			: out std_logic_vector(6 downto 0);
	 HEX4  			: out std_logic_vector(6 downto 0);
	 HEX5  			: out std_logic_vector(6 downto 0)
  );
end entity;


architecture arquitetura of Aula9 is

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
  signal FFP_BUFF0		: std_logic;
  signal FFP_BUFF1		: std_logic;
  signal RST_B0			: std_logic;
  signal RST_B1			: std_logic;
  signal KEY0_treated	: std_logic;
  signal KEY1_treated	: std_logic;

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
				CLK 				<= CLOCK_50;
				KEY0_treated 	<= KEY(0);
				KEY1_treated 	<= KEY(1);
			else generate
				CLK 				<= CLOCK_50;
				
				detectorSub0: work.edgeDetector(bordaSubida)
					port map(	clk 		=> CLOCK_50,
									entrada 	=> (not KEY(0)),
									saida 	=> KEY0_treated
								);
			
				detectorSub1: work.edgeDetector(bordaSubida)
					port map(	clk 		=> CLOCK_50,
									entrada 	=> (not KEY(1)),
									saida 	=> KEY1_treated
								);
end generate;



-- O port map completo da ROM:
ROM : entity work.memoriaROM   			generic map (dataWidth => 13, addrWidth => 9)
         port map(	Endereco 		=> PC_ROMandSOM,
							Dado 				=> ROM_DEC
						);

-- O port map completo do RAM:					
RAM :  entity work.memoriaRAM   			generic map (dataWidth => larguraDados, addrWidth => 6)
         port map(	addr 				=> RAM_ADDRESS(5 downto 0),
							we 				=> DEC_signals(9),
							re					=> DEC_signals(10),
							habilita			=> PERI_signals(0),
							dado_in			=> ACU_ULA_A,
							dado_out 		=> MEM_MUX_A,
							clk 				=> CLK
						);
							
-- O port map completo do Processador:
CPU : entity work.processor   			generic map (larguraDados => larguraDados, larguraAddress => larguraAddress)
         port map(	Data_In 			=> MEM_MUX_A,
							Instruction_In => ROM_DEC,
							CLK 				=> CLK,
							Data_Address 	=> RAM_ADDRESS,
							Data_Out 		=> ACU_ULA_A,
							ROM_Address 	=> PC_ROMandSOM,
							wr 				=> DEC_signals(9),
							rd 				=> DEC_signals(10),
							reset				=> '0'
						);
				 
-- O port map completo do Decoder da Memoria:
DEM : entity work.decoder3x8   			generic map (dadosEntrada => 3, dadosSaida => larguraDados)
         port map(	entradaDecoder	=> RAM_ADDRESS(8 downto 6),
							saidaDecoder 	=> PERI_signals
						);
						
-- O port map completo do Decoder3x8:
D3C : entity work.decoder3x8   			generic map (dadosEntrada => 3, dadosSaida => larguraDados)
         port map(	entradaDecoder	=> RAM_ADDRESS(2 downto 0),
							saidaDecoder 	=> LEDs_signals
						);
						
-- O port map completo do Register 0-7:
REG7:	 entity work.registradorGenerico generic map (larguraDados => 8)
			port map(	DIN 				=> ACU_ULA_A, 
							DOUT 				=> LEDR (7 downto 0), 
							ENABLE 			=> PERI_signals(4) and LEDs_signals(0) and DEC_signals(9) and not(RAM_ADDRESS(5)), 
							CLK 				=> CLK, 
							RST 				=> '0');
							
-- O port map completo do Register 8:
REG8:	 entity work.registrador1bit
         port map(	DIN 				=> ACU_ULA_A(0), 
							DOUT 				=> LEDR(8), 
							ENABLE 			=> PERI_signals(4) and LEDs_signals(1) and DEC_signals(9) and not(RAM_ADDRESS(5)), 
							CLK 				=> CLK, 
							RST 				=> '0'
						);
						
-- O port map completo do Register 9:
REG9:	 entity work.registrador1bit
         port map(	DIN 				=> ACU_ULA_A(0), 
							DOUT 				=> LEDR(9), 
							ENABLE 			=> PERI_signals(4) and LEDs_signals(2) and DEC_signals(9) and not(RAM_ADDRESS(5)), 
							CLK 				=> CLK, 
							RST 				=> '0'
						);
						
-- O port map completo do Display 7a:
L7Ga:	 entity work.logic7   				generic map (IN_WIDTH => 4, OUT_WIDTH => 7)
         port map(	dataIN 			=> ACU_ULA_A(3 downto 0), 
							displayOUT 		=> HEX0, 
							enable 			=> PERI_signals(4) and LEDs_signals(0) and DEC_signals(9) and (RAM_ADDRESS(5)), 
							clk 				=> CLK
						);
						
-- O port map completo do Display 7b:
L7Gb:	 entity work.logic7   				generic map (IN_WIDTH => 4, OUT_WIDTH => 7)
         port map(	dataIN 			=> ACU_ULA_A(3 downto 0), 
							displayOUT 		=> HEX1, 
							enable 			=> PERI_signals(4) and LEDs_signals(1) and DEC_signals(9) and (RAM_ADDRESS(5)), 
							clk 				=> CLK
						);
						
-- O port map completo do Display 7c:
L7Gc:	 entity work.logic7   				generic map (IN_WIDTH => 4, OUT_WIDTH => 7)
         port map(	dataIN 			=> ACU_ULA_A(3 downto 0), 
							displayOUT 		=> HEX2, 
							enable 			=> PERI_signals(4) and LEDs_signals(2) and DEC_signals(9) and (RAM_ADDRESS(5)), 
							clk 				=> CLK
						);
						
-- O port map completo do Display 7d:
L7Gd:	 entity work.logic7   				generic map (IN_WIDTH => 4, OUT_WIDTH => 7)
         port map(	dataIN 			=> ACU_ULA_A(3 downto 0), 
							displayOUT 		=> HEX3, 
							enable 			=> PERI_signals(4) and LEDs_signals(3) and DEC_signals(9) and (RAM_ADDRESS(5)), 
							clk 				=> CLK
						);
						
-- O port map completo do Display 7e:
L7Ge:	 entity work.logic7   				generic map (IN_WIDTH => 4, OUT_WIDTH => 7)
         port map(	dataIN 			=> ACU_ULA_A(3 downto 0), 
							displayOUT 		=> HEX4, 
							enable 			=> PERI_signals(4) and LEDs_signals(4) and DEC_signals(9) and (RAM_ADDRESS(5)), 
							clk 				=> CLK
						);
						
-- O port map completo do Display 7f:
L7Gf:	 entity work.logic7   				generic map (IN_WIDTH => 4, OUT_WIDTH => 7)
         port map(	dataIN 			=> ACU_ULA_A(3 downto 0), 
							displayOUT 		=> HEX5, 
							enable 			=> PERI_signals(4) and LEDs_signals(5) and DEC_signals(9) and (RAM_ADDRESS(5)), 
							clk 				=> CLK
						);
						
-- O port map completo do Buffer 7:
BUF7:	 entity work.butBuffer8x
         port map(	data_in 			=> SW(7 downto 0),
							data_out 		=> MEM_MUX_A,
							habilita 		=> PERI_signals(5) and LEDs_signals(0) and DEC_signals(10) and not(RAM_ADDRESS(5))
						);

-- O port map completo do Buffer 8:
BUF8:	 entity work.butBuffer
         port map(	data_in 			=> SW(8),
							data_out 		=> MEM_MUX_A(0),
							habilita 		=> PERI_signals(5) and LEDs_signals(1) and DEC_signals(10) and not(RAM_ADDRESS(5))
						);
						
-- O port map completo do Buffer 9:
BUF9:	 entity work.butBuffer
         port map(	data_in 			=> SW(9),
							data_out 		=> MEM_MUX_A(0),
							habilita 		=> PERI_signals(5) and LEDs_signals(2) and DEC_signals(10) and not(RAM_ADDRESS(5))
						);
						
-- O port map completo do Buffer Key0:
BKY0:	 entity work.butBuffer
         port map(	data_in 			=> FFP_BUFF0,
							data_out 		=> MEM_MUX_A(0),
							habilita 		=> PERI_signals(5) and LEDs_signals(0) and DEC_signals(10) and RAM_ADDRESS(5)
						);
						
-- O port map completo do Buffer Key1:
BKY1:	 entity work.butBuffer
         port map(	data_in 			=> FFP_BUFF1,
							data_out 		=> MEM_MUX_A(0),
							habilita 		=> PERI_signals(5) and LEDs_signals(1) and DEC_signals(10) and RAM_ADDRESS(5)
						);
						
-- O port map completo do Buffer Key2:
BKY2:	 entity work.butBuffer
         port map(	data_in 			=> KEY(2),
							data_out 		=> MEM_MUX_A(0),
							habilita 		=> PERI_signals(5) and LEDs_signals(2) and DEC_signals(10) and RAM_ADDRESS(5)
						);
						
-- O port map completo do Buffer Key3:
BKY3:	 entity work.butBuffer
         port map(	data_in 			=> KEY(3),
							data_out 		=> MEM_MUX_A(0),
							habilita 		=> PERI_signals(5) and LEDs_signals(3) and DEC_signals(10) and RAM_ADDRESS(5)
						);
						
-- O port map completo do Buffer Key4:
BKYR:	 entity work.butBuffer
         port map(	data_in 			=> FPGA_RESET_N,
							data_out 		=> MEM_MUX_A(0),
							habilita 		=> PERI_signals(5) and LEDs_signals(4) and DEC_signals(10) and RAM_ADDRESS(5)
						);
						
-- O port map completo do Flipflop do KEY0:						
FFK0:  entity work.registrador1bit
         port map(	DIN	 			=> '1',
							DOUT	 			=> FFP_BUFF0,
							RST 				=> RST_B0,
							CLK 				=> KEY0_treated,
							ENABLE			=> '1'
						);
						
-- O port map completo do Flipflop do KEY1:						
FFK1:  entity work.registrador1bit
         port map(	DIN	 			=> '1',
							DOUT	 			=> FFP_BUFF1,
							RST 				=> RST_B1,
							CLK 				=> KEY1_treated,
							ENABLE			=> '1'
						);

RST_B0		<=	RAM_ADDRESS(8) and RAM_ADDRESS(7) and RAM_ADDRESS(6) and RAM_ADDRESS(5) and RAM_ADDRESS(4) and RAM_ADDRESS(3) and RAM_ADDRESS(2) and RAM_ADDRESS(1) and RAM_ADDRESS(0);
RST_B1		<=	RAM_ADDRESS(8) and RAM_ADDRESS(7) and RAM_ADDRESS(6) and RAM_ADDRESS(5) and RAM_ADDRESS(4) and RAM_ADDRESS(3) and RAM_ADDRESS(2) and RAM_ADDRESS(1) and not(RAM_ADDRESS(0));

--DEBUG(0) <= FFP_BUFF0;
--DEBUG(1) <= PERI_signals(5) and LEDs_signals(0) and DEC_signals(10) and (RAM_ADDRESS(5));
--DEBUG(2) <= MEM_MUX_A(0);

end architecture;