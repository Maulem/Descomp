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
      -- Inicializa os endereços:

								-- 256 + 0x## se for endereco
			--tmp(0)  	:= LDA & '1' & x"40"; -- LDA 320
			--tmp(1)  	:= STA & '1' & x"20"; -- STA 288
			--tmp(2)  	:= LDA & '1' & x"41"; -- LDA 321
			--tmp(3)  	:= STA & '1' & x"21"; -- STA 289
			--tmp(4)  	:= LDA & '1' & x"42"; -- LDA 322
			--tmp(5)  	:= STA & '1' & x"22"; -- STA 290
			--tmp(6)  	:= LDA & '1' & x"60"; -- LDA 352
			--tmp(7)  	:= STA & '1' & x"23"; -- STA 291
			--tmp(8)  	:= LDA & '1' & x"61"; -- LDA 353
			--tmp(9)  	:= STA & '1' & x"24"; -- STA 292
			--tmp(10) 	:= LDA & '1' & x"62"; -- LDA 354
			--tmp(11) 	:= STA & '1' & x"25"; -- STA 293
			--tmp(12) 	:= LDA & '1' & x"63"; -- LDA 355
			--tmp(13) 	:= STA & '1' & x"01"; -- STA 257
			--tmp(14) 	:= LDA & '1' & x"64"; -- LDA 356
			--tmp(15) 	:= STA & '1' & x"02"; -- STA 258
			--tmp(16) 	:= JMP & '0' & x"00";
			--tmp(17) 	:= NOP & '0' & x"00";
			--tmp(18)	:= NOP & '0' & x"00";
			
			
			-- SETUP
								-- 256 + 0x## se for endereco
			tmp(0)  	:= LDI & '0' & x"00"; -- Carrega o acumulador com o valor 0
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
			
			tmp(23)  := LDI & '0' & x"09";
			tmp(24) 	:= STA & '0' & x"01"; -- Armazena o valor do acumulador em MEM[1] (dezena)
			tmp(25) 	:= STA & '0' & x"02"; -- Armazena o valor do acumulador em MEM[2] (centena)
			tmp(26) 	:= STA & '0' & x"07"; -- Armazena o valor do acumulador em MEM[7] (milhar)
			tmp(27) 	:= STA & '0' & x"08"; -- Armazena o valor do acumulador em MEM[8] (dezmilhar)
			tmp(28) 	:= STA & '0' & x"09"; -- Armazena o valor do acumulador em MEM[9] (cemmilhar)
			tmp(29)  := JMP & '0' & x"1e";
			
			
			tmp(30)  := NOP & '0' & x"00";
			tmp(31)  := LDA & '0' & x"06"; -- Carrega o acumulador com a leitura da flag de inibir
			tmp(32)  := CEQ & '0' & x"04"; -- Compara com o valor de MEM[4] (constante 1)
			tmp(33)  := JEQ & '0' & x"27"; -- Desvia se igual a 0 (flag inativa)
			
			tmp(34)  := LDA & '1' & x"60"; -- Carrega o acumulador com a leitura do botão KEY0 (352)
			tmp(35)  := CEQ & '0' & x"03"; -- Compara com o valor de MEM[3] (constante 0)
			tmp(36)  := JEQ & '0' & x"27"; -- Desvia se igual a 0 (botão não foi pressionado)
			tmp(37)  := JSR & '0' & x"3c"; -- O botão foi pressionado, chama a sub-rotina de incremento
			tmp(38) 	:= NOP & '0' & x"00"; -- Retorno da sub-rotina de incremento
			
			tmp(39)  := LDA & '1' & x"64"; -- Carrega o acumulador com a leitura do botão FPGA_RESEY (356)
			tmp(40)  := CEQ & '0' & x"04"; -- Compara com o valor de MEM[4] (constante 1)
			tmp(41)  := JEQ & '0' & x"2b"; -- Desvia se igual a 0 (botão não foi pressionado)
			tmp(42)  := JMP & '0' & x"00"; -- O botão foi pressionado, reinicia a placa
			
			tmp(43) 	:= JMP & '0' & x"1e"; -- Fecha o laço principal, faz uma nova leitura de KEY0
			
			
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
			
			tmp(117) := LDA & '0' & x"00"; -- Carrega o valor de MEM[0] (unidade)
			tmp(118) := STA & '1' & x"20"; -- Armazena o valor no HEX0 (288)
			tmp(119) := LDA & '0' & x"01"; -- Carrega o valor de MEM[1] (dezenas)
			tmp(120) := STA & '1' & x"21"; -- Armazena o valor no HEX1 (289)
			tmp(121) := LDA & '0' & x"02"; -- Carrega o valor de MEM[2] (centenas)
			tmp(122) := STA & '1' & x"22"; -- Armazena o valor no HEX2 (290)
			tmp(123) := LDA & '0' & x"07"; -- Carrega o valor de MEM[7] (milhares)
			tmp(124) := STA & '1' & x"23"; -- Armazena o valor no HEX3 (291)
			tmp(125) := LDA & '0' & x"08"; -- Carrega o valor de MEM[8] (dezmilhares)
			tmp(126) := STA & '1' & x"24"; -- Armazena o valor no HEX3 (292)
			tmp(127) := LDA & '0' & x"09"; -- Carrega o valor de MEM[9] (cemmilhares)
			tmp(128) := STA & '1' & x"25"; -- Armazena o valor no HEX3 (293)

			tmp(129)	:= RET & '0' & x"00"; -- Retorna da sub-rotina
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;