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
		  
  constant NOP:   std_logic_vector (3 DOWNTO 0)	:= "0000";
  constant LDA:   std_logic_vector (3 DOWNTO 0)	:= "0001";
  constant SOM:   std_logic_vector (3 DOWNTO 0)	:= "0010";
  constant SUB:   std_logic_vector (3 DOWNTO 0)	:= "0011";
  constant LDI:   std_logic_vector (3 DOWNTO 0)	:= "0100";
  constant STA:   std_logic_vector (3 DOWNTO 0)	:= "0101";
  constant JMP:   std_logic_vector (3 DOWNTO 0)	:= "0110";
  constant JEQ:   std_logic_vector (3 DOWNTO 0)	:= "0111";
  constant CEQ:   std_logic_vector (3 DOWNTO 0)	:= "1000";
  constant JSR:   std_logic_vector (3 DOWNTO 0)	:= "1001";
  constant RET:   std_logic_vector (3 DOWNTO 0)	:= "1010";
  
  constant R0:    std_logic_vector (1 DOWNTO 0)	:= "00";
  constant R1:    std_logic_vector (1 DOWNTO 0)	:= "01";
  constant R2:    std_logic_vector (1 DOWNTO 0)	:= "10";
  constant R3:    std_logic_vector (1 DOWNTO 0)	:= "11";
  constant X :    boolean                       := TRUE;
  
  
begin

