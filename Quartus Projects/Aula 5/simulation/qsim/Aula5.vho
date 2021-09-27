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

-- DATE "09/15/2021 11:12:45"

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

ENTITY 	Aula5 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END Aula5;

ARCHITECTURE structure OF Aula5 IS
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
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \SOM|Add0~22\ : std_logic;
SIGNAL \SOM|Add0~30\ : std_logic;
SIGNAL \SOM|Add0~34\ : std_logic;
SIGNAL \SOM|Add0~18\ : std_logic;
SIGNAL \SOM|Add0~26\ : std_logic;
SIGNAL \SOM|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \DEC|saidaDecoder~3_combout\ : std_logic;
SIGNAL \MUX4|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \SOM|Add0~14\ : std_logic;
SIGNAL \SOM|Add0~9_sumout\ : std_logic;
SIGNAL \MUX4|saida_MUX[6]~3_combout\ : std_logic;
SIGNAL \SOM|Add0~10\ : std_logic;
SIGNAL \SOM|Add0~5_sumout\ : std_logic;
SIGNAL \MUX4|saida_MUX[7]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \DEC|Equal10~0_combout\ : std_logic;
SIGNAL \DEC|saidaDecoder[3]~5_combout\ : std_logic;
SIGNAL \MUX|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ULA|Equal0~0_combout\ : std_logic;
SIGNAL \ULA|saida[4]~4_combout\ : std_logic;
SIGNAL \DEC|saidaDecoder[2]~4_combout\ : std_logic;
SIGNAL \MEM|process_0~0_combout\ : std_logic;
SIGNAL \MEM|process_0~1_combout\ : std_logic;
SIGNAL \MEM|ram~185_combout\ : std_logic;
SIGNAL \MEM|ram~133_q\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \MEM|ram~186_combout\ : std_logic;
SIGNAL \MEM|ram~187_combout\ : std_logic;
SIGNAL \MEM|ram~141_q\ : std_logic;
SIGNAL \MEM|ram~188_combout\ : std_logic;
SIGNAL \MEM|ram~117_q\ : std_logic;
SIGNAL \MEM|ram~189_combout\ : std_logic;
SIGNAL \MEM|ram~125_q\ : std_logic;
SIGNAL \MEM|ram~165_combout\ : std_logic;
SIGNAL \MEM|ram~190_combout\ : std_logic;
SIGNAL \MEM|ram~101_q\ : std_logic;
SIGNAL \MEM|ram~191_combout\ : std_logic;
SIGNAL \MEM|ram~109_q\ : std_logic;
SIGNAL \MEM|ram~192_combout\ : std_logic;
SIGNAL \MEM|ram~85_q\ : std_logic;
SIGNAL \MEM|ram~193_combout\ : std_logic;
SIGNAL \MEM|ram~93_q\ : std_logic;
SIGNAL \MEM|ram~166_combout\ : std_logic;
SIGNAL \MEM|ram~194_combout\ : std_logic;
SIGNAL \MEM|ram~69_q\ : std_logic;
SIGNAL \MEM|ram~195_combout\ : std_logic;
SIGNAL \MEM|ram~77_q\ : std_logic;
SIGNAL \MEM|ram~196_combout\ : std_logic;
SIGNAL \MEM|ram~53_q\ : std_logic;
SIGNAL \MEM|ram~197_combout\ : std_logic;
SIGNAL \MEM|ram~61_q\ : std_logic;
SIGNAL \MEM|ram~167_combout\ : std_logic;
SIGNAL \MEM|ram~198_combout\ : std_logic;
SIGNAL \MEM|ram~37_q\ : std_logic;
SIGNAL \MEM|ram~199_combout\ : std_logic;
SIGNAL \MEM|ram~45_q\ : std_logic;
SIGNAL \MEM|ram~200_combout\ : std_logic;
SIGNAL \MEM|ram~21_q\ : std_logic;
SIGNAL \MEM|ram~201_combout\ : std_logic;
SIGNAL \MEM|ram~29_q\ : std_logic;
SIGNAL \MEM|ram~168_combout\ : std_logic;
SIGNAL \MEM|ram~169_combout\ : std_logic;
SIGNAL \MUX|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \MUX|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \MUX|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \ULA|Add1~34_cout\ : std_logic;
SIGNAL \ULA|Add1~17_sumout\ : std_logic;
SIGNAL \ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \MEM|ram~129_q\ : std_logic;
SIGNAL \MEM|ram~137_q\ : std_logic;
SIGNAL \MEM|ram~113_q\ : std_logic;
SIGNAL \MEM|ram~121_q\ : std_logic;
SIGNAL \MEM|ram~145_combout\ : std_logic;
SIGNAL \MEM|ram~97_q\ : std_logic;
SIGNAL \MEM|ram~105_q\ : std_logic;
SIGNAL \MEM|ram~81_q\ : std_logic;
SIGNAL \MEM|ram~89_q\ : std_logic;
SIGNAL \MEM|ram~146_combout\ : std_logic;
SIGNAL \MEM|ram~65_q\ : std_logic;
SIGNAL \MEM|ram~73_q\ : std_logic;
SIGNAL \MEM|ram~49_q\ : std_logic;
SIGNAL \MEM|ram~57_q\ : std_logic;
SIGNAL \MEM|ram~147_combout\ : std_logic;
SIGNAL \MEM|ram~33_q\ : std_logic;
SIGNAL \MEM|ram~41_q\ : std_logic;
SIGNAL \MEM|ram~17_q\ : std_logic;
SIGNAL \MEM|ram~25_q\ : std_logic;
SIGNAL \MEM|ram~148_combout\ : std_logic;
SIGNAL \MEM|ram~149_combout\ : std_logic;
SIGNAL \ULA|Add1~18\ : std_logic;
SIGNAL \ULA|Add1~21_sumout\ : std_logic;
SIGNAL \ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \MEM|ram~130_q\ : std_logic;
SIGNAL \MEM|ram~98_q\ : std_logic;
SIGNAL \MEM|ram~66_q\ : std_logic;
SIGNAL \MEM|ram~34_q\ : std_logic;
SIGNAL \MEM|ram~150_combout\ : std_logic;
SIGNAL \MEM|ram~138_q\ : std_logic;
SIGNAL \MEM|ram~106_q\ : std_logic;
SIGNAL \MEM|ram~74_q\ : std_logic;
SIGNAL \MEM|ram~42_q\ : std_logic;
SIGNAL \MEM|ram~151_combout\ : std_logic;
SIGNAL \MEM|ram~114_q\ : std_logic;
SIGNAL \MEM|ram~82_q\ : std_logic;
SIGNAL \MEM|ram~50_q\ : std_logic;
SIGNAL \MEM|ram~18_q\ : std_logic;
SIGNAL \MEM|ram~152_combout\ : std_logic;
SIGNAL \MEM|ram~122_q\ : std_logic;
SIGNAL \MEM|ram~90_q\ : std_logic;
SIGNAL \MEM|ram~58_q\ : std_logic;
SIGNAL \MEM|ram~26_q\ : std_logic;
SIGNAL \MEM|ram~153_combout\ : std_logic;
SIGNAL \MEM|ram~154_combout\ : std_logic;
SIGNAL \ULA|Add1~22\ : std_logic;
SIGNAL \ULA|Add1~25_sumout\ : std_logic;
SIGNAL \ULA|saida[2]~2_combout\ : std_logic;
SIGNAL \MEM|ram~131_q\ : std_logic;
SIGNAL \MEM|ram~139_q\ : std_logic;
SIGNAL \MEM|ram~115_q\ : std_logic;
SIGNAL \MEM|ram~123_q\ : std_logic;
SIGNAL \MEM|ram~155_combout\ : std_logic;
SIGNAL \MEM|ram~99_q\ : std_logic;
SIGNAL \MEM|ram~107_q\ : std_logic;
SIGNAL \MEM|ram~83_q\ : std_logic;
SIGNAL \MEM|ram~91_q\ : std_logic;
SIGNAL \MEM|ram~156_combout\ : std_logic;
SIGNAL \MEM|ram~67_q\ : std_logic;
SIGNAL \MEM|ram~75_q\ : std_logic;
SIGNAL \MEM|ram~51_q\ : std_logic;
SIGNAL \MEM|ram~59_q\ : std_logic;
SIGNAL \MEM|ram~157_combout\ : std_logic;
SIGNAL \MEM|ram~35_q\ : std_logic;
SIGNAL \MEM|ram~43_q\ : std_logic;
SIGNAL \MEM|ram~19_q\ : std_logic;
SIGNAL \MEM|ram~27_q\ : std_logic;
SIGNAL \MEM|ram~158_combout\ : std_logic;
SIGNAL \MEM|ram~159_combout\ : std_logic;
SIGNAL \ULA|Add1~26\ : std_logic;
SIGNAL \ULA|Add1~29_sumout\ : std_logic;
SIGNAL \ULA|saida[3]~3_combout\ : std_logic;
SIGNAL \MEM|ram~132_q\ : std_logic;
SIGNAL \MEM|ram~100_q\ : std_logic;
SIGNAL \MEM|ram~68_q\ : std_logic;
SIGNAL \MEM|ram~36_q\ : std_logic;
SIGNAL \MEM|ram~160_combout\ : std_logic;
SIGNAL \MEM|ram~140_q\ : std_logic;
SIGNAL \MEM|ram~108_q\ : std_logic;
SIGNAL \MEM|ram~76_q\ : std_logic;
SIGNAL \MEM|ram~44_q\ : std_logic;
SIGNAL \MEM|ram~161_combout\ : std_logic;
SIGNAL \MEM|ram~116_q\ : std_logic;
SIGNAL \MEM|ram~84_q\ : std_logic;
SIGNAL \MEM|ram~52_q\ : std_logic;
SIGNAL \MEM|ram~20_q\ : std_logic;
SIGNAL \MEM|ram~162_combout\ : std_logic;
SIGNAL \MEM|ram~124_q\ : std_logic;
SIGNAL \MEM|ram~92_q\ : std_logic;
SIGNAL \MEM|ram~60_q\ : std_logic;
SIGNAL \MEM|ram~28_q\ : std_logic;
SIGNAL \MEM|ram~163_combout\ : std_logic;
SIGNAL \MEM|ram~164_combout\ : std_logic;
SIGNAL \ULA|Add1~30\ : std_logic;
SIGNAL \ULA|Add1~1_sumout\ : std_logic;
SIGNAL \MUX|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ULA|saida[5]~5_combout\ : std_logic;
SIGNAL \MEM|ram~134_q\ : std_logic;
SIGNAL \MEM|ram~102_q\ : std_logic;
SIGNAL \MEM|ram~70_q\ : std_logic;
SIGNAL \MEM|ram~38_q\ : std_logic;
SIGNAL \MEM|ram~170_combout\ : std_logic;
SIGNAL \MEM|ram~142_q\ : std_logic;
SIGNAL \MEM|ram~110_q\ : std_logic;
SIGNAL \MEM|ram~78_q\ : std_logic;
SIGNAL \MEM|ram~46_q\ : std_logic;
SIGNAL \MEM|ram~171_combout\ : std_logic;
SIGNAL \MEM|ram~118_q\ : std_logic;
SIGNAL \MEM|ram~86_q\ : std_logic;
SIGNAL \MEM|ram~54_q\ : std_logic;
SIGNAL \MEM|ram~22_q\ : std_logic;
SIGNAL \MEM|ram~172_combout\ : std_logic;
SIGNAL \MEM|ram~126_q\ : std_logic;
SIGNAL \MEM|ram~94_q\ : std_logic;
SIGNAL \MEM|ram~62_q\ : std_logic;
SIGNAL \MEM|ram~30_q\ : std_logic;
SIGNAL \MEM|ram~173_combout\ : std_logic;
SIGNAL \MEM|ram~174_combout\ : std_logic;
SIGNAL \DEC|Equal9~0_combout\ : std_logic;
SIGNAL \ULA|Add1~2\ : std_logic;
SIGNAL \ULA|Add1~5_sumout\ : std_logic;
SIGNAL \MUX|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ULA|saida[6]~6_combout\ : std_logic;
SIGNAL \MEM|ram~135_q\ : std_logic;
SIGNAL \MEM|ram~143_q\ : std_logic;
SIGNAL \MEM|ram~119_q\ : std_logic;
SIGNAL \MEM|ram~127_q\ : std_logic;
SIGNAL \MEM|ram~175_combout\ : std_logic;
SIGNAL \MEM|ram~103_q\ : std_logic;
SIGNAL \MEM|ram~111_q\ : std_logic;
SIGNAL \MEM|ram~87_q\ : std_logic;
SIGNAL \MEM|ram~95_q\ : std_logic;
SIGNAL \MEM|ram~176_combout\ : std_logic;
SIGNAL \MEM|ram~71_q\ : std_logic;
SIGNAL \MEM|ram~79_q\ : std_logic;
SIGNAL \MEM|ram~55_q\ : std_logic;
SIGNAL \MEM|ram~63_q\ : std_logic;
SIGNAL \MEM|ram~177_combout\ : std_logic;
SIGNAL \MEM|ram~39_q\ : std_logic;
SIGNAL \MEM|ram~47_q\ : std_logic;
SIGNAL \MEM|ram~23_q\ : std_logic;
SIGNAL \MEM|ram~31_q\ : std_logic;
SIGNAL \MEM|ram~178_combout\ : std_logic;
SIGNAL \MEM|ram~179_combout\ : std_logic;
SIGNAL \ULA|Add1~6\ : std_logic;
SIGNAL \ULA|Add1~9_sumout\ : std_logic;
SIGNAL \MUX|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ULA|saida[7]~7_combout\ : std_logic;
SIGNAL \MEM|ram~136_q\ : std_logic;
SIGNAL \MEM|ram~104_q\ : std_logic;
SIGNAL \MEM|ram~72_q\ : std_logic;
SIGNAL \MEM|ram~40_q\ : std_logic;
SIGNAL \MEM|ram~180_combout\ : std_logic;
SIGNAL \MEM|ram~144_q\ : std_logic;
SIGNAL \MEM|ram~112_q\ : std_logic;
SIGNAL \MEM|ram~80_q\ : std_logic;
SIGNAL \MEM|ram~48_q\ : std_logic;
SIGNAL \MEM|ram~181_combout\ : std_logic;
SIGNAL \MEM|ram~120_q\ : std_logic;
SIGNAL \MEM|ram~88_q\ : std_logic;
SIGNAL \MEM|ram~56_q\ : std_logic;
SIGNAL \MEM|ram~24_q\ : std_logic;
SIGNAL \MEM|ram~182_combout\ : std_logic;
SIGNAL \MEM|ram~128_q\ : std_logic;
SIGNAL \MEM|ram~96_q\ : std_logic;
SIGNAL \MEM|ram~64_q\ : std_logic;
SIGNAL \MEM|ram~32_q\ : std_logic;
SIGNAL \MEM|ram~183_combout\ : std_logic;
SIGNAL \MEM|ram~184_combout\ : std_logic;
SIGNAL \ULA|Add1~10\ : std_logic;
SIGNAL \ULA|Add1~13_sumout\ : std_logic;
SIGNAL \FREG|DOUT~1_combout\ : std_logic;
SIGNAL \FREG|DOUT~2_combout\ : std_logic;
SIGNAL \FREG|DOUT~0_combout\ : std_logic;
SIGNAL \FREG|DOUT~q\ : std_logic;
SIGNAL \MUX4|saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \SOM|Add0~33_sumout\ : std_logic;
SIGNAL \MUX4|saida_MUX[2]~9_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \SOM|Add0~29_sumout\ : std_logic;
SIGNAL \MUX4|saida_MUX[1]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \DEC|saidaDecoder~0_combout\ : std_logic;
SIGNAL \DEC|saidaDecoder~2_combout\ : std_logic;
SIGNAL \SOM|Add0~25_sumout\ : std_logic;
SIGNAL \MUX4|saida_MUX[4]~7_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \SOM|Add0~21_sumout\ : std_logic;
SIGNAL \MUX4|saida_MUX[0]~6_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \SOM|Add0~17_sumout\ : std_logic;
SIGNAL \MUX4|saida_MUX[3]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \SOM|Add0~6\ : std_logic;
SIGNAL \SOM|Add0~1_sumout\ : std_logic;
SIGNAL \MUX4|saida_MUX[8]~1_combout\ : std_logic;
SIGNAL \LOG|saidaLogica~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \DEC|saidaDecoder[3]~1_combout\ : std_logic;
SIGNAL \MUX|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ACU|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RREG|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FREG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \FREG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \DEC|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \DEC|ALT_INV_saidaDecoder[3]~5_combout\ : std_logic;
SIGNAL \DEC|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~186_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \RREG|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \DEC|ALT_INV_saidaDecoder~2_combout\ : std_logic;
SIGNAL \MUX4|ALT_INV_saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \FREG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \MUX|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~184_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~183_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~182_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~181_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~180_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \MUX|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~179_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~178_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~177_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \DEC|ALT_INV_saidaDecoder[3]~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \DEC|ALT_INV_saidaDecoder~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LOG|ALT_INV_saidaLogica~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ACU|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SOM|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \SOM|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \SOM|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \SOM|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \SOM|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \SOM|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \SOM|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \SOM|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \SOM|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~176_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~175_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \MUX|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~174_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~173_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \MUX|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \MUX|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \MUX|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \MUX|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \MUX|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FREG|ALT_INV_DOUT~2_combout\ <= NOT \FREG|DOUT~2_combout\;
\FREG|ALT_INV_DOUT~1_combout\ <= NOT \FREG|DOUT~1_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\DEC|ALT_INV_Equal9~0_combout\ <= NOT \DEC|Equal9~0_combout\;
\DEC|ALT_INV_saidaDecoder[3]~5_combout\ <= NOT \DEC|saidaDecoder[3]~5_combout\;
\DEC|ALT_INV_Equal10~0_combout\ <= NOT \DEC|Equal10~0_combout\;
\ULA|ALT_INV_Equal0~0_combout\ <= NOT \ULA|Equal0~0_combout\;
\MEM|ALT_INV_ram~186_combout\ <= NOT \MEM|ram~186_combout\;
\MEM|ALT_INV_process_0~1_combout\ <= NOT \MEM|process_0~1_combout\;
\MEM|ALT_INV_process_0~0_combout\ <= NOT \MEM|process_0~0_combout\;
\RREG|ALT_INV_DOUT\(2) <= NOT \RREG|DOUT\(2);
\RREG|ALT_INV_DOUT\(1) <= NOT \RREG|DOUT\(1);
\RREG|ALT_INV_DOUT\(4) <= NOT \RREG|DOUT\(4);
\RREG|ALT_INV_DOUT\(0) <= NOT \RREG|DOUT\(0);
\RREG|ALT_INV_DOUT\(3) <= NOT \RREG|DOUT\(3);
\RREG|ALT_INV_DOUT\(5) <= NOT \RREG|DOUT\(5);
\RREG|ALT_INV_DOUT\(6) <= NOT \RREG|DOUT\(6);
\RREG|ALT_INV_DOUT\(7) <= NOT \RREG|DOUT\(7);
\DEC|ALT_INV_saidaDecoder~2_combout\ <= NOT \DEC|saidaDecoder~2_combout\;
\RREG|ALT_INV_DOUT\(8) <= NOT \RREG|DOUT\(8);
\MUX4|ALT_INV_saida_MUX[7]~0_combout\ <= NOT \MUX4|saida_MUX[7]~0_combout\;
\PC|ALT_INV_DOUT[0]~0_combout\ <= NOT \PC|DOUT[0]~0_combout\;
\FREG|ALT_INV_DOUT~q\ <= NOT \FREG|DOUT~q\;
\MUX|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \MUX|saida_MUX[7]~7_combout\;
\MEM|ALT_INV_ram~184_combout\ <= NOT \MEM|ram~184_combout\;
\MEM|ALT_INV_ram~183_combout\ <= NOT \MEM|ram~183_combout\;
\MEM|ALT_INV_ram~32_q\ <= NOT \MEM|ram~32_q\;
\MEM|ALT_INV_ram~64_q\ <= NOT \MEM|ram~64_q\;
\MEM|ALT_INV_ram~96_q\ <= NOT \MEM|ram~96_q\;
\MEM|ALT_INV_ram~128_q\ <= NOT \MEM|ram~128_q\;
\MEM|ALT_INV_ram~182_combout\ <= NOT \MEM|ram~182_combout\;
\MEM|ALT_INV_ram~24_q\ <= NOT \MEM|ram~24_q\;
\MEM|ALT_INV_ram~56_q\ <= NOT \MEM|ram~56_q\;
\MEM|ALT_INV_ram~88_q\ <= NOT \MEM|ram~88_q\;
\MEM|ALT_INV_ram~120_q\ <= NOT \MEM|ram~120_q\;
\MEM|ALT_INV_ram~181_combout\ <= NOT \MEM|ram~181_combout\;
\MEM|ALT_INV_ram~48_q\ <= NOT \MEM|ram~48_q\;
\MEM|ALT_INV_ram~80_q\ <= NOT \MEM|ram~80_q\;
\MEM|ALT_INV_ram~112_q\ <= NOT \MEM|ram~112_q\;
\MEM|ALT_INV_ram~144_q\ <= NOT \MEM|ram~144_q\;
\MEM|ALT_INV_ram~180_combout\ <= NOT \MEM|ram~180_combout\;
\MEM|ALT_INV_ram~40_q\ <= NOT \MEM|ram~40_q\;
\MEM|ALT_INV_ram~72_q\ <= NOT \MEM|ram~72_q\;
\MEM|ALT_INV_ram~104_q\ <= NOT \MEM|ram~104_q\;
\MEM|ALT_INV_ram~136_q\ <= NOT \MEM|ram~136_q\;
\MUX|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \MUX|saida_MUX[6]~6_combout\;
\MEM|ALT_INV_ram~179_combout\ <= NOT \MEM|ram~179_combout\;
\MEM|ALT_INV_ram~178_combout\ <= NOT \MEM|ram~178_combout\;
\MEM|ALT_INV_ram~31_q\ <= NOT \MEM|ram~31_q\;
\MEM|ALT_INV_ram~23_q\ <= NOT \MEM|ram~23_q\;
\MEM|ALT_INV_ram~47_q\ <= NOT \MEM|ram~47_q\;
\MEM|ALT_INV_ram~39_q\ <= NOT \MEM|ram~39_q\;
\MEM|ALT_INV_ram~177_combout\ <= NOT \MEM|ram~177_combout\;
\MEM|ALT_INV_ram~63_q\ <= NOT \MEM|ram~63_q\;
\MEM|ALT_INV_ram~55_q\ <= NOT \MEM|ram~55_q\;
\MEM|ALT_INV_ram~148_combout\ <= NOT \MEM|ram~148_combout\;
\MEM|ALT_INV_ram~25_q\ <= NOT \MEM|ram~25_q\;
\MEM|ALT_INV_ram~17_q\ <= NOT \MEM|ram~17_q\;
\MEM|ALT_INV_ram~41_q\ <= NOT \MEM|ram~41_q\;
\MEM|ALT_INV_ram~33_q\ <= NOT \MEM|ram~33_q\;
\MEM|ALT_INV_ram~147_combout\ <= NOT \MEM|ram~147_combout\;
\MEM|ALT_INV_ram~57_q\ <= NOT \MEM|ram~57_q\;
\MEM|ALT_INV_ram~49_q\ <= NOT \MEM|ram~49_q\;
\MEM|ALT_INV_ram~73_q\ <= NOT \MEM|ram~73_q\;
\MEM|ALT_INV_ram~65_q\ <= NOT \MEM|ram~65_q\;
\MEM|ALT_INV_ram~146_combout\ <= NOT \MEM|ram~146_combout\;
\MEM|ALT_INV_ram~89_q\ <= NOT \MEM|ram~89_q\;
\MEM|ALT_INV_ram~81_q\ <= NOT \MEM|ram~81_q\;
\MEM|ALT_INV_ram~105_q\ <= NOT \MEM|ram~105_q\;
\MEM|ALT_INV_ram~97_q\ <= NOT \MEM|ram~97_q\;
\MEM|ALT_INV_ram~145_combout\ <= NOT \MEM|ram~145_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\MEM|ALT_INV_ram~121_q\ <= NOT \MEM|ram~121_q\;
\MEM|ALT_INV_ram~113_q\ <= NOT \MEM|ram~113_q\;
\MEM|ALT_INV_ram~137_q\ <= NOT \MEM|ram~137_q\;
\MEM|ALT_INV_ram~129_q\ <= NOT \MEM|ram~129_q\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\DEC|ALT_INV_saidaDecoder[3]~1_combout\ <= NOT \DEC|saidaDecoder[3]~1_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\DEC|ALT_INV_saidaDecoder~0_combout\ <= NOT \DEC|saidaDecoder~0_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\LOG|ALT_INV_saidaLogica~0_combout\ <= NOT \LOG|saidaLogica~0_combout\;
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\ULA|ALT_INV_Add1~29_sumout\ <= NOT \ULA|Add1~29_sumout\;
\ULA|ALT_INV_Add1~25_sumout\ <= NOT \ULA|Add1~25_sumout\;
\ULA|ALT_INV_Add1~21_sumout\ <= NOT \ULA|Add1~21_sumout\;
\ULA|ALT_INV_Add1~17_sumout\ <= NOT \ULA|Add1~17_sumout\;
\ULA|ALT_INV_Add1~13_sumout\ <= NOT \ULA|Add1~13_sumout\;
\ULA|ALT_INV_Add1~9_sumout\ <= NOT \ULA|Add1~9_sumout\;
\ULA|ALT_INV_Add1~5_sumout\ <= NOT \ULA|Add1~5_sumout\;
\ULA|ALT_INV_Add1~1_sumout\ <= NOT \ULA|Add1~1_sumout\;
\ACU|ALT_INV_DOUT\(7) <= NOT \ACU|DOUT\(7);
\ACU|ALT_INV_DOUT\(6) <= NOT \ACU|DOUT\(6);
\ACU|ALT_INV_DOUT\(5) <= NOT \ACU|DOUT\(5);
\ACU|ALT_INV_DOUT\(4) <= NOT \ACU|DOUT\(4);
\ACU|ALT_INV_DOUT\(3) <= NOT \ACU|DOUT\(3);
\ACU|ALT_INV_DOUT\(2) <= NOT \ACU|DOUT\(2);
\ACU|ALT_INV_DOUT\(1) <= NOT \ACU|DOUT\(1);
\ACU|ALT_INV_DOUT\(0) <= NOT \ACU|DOUT\(0);
\SOM|ALT_INV_Add0~33_sumout\ <= NOT \SOM|Add0~33_sumout\;
\SOM|ALT_INV_Add0~29_sumout\ <= NOT \SOM|Add0~29_sumout\;
\SOM|ALT_INV_Add0~25_sumout\ <= NOT \SOM|Add0~25_sumout\;
\SOM|ALT_INV_Add0~21_sumout\ <= NOT \SOM|Add0~21_sumout\;
\SOM|ALT_INV_Add0~17_sumout\ <= NOT \SOM|Add0~17_sumout\;
\SOM|ALT_INV_Add0~13_sumout\ <= NOT \SOM|Add0~13_sumout\;
\SOM|ALT_INV_Add0~9_sumout\ <= NOT \SOM|Add0~9_sumout\;
\SOM|ALT_INV_Add0~5_sumout\ <= NOT \SOM|Add0~5_sumout\;
\SOM|ALT_INV_Add0~1_sumout\ <= NOT \SOM|Add0~1_sumout\;
\MEM|ALT_INV_ram~79_q\ <= NOT \MEM|ram~79_q\;
\MEM|ALT_INV_ram~71_q\ <= NOT \MEM|ram~71_q\;
\MEM|ALT_INV_ram~176_combout\ <= NOT \MEM|ram~176_combout\;
\MEM|ALT_INV_ram~95_q\ <= NOT \MEM|ram~95_q\;
\MEM|ALT_INV_ram~87_q\ <= NOT \MEM|ram~87_q\;
\MEM|ALT_INV_ram~111_q\ <= NOT \MEM|ram~111_q\;
\MEM|ALT_INV_ram~103_q\ <= NOT \MEM|ram~103_q\;
\MEM|ALT_INV_ram~175_combout\ <= NOT \MEM|ram~175_combout\;
\MEM|ALT_INV_ram~127_q\ <= NOT \MEM|ram~127_q\;
\MEM|ALT_INV_ram~119_q\ <= NOT \MEM|ram~119_q\;
\MEM|ALT_INV_ram~143_q\ <= NOT \MEM|ram~143_q\;
\MEM|ALT_INV_ram~135_q\ <= NOT \MEM|ram~135_q\;
\MUX|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \MUX|saida_MUX[5]~5_combout\;
\MEM|ALT_INV_ram~174_combout\ <= NOT \MEM|ram~174_combout\;
\MEM|ALT_INV_ram~173_combout\ <= NOT \MEM|ram~173_combout\;
\MEM|ALT_INV_ram~30_q\ <= NOT \MEM|ram~30_q\;
\MEM|ALT_INV_ram~62_q\ <= NOT \MEM|ram~62_q\;
\MEM|ALT_INV_ram~94_q\ <= NOT \MEM|ram~94_q\;
\MEM|ALT_INV_ram~126_q\ <= NOT \MEM|ram~126_q\;
\MEM|ALT_INV_ram~172_combout\ <= NOT \MEM|ram~172_combout\;
\MEM|ALT_INV_ram~22_q\ <= NOT \MEM|ram~22_q\;
\MEM|ALT_INV_ram~54_q\ <= NOT \MEM|ram~54_q\;
\MEM|ALT_INV_ram~86_q\ <= NOT \MEM|ram~86_q\;
\MEM|ALT_INV_ram~118_q\ <= NOT \MEM|ram~118_q\;
\MEM|ALT_INV_ram~171_combout\ <= NOT \MEM|ram~171_combout\;
\MEM|ALT_INV_ram~46_q\ <= NOT \MEM|ram~46_q\;
\MEM|ALT_INV_ram~78_q\ <= NOT \MEM|ram~78_q\;
\MEM|ALT_INV_ram~110_q\ <= NOT \MEM|ram~110_q\;
\MEM|ALT_INV_ram~142_q\ <= NOT \MEM|ram~142_q\;
\MEM|ALT_INV_ram~170_combout\ <= NOT \MEM|ram~170_combout\;
\MEM|ALT_INV_ram~38_q\ <= NOT \MEM|ram~38_q\;
\MEM|ALT_INV_ram~70_q\ <= NOT \MEM|ram~70_q\;
\MEM|ALT_INV_ram~102_q\ <= NOT \MEM|ram~102_q\;
\MEM|ALT_INV_ram~134_q\ <= NOT \MEM|ram~134_q\;
\MUX|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX|saida_MUX[4]~4_combout\;
\MEM|ALT_INV_ram~169_combout\ <= NOT \MEM|ram~169_combout\;
\MEM|ALT_INV_ram~168_combout\ <= NOT \MEM|ram~168_combout\;
\MEM|ALT_INV_ram~29_q\ <= NOT \MEM|ram~29_q\;
\MEM|ALT_INV_ram~21_q\ <= NOT \MEM|ram~21_q\;
\MEM|ALT_INV_ram~45_q\ <= NOT \MEM|ram~45_q\;
\MEM|ALT_INV_ram~37_q\ <= NOT \MEM|ram~37_q\;
\MEM|ALT_INV_ram~167_combout\ <= NOT \MEM|ram~167_combout\;
\MEM|ALT_INV_ram~61_q\ <= NOT \MEM|ram~61_q\;
\MEM|ALT_INV_ram~53_q\ <= NOT \MEM|ram~53_q\;
\MEM|ALT_INV_ram~77_q\ <= NOT \MEM|ram~77_q\;
\MEM|ALT_INV_ram~69_q\ <= NOT \MEM|ram~69_q\;
\MEM|ALT_INV_ram~166_combout\ <= NOT \MEM|ram~166_combout\;
\MEM|ALT_INV_ram~93_q\ <= NOT \MEM|ram~93_q\;
\MEM|ALT_INV_ram~85_q\ <= NOT \MEM|ram~85_q\;
\MEM|ALT_INV_ram~109_q\ <= NOT \MEM|ram~109_q\;
\MEM|ALT_INV_ram~101_q\ <= NOT \MEM|ram~101_q\;
\MEM|ALT_INV_ram~165_combout\ <= NOT \MEM|ram~165_combout\;
\MEM|ALT_INV_ram~125_q\ <= NOT \MEM|ram~125_q\;
\MEM|ALT_INV_ram~117_q\ <= NOT \MEM|ram~117_q\;
\MEM|ALT_INV_ram~141_q\ <= NOT \MEM|ram~141_q\;
\MEM|ALT_INV_ram~133_q\ <= NOT \MEM|ram~133_q\;
\MUX|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX|saida_MUX[3]~3_combout\;
\MEM|ALT_INV_ram~164_combout\ <= NOT \MEM|ram~164_combout\;
\MEM|ALT_INV_ram~163_combout\ <= NOT \MEM|ram~163_combout\;
\MEM|ALT_INV_ram~28_q\ <= NOT \MEM|ram~28_q\;
\MEM|ALT_INV_ram~60_q\ <= NOT \MEM|ram~60_q\;
\MEM|ALT_INV_ram~92_q\ <= NOT \MEM|ram~92_q\;
\MEM|ALT_INV_ram~124_q\ <= NOT \MEM|ram~124_q\;
\MEM|ALT_INV_ram~162_combout\ <= NOT \MEM|ram~162_combout\;
\MEM|ALT_INV_ram~20_q\ <= NOT \MEM|ram~20_q\;
\MEM|ALT_INV_ram~52_q\ <= NOT \MEM|ram~52_q\;
\MEM|ALT_INV_ram~84_q\ <= NOT \MEM|ram~84_q\;
\MEM|ALT_INV_ram~116_q\ <= NOT \MEM|ram~116_q\;
\MEM|ALT_INV_ram~161_combout\ <= NOT \MEM|ram~161_combout\;
\MEM|ALT_INV_ram~44_q\ <= NOT \MEM|ram~44_q\;
\MEM|ALT_INV_ram~76_q\ <= NOT \MEM|ram~76_q\;
\MEM|ALT_INV_ram~108_q\ <= NOT \MEM|ram~108_q\;
\MEM|ALT_INV_ram~140_q\ <= NOT \MEM|ram~140_q\;
\MEM|ALT_INV_ram~160_combout\ <= NOT \MEM|ram~160_combout\;
\MEM|ALT_INV_ram~36_q\ <= NOT \MEM|ram~36_q\;
\MEM|ALT_INV_ram~68_q\ <= NOT \MEM|ram~68_q\;
\MEM|ALT_INV_ram~100_q\ <= NOT \MEM|ram~100_q\;
\MEM|ALT_INV_ram~132_q\ <= NOT \MEM|ram~132_q\;
\MUX|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX|saida_MUX[2]~2_combout\;
\MEM|ALT_INV_ram~159_combout\ <= NOT \MEM|ram~159_combout\;
\MEM|ALT_INV_ram~158_combout\ <= NOT \MEM|ram~158_combout\;
\MEM|ALT_INV_ram~27_q\ <= NOT \MEM|ram~27_q\;
\MEM|ALT_INV_ram~19_q\ <= NOT \MEM|ram~19_q\;
\MEM|ALT_INV_ram~43_q\ <= NOT \MEM|ram~43_q\;
\MEM|ALT_INV_ram~35_q\ <= NOT \MEM|ram~35_q\;
\MEM|ALT_INV_ram~157_combout\ <= NOT \MEM|ram~157_combout\;
\MEM|ALT_INV_ram~59_q\ <= NOT \MEM|ram~59_q\;
\MEM|ALT_INV_ram~51_q\ <= NOT \MEM|ram~51_q\;
\MEM|ALT_INV_ram~75_q\ <= NOT \MEM|ram~75_q\;
\MEM|ALT_INV_ram~67_q\ <= NOT \MEM|ram~67_q\;
\MEM|ALT_INV_ram~156_combout\ <= NOT \MEM|ram~156_combout\;
\MEM|ALT_INV_ram~91_q\ <= NOT \MEM|ram~91_q\;
\MEM|ALT_INV_ram~83_q\ <= NOT \MEM|ram~83_q\;
\MEM|ALT_INV_ram~107_q\ <= NOT \MEM|ram~107_q\;
\MEM|ALT_INV_ram~99_q\ <= NOT \MEM|ram~99_q\;
\MEM|ALT_INV_ram~155_combout\ <= NOT \MEM|ram~155_combout\;
\MEM|ALT_INV_ram~123_q\ <= NOT \MEM|ram~123_q\;
\MEM|ALT_INV_ram~115_q\ <= NOT \MEM|ram~115_q\;
\MEM|ALT_INV_ram~139_q\ <= NOT \MEM|ram~139_q\;
\MEM|ALT_INV_ram~131_q\ <= NOT \MEM|ram~131_q\;
\MUX|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX|saida_MUX[1]~1_combout\;
\MEM|ALT_INV_ram~154_combout\ <= NOT \MEM|ram~154_combout\;
\MEM|ALT_INV_ram~153_combout\ <= NOT \MEM|ram~153_combout\;
\MEM|ALT_INV_ram~26_q\ <= NOT \MEM|ram~26_q\;
\MEM|ALT_INV_ram~58_q\ <= NOT \MEM|ram~58_q\;
\MEM|ALT_INV_ram~90_q\ <= NOT \MEM|ram~90_q\;
\MEM|ALT_INV_ram~122_q\ <= NOT \MEM|ram~122_q\;
\MEM|ALT_INV_ram~152_combout\ <= NOT \MEM|ram~152_combout\;
\MEM|ALT_INV_ram~18_q\ <= NOT \MEM|ram~18_q\;
\MEM|ALT_INV_ram~50_q\ <= NOT \MEM|ram~50_q\;
\MEM|ALT_INV_ram~82_q\ <= NOT \MEM|ram~82_q\;
\MEM|ALT_INV_ram~114_q\ <= NOT \MEM|ram~114_q\;
\MEM|ALT_INV_ram~151_combout\ <= NOT \MEM|ram~151_combout\;
\MEM|ALT_INV_ram~42_q\ <= NOT \MEM|ram~42_q\;
\MEM|ALT_INV_ram~74_q\ <= NOT \MEM|ram~74_q\;
\MEM|ALT_INV_ram~106_q\ <= NOT \MEM|ram~106_q\;
\MEM|ALT_INV_ram~138_q\ <= NOT \MEM|ram~138_q\;
\MEM|ALT_INV_ram~150_combout\ <= NOT \MEM|ram~150_combout\;
\MEM|ALT_INV_ram~34_q\ <= NOT \MEM|ram~34_q\;
\MEM|ALT_INV_ram~66_q\ <= NOT \MEM|ram~66_q\;
\MEM|ALT_INV_ram~98_q\ <= NOT \MEM|ram~98_q\;
\MEM|ALT_INV_ram~130_q\ <= NOT \MEM|ram~130_q\;
\MUX|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX|saida_MUX[0]~0_combout\;
\MEM|ALT_INV_ram~149_combout\ <= NOT \MEM|ram~149_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|saida_MUX[0]~0_combout\,
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
	i => \MUX|saida_MUX[1]~1_combout\,
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
	i => \MUX|saida_MUX[2]~2_combout\,
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
	i => \MUX|saida_MUX[3]~3_combout\,
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
	i => \MUX|saida_MUX[4]~4_combout\,
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
	i => \MUX|saida_MUX[5]~5_combout\,
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
	i => \MUX|saida_MUX[6]~6_combout\,
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
	i => \MUX|saida_MUX[7]~7_combout\,
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
	i => GND,
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
	i => \FREG|DOUT~q\,
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

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & (!\PC|DOUT\(1) $ (\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000100100110001000010010011000100001001001100010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~13_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (!\PC|DOUT\(8) & (\ROM|memROM~5_combout\ & \ROM|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ROM|memROM~14_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(1) & !\PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & ((!\PC|DOUT\(2)) # (\PC|DOUT\(1))))) # (\PC|DOUT\(3) & (\PC|DOUT\(2) & (!\PC|DOUT\(0) $ (\PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001001001100010000100100110001000010010011000100001001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~4_combout\);

\SOM|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~21_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \SOM|Add0~22\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \SOM|Add0~21_sumout\,
	cout => \SOM|Add0~22\);

\SOM|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~29_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \SOM|Add0~22\ ))
-- \SOM|Add0~30\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \SOM|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \SOM|Add0~22\,
	sumout => \SOM|Add0~29_sumout\,
	cout => \SOM|Add0~30\);

\SOM|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~33_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \SOM|Add0~30\ ))
-- \SOM|Add0~34\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \SOM|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \SOM|Add0~30\,
	sumout => \SOM|Add0~33_sumout\,
	cout => \SOM|Add0~34\);

