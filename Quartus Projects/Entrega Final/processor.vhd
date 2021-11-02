library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processor is
  generic   (
		larguraDados 	: natural := 8;
		larguraAddress : natural := 9
  );

  port   (
    -- Input ports
    Data_In  			:  in  std_logic_vector(larguraDados-1 downto 0);
	 Instruction_In  	:  in  std_logic_vector(14 downto 0);
    reset	  			: 	in  std_logic;
    CLK     			: 	in  std_logic;
    
    -- Output ports
    Data_Address 		:  out  std_logic_vector(larguraAddress-1 downto 0);
	 Data_Out	 		:  out  std_logic_vector(larguraDados-1 downto 0);
	 ROM_Address 		:  out  std_logic_vector(larguraAddress-1 downto 0);
	 wr		  			: 	out  std_logic;
    rd     				: 	out  std_logic

  );
end entity;


architecture arquitetura of processor is

-- Sinais usados:
  signal MUX_ULA_B 		: std_logic_vector (larguraDados-1 downto 0);
  signal MEM_MUX_A 		: std_logic_vector (larguraDados-1 downto 0);
  signal ACU_ULA_A 		: std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA 		: std_logic_vector (larguraDados-1 downto 0);
  signal ROM_DEC 			: std_logic_vector (14 downto 0);
  signal DEC_signals 	: std_logic_vector (10 downto 0);
  signal LOG_MUX4		 	: std_logic_vector (1 downto 0);
  signal PC_ROMandSOM	: std_logic_vector (larguraAddress-1 downto 0);
  signal SOM_MUX 			: std_logic_vector (larguraAddress-1 downto 0);
  signal MUX4_PC 			: std_logic_vector (larguraAddress-1 downto 0);
  signal RET_MUX4 		: std_logic_vector (larguraAddress-1 downto 0);
  signal FLAG_ZF 			: std_logic;
  signal ULA_FLAG 		: std_logic;

begin

-- MUX 2x1 para ULA e RAM:
MUX :	entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
			port map( 	entradaA_MUX 	=> MEM_MUX_A,
							entradaB_MUX 	=> ROM_DEC(7 downto 0),
							seletor_MUX 	=> DEC_signals(3),
							saida_MUX 		=> MUX_ULA_B
						);
		
-- O port map completo do Acumulador:
--ACU : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
--			port map(	DIN 				=> Saida_ULA,
--							DOUT 				=> ACU_ULA_A,
--							ENABLE 			=> DEC_signals(2),
--							CLK 				=> CLK,
--							RST 				=> '0'
--						);

-- O port map completo do Registrador Memoria:
R2M  : entity work.bancoRegistradoresArqRegMem   generic map (larguraDados => larguraDados, larguraEndBancoRegs => 2)
         port map(	dadoEscrita 	=> Saida_ULA,
							saida 			=> ACU_ULA_A,
							endereco			=> ROM_DEC(10 downto 9),
							habilita			=> DEC_signals(2),
							clk 				=> CLK
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
						
-- O port map completo do Decoder:
DEC : entity work.Decoder   generic map (dadosEntrada => 4, dadosSaida => 11)
         port map(	entradaDecoder => ROM_DEC(14 downto 11),
							saidaDecoder 	=> DEC_signals
						);
			 
-- O port map completo do Somador:
SOM :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
         port map( 	entrada 			=> PC_ROMandSOM,
							saida 			=> SOM_MUX
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
FREG:	 entity work.registrador1bit
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

-- Conexões de In/Out:
MEM_MUX_A			<= Data_In;
ROM_DEC 				<= Instruction_In;
Data_Address		<= ROM_DEC(8 downto 0);
ROM_Address			<= PC_ROMandSOM;
Data_Out				<= ACU_ULA_A;
wr						<= DEC_signals(9);
rd						<=	DEC_signals(10);
							
end architecture;