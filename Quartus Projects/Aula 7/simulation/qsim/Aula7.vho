-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "09/19/2021 18:21:10"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula7 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END Aula7;

ARCHITECTURE structure OF Aula7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|SOM|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|DEC|saidaDecoder[4]~4_combout\ : std_logic;
SIGNAL \CPU|SOM|Add0~2\ : std_logic;
SIGNAL \CPU|SOM|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|SOM|Add0~6\ : std_logic;
SIGNAL \CPU|SOM|Add0~9_sumout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|SOM|Add0~10\ : std_logic;
SIGNAL \CPU|SOM|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|SOM|Add0~14\ : std_logic;
SIGNAL \CPU|SOM|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|SOM|Add0~22\ : std_logic;
SIGNAL \CPU|SOM|Add0~25_sumout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|SOM|Add0~26\ : std_logic;
SIGNAL \CPU|SOM|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|SOM|Add0~30\ : std_logic;
SIGNAL \CPU|SOM|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|SOM|Add0~34\ : std_logic;
SIGNAL \CPU|SOM|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|DEC|saidaDecoder~0_combout\ : std_logic;
SIGNAL \CPU|DEC|saidaDecoder[3]~1_combout\ : std_logic;
SIGNAL \CPU|DEC|saidaDecoder[3]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \RAM|process_0~2_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|process_0~1_combout\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DEC|Equal10~0_combout\ : std_logic;
SIGNAL \CPU|DEC|saidaDecoder~3_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~2\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add1~2\ : std_logic;
SIGNAL \CPU|ULA|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add1~6\ : std_logic;
SIGNAL \CPU|ULA|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add1~10\ : std_logic;
SIGNAL \CPU|ULA|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add1~14\ : std_logic;
SIGNAL \CPU|ULA|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add1~18\ : std_logic;
SIGNAL \CPU|ULA|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add1~22\ : std_logic;
SIGNAL \CPU|ULA|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add1~26\ : std_logic;
SIGNAL \CPU|ULA|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[7]~7_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \REG8|DOUT~0_combout\ : std_logic;
SIGNAL \REG8|DOUT~q\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \REG9|DOUT~0_combout\ : std_logic;
SIGNAL \REG9|DOUT~q\ : std_logic;
SIGNAL \CPU|ACU|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG7|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|ACU|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|DEC|ALT_INV_saidaDecoder[3]~2_combout\ : std_logic;
SIGNAL \CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\ : std_logic;
SIGNAL \CPU|DEC|ALT_INV_saidaDecoder~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REG9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \REG8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|ACU|ALT_INV_DOUT\(6) <= NOT \CPU|ACU|DOUT\(6);
\CPU|ACU|ALT_INV_DOUT\(5) <= NOT \CPU|ACU|DOUT\(5);
\CPU|ACU|ALT_INV_DOUT\(4) <= NOT \CPU|ACU|DOUT\(4);
\CPU|ACU|ALT_INV_DOUT\(3) <= NOT \CPU|ACU|DOUT\(3);
\CPU|ACU|ALT_INV_DOUT\(2) <= NOT \CPU|ACU|DOUT\(2);
\CPU|ACU|ALT_INV_DOUT\(1) <= NOT \CPU|ACU|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|ACU|ALT_INV_DOUT\(0) <= NOT \CPU|ACU|DOUT\(0);
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\CPU|ULA|ALT_INV_Equal0~0_combout\ <= NOT \CPU|ULA|Equal0~0_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\CPU|DEC|ALT_INV_saidaDecoder[3]~2_combout\ <= NOT \CPU|DEC|saidaDecoder[3]~2_combout\;
\CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\ <= NOT \CPU|DEC|saidaDecoder[3]~1_combout\;
\CPU|DEC|ALT_INV_saidaDecoder~0_combout\ <= NOT \CPU|DEC|saidaDecoder~0_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\REG9|ALT_INV_DOUT~q\ <= NOT \REG9|DOUT~q\;
\REG8|ALT_INV_DOUT~q\ <= NOT \REG8|DOUT~q\;
\CPU|ULA|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA|Add1~29_sumout\;
\CPU|ULA|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA|Add1~25_sumout\;
\CPU|ULA|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA|Add1~21_sumout\;
\CPU|ULA|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA|Add1~17_sumout\;
\CPU|ULA|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA|Add1~13_sumout\;
\CPU|ULA|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA|Add1~9_sumout\;
\CPU|ULA|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA|Add1~5_sumout\;
\CPU|ULA|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA|Add1~1_sumout\;
\CPU|ACU|ALT_INV_DOUT\(7) <= NOT \CPU|ACU|DOUT\(7);
\RAM|ALT_INV_process_0~2_combout\ <= NOT \RAM|process_0~2_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\RAM|ALT_INV_process_0~1_combout\ <= NOT \RAM|process_0~1_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG7|DOUT\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG7|DOUT\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG7|DOUT\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG7|DOUT\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG7|DOUT\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG7|DOUT\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG7|DOUT\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG7|DOUT\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG8|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG9|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\CPU|SOM|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|SOM|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|SOM|Add0~1_sumout\,
	cout => \CPU|SOM|Add0~2\);

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010100010000100001010001000010000101000100001000010100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~6_combout\);