\SOM|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~17_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \SOM|Add0~34\ ))
-- \SOM|Add0~18\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \SOM|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \SOM|Add0~34\,
	sumout => \SOM|Add0~17_sumout\,
	cout => \SOM|Add0~18\);

\SOM|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~25_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \SOM|Add0~18\ ))
-- \SOM|Add0~26\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \SOM|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \SOM|Add0~18\,
	sumout => \SOM|Add0~25_sumout\,
	cout => \SOM|Add0~26\);

\SOM|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~13_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \SOM|Add0~26\ ))
-- \SOM|Add0~14\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \SOM|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \SOM|Add0~26\,
	sumout => \SOM|Add0~13_sumout\,
	cout => \SOM|Add0~14\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \PC|DOUT\(2) & ( \LOG|saidaLogica~0_combout\ & ( (\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(1))) ) ) ) # ( !\PC|DOUT\(2) & ( \LOG|saidaLogica~0_combout\ & ( (!\PC|DOUT\(1) & (!\PC|DOUT\(4) & (!\PC|DOUT\(3) $ (!\PC|DOUT\(0))))) 
-- # (\PC|DOUT\(1) & (!\PC|DOUT\(3) & (!\PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100000100010000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(1),
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \LOG|ALT_INV_saidaLogica~0_combout\,
	combout => \ROM|memROM~8_combout\);

