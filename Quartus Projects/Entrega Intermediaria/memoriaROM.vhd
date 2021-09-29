library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 4
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
		  
  constant NOP: 	std_logic_vector (3 DOWNTO 0)	:= "0000";
  constant LDA: 	std_logic_vector (3 DOWNTO 0)	:= "0001";
  constant SOM: 	std_logic_vector (3 DOWNTO 0)	:= "0010";
  constant SUB: 	std_logic_vector (3 DOWNTO 0)	:= "0011";
  constant LDI: 	std_logic_vector (3 DOWNTO 0)	:= "0100";
  constant STA: 	std_logic_vector (3 DOWNTO 0)	:= "0101";
  constant JMP: 	std_logic_vector (3 DOWNTO 0)	:= "0110";
  constant JEQ: 	std_logic_vector (3 DOWNTO 0)	:= "0111";
  constant CEQ: 	std_logic_vector (3 DOWNTO 0)	:= "1000";
  constant JSR: 	std_logic_vector (3 DOWNTO 0)	:= "1001";
  constant RET: 	std_logic_vector (3 DOWNTO 0)	:= "1010";
  
  begin

								-- 256 + 0x## se for endereco
			tmp(0)  	:= LDI & '0' & x"00"; -- Carrega o acumulador com o valor 0
			
			
			-- INICIALIZA A PLACA
			
			tmp(1)  	:= STA & '0' & x"00"; -- Armazena o valor do acumulador em MEM[0] (unidade)
			tmp(2)  	:= STA & '0' & x"01"; -- Armazena o valor do acumulador em MEM[1] (dezena)
			tmp(3)  	:= STA & '0' & x"02"; -- Armazena o valor do acumulador em MEM[2] (centena)
			tmp(4)  	:= STA & '0' & x"07"; -- Armazena o valor do acumulador em MEM[7] (milhar)
			tmp(5)  	:= STA & '0' & x"08"; -- Armazena o valor do acumulador em MEM[8] (dezmilhar)
			tmp(6)  	:= STA & '0' & x"09"; -- Armazena o valor do acumulador em MEM[9] (centenamilhar)
			tmp(7)  	:= STA & '0' & x"06"; -- Armazena o valor do acumulador em MEM[6] (flag de inibir)
			tmp(8)  	:= STA & '0' & x"03"; -- Armazena o valor do acumulador em MEM[3] (constante 0)
			tmp(9)  	:= STA & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED07)
			tmp(10)  := STA & '1' & x"01"; -- Armazena o valor do acumulador em MEM[257] (LED8)
			tmp(11)  := STA & '1' & x"02"; -- Armazena o valor do acumulador em MEM[258] (LED9)
			tmp(12)  := STA & '1' & x"20"; -- Armazena o valor do acumulador em MEM[288] (HEX0)
			tmp(13)  := STA & '1' & x"21"; -- Armazena o valor do acumulador em MEM[289] (HEX1)
			tmp(14)  := STA & '1' & x"22"; -- Armazena o valor do acumulador em MEM[290] (HEX2)
			tmp(15)  := STA & '1' & x"23"; -- Armazena o valor do acumulador em MEM[291] (HEX3)
			tmp(16)  := STA & '1' & x"24"; -- Armazena o valor do acumulador em MEM[292] (HEX4)
			tmp(17)  := STA & '1' & x"25"; -- Armazena o valor do acumulador em MEM[293] (HEX5)
			tmp(18)  := LDI & '0' & x"01"; -- Carrega o acumulador com o valor 1
			tmp(19)  := STA & '0' & x"04"; -- Armazena o valor do acumulador em MEM[4] (constante 1)
			tmp(20)  := LDI & '0' & x"0a"; -- Carrega o acumulador com o valor 10
			tmp(21)  := STA & '0' & x"05"; -- Armazena o valor do acumulador em MEM[5] (constante 10)
			tmp(22)  := LDI & '0' & x"09"; -- Carrega o acumulador com o valor 9
			tmp(23) 	:= STA & '0' & x"0a"; -- Armazena o valor do acumulador em MEM[10] (unidade   limite)
			tmp(24) 	:= STA & '0' & x"0b"; -- Armazena o valor do acumulador em MEM[11] (dezena    limite)
			tmp(25) 	:= STA & '0' & x"0c"; -- Armazena o valor do acumulador em MEM[12] (centena   limite)
			tmp(26) 	:= STA & '0' & x"0d"; -- Armazena o valor do acumulador em MEM[13] (milhar    limite)
			tmp(27) 	:= STA & '0' & x"0e"; -- Armazena o valor do acumulador em MEM[14] (dezmilhar limite)
			tmp(28) 	:= STA & '0' & x"0f"; -- Armazena o valor do acumulador em MEM[15] (cemmilhar limite)
			
			
			-- DEBUG, DESATIVAR PARA ENTREGA FINAL
			tmp(29)  := JSR & '1' & x"90"; -- Ativa a sub rotina de DEBUG 
			
			tmp(400) := NOP & '0' & x"00"; -- Inicia DEBUG
			tmp(401) := LDI & '0' & x"09"; -- Carrega o acumulador com o valor 9
			tmp(402) := STA & '0' & x"01"; -- Armazena o valor do acumulador em MEM[1] (dezena   )
			tmp(403) := STA & '0' & x"02"; -- Armazena o valor do acumulador em MEM[2] (centena  )
			tmp(404) := STA & '0' & x"07"; -- Armazena o valor do acumulador em MEM[7] (milhar   )
			tmp(405) := STA & '0' & x"08"; -- Armazena o valor do acumulador em MEM[8] (dezmilhar)
			tmp(406) := STA & '0' & x"09"; -- Armazena o valor do acumulador em MEM[9] (cemmilhar)
			tmp(407) := RET & '0' & x"00"; -- Retorna do DEBUG
			
			
			-- LOOP PRINCIPAL
			
			tmp(30)  := NOP & '0' & x"00";
			tmp(31)  := LDA & '0' & x"06"; -- Carrega o acumulador com a leitura da flag de inibir
			tmp(32)  := CEQ & '0' & x"04"; -- Compara com o valor de MEM[4] (constante 1)
			tmp(33)  := JEQ & '0' & x"27"; -- Desvia se igual a 0 (flag inativa)
			
			tmp(34)  := LDA & '1' & x"60"; -- Carrega o acumulador com a leitura do botão KEY0 (352)
			tmp(35)  := CEQ & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(36)  := JEQ & '0' & x"27"; -- Desvia se igual a 0 (botão não foi pressionado)
			tmp(37)  := JSR & '0' & x"3c"; -- O botão foi pressionado, chama a sub-rotina de incremento
			tmp(38) 	:= NOP & '0' & x"00"; -- Retorno da sub-rotina de incremento
			
			tmp(39)  := LDA & '1' & x"61"; -- Carrega o acumulador com a leitura do botão KEY1 (353)
			tmp(40)  := CEQ & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(41)  := JEQ & '0' & x"2c"; -- Desvia se igual a 0 (botão não foi pressionado)
			tmp(42)  := JSR & '0' & x"e6"; -- O botão foi pressionado, chama a sub-rotina de incremento
			tmp(43)  := NOP & '0' & x"00"; -- Retorno da sub-rotina de incremento
			
			tmp(44)  := JSR & '0' & x"be"; -- Chama a sub rotina para verificar o limite
			
			tmp(45)  := LDA & '1' & x"64"; -- Carrega o acumulador com a leitura do botão FPGA_RESEY (356)
			tmp(46)  := CEQ & '0' & x"04"; -- Compara com o valor de MEM[4] (constante 1)
			tmp(47)  := JEQ & '0' & x"31"; -- Desvia se igual a 0 (botão não foi pressionado)
			tmp(48)  := JSR & '0' & x"a0"; -- O botão foi pressionado, chama a sub-rotina de zerar
			
			tmp(49)  := JSR & '0' & x"7f"; -- Chama a sub rotina para atualizar as telas
			
			tmp(50) 	:= JMP & '0' & x"1e"; -- Fecha o laço principal, volta pra ler os botões de novo
			
			
			-- SUB ROTINA PARA INCREMENTAR
			
			tmp(60) 	:= STA & '1' & x"ff"; -- Limpa a leitura do botão (511)
			
			tmp(61) 	:= LDA & '0' & x"00"; -- Carrega o valor de MEM[0] (unidades)
			tmp(62) 	:= SOM & '0' & x"04"; -- Soma com a constante em MEM[4] (constante 1)
			tmp(63) 	:= STA & '0' & x"00"; -- Salva o incremento em MEM[0] (unidades)
			tmp(64)  := CEQ & '0' & x"05"; -- Compara com o valor de MEM[5] (constante 10)
			tmp(65)  := JEQ & '0' & x"43"; -- Desvia se igual a 0 (chegou a 10)
			tmp(66)  := JMP & '0' & x"75";
			tmp(67)  := LDA & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(68) 	:= STA & '0' & x"00"; -- Armazena o valor no MEM[0] (unidades)
			tmp(69) 	:= LDA & '0' & x"01"; -- Carrega o valor de MEM[1] (dezenas)
			tmp(70) 	:= SOM & '0' & x"04"; -- Soma com a constante em MEM[4] (constante 1)
			tmp(71) 	:= STA & '0' & x"01"; -- Armazena o valor no MEM[1] (dezenas)
			tmp(72)  := CEQ & '0' & x"05"; -- Compara com o valor de MEM[5] (constante 10)
			tmp(73)  := JEQ & '0' & x"4b"; -- Desvia se igual a 0 (chegou a 10)
			tmp(74)  := JMP & '0' & x"75";
			tmp(75)  := LDA & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(76) 	:= STA & '0' & x"01"; -- Armazena o valor no MEM[1] (dezenas)
			tmp(77) 	:= LDA & '0' & x"02"; -- Carrega o valor de MEM[2] (centenas)
			tmp(78) 	:= SOM & '0' & x"04"; -- Soma com a constante em MEM[4] (constante 1)
			tmp(79) 	:= STA & '0' & x"02"; -- Armazena o valor no MEM[2] (centenas)
			tmp(80)  := CEQ & '0' & x"05"; -- Compara com o valor de MEM[5] (constante 10)
			tmp(81)  := JEQ & '0' & x"53"; -- Desvia se igual a 0 (chegou a 10)
			tmp(82)  := JMP & '0' & x"75";
			tmp(83)  := LDA & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(84) 	:= STA & '0' & x"02"; -- Armazena o valor no MEM[2] (centenas)
			tmp(85) 	:= LDA & '0' & x"07"; -- Carrega o valor de MEM[7] (milhares)
			tmp(86) 	:= SOM & '0' & x"04"; -- Soma com a constante em MEM[4] (constante 1)
			tmp(87) 	:= STA & '0' & x"07"; -- Armazena o valor no MEM[7] (milhares)
			tmp(88)  := CEQ & '0' & x"05"; -- Compara com o valor de MEM[5] (constante 10)
			tmp(89)  := JEQ & '0' & x"5b"; -- Desvia se igual a 0 (chegou a 10)
			tmp(90)  := JMP & '0' & x"75";
			tmp(91)  := LDA & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(92) 	:= STA & '0' & x"07"; -- Armazena o valor no MEM[7] (milhares)
			tmp(93) 	:= LDA & '0' & x"08"; -- Carrega o valor de MEM[8] (dezmilhares)
			tmp(94) 	:= SOM & '0' & x"04"; -- Soma com a constante em MEM[4] (constante 1)
			tmp(95) 	:= STA & '0' & x"08"; -- Armazena o valor no MEM[7] (milhares)
			tmp(96)  := CEQ & '0' & x"05"; -- Compara com o valor de MEM[5] (constante 10)
			tmp(97)  := JEQ & '0' & x"63"; -- Desvia se igual a 0 (chegou a 10)
			tmp(98)  := JMP & '0' & x"75";
			tmp(99)  := LDA & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(100) := STA & '0' & x"08"; -- Armazena o valor no MEM[8] (dezmilhares)
			tmp(101) := LDA & '0' & x"09"; -- Carrega o valor de MEM[9] (cemmilhares)
			tmp(102) := SOM & '0' & x"04"; -- Soma com a constante em MEM[4] (constante 1)
			tmp(103) := STA & '0' & x"09"; -- Armazena o valor no MEM[9] (cemmilhares)
			tmp(104) := CEQ & '0' & x"05"; -- Compara com o valor de MEM[5] (constante 10)
			tmp(105) := JEQ & '0' & x"6b"; -- Desvia se igual a 0 (chegou a 10)
			tmp(106) := JMP & '0' & x"75";
			tmp(107) := LDA & '0' & x"04"; -- Carrega o valor de MEM[4] (constante 1)
			tmp(108) := STA & '0' & x"06"; -- Armazena o valor no MEM[6] (ativa flag)
			tmp(109) := STA & '1' & x"02"; -- Armazena o valor no LED9 (limite atingido)
			tmp(110) := LDI & '0' & x"09"; -- Insere o imediato 9 pra reverter um estado no contador
			tmp(111) := STA & '0' & x"00"; -- Armazena o valor do acumulador em MEM[0] (unidade)
			tmp(112) := STA & '0' & x"01"; -- Armazena o valor do acumulador em MEM[1] (dezena)
			tmp(113) := STA & '0' & x"02"; -- Armazena o valor do acumulador em MEM[2] (centena)
			tmp(114) := STA & '0' & x"07"; -- Armazena o valor do acumulador em MEM[7] (milhar)
			tmp(115) := STA & '0' & x"08"; -- Armazena o valor do acumulador em MEM[8] (dezmilhar)
			tmp(116) := STA & '0' & x"09"; -- Armazena o valor do acumulador em MEM[9] (centenamilhar)
			
			tmp(117)	:= RET & '0' & x"00"; -- Retorna da sub-rotina
			
			
			-- SUB ROTINA ATUALIZA AS TELAS HEXADECIMAIS
			
			tmp(127) := LDA & '0' & x"00"; -- Carrega o valor de MEM[0] (unidade)
			tmp(128) := STA & '1' & x"20"; -- Armazena o valor no HEX0 (288)
			tmp(129) := LDA & '0' & x"01"; -- Carrega o valor de MEM[1] (dezenas)
			tmp(130) := STA & '1' & x"21"; -- Armazena o valor no HEX1 (289)
			tmp(131) := LDA & '0' & x"02"; -- Carrega o valor de MEM[2] (centenas)
			tmp(132) := STA & '1' & x"22"; -- Armazena o valor no HEX2 (290)
			tmp(133) := LDA & '0' & x"07"; -- Carrega o valor de MEM[7] (milhares)
			tmp(134) := STA & '1' & x"23"; -- Armazena o valor no HEX3 (291)
			tmp(135) := LDA & '0' & x"08"; -- Carrega o valor de MEM[8] (dezmilhares)
			tmp(136) := STA & '1' & x"24"; -- Armazena o valor no HEX3 (292)
			tmp(137) := LDA & '0' & x"09"; -- Carrega o valor de MEM[9] (cemmilhares)
			tmp(138) := STA & '1' & x"25"; -- Armazena o valor no HEX3 (293)

			tmp(139)	:= RET & '0' & x"00"; -- Retorna da sub-rotina
			
			
			-- SUB ROTINA DE ZERAR A PLACA
			
			tmp(160)	:= LDA & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(161)	:= STA & '0' & x"00"; -- Armazena o valor do acumulador em MEM[0] (unidade)
			tmp(162)	:= STA & '0' & x"01"; -- Armazena o valor do acumulador em MEM[1] (dezena)
			tmp(163)	:= STA & '0' & x"02"; -- Armazena o valor do acumulador em MEM[2] (centena)
			tmp(164)	:= STA & '0' & x"07"; -- Armazena o valor do acumulador em MEM[7] (milhar)
			tmp(165)	:= STA & '0' & x"08"; -- Armazena o valor do acumulador em MEM[8] (dezmilhar)
			tmp(166)	:= STA & '0' & x"09"; -- Armazena o valor do acumulador em MEM[9] (centenamilhar)
			tmp(167)	:= STA & '0' & x"06"; -- Armazena o valor do acumulador em MEM[6] (flag de inibir)
			tmp(168)	:= STA & '1' & x"01"; -- Armazena o valor do acumulador em MEM[257] (LED8)
			tmp(169)	:= STA & '1' & x"02"; -- Armazena o valor do acumulador em MEM[258] (LED9)
			tmp(170)	:= RET & '0' & x"00"; -- Retorna da sub-rotina
			
			-- SUB ROTINA CHECA O LIMITE
			
			tmp(190)	:= LDA & '0' & x"0a"; -- Carrega o valor de MEM[10] (unidade limite)
			tmp(191)	:= CEQ & '0' & x"00"; -- Compara com MEM[0] (unidade)
			tmp(192)	:= JEQ & '0' & x"c2"; -- Desvia se igual a 0 (chegou no limite)
			tmp(193)	:= JMP & '0' & x"d9";
			tmp(194)	:= LDA & '0' & x"0b"; -- Carrega o valor de MEM[11] (dezena limite)
			tmp(195)	:= CEQ & '0' & x"01"; -- Compara com MEM[1] (dezena)
			tmp(196)	:= JEQ & '0' & x"c6"; -- Desvia se igual a 0 (chegou no limite)
			tmp(197)	:= JMP & '0' & x"d9";
			tmp(198)	:= LDA & '0' & x"0c"; -- Carrega o valor de MEM[12] (centena limite)
			tmp(199)	:= CEQ & '0' & x"02"; -- Compara com MEM[2] (centena)
			tmp(200)	:= JEQ & '0' & x"ca"; -- Desvia se igual a 0 (chegou no limite)
			tmp(201)	:= JMP & '0' & x"d9";
			tmp(202)	:= LDA & '0' & x"0d"; -- Carrega o valor de MEM[13] (milhar limite)
			tmp(203)	:= CEQ & '0' & x"07"; -- Compara com MEM[7] (milhar)
			tmp(204)	:= JEQ & '0' & x"ce"; -- Desvia se igual a 0 (chegou no limite)
			tmp(205)	:= JMP & '0' & x"d9";
			tmp(206)	:= LDA & '0' & x"0e"; -- Carrega o valor de MEM[14] (dezmilhar limite)
			tmp(207)	:= CEQ & '0' & x"08"; -- Compara com MEM[8] (dezmilhar)
			tmp(208)	:= JEQ & '0' & x"d2"; -- Desvia se igual a 0 (chegou no limite)
			tmp(209)	:= JMP & '0' & x"d9";
			tmp(210)	:= LDA & '0' & x"0f"; -- Carrega o valor de MEM[15] (centenamilhar limite)
			tmp(211)	:= CEQ & '0' & x"09"; -- Compara com MEM[9] (centenamilhar)
			tmp(212)	:= JEQ & '0' & x"d6"; -- Desvia se igual a 0 (chegou no limite)
			tmp(213)	:= JMP & '0' & x"d9";
			
			tmp(214)	:= LDA & '0' & x"04"; -- Carrega o valor de MEM[4] (constante 1)
			tmp(215)	:= STA & '0' & x"06"; -- Armazena o valor no MEM[6] (ativa flag)
			tmp(216)	:= STA & '1' & x"01"; -- Armazena o valor no LED8 (limite atingido)
			
			tmp(217)	:= RET & '0' & x"00"; -- Retorna da sub-rotina
			
			
			-- SUB ROTINA BOTÃO 1
			
			tmp(230)	:= STA & '1' & x"fe"; -- Limpa a leitura do botão B1 (510)
			tmp(231) := LDA & '0' & x"04"; -- Carrega o valor da constante em MEM[4] (constante 1)
			tmp(232)	:= STA & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(233) := LDA & '1' & x"61"; -- Carrega o acumulador com a leitura do botão KEY1 (353)
			tmp(234) := CEQ & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(235)	:= LDA & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(236) := JEQ & '0' & x"e7"; -- Desvia se igual a 0 (botão não foi pressionado) (231)
			tmp(237)	:= STA & '0' & x"0a"; -- Salva o valor em MEM[10] (unidade limite)
			
			tmp(238)	:= STA & '1' & x"fe"; -- Limpa a leitura do botão B1 (510)
			tmp(239) := LDI & '0' & x"02"; -- Carrega o valor imediato 2 (00000010)
			tmp(240)	:= STA & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(241) := LDA & '1' & x"61"; -- Carrega o acumulador com a leitura do botão KEY1 (353)
			tmp(242) := CEQ & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(243)	:= LDA & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(244) := JEQ & '0' & x"ef"; -- Desvia se igual a 0 (botão não foi pressionado) (239)
			tmp(245)	:= STA & '0' & x"0b"; -- Salva o valor em MEM[11] (dezena limite)
			
			tmp(246)	:= STA & '1' & x"fe"; -- Limpa a leitura do botão B1 (510)
			tmp(247) := LDI & '0' & x"04"; -- Carrega o valor imediato 4 (00000100)
			tmp(248)	:= STA & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(249) := LDA & '1' & x"61"; -- Carrega o acumulador com a leitura do botão KEY1 (353)
			tmp(250) := CEQ & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(251)	:= LDA & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(252) := JEQ & '0' & x"f7"; -- Desvia se igual a 0 (botão não foi pressionado) (247)
			tmp(253)	:= STA & '0' & x"0c"; -- Salva o valor em MEM[12] (centena limite)
			
			tmp(254)	:= STA & '1' & x"fe"; -- Limpa a leitura do botão B1 (510)
			tmp(255) := LDI & '0' & x"08"; -- Carrega o valor imediato 8 (00001000)
			tmp(256)	:= STA & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(257) := LDA & '1' & x"61"; -- Carrega o acumulador com a leitura do botão KEY1 (353)
			tmp(258) := CEQ & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(259)	:= LDA & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(260) := JEQ & '0' & x"ff"; -- Desvia se igual a 0 (botão não foi pressionado) (255)
			tmp(261)	:= STA & '0' & x"0d"; -- Salva o valor em MEM[13] (milhar limite)
			
			tmp(262)	:= STA & '1' & x"fe"; -- Limpa a leitura do botão B1 (510)
			tmp(263) := LDI & '0' & x"10"; -- Carrega o valor imediato 16 (00010000)
			tmp(264)	:= STA & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(265) := LDA & '1' & x"61"; -- Carrega o acumulador com a leitura do botão KEY1 (353)
			tmp(266) := CEQ & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(267)	:= LDA & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(268) := JEQ & '1' & x"07"; -- Desvia se igual a 0 (botão não foi pressionado) (263)
			tmp(269)	:= STA & '0' & x"0e"; -- Salva o valor em MEM[14] (dezmilhar limite)
			
			tmp(270)	:= STA & '1' & x"fe"; -- Limpa a leitura do botão B1 (510)
			tmp(271) := LDI & '0' & x"20"; -- Carrega o valor imediato 32 (00100000)
			tmp(272)	:= STA & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(273) := LDA & '1' & x"61"; -- Carrega o acumulador com a leitura do botão KEY1 (353)
			tmp(274) := CEQ & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(275)	:= LDA & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(276) := JEQ & '1' & x"0f"; -- Desvia se igual a 0 (botão não foi pressionado) (271)
			tmp(277)	:= STA & '0' & x"0f"; -- Salva o valor em MEM[15] (centenamilhar limite)
			
			tmp(287)	:= STA & '1' & x"fe"; -- Limpa a leitura do botão B1 (510)
			tmp(288) := LDA & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(289)	:= STA & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(290)	:= RET & '0' & x"00"; -- Retorna da sub-rotina
			
			
			
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;