\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(8) & \ROM|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~6_combout\,
	combout => \comb~3_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001000000001000000100000000100000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000001111001010000000111100101000000011110010100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111010100000010111101010000001011110101000000101111010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~8_combout\);

\CPU|DEC|saidaDecoder[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|saidaDecoder[4]~4_combout\ = ( !\ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DEC|saidaDecoder[4]~4_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOM|Add0~1_sumout\,
	asdata => \comb~3_combout\,
	sload => \CPU|DEC|saidaDecoder[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\CPU|SOM|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|SOM|Add0~2\ ))
-- \CPU|SOM|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|SOM|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|SOM|Add0~2\,
	sumout => \CPU|SOM|Add0~5_sumout\,
	cout => \CPU|SOM|Add0~6\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010000000000100101000000000010010100000000001001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~11_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOM|Add0~5_sumout\,
	asdata => \ROM|memROM~11_combout\,
	sload => \CPU|DEC|saidaDecoder[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\CPU|SOM|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|SOM|Add0~6\ ))
-- \CPU|SOM|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|SOM|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|SOM|Add0~6\,
	sumout => \CPU|SOM|Add0~9_sumout\,
	cout => \CPU|SOM|Add0~10\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~2_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \ROM|memROM~2_combout\ & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~9_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOM|Add0~9_sumout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DEC|saidaDecoder[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\CPU|SOM|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|SOM|Add0~10\ ))
-- \CPU|SOM|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|SOM|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|SOM|Add0~10\,
	sumout => \CPU|SOM|Add0~13_sumout\,
	cout => \CPU|SOM|Add0~14\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & \ROM|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~12_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOM|Add0~13_sumout\,
	asdata => \ROM|memROM~12_combout\,
	sload => \CPU|DEC|saidaDecoder[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\CPU|SOM|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|SOM|Add0~14\ ))
-- \CPU|SOM|Add0~22\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|SOM|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|SOM|Add0~14\,
	sumout => \CPU|SOM|Add0~21_sumout\,
	cout => \CPU|SOM|Add0~22\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOM|Add0~21_sumout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DEC|saidaDecoder[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\CPU|SOM|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|SOM|Add0~22\ ))
-- \CPU|SOM|Add0~26\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|SOM|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|SOM|Add0~22\,
	sumout => \CPU|SOM|Add0~25_sumout\,
	cout => \CPU|SOM|Add0~26\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \ROM|memROM~2_combout\ & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~10_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOM|Add0~25_sumout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|DEC|saidaDecoder[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|SOM|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|SOM|Add0~26\ ))
-- \CPU|SOM|Add0~30\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|SOM|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|SOM|Add0~26\,
	sumout => \CPU|SOM|Add0~29_sumout\,
	cout => \CPU|SOM|Add0~30\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOM|Add0~29_sumout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DEC|saidaDecoder[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\CPU|SOM|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|SOM|Add0~30\ ))