\DEC|saidaDecoder~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|saidaDecoder~3_combout\ = (!\ROM|memROM~1_combout\ & (\DEC|saidaDecoder~0_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \DEC|ALT_INV_saidaDecoder~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \DEC|saidaDecoder~3_combout\);

\RREG|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~13_sumout\,
	ena => \DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RREG|DOUT\(5));

\MUX4|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|saida_MUX[5]~4_combout\ = (!\MUX4|saida_MUX[7]~0_combout\ & ((!\DEC|saidaDecoder~2_combout\ & ((\SOM|Add0~13_sumout\))) # (\DEC|saidaDecoder~2_combout\ & (\RREG|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder~2_combout\,
	datab => \MUX4|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \RREG|ALT_INV_DOUT\(5),
	datad => \SOM|ALT_INV_Add0~13_sumout\,
	combout => \MUX4|saida_MUX[5]~4_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4|saida_MUX[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\SOM|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~9_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \SOM|Add0~14\ ))
-- \SOM|Add0~10\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \SOM|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \SOM|Add0~14\,
	sumout => \SOM|Add0~9_sumout\,
	cout => \SOM|Add0~10\);

\RREG|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~9_sumout\,
	ena => \DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RREG|DOUT\(6));

\MUX4|saida_MUX[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|saida_MUX[6]~3_combout\ = (!\MUX4|saida_MUX[7]~0_combout\ & ((!\DEC|saidaDecoder~2_combout\ & ((\SOM|Add0~9_sumout\))) # (\DEC|saidaDecoder~2_combout\ & (\RREG|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder~2_combout\,
	datab => \MUX4|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \RREG|ALT_INV_DOUT\(6),
	datad => \SOM|ALT_INV_Add0~9_sumout\,
	combout => \MUX4|saida_MUX[6]~3_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4|saida_MUX[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\SOM|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~5_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \SOM|Add0~10\ ))
-- \SOM|Add0~6\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \SOM|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \SOM|Add0~10\,
	sumout => \SOM|Add0~5_sumout\,
	cout => \SOM|Add0~6\);

\RREG|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~5_sumout\,
	ena => \DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RREG|DOUT\(7));

