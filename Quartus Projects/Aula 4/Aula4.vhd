library ieee;
use ieee.std_logic_1164.all;

entity Aula4 is
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


architecture arquitetura of Aula4 is

-- Faltam alguns sinais:
  signal MUX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal MEM_MUX_A : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal ROM_DEC : std_logic_vector (12 downto 0);
  signal Sinais_Decodificados : std_logic_vector (3 downto 0);
  signal PC_ROMandSOM : std_logic_vector (8 downto 0);
  signal SOM_PC : std_logic_vector (8 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Reset_A : std_logic;
  signal Operacao_ULA : std_logic_vector (1 downto 0);

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => MEM_MUX_A,
                 entradaB_MUX =>  ROM_DEC(7 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_ULA_B);

-- O port map completo do Acumulador.
REG1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => Reset_A);

-- O botao 3 faz o Reset da MEF:
PC : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => SOM_PC, DOUT => PC_ROMandSOM, ENABLE => '1', CLK => CLK, RST => '0');

-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_ULA_B, saida => Saida_ULA, seletor => Operacao_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (Endereco => PC_ROMandSOM, Dado => ROM_DEC);
			 
-- Decoder
DEC : entity work.Decoder   generic map (dadosEntrada => 4, dadosSaida => 4)
          port map (entradaDecoder => ROM_DEC(12 downto 9), saidaDecoder => Sinais_Decodificados);
			 
-- Somador
SOM :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
          port map( entrada => PC_ROMandSOM, saida => SOM_PC);
		  
MEM :  entity work.bancoRegistradoresArqRegMem   generic map (larguraDados => larguraDados, larguraEndBancoRegs => larguraDados)
			 port map ( clk => CLK,
							endereco => ROM_DEC(7 downto 0),
						   dadoEscrita => REG1_ULA_A,
						   habilita => ROM_DEC(8),
						   saida  => MEM_MUX_A);



selMUX <= Sinais_Decodificados(3);
Habilita_A <= Sinais_Decodificados(2);
Operacao_ULA <= Sinais_Decodificados(1 downto 0);

-- A ligacao dos LEDs:
LEDR (9) <= SelMUX;
LEDR (8) <= Habilita_A;
LEDR (7 downto 0) <= REG1_ULA_A;

end architecture;