-- \CPU|SOM|Add0~34\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|SOM|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|SOM|Add0~30\,
	sumout => \CPU|SOM|Add0~33_sumout\,
	cout => \CPU|SOM|Add0~34\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOM|Add0~33_sumout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|DEC|saidaDecoder[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\CPU|SOM|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|SOM|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|SOM|Add0~34\,
	sumout => \CPU|SOM|Add0~17_sumout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011010100000000101101010000000010110101000000001011010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (\ROM|memROM~2_combout\ & \ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~4_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOM|Add0~17_sumout\,
	asdata => \ROM|memROM~4_combout\,
	sload => \CPU|DEC|saidaDecoder[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\CPU|DEC|saidaDecoder~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|saidaDecoder~0_combout\ = ((!\ROM|memROM~6_combout\) # ((!\ROM|memROM~7_combout\) # (\ROM|memROM~5_combout\))) # (\CPU|PC|DOUT\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111011111111111111101111111111111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \CPU|DEC|saidaDecoder~0_combout\);

\CPU|DEC|saidaDecoder[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|saidaDecoder[3]~1_combout\ = (\ROM|memROM~2_combout\ & ((\ROM|memROM~8_combout\) # (\ROM|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DEC|saidaDecoder[3]~1_combout\);

\CPU|DEC|saidaDecoder[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|saidaDecoder[3]~2_combout\ = (!\CPU|DEC|saidaDecoder~0_combout\) # (!\CPU|DEC|saidaDecoder[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	combout => \CPU|DEC|saidaDecoder[3]~2_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (!\ROM|memROM~0_combout\) # (!\ROM|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~13_combout\);

\RAM|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~2_combout\ = ( \CPU|PC|DOUT\(0) & ( (\ROM|memROM~2_combout\ & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)))))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (\ROM|memROM~2_combout\ & (!\CPU|PC|DOUT\(2) $ 
-- (((!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000010100010001000101000001010000000101000100010001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \RAM|process_0~2_combout\);

\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~6_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|process_0~0_combout\);

\RAM|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~1_combout\ = (!\ROM|memROM~4_combout\ & (\RAM|process_0~2_combout\ & \RAM|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \RAM|ALT_INV_process_0~2_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|process_0~1_combout\);

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( \RAM|process_0~1_combout\ & ( (!\comb~3_combout\ & (!\ROM|memROM~11_combout\ & (!\ROM|memROM~9_combout\ & !\ROM|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~3_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~551_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(0),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( !\comb~3_combout\ & ( !\ROM|memROM~12_combout\ & ( \RAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~15_q\,
	datae => \ALT_INV_comb~3_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~527_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = (!\ROM|memROM~9_combout\ & \RAM|ram~528_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~528_combout\,
	combout => \RAM|ram~529_combout\);

\CPU|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder[3]~2_combout\ & (((\RAM|ram~529_combout\)))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM|memROM~13_combout\))) ) + ( \CPU|ACU|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA|Add0~2\ = CARRY(( (!\CPU|DEC|saidaDecoder[3]~2_combout\ & (((\RAM|ram~529_combout\)))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM|memROM~13_combout\))) ) + ( \CPU|ACU|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder[3]~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM|ALT_INV_ram~529_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA|Add0~1_sumout\,
	cout => \CPU|ULA|Add0~2\);

\CPU|ULA|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA|Add1~34_cout\);

\CPU|ULA|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~1_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder[3]~2_combout\ & (((!\RAM|ram~529_combout\)))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (((\ROM|memROM~13_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|ACU|DOUT\(0) ) + ( \CPU|ULA|Add1~34_cout\ ))
-- \CPU|ULA|Add1~2\ = CARRY(( (!\CPU|DEC|saidaDecoder[3]~2_combout\ & (((!\RAM|ram~529_combout\)))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (((\ROM|memROM~13_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|ACU|DOUT\(0) ) + ( \CPU|ULA|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder[3]~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM|ALT_INV_ram~529_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(0),
	cin => \CPU|ULA|Add1~34_cout\,
	sumout => \CPU|ULA|Add1~1_sumout\,
	cout => \CPU|ULA|Add1~2\);

\CPU|ULA|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Equal0~0_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~7_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|ULA|Equal0~0_combout\);

\CPU|ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[0]~0_combout\ = ( \CPU|ULA|Equal0~0_combout\ & ( \CPU|ULA|Add1~1_sumout\ ) ) # ( !\CPU|ULA|Equal0~0_combout\ & ( (!\CPU|DEC|saidaDecoder[3]~2_combout\ & ((\RAM|ram~529_combout\))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (\comb~3_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001111111100011101000111010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~3_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~2_combout\,
	datac => \RAM|ALT_INV_ram~529_combout\,
	datad => \CPU|ULA|ALT_INV_Add1~1_sumout\,
	datae => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	combout => \CPU|ULA|saida[0]~0_combout\);

\CPU|DEC|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|Equal10~0_combout\ = ( \ROM|memROM~8_combout\ ) # ( !\ROM|memROM~8_combout\ & ( ((!\ROM|memROM~6_combout\) # ((!\ROM|memROM~7_combout\) # (!\ROM|memROM~5_combout\))) # (\CPU|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111101111111111111111111111111111111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DEC|Equal10~0_combout\);

\CPU|DEC|saidaDecoder~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|saidaDecoder~3_combout\ = ( \ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~6_combout\ & \ROM|memROM~5_combout\)) ) ) # ( !\ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~6_combout\ & (!\ROM|memROM~7_combout\ $ 
-- (\ROM|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000010000000000010001000100000000000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DEC|saidaDecoder~3_combout\);

\CPU|ACU|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~1_sumout\,
	asdata => \CPU|ULA|saida[0]~0_combout\,
	sload => \CPU|DEC|Equal10~0_combout\,
	ena => \CPU|DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(0));

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \RAM|process_0~2_combout\ & ( \RAM|process_0~0_combout\ & ( (\ROM|memROM~4_combout\ & ((!\ROM|memROM~2_combout\) # ((!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_process_0~2_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \comb~0_combout\);

\REG7|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(0),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(0));

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~14_combout\);

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(1),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( !\comb~3_combout\ & ( !\ROM|memROM~12_combout\ & ( \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~16_q\,
	datae => \ALT_INV_comb~3_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~530_combout\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~530_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~530_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = (!\ROM|memROM~9_combout\ & \RAM|ram~531_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~531_combout\,
	combout => \RAM|ram~532_combout\);

\CPU|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder[3]~2_combout\ & (((\RAM|ram~532_combout\)))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~14_combout\))) ) + ( \CPU|ACU|DOUT\(1) ) + ( \CPU|ULA|Add0~2\ ))
-- \CPU|ULA|Add0~6\ = CARRY(( (!\CPU|DEC|saidaDecoder[3]~2_combout\ & (((\RAM|ram~532_combout\)))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~14_combout\))) ) + ( \CPU|ACU|DOUT\(1) ) + ( \CPU|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder[3]~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \RAM|ALT_INV_ram~532_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(1),
	cin => \CPU|ULA|Add0~2\,
	sumout => \CPU|ULA|Add0~5_sumout\,
	cout => \CPU|ULA|Add0~6\);

\CPU|ULA|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~5_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((!\ROM|memROM~11_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (!\ROM|memROM~11_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((!\RAM|ram~532_combout\))))) ) + ( \CPU|ACU|DOUT\(1) ) + ( \CPU|ULA|Add1~2\ ))
-- \CPU|ULA|Add1~6\ = CARRY(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((!\ROM|memROM~11_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (!\ROM|memROM~11_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((!\RAM|ram~532_combout\))))) ) + ( \CPU|ACU|DOUT\(1) ) + ( \CPU|ULA|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \RAM|ALT_INV_ram~532_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(1),
	cin => \CPU|ULA|Add1~2\,
	sumout => \CPU|ULA|Add1~5_sumout\,
	cout => \CPU|ULA|Add1~6\);

\CPU|ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[1]~1_combout\ = ( \CPU|ULA|Add1~5_sumout\ & ( ((!\CPU|DEC|saidaDecoder[3]~2_combout\ & ((\RAM|ram~532_combout\))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (\ROM|memROM~11_combout\))) # (\CPU|ULA|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA|Add1~5_sumout\ & ( (!\CPU|ULA|Equal0~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~2_combout\ & ((\RAM|ram~532_combout\))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (\ROM|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111111101111100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~2_combout\,
	datac => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	datad => \RAM|ALT_INV_ram~532_combout\,
	datae => \CPU|ULA|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA|saida[1]~1_combout\);

\CPU|ACU|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~5_sumout\,
	asdata => \CPU|ULA|saida[1]~1_combout\,
	sload => \CPU|DEC|Equal10~0_combout\,
	ena => \CPU|DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(1));

\REG7|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(1),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(1));

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(2),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( !\comb~3_combout\ & ( !\ROM|memROM~12_combout\ & ( \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~17_q\,
	datae => \ALT_INV_comb~3_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~533_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~533_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~534_combout\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = (!\ROM|memROM~9_combout\ & \RAM|ram~534_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~534_combout\,
	combout => \RAM|ram~535_combout\);

\CPU|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((\ROM|memROM~9_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (\ROM|memROM~9_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((\RAM|ram~535_combout\))))) ) + ( \CPU|ACU|DOUT\(2) ) + ( \CPU|ULA|Add0~6\ ))
-- \CPU|ULA|Add0~10\ = CARRY(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((\ROM|memROM~9_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (\ROM|memROM~9_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((\RAM|ram~535_combout\))))) ) + ( \CPU|ACU|DOUT\(2) ) + ( \CPU|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~535_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(2),
	cin => \CPU|ULA|Add0~6\,
	sumout => \CPU|ULA|Add0~9_sumout\,
	cout => \CPU|ULA|Add0~10\);

\CPU|ULA|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~9_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((!\ROM|memROM~9_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (!\ROM|memROM~9_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((!\RAM|ram~535_combout\))))) ) + ( \CPU|ACU|DOUT\(2) ) + ( \CPU|ULA|Add1~6\ ))
-- \CPU|ULA|Add1~10\ = CARRY(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((!\ROM|memROM~9_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (!\ROM|memROM~9_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((!\RAM|ram~535_combout\))))) ) + ( \CPU|ACU|DOUT\(2) ) + ( \CPU|ULA|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~535_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(2),
	cin => \CPU|ULA|Add1~6\,
	sumout => \CPU|ULA|Add1~9_sumout\,
	cout => \CPU|ULA|Add1~10\);

\CPU|ULA|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[2]~2_combout\ = ( \CPU|ULA|Add1~9_sumout\ & ( ((!\CPU|DEC|saidaDecoder[3]~2_combout\ & ((\RAM|ram~535_combout\))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (\ROM|memROM~9_combout\))) # (\CPU|ULA|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA|Add1~9_sumout\ & ( (!\CPU|ULA|Equal0~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~2_combout\ & ((\RAM|ram~535_combout\))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (\ROM|memROM~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111111101111100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~2_combout\,
	datac => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	datad => \RAM|ALT_INV_ram~535_combout\,
	datae => \CPU|ULA|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA|saida[2]~2_combout\);

\CPU|ACU|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~9_sumout\,
	asdata => \CPU|ULA|saida[2]~2_combout\,
	sload => \CPU|DEC|Equal10~0_combout\,
	ena => \CPU|DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(2));

\REG7|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(2),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(2));

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(3),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( !\comb~3_combout\ & ( !\ROM|memROM~12_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~18_q\,
	datae => \ALT_INV_comb~3_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~536_combout\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~536_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~536_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~537_combout\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = (!\ROM|memROM~9_combout\ & \RAM|ram~537_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~537_combout\,
	combout => \RAM|ram~538_combout\);

\CPU|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~13_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((\ROM|memROM~12_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (\ROM|memROM~12_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((\RAM|ram~538_combout\))))) ) + ( \CPU|ACU|DOUT\(3) ) + ( \CPU|ULA|Add0~10\ ))
-- \CPU|ULA|Add0~14\ = CARRY(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((\ROM|memROM~12_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (\ROM|memROM~12_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((\RAM|ram~538_combout\))))) ) + ( \CPU|ACU|DOUT\(3) ) + ( \CPU|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~538_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	cin => \CPU|ULA|Add0~10\,
	sumout => \CPU|ULA|Add0~13_sumout\,
	cout => \CPU|ULA|Add0~14\);

\CPU|ULA|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~13_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((!\ROM|memROM~12_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (!\ROM|memROM~12_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((!\RAM|ram~538_combout\))))) ) + ( \CPU|ACU|DOUT\(3) ) + ( \CPU|ULA|Add1~10\ ))
-- \CPU|ULA|Add1~14\ = CARRY(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((!\ROM|memROM~12_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (!\ROM|memROM~12_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((!\RAM|ram~538_combout\))))) ) + ( \CPU|ACU|DOUT\(3) ) + ( \CPU|ULA|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~538_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	cin => \CPU|ULA|Add1~10\,
	sumout => \CPU|ULA|Add1~13_sumout\,
	cout => \CPU|ULA|Add1~14\);

\CPU|ULA|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[3]~3_combout\ = ( \CPU|ULA|Add1~13_sumout\ & ( ((!\CPU|DEC|saidaDecoder[3]~2_combout\ & ((\RAM|ram~538_combout\))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (\ROM|memROM~12_combout\))) # (\CPU|ULA|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA|Add1~13_sumout\ & ( (!\CPU|ULA|Equal0~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~2_combout\ & ((\RAM|ram~538_combout\))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (\ROM|memROM~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111111101111100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~2_combout\,
	datac => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	datad => \RAM|ALT_INV_ram~538_combout\,
	datae => \CPU|ULA|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA|saida[3]~3_combout\);

\CPU|ACU|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~13_sumout\,
	asdata => \CPU|ULA|saida[3]~3_combout\,
	sload => \CPU|DEC|Equal10~0_combout\,
	ena => \CPU|DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(3));

\REG7|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(3),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(3));

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(4),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( !\comb~3_combout\ & ( !\ROM|memROM~12_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~19_q\,
	datae => \ALT_INV_comb~3_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~539_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~539_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~540_combout\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = (!\ROM|memROM~9_combout\ & \RAM|ram~540_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~540_combout\,
	combout => \RAM|ram~541_combout\);

\CPU|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((\ROM|memROM~9_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (\ROM|memROM~9_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((\RAM|ram~541_combout\))))) ) + ( \CPU|ACU|DOUT\(4) ) + ( \CPU|ULA|Add0~14\ ))
-- \CPU|ULA|Add0~18\ = CARRY(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((\ROM|memROM~9_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (\ROM|memROM~9_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((\RAM|ram~541_combout\))))) ) + ( \CPU|ACU|DOUT\(4) ) + ( \CPU|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~541_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(4),
	cin => \CPU|ULA|Add0~14\,
	sumout => \CPU|ULA|Add0~17_sumout\,
	cout => \CPU|ULA|Add0~18\);

\CPU|ULA|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~17_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((!\ROM|memROM~9_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (!\ROM|memROM~9_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((!\RAM|ram~541_combout\))))) ) + ( \CPU|ACU|DOUT\(4) ) + ( \CPU|ULA|Add1~14\ ))
-- \CPU|ULA|Add1~18\ = CARRY(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((!\ROM|memROM~9_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (!\ROM|memROM~9_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((!\RAM|ram~541_combout\))))) ) + ( \CPU|ACU|DOUT\(4) ) + ( \CPU|ULA|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~541_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(4),
	cin => \CPU|ULA|Add1~14\,
	sumout => \CPU|ULA|Add1~17_sumout\,
	cout => \CPU|ULA|Add1~18\);

\CPU|ULA|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[4]~4_combout\ = ( \CPU|ULA|Add1~17_sumout\ & ( ((!\CPU|DEC|saidaDecoder[3]~2_combout\ & ((\RAM|ram~541_combout\))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (\ROM|memROM~9_combout\))) # (\CPU|ULA|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA|Add1~17_sumout\ & ( (!\CPU|ULA|Equal0~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~2_combout\ & ((\RAM|ram~541_combout\))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (\ROM|memROM~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111111101111100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~2_combout\,
	datac => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	datad => \RAM|ALT_INV_ram~541_combout\,
	datae => \CPU|ULA|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA|saida[4]~4_combout\);

\CPU|ACU|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~17_sumout\,
	asdata => \CPU|ULA|saida[4]~4_combout\,
	sload => \CPU|DEC|Equal10~0_combout\,
	ena => \CPU|DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(4));

\REG7|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(4),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(4));

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(5),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( !\comb~3_combout\ & ( !\ROM|memROM~12_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~20_q\,
	datae => \ALT_INV_comb~3_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~542_combout\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~542_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~542_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~543_combout\);

\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = (!\ROM|memROM~9_combout\ & \RAM|ram~543_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~543_combout\,
	combout => \RAM|ram~544_combout\);

\CPU|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~21_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((\ROM|memROM~10_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (\ROM|memROM~10_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((\RAM|ram~544_combout\))))) ) + ( \CPU|ACU|DOUT\(5) ) + ( \CPU|ULA|Add0~18\ ))
-- \CPU|ULA|Add0~22\ = CARRY(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((\ROM|memROM~10_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (\ROM|memROM~10_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((\RAM|ram~544_combout\))))) ) + ( \CPU|ACU|DOUT\(5) ) + ( \CPU|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~544_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(5),
	cin => \CPU|ULA|Add0~18\,
	sumout => \CPU|ULA|Add0~21_sumout\,
	cout => \CPU|ULA|Add0~22\);