\MUX4|saida_MUX[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|saida_MUX[7]~2_combout\ = (!\MUX4|saida_MUX[7]~0_combout\ & ((!\DEC|saidaDecoder~2_combout\ & ((\SOM|Add0~5_sumout\))) # (\DEC|saidaDecoder~2_combout\ & (\RREG|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder~2_combout\,
	datab => \MUX4|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \RREG|ALT_INV_DOUT\(7),
	datad => \SOM|ALT_INV_Add0~5_sumout\,
	combout => \MUX4|saida_MUX[7]~2_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4|saida_MUX[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( !\PC|DOUT\(5) & ( (\PC|DOUT\(0) & (\PC|DOUT\(4) & (!\PC|DOUT\(7) & !\PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \PC|ALT_INV_DOUT\(6),
	datae => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~6_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \ROM|memROM~6_combout\ & ( (!\PC|DOUT\(8) & (((\ROM|memROM~4_combout\ & \ROM|memROM~5_combout\)) # (\ROM|memROM~3_combout\))) ) ) # ( !\ROM|memROM~6_combout\ & ( (!\PC|DOUT\(8) & (\ROM|memROM~4_combout\ & 
-- \ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100010001000100110000000000000011000100010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~7_combout\);

\DEC|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|Equal10~0_combout\ = (!\ROM|memROM~1_combout\ & (!\DEC|saidaDecoder~0_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \DEC|ALT_INV_saidaDecoder~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \DEC|Equal10~0_combout\);

\DEC|saidaDecoder[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|saidaDecoder[3]~5_combout\ = (!\ROM|memROM~1_combout\ & (!\ROM|memROM~8_combout\ $ (((!\DEC|saidaDecoder~0_combout\) # (!\ROM|memROM~7_combout\))))) # (\ROM|memROM~1_combout\ & (!\DEC|saidaDecoder~0_combout\ & ((!\ROM|memROM~7_combout\) # 
-- (\ROM|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001011101100010000101110110001000010111011000100001011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \DEC|ALT_INV_saidaDecoder~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \DEC|saidaDecoder[3]~5_combout\);

\MUX|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|saida_MUX[4]~4_combout\ = (!\DEC|saidaDecoder[3]~1_combout\ & \MEM|ram~169_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datab => \MEM|ALT_INV_ram~169_combout\,
	combout => \MUX|saida_MUX[4]~4_combout\);

\ULA|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal0~0_combout\ = (\DEC|saidaDecoder~0_combout\ & ((!\ROM|memROM~7_combout\ $ (\ROM|memROM~8_combout\)) # (\ROM|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100010011001100010001001100110001000100110011000100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \DEC|ALT_INV_saidaDecoder~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ULA|Equal0~0_combout\);

\ULA|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~4_combout\ = (!\ULA|Equal0~0_combout\ & (\MUX|saida_MUX[4]~4_combout\)) # (\ULA|Equal0~0_combout\ & ((\ULA|Add1~1_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \ULA|ALT_INV_Add1~1_sumout\,
	datac => \ULA|ALT_INV_Equal0~0_combout\,
	combout => \ULA|saida[4]~4_combout\);

\DEC|saidaDecoder[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|saidaDecoder[2]~4_combout\ = (!\DEC|saidaDecoder~0_combout\ & (!\ROM|memROM~1_combout\ $ (((!\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100010001000010010001000100001001000100010000100100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \DEC|ALT_INV_saidaDecoder~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \DEC|saidaDecoder[2]~4_combout\);

\ACU|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA|saida[4]~4_combout\,
	sload => VCC,
	ena => \DEC|saidaDecoder[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACU|DOUT\(4));

\MEM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|process_0~0_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(4) & (\PC|DOUT\(1) & (!\PC|DOUT\(3) $ (\PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001001000000000000000000000000000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(1),
	datae => \PC|ALT_INV_DOUT\(2),
	combout => \MEM|process_0~0_combout\);

\MEM|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|process_0~1_combout\ = (\LOG|saidaLogica~0_combout\ & \MEM|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG|ALT_INV_saidaLogica~0_combout\,
	datab => \MEM|ALT_INV_process_0~0_combout\,
	combout => \MEM|process_0~1_combout\);

\MEM|ram~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~185_combout\ = ( \MEM|process_0~1_combout\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & (\ROM|memROM~14_combout\ & !\ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \MEM|ALT_INV_process_0~1_combout\,
	combout => \MEM|ram~185_combout\);

\MEM|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~133_q\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\PC|DOUT\(1) & ((!\PC|DOUT\(3) & (\PC|DOUT\(0))) # (\PC|DOUT\(3) & ((\PC|DOUT\(2)))))) # (\PC|DOUT\(1) & (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000001100011001000000110001100100000011000110010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~9_combout\);

\MEM|ram~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~186_combout\ = ( \MEM|process_0~0_combout\ & ( (!\PC|DOUT\(8) & (\LOG|saidaLogica~0_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \LOG|ALT_INV_saidaLogica~0_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \MEM|ALT_INV_process_0~0_combout\,
	combout => \MEM|ram~186_combout\);

\MEM|ram~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~187_combout\ = (\ROM|memROM~12_combout\ & (\ROM|memROM~14_combout\ & (!\ROM|memROM~15_combout\ & \MEM|ram~186_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \MEM|ALT_INV_ram~186_combout\,
	combout => \MEM|ram~187_combout\);

\MEM|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~141_q\);

\MEM|ram~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~188_combout\ = ( \MEM|process_0~1_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & (\ROM|memROM~14_combout\ & !\ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \MEM|ALT_INV_process_0~1_combout\,
	combout => \MEM|ram~188_combout\);

\MEM|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~117_q\);

\MEM|ram~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~189_combout\ = (!\ROM|memROM~12_combout\ & (\ROM|memROM~14_combout\ & (!\ROM|memROM~15_combout\ & \MEM|ram~186_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \MEM|ALT_INV_ram~186_combout\,
	combout => \MEM|ram~189_combout\);

\MEM|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~125_q\);

\MEM|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~165_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~141_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~133_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~125_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~117_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~133_q\,
	datab => \MEM|ALT_INV_ram~141_q\,
	datac => \MEM|ALT_INV_ram~117_q\,
	datad => \MEM|ALT_INV_ram~125_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~165_combout\);

\MEM|ram~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~190_combout\ = ( \MEM|process_0~1_combout\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & (!\ROM|memROM~14_combout\ & !\ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \MEM|ALT_INV_process_0~1_combout\,
	combout => \MEM|ram~190_combout\);

\MEM|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~101_q\);

\MEM|ram~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~191_combout\ = (\ROM|memROM~12_combout\ & (!\ROM|memROM~14_combout\ & (!\ROM|memROM~15_combout\ & \MEM|ram~186_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \MEM|ALT_INV_ram~186_combout\,
	combout => \MEM|ram~191_combout\);

\MEM|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~109_q\);

\MEM|ram~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~192_combout\ = ( \MEM|process_0~1_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~14_combout\ & !\ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \MEM|ALT_INV_process_0~1_combout\,
	combout => \MEM|ram~192_combout\);

\MEM|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~85_q\);

\MEM|ram~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~193_combout\ = (!\ROM|memROM~12_combout\ & (!\ROM|memROM~14_combout\ & (!\ROM|memROM~15_combout\ & \MEM|ram~186_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \MEM|ALT_INV_ram~186_combout\,
	combout => \MEM|ram~193_combout\);

\MEM|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~93_q\);

\MEM|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~166_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~109_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~101_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~93_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~101_q\,
	datab => \MEM|ALT_INV_ram~109_q\,
	datac => \MEM|ALT_INV_ram~85_q\,
	datad => \MEM|ALT_INV_ram~93_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~166_combout\);

\MEM|ram~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~194_combout\ = ( \MEM|process_0~1_combout\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & (\ROM|memROM~14_combout\ & \ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \MEM|ALT_INV_process_0~1_combout\,
	combout => \MEM|ram~194_combout\);

\MEM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~69_q\);

\MEM|ram~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~195_combout\ = (\ROM|memROM~12_combout\ & (\ROM|memROM~14_combout\ & (\ROM|memROM~15_combout\ & \MEM|ram~186_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \MEM|ALT_INV_ram~186_combout\,
	combout => \MEM|ram~195_combout\);

\MEM|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~77_q\);

\MEM|ram~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~196_combout\ = ( \MEM|process_0~1_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & (\ROM|memROM~14_combout\ & \ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \MEM|ALT_INV_process_0~1_combout\,
	combout => \MEM|ram~196_combout\);

\MEM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~53_q\);

\MEM|ram~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~197_combout\ = (!\ROM|memROM~12_combout\ & (\ROM|memROM~14_combout\ & (\ROM|memROM~15_combout\ & \MEM|ram~186_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \MEM|ALT_INV_ram~186_combout\,
	combout => \MEM|ram~197_combout\);

\MEM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~61_q\);

\MEM|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~167_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~77_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~69_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~61_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~69_q\,
	datab => \MEM|ALT_INV_ram~77_q\,
	datac => \MEM|ALT_INV_ram~53_q\,
	datad => \MEM|ALT_INV_ram~61_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~167_combout\);

\MEM|ram~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~198_combout\ = ( \MEM|process_0~1_combout\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & (!\ROM|memROM~14_combout\ & \ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \MEM|ALT_INV_process_0~1_combout\,
	combout => \MEM|ram~198_combout\);

\MEM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~37_q\);

\MEM|ram~199\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~199_combout\ = (\ROM|memROM~12_combout\ & (!\ROM|memROM~14_combout\ & (\ROM|memROM~15_combout\ & \MEM|ram~186_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \MEM|ALT_INV_ram~186_combout\,
	combout => \MEM|ram~199_combout\);

\MEM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~45_q\);

\MEM|ram~200\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~200_combout\ = ( \MEM|process_0~1_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~14_combout\ & \ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \MEM|ALT_INV_process_0~1_combout\,
	combout => \MEM|ram~200_combout\);

\MEM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~21_q\);

\MEM|ram~201\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~201_combout\ = (!\ROM|memROM~12_combout\ & (!\ROM|memROM~14_combout\ & (\ROM|memROM~15_combout\ & \MEM|ram~186_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \MEM|ALT_INV_ram~186_combout\,
	combout => \MEM|ram~201_combout\);

\MEM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(4),
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~29_q\);

\MEM|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~168_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~45_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~37_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~29_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~37_q\,
	datab => \MEM|ALT_INV_ram~45_q\,
	datac => \MEM|ALT_INV_ram~21_q\,
	datad => \MEM|ALT_INV_ram~29_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~168_combout\);

\MEM|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~169_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~167_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~168_combout\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ 
-- & ( \MEM|ram~165_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~166_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~165_combout\,
	datab => \MEM|ALT_INV_ram~166_combout\,
	datac => \MEM|ALT_INV_ram~167_combout\,
	datad => \MEM|ALT_INV_ram~168_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~169_combout\);

\MUX|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|saida_MUX[3]~3_combout\ = (!\DEC|saidaDecoder[3]~1_combout\ & ((\MEM|ram~164_combout\))) # (\DEC|saidaDecoder[3]~1_combout\ & (!\ROM|memROM~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \MEM|ALT_INV_ram~164_combout\,
	combout => \MUX|saida_MUX[3]~3_combout\);

\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = (!\ROM|memROM~5_combout\) # (!\ROM|memROM~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ROM|memROM~18_combout\);

\MUX|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|saida_MUX[2]~2_combout\ = (!\DEC|saidaDecoder[3]~1_combout\ & ((\MEM|ram~159_combout\))) # (\DEC|saidaDecoder[3]~1_combout\ & (\ROM|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \MEM|ALT_INV_ram~159_combout\,
	combout => \MUX|saida_MUX[2]~2_combout\);

\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = (!\ROM|memROM~5_combout\) # (!\ROM|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~17_combout\);

\MUX|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|saida_MUX[1]~1_combout\ = (!\DEC|saidaDecoder[3]~1_combout\ & ((\MEM|ram~154_combout\))) # (\DEC|saidaDecoder[3]~1_combout\ & (\ROM|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \MEM|ALT_INV_ram~154_combout\,
	combout => \MUX|saida_MUX[1]~1_combout\);

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = (\ROM|memROM~5_combout\ & \ROM|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~16_combout\);

\ULA|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA|Add1~34_cout\);

\ULA|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~17_sumout\ = SUM(( (!\DEC|saidaDecoder[3]~1_combout\ & (((!\MEM|ram~149_combout\)))) # (\DEC|saidaDecoder[3]~1_combout\ & (((!\ROM|memROM~16_combout\)) # (\PC|DOUT\(8)))) ) + ( \ACU|DOUT\(0) ) + ( \ULA|Add1~34_cout\ ))
-- \ULA|Add1~18\ = CARRY(( (!\DEC|saidaDecoder[3]~1_combout\ & (((!\MEM|ram~149_combout\)))) # (\DEC|saidaDecoder[3]~1_combout\ & (((!\ROM|memROM~16_combout\)) # (\PC|DOUT\(8)))) ) + ( \ACU|DOUT\(0) ) + ( \ULA|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \MEM|ALT_INV_ram~149_combout\,
	dataf => \ACU|ALT_INV_DOUT\(0),
	cin => \ULA|Add1~34_cout\,
	sumout => \ULA|Add1~17_sumout\,
	cout => \ULA|Add1~18\);

\ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~0_combout\ = (!\ULA|Equal0~0_combout\ & (\MUX|saida_MUX[0]~0_combout\)) # (\ULA|Equal0~0_combout\ & ((\ULA|Add1~17_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ULA|ALT_INV_Add1~17_sumout\,
	datac => \ULA|ALT_INV_Equal0~0_combout\,
	combout => \ULA|saida[0]~0_combout\);

\ACU|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA|saida[0]~0_combout\,
	sload => VCC,
	ena => \DEC|saidaDecoder[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACU|DOUT\(0));

\MEM|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~129_q\);

\MEM|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~137_q\);

\MEM|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~113_q\);

\MEM|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~121_q\);

\MEM|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~145_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~137_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~129_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~121_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~113_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~129_q\,
	datab => \MEM|ALT_INV_ram~137_q\,
	datac => \MEM|ALT_INV_ram~113_q\,
	datad => \MEM|ALT_INV_ram~121_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~145_combout\);

\MEM|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~97_q\);

\MEM|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~105_q\);

\MEM|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~81_q\);

\MEM|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~89_q\);

\MEM|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~146_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~105_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~97_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~89_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~97_q\,
	datab => \MEM|ALT_INV_ram~105_q\,
	datac => \MEM|ALT_INV_ram~81_q\,
	datad => \MEM|ALT_INV_ram~89_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~146_combout\);

\MEM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~65_q\);

\MEM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~73_q\);

\MEM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~49_q\);

\MEM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~57_q\);

\MEM|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~147_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~73_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~65_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~57_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~65_q\,
	datab => \MEM|ALT_INV_ram~73_q\,
	datac => \MEM|ALT_INV_ram~49_q\,
	datad => \MEM|ALT_INV_ram~57_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~147_combout\);

\MEM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~33_q\);

\MEM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~41_q\);

\MEM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~17_q\);

\MEM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(0),
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~25_q\);

\MEM|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~148_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~41_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~33_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~25_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~33_q\,
	datab => \MEM|ALT_INV_ram~41_q\,
	datac => \MEM|ALT_INV_ram~17_q\,
	datad => \MEM|ALT_INV_ram~25_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~148_combout\);

\MEM|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~149_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~147_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~148_combout\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ 
-- & ( \MEM|ram~145_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~146_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~145_combout\,
	datab => \MEM|ALT_INV_ram~146_combout\,
	datac => \MEM|ALT_INV_ram~147_combout\,
	datad => \MEM|ALT_INV_ram~148_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~149_combout\);

\ULA|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~21_sumout\ = SUM(( (!\DEC|saidaDecoder[3]~1_combout\ & (((!\MEM|ram~154_combout\)))) # (\DEC|saidaDecoder[3]~1_combout\ & (((\ROM|memROM~17_combout\)) # (\PC|DOUT\(8)))) ) + ( \ACU|DOUT\(1) ) + ( \ULA|Add1~18\ ))
-- \ULA|Add1~22\ = CARRY(( (!\DEC|saidaDecoder[3]~1_combout\ & (((!\MEM|ram~154_combout\)))) # (\DEC|saidaDecoder[3]~1_combout\ & (((\ROM|memROM~17_combout\)) # (\PC|DOUT\(8)))) ) + ( \ACU|DOUT\(1) ) + ( \ULA|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \MEM|ALT_INV_ram~154_combout\,
	dataf => \ACU|ALT_INV_DOUT\(1),
	cin => \ULA|Add1~18\,
	sumout => \ULA|Add1~21_sumout\,
	cout => \ULA|Add1~22\);

\ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~1_combout\ = (!\ULA|Equal0~0_combout\ & (\MUX|saida_MUX[1]~1_combout\)) # (\ULA|Equal0~0_combout\ & ((\ULA|Add1~21_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|ALT_INV_saida_MUX[1]~1_combout\,
	datab => \ULA|ALT_INV_Add1~21_sumout\,
	datac => \ULA|ALT_INV_Equal0~0_combout\,
	combout => \ULA|saida[1]~1_combout\);

\ACU|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA|saida[1]~1_combout\,
	sload => VCC,
	ena => \DEC|saidaDecoder[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACU|DOUT\(1));

\MEM|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~130_q\);

\MEM|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~98_q\);

\MEM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~66_q\);

\MEM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~34_q\);

\MEM|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~150_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~66_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~34_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~130_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~98_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~130_q\,
	datab => \MEM|ALT_INV_ram~98_q\,
	datac => \MEM|ALT_INV_ram~66_q\,
	datad => \MEM|ALT_INV_ram~34_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~150_combout\);

\MEM|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~138_q\);

\MEM|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~106_q\);

\MEM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~74_q\);

\MEM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~42_q\);

\MEM|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~151_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~74_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~42_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~138_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~106_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~138_q\,
	datab => \MEM|ALT_INV_ram~106_q\,
	datac => \MEM|ALT_INV_ram~74_q\,
	datad => \MEM|ALT_INV_ram~42_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~151_combout\);

\MEM|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~114_q\);

\MEM|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~82_q\);