gravar:	if X then
			-- CARREGA OS IMEDIATOS
										--256 + 0x## se for endereco
			tmp(0)   := LDI & R0 & '0' & x"00"; -- Carrega o R0 com o valor 0
			tmp(1)   := LDI & R1 & '0' & x"01"; -- Carrega o R1 com o valor 1
			tmp(2)   := LDI & R2 & '0' & x"09"; -- Carrega o R2 com o valor 9
			tmp(3)   := LDI & R3 & '0' & x"0a"; -- Carrega o R3 com o valor 10
			
			
			-- INICIALIZA A PLACA
			
			tmp(4)   := STA & R0 & '0' & x"00"; -- Armazena o valor do R0 em MEM[0] (unidade)
			tmp(5)   := STA & R0 & '0' & x"01"; -- Armazena o valor do R0 em MEM[1] (dezena)
			tmp(6)   := STA & R0 & '0' & x"02"; -- Armazena o valor do R0 em MEM[2] (centena)
			tmp(7)   := STA & R0 & '0' & x"07"; -- Armazena o valor do R0 em MEM[7] (milhar)
			tmp(8)   := STA & R0 & '0' & x"08"; -- Armazena o valor do R0 em MEM[8] (dezmilhar)
			tmp(9)   := STA & R0 & '0' & x"09"; -- Armazena o valor do R0 em MEM[9] (centenamilhar)
			tmp(10)  := STA & R0 & '0' & x"06"; -- Armazena o valor do R0 em MEM[6] (flag de inibir)
			tmp(11)  := STA & R0 & '0' & x"03"; -- Armazena o valor do R0 em MEM[3] (constante 0)
			tmp(12)  := STA & R0 & '1' & x"00"; -- Armazena o valor do R0 em MEM[256] (LED07)
			tmp(13)  := STA & R0 & '1' & x"01"; -- Armazena o valor do R0 em MEM[257] (LED8)
			tmp(14)  := STA & R0 & '1' & x"02"; -- Armazena o valor do R0 em MEM[258] (LED9)
			tmp(15)  := STA & R0 & '1' & x"20"; -- Armazena o valor do R0 em MEM[288] (HEX0)
			tmp(16)  := STA & R0 & '1' & x"21"; -- Armazena o valor do R0 em MEM[289] (HEX1)
			tmp(17)  := STA & R0 & '1' & x"22"; -- Armazena o valor do R0 em MEM[290] (HEX2)
			tmp(18)  := STA & R0 & '1' & x"23"; -- Armazena o valor do R0 em MEM[291] (HEX3)
			tmp(19)  := STA & R0 & '1' & x"24"; -- Armazena o valor do R0 em MEM[292] (HEX4)
			tmp(20)  := STA & R0 & '1' & x"25"; -- Armazena o valor do R0 em MEM[293] (HEX5)
			tmp(21)  := STA & R1 & '0' & x"04"; -- Armazena o valor do R1 em MEM[4] (constante 1)
			tmp(22)  := STA & R3 & '0' & x"05"; -- Armazena o valor do R3 em MEM[5] (constante 10)
			tmp(23)  := STA & R2 & '0' & x"0a"; -- Armazena o valor do R2 em MEM[10] (unidade   limite)
			tmp(24)  := STA & R2 & '0' & x"0b"; -- Armazena o valor do R2 em MEM[11] (dezena    limite)
			tmp(25)  := STA & R2 & '0' & x"0c"; -- Armazena o valor do R2 em MEM[12] (centena   limite)
			tmp(26)  := STA & R2 & '0' & x"0d"; -- Armazena o valor do R2 em MEM[13] (milhar    limite)
			tmp(27)  := STA & R2 & '0' & x"0e"; -- Armazena o valor do R2 em MEM[14] (dezmilhar limite)
			tmp(28)  := STA & R2 & '0' & x"0f"; -- Armazena o valor do R2 em MEM[15] (cemmilhar limite)
			
			
			-- DEBUG, DESATIVAR PARA ENTREGA FINAL
			--tmp(29)  := JSR & R0 & '1' & x"90"; -- Ativa a sub rotina de DEBUG 
			
			tmp(400) := NOP & R0 & '0' & x"00"; -- Inicia DEBUG
			tmp(401) := LDI & R0 & '0' & x"09"; -- Carrega o R0 com o valor 9
			tmp(402) := STA & R0 & '0' & x"01"; -- Armazena o valor do R0 em MEM[1] (dezena   )
			tmp(403) := STA & R0 & '0' & x"02"; -- Armazena o valor do R0 em MEM[2] (centena  )
			tmp(404) := STA & R0 & '0' & x"07"; -- Armazena o valor do R0 em MEM[7] (milhar   )
			tmp(405) := STA & R0 & '0' & x"08"; -- Armazena o valor do R0 em MEM[8] (dezmilhar)
			tmp(406) := STA & R0 & '0' & x"09"; -- Armazena o valor do R0 em MEM[9] (cemmilhar)
			tmp(407) := RET & R0 & '0' & x"00"; -- Retorna do DEBUG
			
			
			-- LOOP PRINCIPAL
			
			tmp(30)  := NOP & R0 & '0' & x"00";
			tmp(31)  := LDA & R0 & '0' & x"06"; -- Carrega o R0 com a leitura da flag de inibir
			tmp(32)  := CEQ & R0 & '0' & x"04"; -- Compara com o valor de MEM[4] (constante 1)
			tmp(33)  := JEQ & R0 & '0' & x"2c"; -- Desvia se igual a 0 (flag inativa)
			
			tmp(34)  := LDA & R0 & '1' & x"60"; -- Carrega o R0 com a leitura do botão KEY0 (352)
			tmp(35)  := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(36)  := JEQ & R0 & '0' & x"27"; -- Desvia se igual a 0 (botão não foi pressionado)
			tmp(37)  := JSR & R0 & '0' & x"3c"; -- O botão foi pressionado, chama a sub-rotina
			tmp(38)  := NOP & R0 & '0' & x"00"; -- Retorno da sub-rotina de incremento
			
			tmp(39)  := LDA & R0 & '1' & x"63"; -- Carrega o R0 com a leitura do botão KEY3 (355)
			tmp(40)  := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(41)  := JEQ & R0 & '0' & x"2c"; -- Desvia se igual a 0 (botão não foi pressionado)
			tmp(42)  := JSR & R0 & '1' & x"2c"; -- O botão foi pressionado, chama a sub-rotina
			tmp(43)  := NOP & R0 & '0' & x"00"; -- Retorno da sub-rotina de incremento
			
			tmp(44)  := LDA & R1 & '1' & x"61"; -- Carrega o R1 com a leitura do botão KEY1 (353)
			tmp(45)  := CEQ & R1 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(46)  := JEQ & R1 & '0' & x"31"; -- Desvia se igual a 0 (botão não foi pressionado)
			tmp(47)  := JSR & R1 & '0' & x"e6"; -- O botão foi pressionado, chama a sub-rotina
			tmp(48)  := NOP & R1 & '0' & x"00"; -- Retorno da sub-rotina de incremento
			
			tmp(49)  := JSR & R0 & '0' & x"be"; -- Chama a sub rotina para verificar o limite
			
			tmp(50)  := LDA & R1 & '1' & x"62"; -- Carrega o R1 com a leitura do botão KEY2 (354)
			tmp(51)  := CEQ & R1 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(52)  := JEQ & R1 & '0' & x"36"; -- Desvia se igual a 0 (botão não foi pressionado)
			tmp(53)  := JSR & R1 & '1' & x"68"; -- O botão foi pressionado, chama a sub-rotina
			
			tmp(54)  := LDA & R3 & '1' & x"64"; -- Carrega o R3 com a leitura do botão FPGA_RESEY (356)
			tmp(55)  := CEQ & R3 & '0' & x"04"; -- Compara com o valor de MEM[4] (constante 1)
			tmp(56)  := JEQ & R3 & '0' & x"3a"; -- Desvia se igual a 0 (botão não foi pressionado)
			tmp(57)  := JSR & R3 & '0' & x"a0"; -- O botão foi pressionado, chama a sub-rotina de zerar
			
			tmp(58)  := JSR & R0 & '0' & x"7f"; -- Chama a sub rotina para atualizar as telas
			
			tmp(59)  := JMP & R0 & '0' & x"1e"; -- Fecha o laço principal, volta pra ler os botões de novo
			
			
			-- SUB ROTINA PARA INCREMENTAR
			
			tmp(60)  := STA & R0 & '1' & x"ff"; -- Limpa a leitura do botão (511)
			
			tmp(61)  := LDA & R0 & '0' & x"00"; -- Carrega o valor de MEM[0] (unidades)
			tmp(62)  := SOM & R0 & '0' & x"04"; -- Soma com a constante em MEM[4] (constante 1)
			tmp(63)  := STA & R0 & '0' & x"00"; -- Salva o incremento em MEM[0] (unidades)
			tmp(64)  := CEQ & R0 & '0' & x"05"; -- Compara com o valor de MEM[5] (constante 10)
			tmp(65)  := JEQ & R0 & '0' & x"43"; -- Desvia se igual a 0 (chegou a 10)
			tmp(66)  := JMP & R0 & '0' & x"75";
			tmp(67)  := LDA & R0 & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(68)  := STA & R0 & '0' & x"00"; -- Armazena o valor no MEM[0] (unidades)
			tmp(69)  := LDA & R0 & '0' & x"01"; -- Carrega o valor de MEM[1] (dezenas)
			tmp(70)  := SOM & R0 & '0' & x"04"; -- Soma com a constante em MEM[4] (constante 1)
			tmp(71)  := STA & R0 & '0' & x"01"; -- Armazena o valor no MEM[1] (dezenas)
			tmp(72)  := CEQ & R0 & '0' & x"05"; -- Compara com o valor de MEM[5] (constante 10)
			tmp(73)  := JEQ & R0 & '0' & x"4b"; -- Desvia se igual a 0 (chegou a 10)
			tmp(74)  := JMP & R0 & '0' & x"75";
			tmp(75)  := LDA & R0 & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(76)  := STA & R0 & '0' & x"01"; -- Armazena o valor no MEM[1] (dezenas)
			tmp(77)  := LDA & R0 & '0' & x"02"; -- Carrega o valor de MEM[2] (centenas)
			tmp(78)  := SOM & R0 & '0' & x"04"; -- Soma com a constante em MEM[4] (constante 1)
			tmp(79)  := STA & R0 & '0' & x"02"; -- Armazena o valor no MEM[2] (centenas)
			tmp(80)  := CEQ & R0 & '0' & x"05"; -- Compara com o valor de MEM[5] (constante 10)
			tmp(81)  := JEQ & R0 & '0' & x"53"; -- Desvia se igual a 0 (chegou a 10)
			tmp(82)  := JMP & R0 & '0' & x"75";
			tmp(83)  := LDA & R0 & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(84)  := STA & R0 & '0' & x"02"; -- Armazena o valor no MEM[2] (centenas)
			tmp(85)  := LDA & R0 & '0' & x"07"; -- Carrega o valor de MEM[7] (milhares)
			tmp(86)  := SOM & R0 & '0' & x"04"; -- Soma com a constante em MEM[4] (constante 1)
			tmp(87)  := STA & R0 & '0' & x"07"; -- Armazena o valor no MEM[7] (milhares)
			tmp(88)  := CEQ & R0 & '0' & x"05"; -- Compara com o valor de MEM[5] (constante 10)
			tmp(89)  := JEQ & R0 & '0' & x"5b"; -- Desvia se igual a 0 (chegou a 10)
			tmp(90)  := JMP & R0 & '0' & x"75";
			tmp(91)  := LDA & R0 & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(92)  := STA & R0 & '0' & x"07"; -- Armazena o valor no MEM[7] (milhares)
			tmp(93)  := LDA & R0 & '0' & x"08"; -- Carrega o valor de MEM[8] (dezmilhares)
			tmp(94)  := SOM & R0 & '0' & x"04"; -- Soma com a constante em MEM[4] (constante 1)
			tmp(95)  := STA & R0 & '0' & x"08"; -- Armazena o valor no MEM[7] (milhares)
			tmp(96)  := CEQ & R0 & '0' & x"05"; -- Compara com o valor de MEM[5] (constante 10)
			tmp(97)  := JEQ & R0 & '0' & x"63"; -- Desvia se igual a 0 (chegou a 10)
			tmp(98)  := JMP & R0 & '0' & x"75";
			tmp(99)  := LDA & R0 & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(100) := STA & R0 & '0' & x"08"; -- Armazena o valor no MEM[8] (dezmilhares)
			tmp(101) := LDA & R0 & '0' & x"09"; -- Carrega o valor de MEM[9] (cemmilhares)
			tmp(102) := SOM & R0 & '0' & x"04"; -- Soma com a constante em MEM[4] (constante 1)
			tmp(103) := STA & R0 & '0' & x"09"; -- Armazena o valor no MEM[9] (cemmilhares)
			tmp(104) := CEQ & R0 & '0' & x"05"; -- Compara com o valor de MEM[5] (constante 10)
			tmp(105) := JEQ & R0 & '0' & x"6b"; -- Desvia se igual a 0 (chegou a 10)
			tmp(106) := JMP & R0 & '0' & x"75";
			tmp(107) := LDA & R2 & '0' & x"04"; -- Carrega o valor de MEM[4] em R2 (constante 1)
			tmp(108) := LDI & R3 & '0' & x"09"; -- Insere o imediato 9 em R3 para reverter um estado no contador
			tmp(109) := STA & R2 & '0' & x"06"; -- Armazena o valor no MEM[6] (ativa flag)
			tmp(110) := STA & R2 & '1' & x"02"; -- Armazena o valor no LED9 (limite atingido)
			tmp(111) := STA & R3 & '0' & x"00"; -- Armazena o valor do acumulador em MEM[0] (unidade)
			tmp(112) := STA & R3 & '0' & x"01"; -- Armazena o valor do acumulador em MEM[1] (dezena)
			tmp(113) := STA & R3 & '0' & x"02"; -- Armazena o valor do acumulador em MEM[2] (centena)
			tmp(114) := STA & R3 & '0' & x"07"; -- Armazena o valor do acumulador em MEM[7] (milhar)
			tmp(115) := STA & R3 & '0' & x"08"; -- Armazena o valor do acumulador em MEM[8] (dezmilhar)
			tmp(116) := STA & R3 & '0' & x"09"; -- Armazena o valor do acumulador em MEM[9] (centenamilhar)
			tmp(117) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina
			
			
			-- SUB ROTINA ATUALIZA AS TELAS HEXADECIMAIS
			
			tmp(127) := LDA & R0 & '0' & x"00"; -- Carrega o valor de MEM[0] (unidade)
			tmp(128) := LDA & R1 & '0' & x"01"; -- Carrega o valor de MEM[1] (dezenas)
			tmp(129) := LDA & R2 & '0' & x"02"; -- Carrega o valor de MEM[2] (centenas)
			tmp(130) := STA & R0 & '1' & x"20"; -- Armazena o valor no HEX0 (288)
			tmp(131) := STA & R1 & '1' & x"21"; -- Armazena o valor no HEX1 (289)
			tmp(132) := STA & R2 & '1' & x"22"; -- Armazena o valor no HEX2 (290)
			tmp(133) := LDA & R0 & '0' & x"07"; -- Carrega o valor de MEM[7] (milhares)
			tmp(134) := LDA & R1 & '0' & x"08"; -- Carrega o valor de MEM[8] (dezmilhares)
			tmp(135) := LDA & R2 & '0' & x"09"; -- Carrega o valor de MEM[9] (cemmilhares)
			tmp(136) := STA & R0 & '1' & x"23"; -- Armazena o valor no HEX3 (291)
			tmp(137) := STA & R1 & '1' & x"24"; -- Armazena o valor no HEX4 (292)
			tmp(138) := STA & R2 & '1' & x"25"; -- Armazena o valor no HEX5 (293)
			tmp(139) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina
			
			
			-- SUB ROTINA DE ZERAR A PLACA
			
			tmp(160) := LDA & R0 & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(161) := STA & R0 & '0' & x"00"; -- Armazena o valor do R0 em MEM[0] (unidade)
			tmp(162) := STA & R0 & '0' & x"01"; -- Armazena o valor do R0 em MEM[1] (dezena)
			tmp(163) := STA & R0 & '0' & x"02"; -- Armazena o valor do R0 em MEM[2] (centena)
			tmp(164) := STA & R0 & '0' & x"07"; -- Armazena o valor do R0 em MEM[7] (milhar)
			tmp(165) := STA & R0 & '0' & x"08"; -- Armazena o valor do R0 em MEM[8] (dezmilhar)
			tmp(166) := STA & R0 & '0' & x"09"; -- Armazena o valor do R0 em MEM[9] (centenamilhar)
			tmp(167) := STA & R0 & '0' & x"06"; -- Armazena o valor do R0 em MEM[6] (flag de inibir)
			tmp(168) := STA & R0 & '1' & x"01"; -- Armazena o valor do R0 em MEM[257] (LED8)
			tmp(169) := STA & R0 & '1' & x"02"; -- Armazena o valor do R0 em MEM[258] (LED9)
			tmp(170) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina
			
			-- SUB ROTINA CHECA O LIMITE
			
			tmp(190) := LDA & R0 & '0' & x"0a"; -- Carrega o valor de MEM[10] (unidade limite)
			tmp(191) := CEQ & R0 & '0' & x"00"; -- Compara com MEM[0] (unidade)
			tmp(192) := JEQ & R0 & '0' & x"c2"; -- Desvia se igual a 0 (chegou no limite)
			tmp(193) := JMP & R0 & '0' & x"d9";
			tmp(194) := LDA & R1 & '0' & x"0b"; -- Carrega o valor de MEM[11] (dezena limite)
			tmp(195) := CEQ & R1 & '0' & x"01"; -- Compara com MEM[1] (dezena)
			tmp(196) := JEQ & R1 & '0' & x"c6"; -- Desvia se igual a 0 (chegou no limite)
			tmp(197) := JMP & R0 & '0' & x"d9";
			tmp(198) := LDA & R2 & '0' & x"0c"; -- Carrega o valor de MEM[12] (centena limite)
			tmp(199) := CEQ & R2 & '0' & x"02"; -- Compara com MEM[2] (centena)
			tmp(200) := JEQ & R2 & '0' & x"ca"; -- Desvia se igual a 0 (chegou no limite)
			tmp(201) := JMP & R0 & '0' & x"d9";
			tmp(202) := LDA & R3 & '0' & x"0d"; -- Carrega o valor de MEM[13] (milhar limite)
			tmp(203) := CEQ & R3 & '0' & x"07"; -- Compara com MEM[7] (milhar)
			tmp(204) := JEQ & R3 & '0' & x"ce"; -- Desvia se igual a 0 (chegou no limite)
			tmp(205) := JMP & R0 & '0' & x"d9";
			tmp(206) := LDA & R0 & '0' & x"0e"; -- Carrega o valor de MEM[14] (dezmilhar limite)
			tmp(207) := CEQ & R0 & '0' & x"08"; -- Compara com MEM[8] (dezmilhar)
			tmp(208) := JEQ & R0 & '0' & x"d2"; -- Desvia se igual a 0 (chegou no limite)
			tmp(209) := JMP & R0 & '0' & x"d9";
			tmp(210) := LDA & R1 & '0' & x"0f"; -- Carrega o valor de MEM[15] (centenamilhar limite)
			tmp(211) := CEQ & R1 & '0' & x"09"; -- Compara com MEM[9] (centenamilhar)
			tmp(212) := JEQ & R1 & '0' & x"d6"; -- Desvia se igual a 0 (chegou no limite)
			tmp(213) := JMP & R0 & '0' & x"d9";
			
			tmp(214) := LDA & R2 & '0' & x"04"; -- Carrega o valor de MEM[4] (constante 1)
			tmp(215) := STA & R2 & '0' & x"06"; -- Armazena o valor no MEM[6] (ativa flag)
			tmp(216) := STA & R2 & '1' & x"01"; -- Armazena o valor no LED8 (limite atingido)
			
			tmp(217) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina
			
			
			-- SUB ROTINA BOTÃO 1
			
			tmp(230) := STA & R0 & '1' & x"fe"; -- Limpa a leitura do botão B1 (510)
			tmp(231) := LDA & R1 & '0' & x"04"; -- Carrega o valor da constante em MEM[4] (constante 1)
			tmp(232) := STA & R1 & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(233) := LDA & R0 & '1' & x"61"; -- Carrega o acumulador com a leitura do botão KEY1 (353)
			tmp(234) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(235) := LDA & R2 & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(236) := JEQ & R0 & '0' & x"e9"; -- Desvia se igual a 0 (botão não foi pressionado) (233)
			tmp(237) := STA & R2 & '0' & x"0a"; -- Salva o valor em MEM[10] (unidade limite)
			
			tmp(238) := STA & R0 & '1' & x"fe"; -- Limpa a leitura do botão B1 (510)
			tmp(239) := LDI & R1 & '0' & x"02"; -- Carrega o valor imediato 2 (00000010)
			tmp(240) := STA & R1 & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(241) := LDA & R0 & '1' & x"61"; -- Carrega o acumulador com a leitura do botão KEY1 (353)
			tmp(242) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(243) := LDA & R2 & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(244) := JEQ & R0 & '0' & x"f1"; -- Desvia se igual a 0 (botão não foi pressionado) (241)
			tmp(245) := STA & R2 & '0' & x"0b"; -- Salva o valor em MEM[11] (dezena limite)
			
			tmp(246) := STA & R0 & '1' & x"fe"; -- Limpa a leitura do botão B1 (510)
			tmp(247) := LDI & R1 & '0' & x"04"; -- Carrega o valor imediato 4 (00000100)
			tmp(248) := STA & R1 & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(249) := LDA & R0 & '1' & x"61"; -- Carrega o acumulador com a leitura do botão KEY1 (353)
			tmp(250) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(251) := LDA & R2 & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(252) := JEQ & R0 & '0' & x"f9"; -- Desvia se igual a 0 (botão não foi pressionado) (249)
			tmp(253) := STA & R2 & '0' & x"0c"; -- Salva o valor em MEM[12] (centena limite)
			
			tmp(254) := STA & R0 & '1' & x"fe"; -- Limpa a leitura do botão B1 (510)
			tmp(255) := LDI & R1 & '0' & x"08"; -- Carrega o valor imediato 8 (00001000)
			tmp(256) := STA & R1 & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(257) := LDA & R0 & '1' & x"61"; -- Carrega o acumulador com a leitura do botão KEY1 (353)
			tmp(258) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(259) := LDA & R2 & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(260) := JEQ & R0 & '1' & x"01"; -- Desvia se igual a 0 (botão não foi pressionado) (257)
			tmp(261) := STA & R2 & '0' & x"0d"; -- Salva o valor em MEM[13] (milhar limite)
			
			tmp(262) := STA & R0 & '1' & x"fe"; -- Limpa a leitura do botão B1 (510)
			tmp(263) := LDI & R1 & '0' & x"10"; -- Carrega o valor imediato 16 (00010000)
			tmp(264) := STA & R1 & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(265) := LDA & R0 & '1' & x"61"; -- Carrega o acumulador com a leitura do botão KEY1 (353)
			tmp(266) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(267) := LDA & R2 & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(268) := JEQ & R0 & '1' & x"09"; -- Desvia se igual a 0 (botão não foi pressionado) (265)
			tmp(269) := STA & R2 & '0' & x"0e"; -- Salva o valor em MEM[14] (dezmilhar limite)
			
			tmp(270) := STA & R0 & '1' & x"fe"; -- Limpa a leitura do botão B1 (510)
			tmp(271) := LDI & R1 & '0' & x"20"; -- Carrega o valor imediato 32 (00100000)
			tmp(272) := STA & R1 & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(273) := LDA & R0 & '1' & x"61"; -- Carrega o acumulador com a leitura do botão KEY1 (353)
			tmp(274) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(275) := LDA & R2 & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(276) := JEQ & R0 & '1' & x"11"; -- Desvia se igual a 0 (botão não foi pressionado) (273)
			tmp(277) := STA & R2 & '0' & x"0f"; -- Salva o valor em MEM[15] (centenamilhar limite)
			
			tmp(287) := STA & R0 & '1' & x"fe"; -- Limpa a leitura do botão B1 (510)
			tmp(288) := LDA & R3 & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(289) := STA & R3 & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(290) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina
			
			
			-- SUB ROTINA PARA DECREMENTAR
			
			tmp(300) := STA & R0 & '1' & x"fc"; -- Limpa a leitura do botão (508)
			tmp(301) := LDA & R0 & '0' & x"00"; -- Carrega o valor de MEM[0] (unidades)
			tmp(302) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(303) := JEQ & R0 & '1' & x"33"; -- Desvia se igual a 0 (chegou a 0)
			tmp(304) := SUB & R0 & '0' & x"04"; -- Subtrai com a constante em MEM[4] (constante 1)
			tmp(305) := STA & R0 & '0' & x"00"; -- Salva o decremento em MEM[0] (unidades)
			tmp(306) := JMP & R0 & '1' & x"5e";
			tmp(307) := LDI & R3 & '0' & x"09"; -- Carrega o valor imediato 9 no R3
			tmp(308) := STA & R3 & '0' & x"00"; -- Salva o decremento em MEM[0] (unidades)
			tmp(309) := LDA & R0 & '0' & x"01"; -- Carrega o valor de MEM[1] (dezenas)
			tmp(310) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(311) := JEQ & R0 & '1' & x"3b"; -- Desvia se igual a 0 (chegou a 0)
			tmp(312) := SUB & R0 & '0' & x"04"; -- Subtrai com a constante em MEM[4] (constante 1)
			tmp(313) := STA & R0 & '0' & x"01"; -- Salva o decremento em MEM[1] (dezenas)
			tmp(314) := JMP & R0 & '1' & x"5e";
			tmp(315) := STA & R3 & '0' & x"01"; -- Salva o decremento em MEM[1] (dezenas)
			tmp(316) := LDA & R0 & '0' & x"02"; -- Carrega o valor de MEM[2] (centenas)
			tmp(317) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(318) := JEQ & R0 & '1' & x"42"; -- Desvia se igual a 0 (chegou a 0)
			tmp(319) := SUB & R0 & '0' & x"04"; -- Subtrai com a constante em MEM[4] (constante 1)
			tmp(320) := STA & R0 & '0' & x"02"; -- Salva o decremento em MEM[2] (centenas)
			tmp(321) := JMP & R0 & '1' & x"5e";
			tmp(322) := STA & R3 & '0' & x"02"; -- Salva o decremento em MEM[2] (centenas)
			tmp(323) := LDA & R0 & '0' & x"07"; -- Carrega o valor de MEM[7] (milhar)
			tmp(324) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(325) := JEQ & R0 & '1' & x"49"; -- Desvia se igual a 0 (chegou a 0)
			tmp(326) := SUB & R0 & '0' & x"04"; -- Subtrai com a constante em MEM[4] (constante 1)
			tmp(327) := STA & R0 & '0' & x"07"; -- Salva o decremento em MEM[7] (milhar)
			tmp(328) := JMP & R0 & '1' & x"5e";
			tmp(329) := STA & R3 & '0' & x"07"; -- Salva o decremento em MEM[7] (milhar)
			tmp(330) := LDA & R0 & '0' & x"08"; -- Carrega o valor de MEM[8] (dezmilhar)
			tmp(331) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(332) := JEQ & R0 & '1' & x"50"; -- Desvia se igual a 0 (chegou a 0)
			tmp(333) := SUB & R0 & '0' & x"04"; -- Subtrai com a constante em MEM[4] (constante 1)
			tmp(334) := STA & R0 & '0' & x"08"; -- Salva o decremento em MEM[8] (dezmilhar)
			tmp(335) := JMP & R0 & '1' & x"5e";
			tmp(336) := STA & R3 & '0' & x"08"; -- Salva o decremento em MEM[8] (dezmilhar)
			tmp(337) := LDA & R0 & '0' & x"09"; -- Carrega o valor de MEM[9] (cemmilhar)
			tmp(338) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(339) := JEQ & R0 & '1' & x"57"; -- Desvia se igual a 0 (chegou a 0)
			tmp(340) := SUB & R0 & '0' & x"04"; -- Subtrai com a constante em MEM[4] (constante 1)
			tmp(341) := STA & R0 & '0' & x"09"; -- Salva o decremento em MEM[9] (cemmilhar)
			tmp(342) := JMP & R0 & '1' & x"5e";
			tmp(343) := LDA & R1 & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(344) := STA & R1 & '0' & x"00"; -- Salva o decremento em MEM[0] (unidades)
			tmp(345) := STA & R1 & '0' & x"01"; -- Salva o decremento em MEM[1] (dezenas)
			tmp(346) := STA & R1 & '0' & x"02"; -- Salva o decremento em MEM[2] (centenas)
			tmp(347) := STA & R1 & '0' & x"07"; -- Salva o decremento em MEM[7] (milhar)
			tmp(348) := STA & R1 & '0' & x"08"; -- Salva o decremento em MEM[8] (dezmilhar)
			tmp(349) := STA & R1 & '0' & x"09"; -- Salva o decremento em MEM[9] (cemmilhar)
			
			tmp(350) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina
			
			-- SUB ROTINA PARA ESCOLHA DE NÚMERO
			
			tmp(360) := STA & R0 & '1' & x"fd"; -- Limpa a leitura do botão B2 (509)
			tmp(361) := LDA & R1 & '0' & x"04"; -- Carrega o valor da constante em MEM[4] (constante 1)
			tmp(362) := STA & R1 & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(363) := LDA & R0 & '1' & x"62"; -- Carrega o acumulador com a leitura do botão KEY1 (354)
			tmp(364) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(365) := LDA & R2 & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(366) := JEQ & R0 & '1' & x"6b"; -- Desvia se igual a 0 (botão não foi pressionado) (363)
			tmp(367) := STA & R2 & '0' & x"00"; -- Salva o valor em MEM[0] (unidade)
			
			tmp(368) := STA & R0 & '1' & x"fd"; -- Limpa a leitura do botão B2 (509)
			tmp(369) := LDI & R1 & '0' & x"02"; -- Carrega o valor imediato 2 (00000010)
			tmp(370) := STA & R1 & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(371) := LDA & R0 & '1' & x"62"; -- Carrega o acumulador com a leitura do botão KEY1 (354)
			tmp(372) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(373) := LDA & R2 & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(374) := JEQ & R0 & '1' & x"73"; -- Desvia se igual a 0 (botão não foi pressionado) (371)
			tmp(375) := STA & R2 & '0' & x"01"; -- Salva o valor em MEM[1] (dezena)
			
			tmp(376) := STA & R0 & '1' & x"fd"; -- Limpa a leitura do botão B2 (509)
			tmp(377) := LDI & R1 & '0' & x"04"; -- Carrega o valor imediato 4 (00000100)
			tmp(378) := STA & R1 & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(379) := LDA & R0 & '1' & x"62"; -- Carrega o acumulador com a leitura do botão KEY1 (354)
			tmp(380) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(381) := LDA & R2 & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(382) := JEQ & R0 & '1' & x"7b"; -- Desvia se igual a 0 (botão não foi pressionado) (379)
			tmp(383) := STA & R2 & '0' & x"02"; -- Salva o valor em MEM[2] (centena)
			
			tmp(384) := STA & R0 & '1' & x"fd"; -- Limpa a leitura do botão B2 (509)
			tmp(385) := LDI & R1 & '0' & x"08"; -- Carrega o valor imediato 8 (00001000)
			tmp(386) := STA & R1 & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(387) := LDA & R0 & '1' & x"62"; -- Carrega o acumulador com a leitura do botão KEY1 (354)
			tmp(388) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(389) := LDA & R2 & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(390) := JEQ & R0 & '1' & x"83"; -- Desvia se igual a 0 (botão não foi pressionado) (387)
			tmp(391) := STA & R2 & '0' & x"07"; -- Salva o valor em MEM[7] (milhar)
			
			tmp(392) := STA & R0 & '1' & x"fd"; -- Limpa a leitura do botão B2 (509)
			tmp(393) := LDI & R1 & '0' & x"10"; -- Carrega o valor imediato 16 (00010000)
			tmp(394) := STA & R1 & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(395) := LDA & R0 & '1' & x"62"; -- Carrega o acumulador com a leitura do botão KEY1 (354)
			tmp(396) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(397) := LDA & R2 & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(398) := JEQ & R0 & '1' & x"8b"; -- Desvia se igual a 0 (botão não foi pressionado) (395)
			tmp(399) := STA & R2 & '0' & x"08"; -- Salva o valor em MEM[8] (dezmilhar)
			
			tmp(400) := STA & R0 & '1' & x"fd"; -- Limpa a leitura do botão B2 (509)
			tmp(401) := LDI & R1 & '0' & x"20"; -- Carrega o valor imediato 32 (00100000)
			tmp(402) := STA & R1 & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(403) := LDA & R0 & '1' & x"62"; -- Carrega o acumulador com a leitura do botão KEY1 (354)
			tmp(404) := CEQ & R0 & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(405) := LDA & R2 & '1' & x"40"; -- Carrega o valor de MEM[320] (SW07)
			tmp(406) := JEQ & R0 & '1' & x"93"; -- Desvia se igual a 0 (botão não foi pressionado) (403)
			tmp(407) := STA & R2 & '0' & x"09"; -- Salva o valor em MEM[15] (centenamilhar)
			
			tmp(417) := STA & R0 & '1' & x"fd"; -- Limpa a leitura do botão B2 (509)
			tmp(418) := LDA & R3 & '0' & x"03"; -- Carrega o valor de MEM[3] (constante 0)
			tmp(419) := STA & R3 & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
			tmp(420) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina
			
			else
			
			tmp(0) := LDI & R0 & '0' & x"05";
			tmp(1) := LDI & R1 & '0' & x"06";
			tmp(2) := LDI & R2 & '0' & x"07";
			tmp(3) := LDI & R3 & '0' & x"08";
			
			tmp(4) := STA & R0 & '1' & x"20";
			tmp(5) := STA & R1 & '1' & x"21";
			tmp(6) := STA & R2 & '1' & x"22";
			tmp(7) := STA & R3 & '1' & x"23";
			
			
end if;
			
			
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;