\CPU|ULA|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~21_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((!\ROM|memROM~10_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (!\ROM|memROM~10_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((!\RAM|ram~544_combout\))))) ) + ( \CPU|ACU|DOUT\(5) ) + ( \CPU|ULA|Add1~18\ ))
-- \CPU|ULA|Add1~22\ = CARRY(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((!\ROM|memROM~10_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (!\ROM|memROM~10_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((!\RAM|ram~544_combout\))))) ) + ( \CPU|ACU|DOUT\(5) ) + ( \CPU|ULA|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~544_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(5),
	cin => \CPU|ULA|Add1~18\,
	sumout => \CPU|ULA|Add1~21_sumout\,
	cout => \CPU|ULA|Add1~22\);

\CPU|ULA|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[5]~5_combout\ = ( \CPU|ULA|Add1~21_sumout\ & ( ((!\CPU|DEC|saidaDecoder[3]~2_combout\ & ((\RAM|ram~544_combout\))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (\ROM|memROM~10_combout\))) # (\CPU|ULA|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA|Add1~21_sumout\ & ( (!\CPU|ULA|Equal0~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~2_combout\ & ((\RAM|ram~544_combout\))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (\ROM|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111111101111100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~2_combout\,
	datac => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	datad => \RAM|ALT_INV_ram~544_combout\,
	datae => \CPU|ULA|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA|saida[5]~5_combout\);

\CPU|ACU|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~21_sumout\,
	asdata => \CPU|ULA|saida[5]~5_combout\,
	sload => \CPU|DEC|Equal10~0_combout\,
	ena => \CPU|DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(5));