\MEM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~50_q\);

\MEM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~18_q\);

\MEM|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~152_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~50_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~18_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~114_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~114_q\,
	datab => \MEM|ALT_INV_ram~82_q\,
	datac => \MEM|ALT_INV_ram~50_q\,
	datad => \MEM|ALT_INV_ram~18_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~152_combout\);

\MEM|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~122_q\);

\MEM|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~90_q\);

\MEM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~58_q\);

\MEM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(1),
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~26_q\);

\MEM|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~153_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~58_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~26_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~122_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~90_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~122_q\,
	datab => \MEM|ALT_INV_ram~90_q\,
	datac => \MEM|ALT_INV_ram~58_q\,
	datad => \MEM|ALT_INV_ram~26_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~153_combout\);

\MEM|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~154_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~151_combout\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~150_combout\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ 
-- & ( \MEM|ram~153_combout\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~152_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~150_combout\,
	datab => \MEM|ALT_INV_ram~151_combout\,
	datac => \MEM|ALT_INV_ram~152_combout\,
	datad => \MEM|ALT_INV_ram~153_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~154_combout\);

\ULA|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~25_sumout\ = SUM(( (!\DEC|saidaDecoder[3]~1_combout\ & (((!\MEM|ram~159_combout\)))) # (\DEC|saidaDecoder[3]~1_combout\ & (((\ROM|memROM~18_combout\)) # (\PC|DOUT\(8)))) ) + ( \ACU|DOUT\(2) ) + ( \ULA|Add1~22\ ))
-- \ULA|Add1~26\ = CARRY(( (!\DEC|saidaDecoder[3]~1_combout\ & (((!\MEM|ram~159_combout\)))) # (\DEC|saidaDecoder[3]~1_combout\ & (((\ROM|memROM~18_combout\)) # (\PC|DOUT\(8)))) ) + ( \ACU|DOUT\(2) ) + ( \ULA|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \MEM|ALT_INV_ram~159_combout\,
	dataf => \ACU|ALT_INV_DOUT\(2),
	cin => \ULA|Add1~22\,
	sumout => \ULA|Add1~25_sumout\,
	cout => \ULA|Add1~26\);

\ULA|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~2_combout\ = (!\ULA|Equal0~0_combout\ & (\MUX|saida_MUX[2]~2_combout\)) # (\ULA|Equal0~0_combout\ & ((\ULA|Add1~25_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \ULA|ALT_INV_Add1~25_sumout\,
	datac => \ULA|ALT_INV_Equal0~0_combout\,
	combout => \ULA|saida[2]~2_combout\);

\ACU|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA|saida[2]~2_combout\,
	sload => VCC,
	ena => \DEC|saidaDecoder[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACU|DOUT\(2));

\MEM|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~131_q\);

\MEM|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~139_q\);