\REG7|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(5),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(5));

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(6),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( !\comb~3_combout\ & ( !\ROM|memROM~12_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~21_q\,
	datae => \ALT_INV_comb~3_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~545_combout\);

\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~545_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~545_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~546_combout\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = (!\ROM|memROM~9_combout\ & \RAM|ram~546_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~546_combout\,
	combout => \RAM|ram~547_combout\);

\CPU|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~25_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((\ROM|memROM~9_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (\ROM|memROM~9_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((\RAM|ram~547_combout\))))) ) + ( \CPU|ACU|DOUT\(6) ) + ( \CPU|ULA|Add0~22\ ))
-- \CPU|ULA|Add0~26\ = CARRY(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((\ROM|memROM~9_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (\ROM|memROM~9_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((\RAM|ram~547_combout\))))) ) + ( \CPU|ACU|DOUT\(6) ) + ( \CPU|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~547_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(6),
	cin => \CPU|ULA|Add0~22\,
	sumout => \CPU|ULA|Add0~25_sumout\,
	cout => \CPU|ULA|Add0~26\);

\CPU|ULA|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~25_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((!\ROM|memROM~9_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (!\ROM|memROM~9_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((!\RAM|ram~547_combout\))))) ) + ( \CPU|ACU|DOUT\(6) ) + ( \CPU|ULA|Add1~22\ ))
-- \CPU|ULA|Add1~26\ = CARRY(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((!\ROM|memROM~9_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (!\ROM|memROM~9_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((!\RAM|ram~547_combout\))))) ) + ( \CPU|ACU|DOUT\(6) ) + ( \CPU|ULA|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~547_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(6),
	cin => \CPU|ULA|Add1~22\,
	sumout => \CPU|ULA|Add1~25_sumout\,
	cout => \CPU|ULA|Add1~26\);