\MEM|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~115_q\);

\MEM|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~123_q\);

\MEM|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~155_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~139_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~131_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~123_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~115_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~131_q\,
	datab => \MEM|ALT_INV_ram~139_q\,
	datac => \MEM|ALT_INV_ram~115_q\,
	datad => \MEM|ALT_INV_ram~123_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~155_combout\);

\MEM|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~99_q\);

\MEM|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~107_q\);

\MEM|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~83_q\);

\MEM|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~91_q\);

\MEM|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~156_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~107_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~99_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~91_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~83_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~99_q\,
	datab => \MEM|ALT_INV_ram~107_q\,
	datac => \MEM|ALT_INV_ram~83_q\,
	datad => \MEM|ALT_INV_ram~91_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~156_combout\);

\MEM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~67_q\);

\MEM|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~75_q\);

\MEM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~51_q\);

\MEM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~59_q\);

\MEM|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~157_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~75_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~67_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~59_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~67_q\,
	datab => \MEM|ALT_INV_ram~75_q\,
	datac => \MEM|ALT_INV_ram~51_q\,
	datad => \MEM|ALT_INV_ram~59_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~157_combout\);

\MEM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~35_q\);

\MEM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~43_q\);

\MEM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~19_q\);

\MEM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(2),
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~27_q\);

\MEM|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~158_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~43_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~35_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~27_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~35_q\,
	datab => \MEM|ALT_INV_ram~43_q\,
	datac => \MEM|ALT_INV_ram~19_q\,
	datad => \MEM|ALT_INV_ram~27_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~158_combout\);

\MEM|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~159_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~157_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~158_combout\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ 
-- & ( \MEM|ram~155_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~156_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~155_combout\,
	datab => \MEM|ALT_INV_ram~156_combout\,
	datac => \MEM|ALT_INV_ram~157_combout\,
	datad => \MEM|ALT_INV_ram~158_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~159_combout\);

\ULA|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~29_sumout\ = SUM(( (!\DEC|Equal10~0_combout\ & ((!\DEC|saidaDecoder[3]~5_combout\ & ((!\MEM|ram~164_combout\))) # (\DEC|saidaDecoder[3]~5_combout\ & (\ROM|memROM~15_combout\)))) # (\DEC|Equal10~0_combout\ & (((\ROM|memROM~15_combout\)))) ) + ( 
-- \ACU|DOUT\(3) ) + ( \ULA|Add1~26\ ))
-- \ULA|Add1~30\ = CARRY(( (!\DEC|Equal10~0_combout\ & ((!\DEC|saidaDecoder[3]~5_combout\ & ((!\MEM|ram~164_combout\))) # (\DEC|saidaDecoder[3]~5_combout\ & (\ROM|memROM~15_combout\)))) # (\DEC|Equal10~0_combout\ & (((\ROM|memROM~15_combout\)))) ) + ( 
-- \ACU|DOUT\(3) ) + ( \ULA|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal10~0_combout\,
	datab => \DEC|ALT_INV_saidaDecoder[3]~5_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \MEM|ALT_INV_ram~164_combout\,
	dataf => \ACU|ALT_INV_DOUT\(3),
	cin => \ULA|Add1~26\,
	sumout => \ULA|Add1~29_sumout\,
	cout => \ULA|Add1~30\);

\ULA|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~3_combout\ = (!\ULA|Equal0~0_combout\ & (\MUX|saida_MUX[3]~3_combout\)) # (\ULA|Equal0~0_combout\ & ((\ULA|Add1~29_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|ALT_INV_saida_MUX[3]~3_combout\,
	datab => \ULA|ALT_INV_Add1~29_sumout\,
	datac => \ULA|ALT_INV_Equal0~0_combout\,
	combout => \ULA|saida[3]~3_combout\);

\ACU|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA|saida[3]~3_combout\,
	sload => VCC,
	ena => \DEC|saidaDecoder[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACU|DOUT\(3));

\MEM|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~132_q\);

\MEM|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~100_q\);

\MEM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~68_q\);

\MEM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~36_q\);

\MEM|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~160_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~68_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~36_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~132_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~100_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~132_q\,
	datab => \MEM|ALT_INV_ram~100_q\,
	datac => \MEM|ALT_INV_ram~68_q\,
	datad => \MEM|ALT_INV_ram~36_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~160_combout\);

\MEM|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~140_q\);

\MEM|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~108_q\);

\MEM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~76_q\);

\MEM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~44_q\);

\MEM|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~161_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~76_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~44_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~140_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~108_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~140_q\,
	datab => \MEM|ALT_INV_ram~108_q\,
	datac => \MEM|ALT_INV_ram~76_q\,
	datad => \MEM|ALT_INV_ram~44_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~161_combout\);

\MEM|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~116_q\);

\MEM|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~84_q\);

\MEM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~52_q\);

\MEM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~20_q\);

\MEM|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~162_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~52_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~20_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~116_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~116_q\,
	datab => \MEM|ALT_INV_ram~84_q\,
	datac => \MEM|ALT_INV_ram~52_q\,
	datad => \MEM|ALT_INV_ram~20_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~162_combout\);

\MEM|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~124_q\);

\MEM|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~92_q\);

\MEM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~60_q\);

\MEM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(3),
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~28_q\);

\MEM|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~163_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~60_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~28_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~124_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~92_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~124_q\,
	datab => \MEM|ALT_INV_ram~92_q\,
	datac => \MEM|ALT_INV_ram~60_q\,
	datad => \MEM|ALT_INV_ram~28_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~163_combout\);

\MEM|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~164_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~161_combout\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~160_combout\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ 
-- & ( \MEM|ram~163_combout\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~162_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~160_combout\,
	datab => \MEM|ALT_INV_ram~161_combout\,
	datac => \MEM|ALT_INV_ram~162_combout\,
	datad => \MEM|ALT_INV_ram~163_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~164_combout\);

\ULA|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~1_sumout\ = SUM(( ((!\MEM|ram~169_combout\) # (\DEC|saidaDecoder[3]~5_combout\)) # (\DEC|Equal10~0_combout\) ) + ( \ACU|DOUT\(4) ) + ( \ULA|Add1~30\ ))
-- \ULA|Add1~2\ = CARRY(( ((!\MEM|ram~169_combout\) # (\DEC|saidaDecoder[3]~5_combout\)) # (\DEC|Equal10~0_combout\) ) + ( \ACU|DOUT\(4) ) + ( \ULA|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal10~0_combout\,
	datab => \DEC|ALT_INV_saidaDecoder[3]~5_combout\,
	datac => \MEM|ALT_INV_ram~169_combout\,
	dataf => \ACU|ALT_INV_DOUT\(4),
	cin => \ULA|Add1~30\,
	sumout => \ULA|Add1~1_sumout\,
	cout => \ULA|Add1~2\);

\MUX|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|saida_MUX[5]~5_combout\ = (!\DEC|saidaDecoder[3]~1_combout\ & \MEM|ram~174_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datab => \MEM|ALT_INV_ram~174_combout\,
	combout => \MUX|saida_MUX[5]~5_combout\);

\ULA|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~5_combout\ = (!\ULA|Equal0~0_combout\ & (\MUX|saida_MUX[5]~5_combout\)) # (\ULA|Equal0~0_combout\ & ((\ULA|Add1~5_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|ALT_INV_saida_MUX[5]~5_combout\,
	datab => \ULA|ALT_INV_Add1~5_sumout\,
	datac => \ULA|ALT_INV_Equal0~0_combout\,
	combout => \ULA|saida[5]~5_combout\);

\ACU|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA|saida[5]~5_combout\,
	sload => VCC,
	ena => \DEC|saidaDecoder[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACU|DOUT\(5));

\MEM|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~134_q\);

\MEM|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~102_q\);

\MEM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~70_q\);

\MEM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~38_q\);

\MEM|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~170_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~70_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~38_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~134_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~102_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~134_q\,
	datab => \MEM|ALT_INV_ram~102_q\,
	datac => \MEM|ALT_INV_ram~70_q\,
	datad => \MEM|ALT_INV_ram~38_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~170_combout\);

\MEM|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~142_q\);

\MEM|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~110_q\);

\MEM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~78_q\);

\MEM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~46_q\);

\MEM|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~171_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~78_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~46_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~142_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~110_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~142_q\,
	datab => \MEM|ALT_INV_ram~110_q\,
	datac => \MEM|ALT_INV_ram~78_q\,
	datad => \MEM|ALT_INV_ram~46_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~171_combout\);

\MEM|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~118_q\);

\MEM|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~86_q\);

\MEM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~54_q\);

\MEM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~22_q\);

\MEM|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~172_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~54_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~22_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~118_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~86_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~118_q\,
	datab => \MEM|ALT_INV_ram~86_q\,
	datac => \MEM|ALT_INV_ram~54_q\,
	datad => \MEM|ALT_INV_ram~22_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~172_combout\);

\MEM|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~126_q\);

\MEM|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~94_q\);

\MEM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~62_q\);

\MEM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(5),
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~30_q\);

\MEM|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~173_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~62_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~30_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~126_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~94_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~126_q\,
	datab => \MEM|ALT_INV_ram~94_q\,
	datac => \MEM|ALT_INV_ram~62_q\,
	datad => \MEM|ALT_INV_ram~30_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~173_combout\);

\MEM|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~174_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~171_combout\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~170_combout\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ 
-- & ( \MEM|ram~173_combout\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~172_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~170_combout\,
	datab => \MEM|ALT_INV_ram~171_combout\,
	datac => \MEM|ALT_INV_ram~172_combout\,
	datad => \MEM|ALT_INV_ram~173_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~174_combout\);

\DEC|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|Equal9~0_combout\ = (!\ROM|memROM~1_combout\ & (!\DEC|saidaDecoder~0_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \DEC|ALT_INV_saidaDecoder~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \DEC|Equal9~0_combout\);

\ULA|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~5_sumout\ = SUM(( ((!\MEM|ram~174_combout\) # ((\DEC|saidaDecoder[3]~5_combout\ & !\DEC|Equal9~0_combout\))) # (\DEC|Equal10~0_combout\) ) + ( \ACU|DOUT\(5) ) + ( \ULA|Add1~2\ ))
-- \ULA|Add1~6\ = CARRY(( ((!\MEM|ram~174_combout\) # ((\DEC|saidaDecoder[3]~5_combout\ & !\DEC|Equal9~0_combout\))) # (\DEC|Equal10~0_combout\) ) + ( \ACU|DOUT\(5) ) + ( \ULA|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal10~0_combout\,
	datab => \DEC|ALT_INV_saidaDecoder[3]~5_combout\,
	datac => \MEM|ALT_INV_ram~174_combout\,
	datad => \DEC|ALT_INV_Equal9~0_combout\,
	dataf => \ACU|ALT_INV_DOUT\(5),
	cin => \ULA|Add1~2\,
	sumout => \ULA|Add1~5_sumout\,
	cout => \ULA|Add1~6\);

\MUX|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|saida_MUX[6]~6_combout\ = (!\DEC|saidaDecoder[3]~1_combout\ & \MEM|ram~179_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datab => \MEM|ALT_INV_ram~179_combout\,
	combout => \MUX|saida_MUX[6]~6_combout\);

\ULA|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~6_combout\ = (!\ULA|Equal0~0_combout\ & (\MUX|saida_MUX[6]~6_combout\)) # (\ULA|Equal0~0_combout\ & ((\ULA|Add1~9_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|ALT_INV_saida_MUX[6]~6_combout\,
	datab => \ULA|ALT_INV_Add1~9_sumout\,
	datac => \ULA|ALT_INV_Equal0~0_combout\,
	combout => \ULA|saida[6]~6_combout\);

\ACU|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA|saida[6]~6_combout\,
	sload => VCC,
	ena => \DEC|saidaDecoder[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACU|DOUT\(6));

\MEM|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~135_q\);

\MEM|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~143_q\);

\MEM|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~119_q\);

\MEM|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~127_q\);

\MEM|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~175_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~143_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~135_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~127_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~119_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~135_q\,
	datab => \MEM|ALT_INV_ram~143_q\,
	datac => \MEM|ALT_INV_ram~119_q\,
	datad => \MEM|ALT_INV_ram~127_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~175_combout\);

\MEM|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~103_q\);

\MEM|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~111_q\);

\MEM|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~87_q\);

\MEM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~95_q\);

\MEM|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~176_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~111_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~103_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~95_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~103_q\,
	datab => \MEM|ALT_INV_ram~111_q\,
	datac => \MEM|ALT_INV_ram~87_q\,
	datad => \MEM|ALT_INV_ram~95_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~176_combout\);

\MEM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~71_q\);

\MEM|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~79_q\);

\MEM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~55_q\);

\MEM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~63_q\);

\MEM|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~177_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~79_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~71_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~63_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~71_q\,
	datab => \MEM|ALT_INV_ram~79_q\,
	datac => \MEM|ALT_INV_ram~55_q\,
	datad => \MEM|ALT_INV_ram~63_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~177_combout\);

\MEM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~39_q\);

\MEM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~47_q\);

\MEM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~23_q\);

\MEM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(6),
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~31_q\);

\MEM|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~178_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~47_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~39_q\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( 
-- \MEM|ram~31_q\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~39_q\,
	datab => \MEM|ALT_INV_ram~47_q\,
	datac => \MEM|ALT_INV_ram~23_q\,
	datad => \MEM|ALT_INV_ram~31_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~178_combout\);

\MEM|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~179_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~177_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~178_combout\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ 
-- & ( \MEM|ram~175_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~176_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~175_combout\,
	datab => \MEM|ALT_INV_ram~176_combout\,
	datac => \MEM|ALT_INV_ram~177_combout\,
	datad => \MEM|ALT_INV_ram~178_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~179_combout\);

\ULA|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~9_sumout\ = SUM(( ((!\MEM|ram~179_combout\) # ((\DEC|saidaDecoder[3]~5_combout\ & !\DEC|Equal9~0_combout\))) # (\DEC|Equal10~0_combout\) ) + ( \ACU|DOUT\(6) ) + ( \ULA|Add1~6\ ))
-- \ULA|Add1~10\ = CARRY(( ((!\MEM|ram~179_combout\) # ((\DEC|saidaDecoder[3]~5_combout\ & !\DEC|Equal9~0_combout\))) # (\DEC|Equal10~0_combout\) ) + ( \ACU|DOUT\(6) ) + ( \ULA|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal10~0_combout\,
	datab => \DEC|ALT_INV_saidaDecoder[3]~5_combout\,
	datac => \MEM|ALT_INV_ram~179_combout\,
	datad => \DEC|ALT_INV_Equal9~0_combout\,
	dataf => \ACU|ALT_INV_DOUT\(6),
	cin => \ULA|Add1~6\,
	sumout => \ULA|Add1~9_sumout\,
	cout => \ULA|Add1~10\);

\MUX|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|saida_MUX[7]~7_combout\ = (!\DEC|saidaDecoder[3]~1_combout\ & \MEM|ram~184_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datab => \MEM|ALT_INV_ram~184_combout\,
	combout => \MUX|saida_MUX[7]~7_combout\);

\ULA|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~7_combout\ = (!\ULA|Equal0~0_combout\ & (\MUX|saida_MUX[7]~7_combout\)) # (\ULA|Equal0~0_combout\ & ((\ULA|Add1~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|ALT_INV_saida_MUX[7]~7_combout\,
	datab => \ULA|ALT_INV_Add1~13_sumout\,
	datac => \ULA|ALT_INV_Equal0~0_combout\,
	combout => \ULA|saida[7]~7_combout\);

\ACU|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA|saida[7]~7_combout\,
	sload => VCC,
	ena => \DEC|saidaDecoder[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACU|DOUT\(7));

\MEM|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~136_q\);

\MEM|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~104_q\);

\MEM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~72_q\);

\MEM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~40_q\);

\MEM|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~180_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~72_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~40_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~136_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~104_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~136_q\,
	datab => \MEM|ALT_INV_ram~104_q\,
	datac => \MEM|ALT_INV_ram~72_q\,
	datad => \MEM|ALT_INV_ram~40_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~180_combout\);

\MEM|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~144_q\);

\MEM|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~112_q\);

\MEM|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~80_q\);

\MEM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~48_q\);

\MEM|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~181_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~80_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~48_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~144_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~112_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~144_q\,
	datab => \MEM|ALT_INV_ram~112_q\,
	datac => \MEM|ALT_INV_ram~80_q\,
	datad => \MEM|ALT_INV_ram~48_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~181_combout\);

\MEM|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~120_q\);

\MEM|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~88_q\);

\MEM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~56_q\);

\MEM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~24_q\);

\MEM|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~182_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~56_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~24_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~120_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~88_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~120_q\,
	datab => \MEM|ALT_INV_ram~88_q\,
	datac => \MEM|ALT_INV_ram~56_q\,
	datad => \MEM|ALT_INV_ram~24_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~182_combout\);

\MEM|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~128_q\);

\MEM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~96_q\);

\MEM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~64_q\);

\MEM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ACU|DOUT\(7),
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~32_q\);

\MEM|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~183_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~64_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~15_combout\ & ( \MEM|ram~32_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- \MEM|ram~128_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~15_combout\ & ( \MEM|ram~96_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~128_q\,
	datab => \MEM|ALT_INV_ram~96_q\,
	datac => \MEM|ALT_INV_ram~64_q\,
	datad => \MEM|ALT_INV_ram~32_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MEM|ram~183_combout\);

\MEM|ram~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~184_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~181_combout\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~12_combout\ & ( \MEM|ram~180_combout\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ 
-- & ( \MEM|ram~183_combout\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~12_combout\ & ( \MEM|ram~182_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~180_combout\,
	datab => \MEM|ALT_INV_ram~181_combout\,
	datac => \MEM|ALT_INV_ram~182_combout\,
	datad => \MEM|ALT_INV_ram~183_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \MEM|ram~184_combout\);

\ULA|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~13_sumout\ = SUM(( ((!\MEM|ram~184_combout\) # ((!\DEC|Equal9~0_combout\ & \DEC|saidaDecoder[3]~5_combout\))) # (\DEC|Equal10~0_combout\) ) + ( \ACU|DOUT\(7) ) + ( \ULA|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal10~0_combout\,
	datab => \DEC|ALT_INV_Equal9~0_combout\,
	datac => \DEC|ALT_INV_saidaDecoder[3]~5_combout\,
	datad => \MEM|ALT_INV_ram~184_combout\,
	dataf => \ACU|ALT_INV_DOUT\(7),
	cin => \ULA|Add1~10\,
	sumout => \ULA|Add1~13_sumout\);

\FREG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FREG|DOUT~1_combout\ = (!\ROM|memROM~1_combout\ & (\DEC|saidaDecoder~0_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \DEC|ALT_INV_saidaDecoder~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \FREG|DOUT~1_combout\);

\FREG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FREG|DOUT~2_combout\ = ( \FREG|DOUT~q\ & ( \FREG|DOUT~1_combout\ & ( (!\ULA|Add1~17_sumout\ & (!\ULA|Add1~21_sumout\ & (!\ULA|Add1~25_sumout\ & !\ULA|Add1~29_sumout\))) ) ) ) # ( !\FREG|DOUT~q\ & ( \FREG|DOUT~1_combout\ & ( (!\ULA|Add1~17_sumout\ & 
-- (!\ULA|Add1~21_sumout\ & (!\ULA|Add1~25_sumout\ & !\ULA|Add1~29_sumout\))) ) ) ) # ( \FREG|DOUT~q\ & ( !\FREG|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add1~17_sumout\,
	datab => \ULA|ALT_INV_Add1~21_sumout\,
	datac => \ULA|ALT_INV_Add1~25_sumout\,
	datad => \ULA|ALT_INV_Add1~29_sumout\,
	datae => \FREG|ALT_INV_DOUT~q\,
	dataf => \FREG|ALT_INV_DOUT~1_combout\,
	combout => \FREG|DOUT~2_combout\);

\FREG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FREG|DOUT~0_combout\ = ( \FREG|DOUT~1_combout\ & ( \FREG|DOUT~2_combout\ & ( (!\ULA|Add1~1_sumout\ & (!\ULA|Add1~5_sumout\ & (!\ULA|Add1~9_sumout\ & !\ULA|Add1~13_sumout\))) ) ) ) # ( !\FREG|DOUT~1_combout\ & ( \FREG|DOUT~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add1~1_sumout\,
	datab => \ULA|ALT_INV_Add1~5_sumout\,
	datac => \ULA|ALT_INV_Add1~9_sumout\,
	datad => \ULA|ALT_INV_Add1~13_sumout\,
	datae => \FREG|ALT_INV_DOUT~1_combout\,
	dataf => \FREG|ALT_INV_DOUT~2_combout\,
	combout => \FREG|DOUT~0_combout\);