\CPU|ULA|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[6]~6_combout\ = ( \CPU|ULA|Add1~25_sumout\ & ( ((!\CPU|DEC|saidaDecoder[3]~2_combout\ & ((\RAM|ram~547_combout\))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (\ROM|memROM~9_combout\))) # (\CPU|ULA|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA|Add1~25_sumout\ & ( (!\CPU|ULA|Equal0~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~2_combout\ & ((\RAM|ram~547_combout\))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (\ROM|memROM~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111111101111100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~2_combout\,
	datac => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	datad => \RAM|ALT_INV_ram~547_combout\,
	datae => \CPU|ULA|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA|saida[6]~6_combout\);

\CPU|ACU|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~25_sumout\,
	asdata => \CPU|ULA|saida[6]~6_combout\,
	sload => \CPU|DEC|Equal10~0_combout\,
	ena => \CPU|DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(6));

\REG7|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(6),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(6));

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(7),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( !\comb~3_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~22_q\,
	datae => \ALT_INV_comb~3_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~548_combout\);

\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( \RAM|ram~548_combout\ & ( !\ROM|memROM~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \RAM|ALT_INV_ram~548_combout\,
	combout => \RAM|ram~549_combout\);

\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = (!\ROM|memROM~9_combout\ & \RAM|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~549_combout\,
	combout => \RAM|ram~550_combout\);

\CPU|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~29_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((\ROM|memROM~10_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (\ROM|memROM~10_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((\RAM|ram~550_combout\))))) ) + ( \CPU|ACU|DOUT\(7) ) + ( \CPU|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~550_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(7),
	cin => \CPU|ULA|Add0~26\,
	sumout => \CPU|ULA|Add0~29_sumout\);

\CPU|ULA|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~29_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder~0_combout\ & (((!\ROM|memROM~10_combout\)))) # (\CPU|DEC|saidaDecoder~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~1_combout\ & (!\ROM|memROM~10_combout\)) # (\CPU|DEC|saidaDecoder[3]~1_combout\ & 
-- ((!\RAM|ram~550_combout\))))) ) + ( \CPU|ACU|DOUT\(7) ) + ( \CPU|ULA|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~550_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(7),
	cin => \CPU|ULA|Add1~26\,
	sumout => \CPU|ULA|Add1~29_sumout\);

\CPU|ULA|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[7]~7_combout\ = ( \CPU|ULA|Add1~29_sumout\ & ( ((!\CPU|DEC|saidaDecoder[3]~2_combout\ & ((\RAM|ram~550_combout\))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (\ROM|memROM~10_combout\))) # (\CPU|ULA|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA|Add1~29_sumout\ & ( (!\CPU|ULA|Equal0~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~2_combout\ & ((\RAM|ram~550_combout\))) # (\CPU|DEC|saidaDecoder[3]~2_combout\ & (\ROM|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111111101111100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~2_combout\,
	datac => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	datad => \RAM|ALT_INV_ram~550_combout\,
	datae => \CPU|ULA|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA|saida[7]~7_combout\);

\CPU|ACU|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~29_sumout\,
	asdata => \CPU|ULA|saida[7]~7_combout\,
	sload => \CPU|DEC|Equal10~0_combout\,
	ena => \CPU|DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(7));