\FREG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FREG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FREG|DOUT~q\);

\MUX4|saida_MUX[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|saida_MUX[7]~0_combout\ = ( \ROM|memROM~8_combout\ & ( \FREG|DOUT~q\ & ( (\LOG|saidaLogica~0_combout\ & (\ROM|memROM~0_combout\ & !\ROM|memROM~2_combout\)) ) ) ) # ( !\ROM|memROM~8_combout\ & ( \FREG|DOUT~q\ & ( (\LOG|saidaLogica~0_combout\ & 
-- (!\ROM|memROM~0_combout\ & (\ROM|memROM~2_combout\ & \ROM|memROM~7_combout\))) ) ) ) # ( \ROM|memROM~8_combout\ & ( !\FREG|DOUT~q\ & ( (\LOG|saidaLogica~0_combout\ & (\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~7_combout\))) ) ) ) # ( 
-- !\ROM|memROM~8_combout\ & ( !\FREG|DOUT~q\ & ( (\LOG|saidaLogica~0_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~2_combout\ & \ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000100000000000000000000000001000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG|ALT_INV_saidaLogica~0_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \FREG|ALT_INV_DOUT~q\,
	combout => \MUX4|saida_MUX[7]~0_combout\);

\RREG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~33_sumout\,
	ena => \DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RREG|DOUT\(2));

\MUX4|saida_MUX[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|saida_MUX[2]~9_combout\ = ( \RREG|DOUT\(2) & ( (!\PC|DOUT[0]~0_combout\ & ((!\MUX4|saida_MUX[7]~0_combout\ & ((\SOM|Add0~33_sumout\))) # (\MUX4|saida_MUX[7]~0_combout\ & (\ROM|memROM~14_combout\)))) # (\PC|DOUT[0]~0_combout\ & 
-- (((!\MUX4|saida_MUX[7]~0_combout\)))) ) ) # ( !\RREG|DOUT\(2) & ( (!\PC|DOUT[0]~0_combout\ & ((!\MUX4|saida_MUX[7]~0_combout\ & ((\SOM|Add0~33_sumout\))) # (\MUX4|saida_MUX[7]~0_combout\ & (\ROM|memROM~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000100110001000011010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \MUX4|ALT_INV_saida_MUX[7]~0_combout\,
	datad => \SOM|ALT_INV_Add0~33_sumout\,
	datae => \RREG|ALT_INV_DOUT\(2),
	combout => \MUX4|saida_MUX[2]~9_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4|saida_MUX[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\PC|DOUT\(0) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(1))) # (\PC|DOUT\(2) & ((\PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001010100000001000101010000000100010101000000010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~11_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (!\PC|DOUT\(8) & (\ROM|memROM~5_combout\ & \ROM|memROM~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~12_combout\);

\RREG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~29_sumout\,
	ena => \DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RREG|DOUT\(1));

\MUX4|saida_MUX[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|saida_MUX[1]~8_combout\ = ( \RREG|DOUT\(1) & ( (!\PC|DOUT[0]~0_combout\ & ((!\MUX4|saida_MUX[7]~0_combout\ & ((\SOM|Add0~29_sumout\))) # (\MUX4|saida_MUX[7]~0_combout\ & (\ROM|memROM~12_combout\)))) # (\PC|DOUT[0]~0_combout\ & 
-- (((!\MUX4|saida_MUX[7]~0_combout\)))) ) ) # ( !\RREG|DOUT\(1) & ( (!\PC|DOUT[0]~0_combout\ & ((!\MUX4|saida_MUX[7]~0_combout\ & ((\SOM|Add0~29_sumout\))) # (\MUX4|saida_MUX[7]~0_combout\ & (\ROM|memROM~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000100110001000011010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \MUX4|ALT_INV_saida_MUX[7]~0_combout\,
	datad => \SOM|ALT_INV_Add0~29_sumout\,
	datae => \RREG|ALT_INV_DOUT\(1),
	combout => \MUX4|saida_MUX[1]~8_combout\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4|saida_MUX[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(3) & (\PC|DOUT\(0) & (!\PC|DOUT\(4) & \PC|DOUT\(1)))) ) ) # ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & (!\PC|DOUT\(4) $ (\PC|DOUT\(1))))) # (\PC|DOUT\(3) & (\PC|DOUT\(0) & (!\PC|DOUT\(4) & 
-- \PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000011000000000000010000010000000000110000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(1),
	datae => \PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~2_combout\);

\DEC|saidaDecoder~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|saidaDecoder~0_combout\ = (\LOG|saidaLogica~0_combout\ & \ROM|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG|ALT_INV_saidaLogica~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	combout => \DEC|saidaDecoder~0_combout\);

\DEC|saidaDecoder~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|saidaDecoder~2_combout\ = (!\ROM|memROM~1_combout\ & (\DEC|saidaDecoder~0_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \DEC|ALT_INV_saidaDecoder~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \DEC|saidaDecoder~2_combout\);

\RREG|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~25_sumout\,
	ena => \DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RREG|DOUT\(4));

\MUX4|saida_MUX[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|saida_MUX[4]~7_combout\ = (!\MUX4|saida_MUX[7]~0_combout\ & ((!\DEC|saidaDecoder~2_combout\ & ((\SOM|Add0~25_sumout\))) # (\DEC|saidaDecoder~2_combout\ & (\RREG|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder~2_combout\,
	datab => \MUX4|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \RREG|ALT_INV_DOUT\(4),
	datad => \SOM|ALT_INV_Add0~25_sumout\,
	combout => \MUX4|saida_MUX[4]~7_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4|saida_MUX[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\PC|DOUT\(4) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = (!\PC|DOUT\(8) & (\ROM|memROM~5_combout\ & \ROM|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~10_combout\);

\RREG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~21_sumout\,
	ena => \DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RREG|DOUT\(0));

\MUX4|saida_MUX[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|saida_MUX[0]~6_combout\ = ( \RREG|DOUT\(0) & ( (!\PC|DOUT[0]~0_combout\ & ((!\MUX4|saida_MUX[7]~0_combout\ & ((\SOM|Add0~21_sumout\))) # (\MUX4|saida_MUX[7]~0_combout\ & (\ROM|memROM~10_combout\)))) # (\PC|DOUT[0]~0_combout\ & 
-- (((!\MUX4|saida_MUX[7]~0_combout\)))) ) ) # ( !\RREG|DOUT\(0) & ( (!\PC|DOUT[0]~0_combout\ & ((!\MUX4|saida_MUX[7]~0_combout\ & ((\SOM|Add0~21_sumout\))) # (\MUX4|saida_MUX[7]~0_combout\ & (\ROM|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000100110001000011010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \MUX4|ALT_INV_saida_MUX[7]~0_combout\,
	datad => \SOM|ALT_INV_Add0~21_sumout\,
	datae => \RREG|ALT_INV_DOUT\(0),
	combout => \MUX4|saida_MUX[0]~6_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4|saida_MUX[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \PC|DOUT\(4) & ( \LOG|saidaLogica~0_combout\ ) ) # ( !\PC|DOUT\(4) & ( \LOG|saidaLogica~0_combout\ & ( (!\PC|DOUT\(0) & (((\PC|DOUT\(3)) # (\PC|DOUT\(2))))) # (\PC|DOUT\(0) & (((!\PC|DOUT\(2)) # (!\PC|DOUT\(3))) # 
-- (\PC|DOUT\(1)))) ) ) ) # ( \PC|DOUT\(4) & ( !\LOG|saidaLogica~0_combout\ ) ) # ( !\PC|DOUT\(4) & ( !\LOG|saidaLogica~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \LOG|ALT_INV_saidaLogica~0_combout\,
	combout => \ROM|memROM~15_combout\);

\RREG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~17_sumout\,
	ena => \DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RREG|DOUT\(3));

\MUX4|saida_MUX[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|saida_MUX[3]~5_combout\ = ( \RREG|DOUT\(3) & ( (!\PC|DOUT[0]~0_combout\ & ((!\MUX4|saida_MUX[7]~0_combout\ & ((\SOM|Add0~17_sumout\))) # (\MUX4|saida_MUX[7]~0_combout\ & (!\ROM|memROM~15_combout\)))) # (\PC|DOUT[0]~0_combout\ & 
-- (((!\MUX4|saida_MUX[7]~0_combout\)))) ) ) # ( !\RREG|DOUT\(3) & ( (!\PC|DOUT[0]~0_combout\ & ((!\MUX4|saida_MUX[7]~0_combout\ & ((\SOM|Add0~17_sumout\))) # (\MUX4|saida_MUX[7]~0_combout\ & (!\ROM|memROM~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011001000001110001111100000001000110010000011100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \MUX4|ALT_INV_saida_MUX[7]~0_combout\,
	datad => \SOM|ALT_INV_Add0~17_sumout\,
	datae => \RREG|ALT_INV_DOUT\(3),
	combout => \MUX4|saida_MUX[3]~5_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4|saida_MUX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(4) & ((!\PC|DOUT\(0) $ (!\PC|DOUT\(1))) # (\PC|DOUT\(3)))) ) ) # ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(4) $ (((!\PC|DOUT\(3) & !\PC|DOUT\(1)))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(3) & 
-- (!\PC|DOUT\(4) & !\PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100011000000011100001101000001101000110000000111000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(1),
	datae => \PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~0_combout\);

\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = ( \ROM|memROM~8_combout\ & ( (\LOG|saidaLogica~0_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~2_combout\ & !\ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG|ALT_INV_saidaLogica~0_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	combout => \PC|DOUT[0]~0_combout\);

\SOM|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~1_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \SOM|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \SOM|Add0~6\,
	sumout => \SOM|Add0~1_sumout\);

\RREG|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~1_sumout\,
	ena => \DEC|saidaDecoder~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RREG|DOUT\(8));

\MUX4|saida_MUX[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4|saida_MUX[8]~1_combout\ = (!\MUX4|saida_MUX[7]~0_combout\ & ((!\PC|DOUT[0]~0_combout\ & (\SOM|Add0~1_sumout\)) # (\PC|DOUT[0]~0_combout\ & ((\RREG|DOUT\(8))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~0_combout\,
	datab => \MUX4|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \SOM|ALT_INV_Add0~1_sumout\,
	datad => \RREG|ALT_INV_DOUT\(8),
	combout => \MUX4|saida_MUX[8]~1_combout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4|saida_MUX[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\LOG|saidaLogica~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOG|saidaLogica~0_combout\ = (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \LOG|saidaLogica~0_combout\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (\LOG|saidaLogica~0_combout\ & \ROM|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG|ALT_INV_saidaLogica~0_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~1_combout\);

\DEC|saidaDecoder[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|saidaDecoder[3]~1_combout\ = (!\DEC|saidaDecoder~0_combout\ & (((!\ROM|memROM~7_combout\) # (\ROM|memROM~8_combout\)))) # (\DEC|saidaDecoder~0_combout\ & (!\ROM|memROM~1_combout\ & (!\ROM|memROM~7_combout\ $ (!\ROM|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001011101100110000101110110011000010111011001100001011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \DEC|ALT_INV_saidaDecoder~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \DEC|saidaDecoder[3]~1_combout\);

\MUX|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|saida_MUX[0]~0_combout\ = (!\DEC|saidaDecoder[3]~1_combout\ & ((\MEM|ram~149_combout\))) # (\DEC|saidaDecoder[3]~1_combout\ & (\ROM|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \MEM|ALT_INV_ram~149_combout\,
	combout => \MUX|saida_MUX[0]~0_combout\);

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