\REG7|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ACU|DOUT\(7),
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(7));

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\ROM|memROM~0_combout\ & (!\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~6_combout\,
	combout => \comb~1_combout\);

\REG8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG8|DOUT~0_combout\ = ( \RAM|process_0~0_combout\ & ( \comb~1_combout\ & ( (!\ROM|memROM~4_combout\ & (\REG8|DOUT~q\)) # (\ROM|memROM~4_combout\ & ((!\RAM|process_0~2_combout\ & (\REG8|DOUT~q\)) # (\RAM|process_0~2_combout\ & ((\CPU|ACU|DOUT\(0)))))) ) 
-- ) ) # ( !\RAM|process_0~0_combout\ & ( \comb~1_combout\ & ( \REG8|DOUT~q\ ) ) ) # ( \RAM|process_0~0_combout\ & ( !\comb~1_combout\ & ( \REG8|DOUT~q\ ) ) ) # ( !\RAM|process_0~0_combout\ & ( !\comb~1_combout\ & ( \REG8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG8|ALT_INV_DOUT~q\,
	datab => \CPU|ACU|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_process_0~2_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \REG8|DOUT~0_combout\);

\REG8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG8|DOUT~q\);

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~6_combout\,
	combout => \comb~2_combout\);

\REG9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG9|DOUT~0_combout\ = ( \RAM|process_0~0_combout\ & ( \comb~2_combout\ & ( (!\ROM|memROM~4_combout\ & (\REG9|DOUT~q\)) # (\ROM|memROM~4_combout\ & ((!\RAM|process_0~2_combout\ & (\REG9|DOUT~q\)) # (\RAM|process_0~2_combout\ & ((\CPU|ACU|DOUT\(0)))))) ) 
-- ) ) # ( !\RAM|process_0~0_combout\ & ( \comb~2_combout\ & ( \REG9|DOUT~q\ ) ) ) # ( \RAM|process_0~0_combout\ & ( !\comb~2_combout\ & ( \REG9|DOUT~q\ ) ) ) # ( !\RAM|process_0~0_combout\ & ( !\comb~2_combout\ & ( \REG9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG9|ALT_INV_DOUT~q\,
	datab => \CPU|ACU|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_process_0~2_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_comb~2_combout\,
	combout => \REG9|DOUT~0_combout\);

\REG9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG9|DOUT~q\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;
END structure;


