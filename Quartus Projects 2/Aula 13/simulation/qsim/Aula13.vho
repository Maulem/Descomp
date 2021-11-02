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

-- DATE "11/02/2021 16:01:32"

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

ENTITY 	Aula13 IS
    PORT (
	CLOCK_50 : IN std_logic;
	rd_wr : IN std_logic;
	ula_op : IN std_logic_vector(2 DOWNTO 0);
	opcode_out : OUT std_logic_vector(5 DOWNTO 0);
	funct_out : OUT std_logic_vector(5 DOWNTO 0);
	debug : OUT std_logic_vector(31 DOWNTO 0);
	debug2 : OUT std_logic_vector(31 DOWNTO 0);
	debug3 : OUT std_logic_vector(4 DOWNTO 0);
	debug4 : OUT std_logic_vector(4 DOWNTO 0);
	ULA_out : OUT std_logic_vector(31 DOWNTO 0)
	);
END Aula13;

ARCHITECTURE structure OF Aula13 IS
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
SIGNAL ww_rd_wr : std_logic;
SIGNAL ww_ula_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_opcode_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_funct_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_debug : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug3 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_debug4 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ULA_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \opcode_out[0]~output_o\ : std_logic;
SIGNAL \opcode_out[1]~output_o\ : std_logic;
SIGNAL \opcode_out[2]~output_o\ : std_logic;
SIGNAL \opcode_out[3]~output_o\ : std_logic;
SIGNAL \opcode_out[4]~output_o\ : std_logic;
SIGNAL \opcode_out[5]~output_o\ : std_logic;
SIGNAL \funct_out[0]~output_o\ : std_logic;
SIGNAL \funct_out[1]~output_o\ : std_logic;
SIGNAL \funct_out[2]~output_o\ : std_logic;
SIGNAL \funct_out[3]~output_o\ : std_logic;
SIGNAL \funct_out[4]~output_o\ : std_logic;
SIGNAL \funct_out[5]~output_o\ : std_logic;
SIGNAL \debug[0]~output_o\ : std_logic;
SIGNAL \debug[1]~output_o\ : std_logic;
SIGNAL \debug[2]~output_o\ : std_logic;
SIGNAL \debug[3]~output_o\ : std_logic;
SIGNAL \debug[4]~output_o\ : std_logic;
SIGNAL \debug[5]~output_o\ : std_logic;
SIGNAL \debug[6]~output_o\ : std_logic;
SIGNAL \debug[7]~output_o\ : std_logic;
SIGNAL \debug[8]~output_o\ : std_logic;
SIGNAL \debug[9]~output_o\ : std_logic;
SIGNAL \debug[10]~output_o\ : std_logic;
SIGNAL \debug[11]~output_o\ : std_logic;
SIGNAL \debug[12]~output_o\ : std_logic;
SIGNAL \debug[13]~output_o\ : std_logic;
SIGNAL \debug[14]~output_o\ : std_logic;
SIGNAL \debug[15]~output_o\ : std_logic;
SIGNAL \debug[16]~output_o\ : std_logic;
SIGNAL \debug[17]~output_o\ : std_logic;
SIGNAL \debug[18]~output_o\ : std_logic;
SIGNAL \debug[19]~output_o\ : std_logic;
SIGNAL \debug[20]~output_o\ : std_logic;
SIGNAL \debug[21]~output_o\ : std_logic;
SIGNAL \debug[22]~output_o\ : std_logic;
SIGNAL \debug[23]~output_o\ : std_logic;
SIGNAL \debug[24]~output_o\ : std_logic;
SIGNAL \debug[25]~output_o\ : std_logic;
SIGNAL \debug[26]~output_o\ : std_logic;
SIGNAL \debug[27]~output_o\ : std_logic;
SIGNAL \debug[28]~output_o\ : std_logic;
SIGNAL \debug[29]~output_o\ : std_logic;
SIGNAL \debug[30]~output_o\ : std_logic;
SIGNAL \debug[31]~output_o\ : std_logic;
SIGNAL \debug2[0]~output_o\ : std_logic;
SIGNAL \debug2[1]~output_o\ : std_logic;
SIGNAL \debug2[2]~output_o\ : std_logic;
SIGNAL \debug2[3]~output_o\ : std_logic;
SIGNAL \debug2[4]~output_o\ : std_logic;
SIGNAL \debug2[5]~output_o\ : std_logic;
SIGNAL \debug2[6]~output_o\ : std_logic;
SIGNAL \debug2[7]~output_o\ : std_logic;
SIGNAL \debug2[8]~output_o\ : std_logic;
SIGNAL \debug2[9]~output_o\ : std_logic;
SIGNAL \debug2[10]~output_o\ : std_logic;
SIGNAL \debug2[11]~output_o\ : std_logic;
SIGNAL \debug2[12]~output_o\ : std_logic;
SIGNAL \debug2[13]~output_o\ : std_logic;
SIGNAL \debug2[14]~output_o\ : std_logic;
SIGNAL \debug2[15]~output_o\ : std_logic;
SIGNAL \debug2[16]~output_o\ : std_logic;
SIGNAL \debug2[17]~output_o\ : std_logic;
SIGNAL \debug2[18]~output_o\ : std_logic;
SIGNAL \debug2[19]~output_o\ : std_logic;
SIGNAL \debug2[20]~output_o\ : std_logic;
SIGNAL \debug2[21]~output_o\ : std_logic;
SIGNAL \debug2[22]~output_o\ : std_logic;
SIGNAL \debug2[23]~output_o\ : std_logic;
SIGNAL \debug2[24]~output_o\ : std_logic;
SIGNAL \debug2[25]~output_o\ : std_logic;
SIGNAL \debug2[26]~output_o\ : std_logic;
SIGNAL \debug2[27]~output_o\ : std_logic;
SIGNAL \debug2[28]~output_o\ : std_logic;
SIGNAL \debug2[29]~output_o\ : std_logic;
SIGNAL \debug2[30]~output_o\ : std_logic;
SIGNAL \debug2[31]~output_o\ : std_logic;
SIGNAL \debug3[0]~output_o\ : std_logic;
SIGNAL \debug3[1]~output_o\ : std_logic;
SIGNAL \debug3[2]~output_o\ : std_logic;
SIGNAL \debug3[3]~output_o\ : std_logic;
SIGNAL \debug3[4]~output_o\ : std_logic;
SIGNAL \debug4[0]~output_o\ : std_logic;
SIGNAL \debug4[1]~output_o\ : std_logic;
SIGNAL \debug4[2]~output_o\ : std_logic;
SIGNAL \debug4[3]~output_o\ : std_logic;
SIGNAL \debug4[4]~output_o\ : std_logic;
SIGNAL \ULA_out[0]~output_o\ : std_logic;
SIGNAL \ULA_out[1]~output_o\ : std_logic;
SIGNAL \ULA_out[2]~output_o\ : std_logic;
SIGNAL \ULA_out[3]~output_o\ : std_logic;
SIGNAL \ULA_out[4]~output_o\ : std_logic;
SIGNAL \ULA_out[5]~output_o\ : std_logic;
SIGNAL \ULA_out[6]~output_o\ : std_logic;
SIGNAL \ULA_out[7]~output_o\ : std_logic;
SIGNAL \ULA_out[8]~output_o\ : std_logic;
SIGNAL \ULA_out[9]~output_o\ : std_logic;
SIGNAL \ULA_out[10]~output_o\ : std_logic;
SIGNAL \ULA_out[11]~output_o\ : std_logic;
SIGNAL \ULA_out[12]~output_o\ : std_logic;
SIGNAL \ULA_out[13]~output_o\ : std_logic;
SIGNAL \ULA_out[14]~output_o\ : std_logic;
SIGNAL \ULA_out[15]~output_o\ : std_logic;
SIGNAL \ULA_out[16]~output_o\ : std_logic;
SIGNAL \ULA_out[17]~output_o\ : std_logic;
SIGNAL \ULA_out[18]~output_o\ : std_logic;
SIGNAL \ULA_out[19]~output_o\ : std_logic;
SIGNAL \ULA_out[20]~output_o\ : std_logic;
SIGNAL \ULA_out[21]~output_o\ : std_logic;
SIGNAL \ULA_out[22]~output_o\ : std_logic;
SIGNAL \ULA_out[23]~output_o\ : std_logic;
SIGNAL \ULA_out[24]~output_o\ : std_logic;
SIGNAL \ULA_out[25]~output_o\ : std_logic;
SIGNAL \ULA_out[26]~output_o\ : std_logic;
SIGNAL \ULA_out[27]~output_o\ : std_logic;
SIGNAL \ULA_out[28]~output_o\ : std_logic;
SIGNAL \ULA_out[29]~output_o\ : std_logic;
SIGNAL \ULA_out[30]~output_o\ : std_logic;
SIGNAL \ULA_out[31]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \SOM|Add0~1_sumout\ : std_logic;
SIGNAL \SOM|Add0~2\ : std_logic;
SIGNAL \SOM|Add0~9_sumout\ : std_logic;
SIGNAL \SOM|Add0~10\ : std_logic;
SIGNAL \SOM|Add0~5_sumout\ : std_logic;
SIGNAL \SOM|Add0~6\ : std_logic;
SIGNAL \SOM|Add0~17_sumout\ : std_logic;
SIGNAL \SOM|Add0~18\ : std_logic;
SIGNAL \SOM|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \BRG|saidaA[0]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ula_op[1]~input_o\ : std_logic;
SIGNAL \ula_op[0]~input_o\ : std_logic;
SIGNAL \ula_op[2]~input_o\ : std_logic;
SIGNAL \ULA|Equal7~1_combout\ : std_logic;
SIGNAL \BRG|registrador~1062_combout\ : std_logic;
SIGNAL \BRG|saidaB[0]~0_combout\ : std_logic;
SIGNAL \ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \ULA|Equal7~0_combout\ : std_logic;
SIGNAL \rd_wr~input_o\ : std_logic;
SIGNAL \BRG|registrador~1089_combout\ : std_logic;
SIGNAL \BRG|registrador~38_q\ : std_logic;
SIGNAL \BRG|registrador~1063_combout\ : std_logic;
SIGNAL \ULA|Add0~130_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \BRG|registrador~1088_combout\ : std_logic;
SIGNAL \BRG|registrador~294_q\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \BRG|saidaA[0]~1_combout\ : std_logic;
SIGNAL \BRG|saidaB[1]~1_combout\ : std_logic;
SIGNAL \ULA|saida[1]~2_combout\ : std_logic;
SIGNAL \BRG|registrador~39_q\ : std_logic;
SIGNAL \BRG|registrador~1064_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \BRG|registrador~295_q\ : std_logic;
SIGNAL \BRG|saidaA[1]~2_combout\ : std_logic;
SIGNAL \BRG|saidaB[2]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ULA|saida[2]~93_combout\ : std_logic;
SIGNAL \ULA|saida[2]~4_combout\ : std_logic;
SIGNAL \ULA|saida[2]~5_combout\ : std_logic;
SIGNAL \BRG|registrador~40_q\ : std_logic;
SIGNAL \BRG|registrador~1065_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \BRG|registrador~296_q\ : std_logic;
SIGNAL \BRG|saidaA[2]~3_combout\ : std_logic;
SIGNAL \BRG|saidaB[3]~3_combout\ : std_logic;
SIGNAL \ULA|saida[3]~7_combout\ : std_logic;
SIGNAL \BRG|registrador~41_q\ : std_logic;
SIGNAL \BRG|registrador~1066_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \BRG|registrador~297_q\ : std_logic;
SIGNAL \BRG|saidaA[3]~4_combout\ : std_logic;
SIGNAL \BRG|saidaB[4]~4_combout\ : std_logic;
SIGNAL \ULA|saida[4]~9_combout\ : std_logic;
SIGNAL \ULA|saida[4]~10_combout\ : std_logic;
SIGNAL \BRG|registrador~42_q\ : std_logic;
SIGNAL \BRG|registrador~1067_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \BRG|registrador~298_q\ : std_logic;
SIGNAL \BRG|saidaA[4]~5_combout\ : std_logic;
SIGNAL \BRG|registrador~1068_combout\ : std_logic;
SIGNAL \BRG|saidaB[5]~5_combout\ : std_logic;
SIGNAL \ULA|saida[5]~12_combout\ : std_logic;
SIGNAL \ULA|saida[5]~13_combout\ : std_logic;
SIGNAL \BRG|registrador~43_q\ : std_logic;
SIGNAL \BRG|registrador~1090_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \BRG|registrador~299_q\ : std_logic;
SIGNAL \BRG|saidaA[5]~6_combout\ : std_logic;
SIGNAL \BRG|registrador~1069_combout\ : std_logic;
SIGNAL \BRG|saidaB[6]~6_combout\ : std_logic;
SIGNAL \ULA|saida[6]~15_combout\ : std_logic;
SIGNAL \ULA|saida[6]~16_combout\ : std_logic;
SIGNAL \BRG|registrador~44_q\ : std_logic;
SIGNAL \BRG|registrador~1091_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \BRG|registrador~300_q\ : std_logic;
SIGNAL \BRG|saidaA[6]~7_combout\ : std_logic;
SIGNAL \BRG|registrador~1070_combout\ : std_logic;
SIGNAL \BRG|saidaB[7]~7_combout\ : std_logic;
SIGNAL \ULA|saida[7]~18_combout\ : std_logic;
SIGNAL \ULA|saida[7]~19_combout\ : std_logic;
SIGNAL \BRG|registrador~45_q\ : std_logic;
SIGNAL \BRG|registrador~1092_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \BRG|registrador~301_q\ : std_logic;
SIGNAL \BRG|saidaA[7]~8_combout\ : std_logic;
SIGNAL \BRG|registrador~1071_combout\ : std_logic;
SIGNAL \BRG|saidaB[8]~8_combout\ : std_logic;
SIGNAL \ULA|saida[8]~21_combout\ : std_logic;
SIGNAL \ULA|saida[8]~22_combout\ : std_logic;
SIGNAL \BRG|registrador~46_q\ : std_logic;
SIGNAL \BRG|registrador~1093_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \BRG|registrador~302_q\ : std_logic;
SIGNAL \BRG|saidaA[8]~9_combout\ : std_logic;
SIGNAL \BRG|registrador~1072_combout\ : std_logic;
SIGNAL \BRG|saidaB[9]~9_combout\ : std_logic;
SIGNAL \ULA|saida[9]~24_combout\ : std_logic;
SIGNAL \ULA|saida[9]~25_combout\ : std_logic;
SIGNAL \BRG|registrador~47_q\ : std_logic;
SIGNAL \BRG|registrador~1094_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \BRG|registrador~303_q\ : std_logic;
SIGNAL \BRG|saidaA[9]~10_combout\ : std_logic;
SIGNAL \BRG|registrador~1073_combout\ : std_logic;
SIGNAL \BRG|saidaB[10]~10_combout\ : std_logic;
SIGNAL \ULA|saida[10]~27_combout\ : std_logic;
SIGNAL \ULA|saida[10]~28_combout\ : std_logic;
SIGNAL \BRG|registrador~48_q\ : std_logic;
SIGNAL \BRG|registrador~1095_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \BRG|registrador~304_q\ : std_logic;
SIGNAL \BRG|saidaA[10]~11_combout\ : std_logic;
SIGNAL \BRG|registrador~1074_combout\ : std_logic;
SIGNAL \BRG|saidaB[11]~11_combout\ : std_logic;
SIGNAL \ULA|saida[11]~30_combout\ : std_logic;
SIGNAL \ULA|saida[11]~31_combout\ : std_logic;
SIGNAL \BRG|registrador~49_q\ : std_logic;
SIGNAL \BRG|registrador~1096_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \BRG|registrador~305_q\ : std_logic;
SIGNAL \BRG|saidaA[11]~12_combout\ : std_logic;
SIGNAL \BRG|registrador~1075_combout\ : std_logic;
SIGNAL \BRG|saidaB[12]~12_combout\ : std_logic;
SIGNAL \ULA|saida[12]~33_combout\ : std_logic;
SIGNAL \ULA|saida[12]~34_combout\ : std_logic;
SIGNAL \BRG|registrador~50_q\ : std_logic;
SIGNAL \BRG|registrador~1097_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \BRG|registrador~306_q\ : std_logic;
SIGNAL \BRG|saidaA[12]~13_combout\ : std_logic;
SIGNAL \BRG|registrador~1076_combout\ : std_logic;
SIGNAL \BRG|saidaB[13]~13_combout\ : std_logic;
SIGNAL \ULA|saida[13]~36_combout\ : std_logic;
SIGNAL \ULA|saida[13]~37_combout\ : std_logic;
SIGNAL \BRG|registrador~51_q\ : std_logic;
SIGNAL \BRG|registrador~1098_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \BRG|registrador~307_q\ : std_logic;
SIGNAL \BRG|saidaA[13]~14_combout\ : std_logic;
SIGNAL \BRG|registrador~1077_combout\ : std_logic;
SIGNAL \BRG|saidaB[14]~14_combout\ : std_logic;
SIGNAL \ULA|saida[14]~39_combout\ : std_logic;
SIGNAL \ULA|saida[14]~40_combout\ : std_logic;
SIGNAL \BRG|registrador~52_q\ : std_logic;
SIGNAL \BRG|registrador~1099_combout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \BRG|registrador~308_q\ : std_logic;
SIGNAL \BRG|saidaA[14]~15_combout\ : std_logic;
SIGNAL \BRG|registrador~1078_combout\ : std_logic;
SIGNAL \BRG|saidaB[15]~15_combout\ : std_logic;
SIGNAL \ULA|saida[15]~42_combout\ : std_logic;
SIGNAL \ULA|saida[15]~43_combout\ : std_logic;
SIGNAL \BRG|registrador~53_q\ : std_logic;
SIGNAL \BRG|registrador~1100_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \BRG|registrador~309_q\ : std_logic;
SIGNAL \BRG|saidaA[15]~16_combout\ : std_logic;
SIGNAL \BRG|registrador~1079_combout\ : std_logic;
SIGNAL \BRG|saidaB[16]~16_combout\ : std_logic;
SIGNAL \ULA|saida[16]~45_combout\ : std_logic;
SIGNAL \ULA|saida[16]~46_combout\ : std_logic;
SIGNAL \BRG|registrador~54_q\ : std_logic;
SIGNAL \BRG|registrador~1101_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \BRG|registrador~310_q\ : std_logic;
SIGNAL \BRG|saidaA[16]~17_combout\ : std_logic;
SIGNAL \BRG|registrador~1080_combout\ : std_logic;
SIGNAL \BRG|saidaB[17]~17_combout\ : std_logic;
SIGNAL \ULA|saida[17]~48_combout\ : std_logic;
SIGNAL \ULA|saida[17]~49_combout\ : std_logic;
SIGNAL \BRG|registrador~55_q\ : std_logic;
SIGNAL \BRG|registrador~1102_combout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \BRG|registrador~311_q\ : std_logic;
SIGNAL \BRG|saidaA[17]~18_combout\ : std_logic;
SIGNAL \BRG|registrador~1081_combout\ : std_logic;
SIGNAL \BRG|saidaB[18]~18_combout\ : std_logic;
SIGNAL \ULA|saida[18]~51_combout\ : std_logic;
SIGNAL \ULA|saida[18]~52_combout\ : std_logic;
SIGNAL \BRG|registrador~56_q\ : std_logic;
SIGNAL \BRG|registrador~1103_combout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \BRG|registrador~312_q\ : std_logic;
SIGNAL \BRG|saidaA[18]~19_combout\ : std_logic;
SIGNAL \BRG|registrador~1082_combout\ : std_logic;
SIGNAL \BRG|saidaB[19]~19_combout\ : std_logic;
SIGNAL \ULA|saida[19]~54_combout\ : std_logic;
SIGNAL \ULA|saida[19]~55_combout\ : std_logic;
SIGNAL \BRG|registrador~57_q\ : std_logic;
SIGNAL \BRG|registrador~1104_combout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \BRG|registrador~313_q\ : std_logic;
SIGNAL \BRG|saidaA[19]~20_combout\ : std_logic;
SIGNAL \BRG|registrador~1083_combout\ : std_logic;
SIGNAL \BRG|saidaB[20]~20_combout\ : std_logic;
SIGNAL \ULA|saida[20]~57_combout\ : std_logic;
SIGNAL \ULA|saida[20]~58_combout\ : std_logic;
SIGNAL \BRG|registrador~58_q\ : std_logic;
SIGNAL \BRG|registrador~1105_combout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \BRG|registrador~314_q\ : std_logic;
SIGNAL \BRG|saidaA[20]~21_combout\ : std_logic;
SIGNAL \BRG|registrador~1084_combout\ : std_logic;
SIGNAL \BRG|saidaB[21]~21_combout\ : std_logic;
SIGNAL \ULA|saida[21]~60_combout\ : std_logic;
SIGNAL \ULA|saida[21]~61_combout\ : std_logic;
SIGNAL \BRG|registrador~59_q\ : std_logic;
SIGNAL \BRG|registrador~1106_combout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \BRG|registrador~315_q\ : std_logic;
SIGNAL \BRG|saidaA[21]~22_combout\ : std_logic;
SIGNAL \BRG|registrador~1085_combout\ : std_logic;
SIGNAL \BRG|saidaB[22]~22_combout\ : std_logic;
SIGNAL \ULA|saida[22]~63_combout\ : std_logic;
SIGNAL \ULA|saida[22]~64_combout\ : std_logic;
SIGNAL \BRG|registrador~60_q\ : std_logic;
SIGNAL \BRG|registrador~1107_combout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \BRG|registrador~316_q\ : std_logic;
SIGNAL \BRG|saidaA[22]~23_combout\ : std_logic;
SIGNAL \BRG|registrador~1086_combout\ : std_logic;
SIGNAL \BRG|saidaB[23]~23_combout\ : std_logic;
SIGNAL \ULA|saida[23]~66_combout\ : std_logic;
SIGNAL \ULA|saida[23]~67_combout\ : std_logic;
SIGNAL \BRG|registrador~61_q\ : std_logic;
SIGNAL \BRG|registrador~1108_combout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \BRG|registrador~317_q\ : std_logic;
SIGNAL \BRG|saidaA[23]~24_combout\ : std_logic;
SIGNAL \BRG|registrador~1087_combout\ : std_logic;
SIGNAL \BRG|saidaB[24]~24_combout\ : std_logic;
SIGNAL \ULA|saida[24]~69_combout\ : std_logic;
SIGNAL \ULA|saida[24]~70_combout\ : std_logic;
SIGNAL \BRG|registrador~62_q\ : std_logic;
SIGNAL \BRG|registrador~1109_combout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \BRG|registrador~318_q\ : std_logic;
SIGNAL \BRG|saidaA[24]~25_combout\ : std_logic;
SIGNAL \BRG|saidaB[25]~25_combout\ : std_logic;
SIGNAL \ULA|saida[25]~72_combout\ : std_logic;
SIGNAL \ULA|saida[25]~73_combout\ : std_logic;
SIGNAL \BRG|registrador~63_q\ : std_logic;
SIGNAL \BRG|registrador~1110_combout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \BRG|registrador~319_q\ : std_logic;
SIGNAL \BRG|saidaA[25]~26_combout\ : std_logic;
SIGNAL \BRG|saidaB[26]~26_combout\ : std_logic;
SIGNAL \ULA|saida[26]~75_combout\ : std_logic;
SIGNAL \ULA|saida[26]~76_combout\ : std_logic;
SIGNAL \BRG|registrador~64_q\ : std_logic;
SIGNAL \BRG|registrador~1111_combout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \BRG|registrador~320_q\ : std_logic;
SIGNAL \BRG|saidaA[26]~27_combout\ : std_logic;
SIGNAL \BRG|saidaB[27]~27_combout\ : std_logic;
SIGNAL \ULA|saida[27]~78_combout\ : std_logic;
SIGNAL \ULA|saida[27]~79_combout\ : std_logic;
SIGNAL \BRG|registrador~65_q\ : std_logic;
SIGNAL \BRG|registrador~1112_combout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \BRG|registrador~321_q\ : std_logic;
SIGNAL \BRG|saidaA[27]~28_combout\ : std_logic;
SIGNAL \BRG|saidaB[28]~28_combout\ : std_logic;
SIGNAL \ULA|saida[28]~81_combout\ : std_logic;
SIGNAL \ULA|saida[28]~82_combout\ : std_logic;
SIGNAL \BRG|registrador~66_q\ : std_logic;
SIGNAL \BRG|registrador~1113_combout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \BRG|registrador~322_q\ : std_logic;
SIGNAL \BRG|saidaA[28]~29_combout\ : std_logic;
SIGNAL \BRG|saidaB[29]~29_combout\ : std_logic;
SIGNAL \ULA|saida[29]~84_combout\ : std_logic;
SIGNAL \ULA|saida[29]~85_combout\ : std_logic;
SIGNAL \BRG|registrador~67_q\ : std_logic;
SIGNAL \BRG|registrador~1114_combout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \BRG|registrador~323_q\ : std_logic;
SIGNAL \BRG|saidaA[29]~30_combout\ : std_logic;
SIGNAL \BRG|saidaB[30]~30_combout\ : std_logic;
SIGNAL \ULA|saida[30]~87_combout\ : std_logic;
SIGNAL \ULA|saida[30]~88_combout\ : std_logic;
SIGNAL \BRG|registrador~68_q\ : std_logic;
SIGNAL \BRG|registrador~1115_combout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \BRG|registrador~324_q\ : std_logic;
SIGNAL \BRG|saidaA[30]~31_combout\ : std_logic;
SIGNAL \BRG|saidaB[31]~31_combout\ : std_logic;
SIGNAL \ULA|saida[31]~90_combout\ : std_logic;
SIGNAL \ULA|saida[31]~91_combout\ : std_logic;
SIGNAL \BRG|registrador~69_q\ : std_logic;
SIGNAL \BRG|registrador~1116_combout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \BRG|registrador~325_q\ : std_logic;
SIGNAL \BRG|saidaA[31]~32_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ULA|saida[0]~1_combout\ : std_logic;
SIGNAL \ULA|saida[1]~3_combout\ : std_logic;
SIGNAL \ULA|saida[2]~6_combout\ : std_logic;
SIGNAL \ULA|saida[3]~8_combout\ : std_logic;
SIGNAL \ULA|saida[4]~11_combout\ : std_logic;
SIGNAL \ULA|saida[5]~14_combout\ : std_logic;
SIGNAL \ULA|saida[6]~17_combout\ : std_logic;
SIGNAL \ULA|saida[7]~20_combout\ : std_logic;
SIGNAL \ULA|saida[8]~23_combout\ : std_logic;
SIGNAL \ULA|saida[9]~26_combout\ : std_logic;
SIGNAL \ULA|saida[10]~29_combout\ : std_logic;
SIGNAL \ULA|saida[11]~32_combout\ : std_logic;
SIGNAL \ULA|saida[12]~35_combout\ : std_logic;
SIGNAL \ULA|saida[13]~38_combout\ : std_logic;
SIGNAL \ULA|saida[14]~41_combout\ : std_logic;
SIGNAL \ULA|saida[15]~44_combout\ : std_logic;
SIGNAL \ULA|saida[16]~47_combout\ : std_logic;
SIGNAL \ULA|saida[17]~50_combout\ : std_logic;
SIGNAL \ULA|saida[18]~53_combout\ : std_logic;
SIGNAL \ULA|saida[19]~56_combout\ : std_logic;
SIGNAL \ULA|saida[20]~59_combout\ : std_logic;
SIGNAL \ULA|saida[21]~62_combout\ : std_logic;
SIGNAL \ULA|saida[22]~65_combout\ : std_logic;
SIGNAL \ULA|saida[23]~68_combout\ : std_logic;
SIGNAL \ULA|saida[24]~71_combout\ : std_logic;
SIGNAL \ULA|saida[25]~74_combout\ : std_logic;
SIGNAL \ULA|saida[26]~77_combout\ : std_logic;
SIGNAL \ULA|saida[27]~80_combout\ : std_logic;
SIGNAL \ULA|saida[28]~83_combout\ : std_logic;
SIGNAL \ULA|saida[29]~86_combout\ : std_logic;
SIGNAL \ULA|saida[30]~89_combout\ : std_logic;
SIGNAL \ULA|saida[31]~92_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[14]~14_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[13]~13_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[12]~12_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[11]~11_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[10]~10_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[9]~9_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[8]~8_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[7]~7_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[6]~6_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[5]~5_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[4]~4_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[3]~3_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[2]~2_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[1]~1_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[0]~0_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[31]~32_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[30]~31_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[29]~30_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[28]~29_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[27]~28_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[26]~27_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[25]~26_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[24]~25_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[23]~24_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[22]~23_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[21]~22_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[20]~21_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[19]~20_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[18]~19_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[17]~18_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[16]~17_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[15]~16_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[14]~15_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[13]~14_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[12]~13_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[11]~12_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[10]~11_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[9]~10_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[8]~9_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[7]~8_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[6]~7_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[5]~6_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[4]~5_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[3]~4_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[2]~3_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[1]~2_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[0]~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaA[0]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 2);
SIGNAL \ULA|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[31]~91_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[31]~90_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[30]~88_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[30]~87_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[29]~85_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[29]~84_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[28]~82_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[28]~81_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[27]~79_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[27]~78_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[26]~76_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[26]~75_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[25]~73_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[25]~72_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[24]~70_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[24]~69_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[23]~67_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[23]~66_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[22]~64_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[22]~63_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[21]~61_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[21]~60_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[20]~58_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[20]~57_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[19]~55_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[19]~54_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[18]~52_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[18]~51_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[17]~49_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[17]~48_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[16]~46_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[16]~45_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[15]~43_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[15]~42_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[14]~40_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[14]~39_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[13]~37_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[13]~36_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[12]~34_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[12]~33_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[11]~31_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[11]~30_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[10]~28_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[10]~27_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[9]~25_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[9]~24_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[8]~22_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[8]~21_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[7]~19_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[7]~18_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[6]~16_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[6]~15_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[5]~13_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[5]~12_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[4]~10_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[4]~9_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[3]~7_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[2]~5_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[2]~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~2_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[31]~31_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[30]~30_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[29]~29_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[28]~28_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[27]~27_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[26]~26_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[25]~25_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[24]~24_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[23]~23_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[22]~22_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[21]~21_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[20]~20_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[19]~19_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[18]~18_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[17]~17_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[16]~16_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_saidaB[15]~15_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[2]~93_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1116_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1115_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1114_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1113_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1112_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1111_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1110_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1109_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1108_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1107_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1106_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1105_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1104_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1103_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1102_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1101_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1100_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1099_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1098_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1097_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1096_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1095_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1094_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \ALT_INV_rd_wr~input_o\ : std_logic;
SIGNAL \ALT_INV_ula_op[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ula_op[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ula_op[1]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_rd_wr <= rd_wr;
ww_ula_op <= ula_op;
opcode_out <= ww_opcode_out;
funct_out <= ww_funct_out;
debug <= ww_debug;
debug2 <= ww_debug2;
debug3 <= ww_debug3;
debug4 <= ww_debug4;
ULA_out <= ww_ULA_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA|ALT_INV_Add0~45_sumout\ <= NOT \ULA|Add0~45_sumout\;
\ULA|ALT_INV_Add0~41_sumout\ <= NOT \ULA|Add0~41_sumout\;
\ULA|ALT_INV_Add0~37_sumout\ <= NOT \ULA|Add0~37_sumout\;
\ULA|ALT_INV_Add0~33_sumout\ <= NOT \ULA|Add0~33_sumout\;
\ULA|ALT_INV_Add0~29_sumout\ <= NOT \ULA|Add0~29_sumout\;
\ULA|ALT_INV_Add0~25_sumout\ <= NOT \ULA|Add0~25_sumout\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\ULA|ALT_INV_Add0~17_sumout\ <= NOT \ULA|Add0~17_sumout\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\ULA|ALT_INV_Add0~9_sumout\ <= NOT \ULA|Add0~9_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;
\BRG|ALT_INV_registrador~69_q\ <= NOT \BRG|registrador~69_q\;
\BRG|ALT_INV_registrador~68_q\ <= NOT \BRG|registrador~68_q\;
\BRG|ALT_INV_registrador~67_q\ <= NOT \BRG|registrador~67_q\;
\BRG|ALT_INV_registrador~66_q\ <= NOT \BRG|registrador~66_q\;
\BRG|ALT_INV_registrador~65_q\ <= NOT \BRG|registrador~65_q\;
\BRG|ALT_INV_registrador~64_q\ <= NOT \BRG|registrador~64_q\;
\BRG|ALT_INV_registrador~63_q\ <= NOT \BRG|registrador~63_q\;
\BRG|ALT_INV_registrador~62_q\ <= NOT \BRG|registrador~62_q\;
\BRG|ALT_INV_registrador~61_q\ <= NOT \BRG|registrador~61_q\;
\BRG|ALT_INV_registrador~60_q\ <= NOT \BRG|registrador~60_q\;
\BRG|ALT_INV_registrador~59_q\ <= NOT \BRG|registrador~59_q\;
\BRG|ALT_INV_registrador~58_q\ <= NOT \BRG|registrador~58_q\;
\BRG|ALT_INV_registrador~57_q\ <= NOT \BRG|registrador~57_q\;
\BRG|ALT_INV_registrador~56_q\ <= NOT \BRG|registrador~56_q\;
\BRG|ALT_INV_registrador~55_q\ <= NOT \BRG|registrador~55_q\;
\BRG|ALT_INV_registrador~54_q\ <= NOT \BRG|registrador~54_q\;
\BRG|ALT_INV_registrador~53_q\ <= NOT \BRG|registrador~53_q\;
\BRG|ALT_INV_registrador~52_q\ <= NOT \BRG|registrador~52_q\;
\BRG|ALT_INV_registrador~51_q\ <= NOT \BRG|registrador~51_q\;
\BRG|ALT_INV_registrador~50_q\ <= NOT \BRG|registrador~50_q\;
\BRG|ALT_INV_registrador~49_q\ <= NOT \BRG|registrador~49_q\;
\BRG|ALT_INV_registrador~48_q\ <= NOT \BRG|registrador~48_q\;
\BRG|ALT_INV_registrador~47_q\ <= NOT \BRG|registrador~47_q\;
\BRG|ALT_INV_registrador~46_q\ <= NOT \BRG|registrador~46_q\;
\BRG|ALT_INV_registrador~45_q\ <= NOT \BRG|registrador~45_q\;
\BRG|ALT_INV_registrador~44_q\ <= NOT \BRG|registrador~44_q\;
\BRG|ALT_INV_registrador~43_q\ <= NOT \BRG|registrador~43_q\;
\BRG|ALT_INV_registrador~42_q\ <= NOT \BRG|registrador~42_q\;
\BRG|ALT_INV_registrador~41_q\ <= NOT \BRG|registrador~41_q\;
\BRG|ALT_INV_registrador~40_q\ <= NOT \BRG|registrador~40_q\;
\BRG|ALT_INV_registrador~39_q\ <= NOT \BRG|registrador~39_q\;
\BRG|ALT_INV_registrador~38_q\ <= NOT \BRG|registrador~38_q\;
\BRG|ALT_INV_registrador~325_q\ <= NOT \BRG|registrador~325_q\;
\BRG|ALT_INV_registrador~324_q\ <= NOT \BRG|registrador~324_q\;
\BRG|ALT_INV_registrador~323_q\ <= NOT \BRG|registrador~323_q\;
\BRG|ALT_INV_registrador~322_q\ <= NOT \BRG|registrador~322_q\;
\BRG|ALT_INV_registrador~321_q\ <= NOT \BRG|registrador~321_q\;
\BRG|ALT_INV_registrador~320_q\ <= NOT \BRG|registrador~320_q\;
\BRG|ALT_INV_registrador~319_q\ <= NOT \BRG|registrador~319_q\;
\BRG|ALT_INV_registrador~318_q\ <= NOT \BRG|registrador~318_q\;
\BRG|ALT_INV_registrador~317_q\ <= NOT \BRG|registrador~317_q\;
\BRG|ALT_INV_registrador~316_q\ <= NOT \BRG|registrador~316_q\;
\BRG|ALT_INV_registrador~315_q\ <= NOT \BRG|registrador~315_q\;
\BRG|ALT_INV_registrador~314_q\ <= NOT \BRG|registrador~314_q\;
\BRG|ALT_INV_registrador~313_q\ <= NOT \BRG|registrador~313_q\;
\BRG|ALT_INV_registrador~312_q\ <= NOT \BRG|registrador~312_q\;
\BRG|ALT_INV_registrador~311_q\ <= NOT \BRG|registrador~311_q\;
\BRG|ALT_INV_registrador~310_q\ <= NOT \BRG|registrador~310_q\;
\BRG|ALT_INV_registrador~309_q\ <= NOT \BRG|registrador~309_q\;
\BRG|ALT_INV_registrador~308_q\ <= NOT \BRG|registrador~308_q\;
\BRG|ALT_INV_registrador~307_q\ <= NOT \BRG|registrador~307_q\;
\BRG|ALT_INV_registrador~306_q\ <= NOT \BRG|registrador~306_q\;
\BRG|ALT_INV_registrador~305_q\ <= NOT \BRG|registrador~305_q\;
\BRG|ALT_INV_registrador~304_q\ <= NOT \BRG|registrador~304_q\;
\BRG|ALT_INV_registrador~303_q\ <= NOT \BRG|registrador~303_q\;
\BRG|ALT_INV_registrador~302_q\ <= NOT \BRG|registrador~302_q\;
\BRG|ALT_INV_registrador~301_q\ <= NOT \BRG|registrador~301_q\;
\BRG|ALT_INV_registrador~300_q\ <= NOT \BRG|registrador~300_q\;
\BRG|ALT_INV_registrador~299_q\ <= NOT \BRG|registrador~299_q\;
\BRG|ALT_INV_registrador~298_q\ <= NOT \BRG|registrador~298_q\;
\BRG|ALT_INV_registrador~297_q\ <= NOT \BRG|registrador~297_q\;
\BRG|ALT_INV_registrador~296_q\ <= NOT \BRG|registrador~296_q\;
\BRG|ALT_INV_registrador~295_q\ <= NOT \BRG|registrador~295_q\;
\BRG|ALT_INV_registrador~294_q\ <= NOT \BRG|registrador~294_q\;
\BRG|ALT_INV_registrador~1078_combout\ <= NOT \BRG|registrador~1078_combout\;
\BRG|ALT_INV_saidaB[14]~14_combout\ <= NOT \BRG|saidaB[14]~14_combout\;
\BRG|ALT_INV_registrador~1077_combout\ <= NOT \BRG|registrador~1077_combout\;
\BRG|ALT_INV_saidaB[13]~13_combout\ <= NOT \BRG|saidaB[13]~13_combout\;
\BRG|ALT_INV_registrador~1076_combout\ <= NOT \BRG|registrador~1076_combout\;
\BRG|ALT_INV_saidaB[12]~12_combout\ <= NOT \BRG|saidaB[12]~12_combout\;
\BRG|ALT_INV_registrador~1075_combout\ <= NOT \BRG|registrador~1075_combout\;
\BRG|ALT_INV_saidaB[11]~11_combout\ <= NOT \BRG|saidaB[11]~11_combout\;
\BRG|ALT_INV_registrador~1074_combout\ <= NOT \BRG|registrador~1074_combout\;
\BRG|ALT_INV_saidaB[10]~10_combout\ <= NOT \BRG|saidaB[10]~10_combout\;
\BRG|ALT_INV_registrador~1073_combout\ <= NOT \BRG|registrador~1073_combout\;
\BRG|ALT_INV_saidaB[9]~9_combout\ <= NOT \BRG|saidaB[9]~9_combout\;
\BRG|ALT_INV_registrador~1072_combout\ <= NOT \BRG|registrador~1072_combout\;
\BRG|ALT_INV_saidaB[8]~8_combout\ <= NOT \BRG|saidaB[8]~8_combout\;
\BRG|ALT_INV_registrador~1071_combout\ <= NOT \BRG|registrador~1071_combout\;
\BRG|ALT_INV_saidaB[7]~7_combout\ <= NOT \BRG|saidaB[7]~7_combout\;
\BRG|ALT_INV_registrador~1070_combout\ <= NOT \BRG|registrador~1070_combout\;
\BRG|ALT_INV_saidaB[6]~6_combout\ <= NOT \BRG|saidaB[6]~6_combout\;
\BRG|ALT_INV_registrador~1069_combout\ <= NOT \BRG|registrador~1069_combout\;
\BRG|ALT_INV_saidaB[5]~5_combout\ <= NOT \BRG|saidaB[5]~5_combout\;
\BRG|ALT_INV_registrador~1068_combout\ <= NOT \BRG|registrador~1068_combout\;
\BRG|ALT_INV_saidaB[4]~4_combout\ <= NOT \BRG|saidaB[4]~4_combout\;
\BRG|ALT_INV_registrador~1067_combout\ <= NOT \BRG|registrador~1067_combout\;
\BRG|ALT_INV_saidaB[3]~3_combout\ <= NOT \BRG|saidaB[3]~3_combout\;
\BRG|ALT_INV_registrador~1066_combout\ <= NOT \BRG|registrador~1066_combout\;
\BRG|ALT_INV_saidaB[2]~2_combout\ <= NOT \BRG|saidaB[2]~2_combout\;
\BRG|ALT_INV_registrador~1065_combout\ <= NOT \BRG|registrador~1065_combout\;
\BRG|ALT_INV_saidaB[1]~1_combout\ <= NOT \BRG|saidaB[1]~1_combout\;
\BRG|ALT_INV_registrador~1064_combout\ <= NOT \BRG|registrador~1064_combout\;
\BRG|ALT_INV_saidaB[0]~0_combout\ <= NOT \BRG|saidaB[0]~0_combout\;
\BRG|ALT_INV_registrador~1063_combout\ <= NOT \BRG|registrador~1063_combout\;
\BRG|ALT_INV_registrador~1062_combout\ <= NOT \BRG|registrador~1062_combout\;
\BRG|ALT_INV_saidaA[31]~32_combout\ <= NOT \BRG|saidaA[31]~32_combout\;
\BRG|ALT_INV_saidaA[30]~31_combout\ <= NOT \BRG|saidaA[30]~31_combout\;
\BRG|ALT_INV_saidaA[29]~30_combout\ <= NOT \BRG|saidaA[29]~30_combout\;
\BRG|ALT_INV_saidaA[28]~29_combout\ <= NOT \BRG|saidaA[28]~29_combout\;
\BRG|ALT_INV_saidaA[27]~28_combout\ <= NOT \BRG|saidaA[27]~28_combout\;
\BRG|ALT_INV_saidaA[26]~27_combout\ <= NOT \BRG|saidaA[26]~27_combout\;
\BRG|ALT_INV_saidaA[25]~26_combout\ <= NOT \BRG|saidaA[25]~26_combout\;
\BRG|ALT_INV_saidaA[24]~25_combout\ <= NOT \BRG|saidaA[24]~25_combout\;
\BRG|ALT_INV_saidaA[23]~24_combout\ <= NOT \BRG|saidaA[23]~24_combout\;
\BRG|ALT_INV_saidaA[22]~23_combout\ <= NOT \BRG|saidaA[22]~23_combout\;
\BRG|ALT_INV_saidaA[21]~22_combout\ <= NOT \BRG|saidaA[21]~22_combout\;
\BRG|ALT_INV_saidaA[20]~21_combout\ <= NOT \BRG|saidaA[20]~21_combout\;
\BRG|ALT_INV_saidaA[19]~20_combout\ <= NOT \BRG|saidaA[19]~20_combout\;
\BRG|ALT_INV_saidaA[18]~19_combout\ <= NOT \BRG|saidaA[18]~19_combout\;
\BRG|ALT_INV_saidaA[17]~18_combout\ <= NOT \BRG|saidaA[17]~18_combout\;
\BRG|ALT_INV_saidaA[16]~17_combout\ <= NOT \BRG|saidaA[16]~17_combout\;
\BRG|ALT_INV_saidaA[15]~16_combout\ <= NOT \BRG|saidaA[15]~16_combout\;
\BRG|ALT_INV_saidaA[14]~15_combout\ <= NOT \BRG|saidaA[14]~15_combout\;
\BRG|ALT_INV_saidaA[13]~14_combout\ <= NOT \BRG|saidaA[13]~14_combout\;
\BRG|ALT_INV_saidaA[12]~13_combout\ <= NOT \BRG|saidaA[12]~13_combout\;
\BRG|ALT_INV_saidaA[11]~12_combout\ <= NOT \BRG|saidaA[11]~12_combout\;
\BRG|ALT_INV_saidaA[10]~11_combout\ <= NOT \BRG|saidaA[10]~11_combout\;
\BRG|ALT_INV_saidaA[9]~10_combout\ <= NOT \BRG|saidaA[9]~10_combout\;
\BRG|ALT_INV_saidaA[8]~9_combout\ <= NOT \BRG|saidaA[8]~9_combout\;
\BRG|ALT_INV_saidaA[7]~8_combout\ <= NOT \BRG|saidaA[7]~8_combout\;
\BRG|ALT_INV_saidaA[6]~7_combout\ <= NOT \BRG|saidaA[6]~7_combout\;
\BRG|ALT_INV_saidaA[5]~6_combout\ <= NOT \BRG|saidaA[5]~6_combout\;
\BRG|ALT_INV_saidaA[4]~5_combout\ <= NOT \BRG|saidaA[4]~5_combout\;
\BRG|ALT_INV_saidaA[3]~4_combout\ <= NOT \BRG|saidaA[3]~4_combout\;
\BRG|ALT_INV_saidaA[2]~3_combout\ <= NOT \BRG|saidaA[2]~3_combout\;
\BRG|ALT_INV_saidaA[1]~2_combout\ <= NOT \BRG|saidaA[1]~2_combout\;
\BRG|ALT_INV_saidaA[0]~1_combout\ <= NOT \BRG|saidaA[0]~1_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\BRG|ALT_INV_saidaA[0]~0_combout\ <= NOT \BRG|saidaA[0]~0_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\ULA|ALT_INV_Add0~125_sumout\ <= NOT \ULA|Add0~125_sumout\;
\ULA|ALT_INV_Add0~121_sumout\ <= NOT \ULA|Add0~121_sumout\;
\ULA|ALT_INV_Add0~117_sumout\ <= NOT \ULA|Add0~117_sumout\;
\ULA|ALT_INV_Add0~113_sumout\ <= NOT \ULA|Add0~113_sumout\;
\ULA|ALT_INV_Add0~109_sumout\ <= NOT \ULA|Add0~109_sumout\;
\ULA|ALT_INV_Add0~105_sumout\ <= NOT \ULA|Add0~105_sumout\;
\ULA|ALT_INV_Add0~101_sumout\ <= NOT \ULA|Add0~101_sumout\;
\ULA|ALT_INV_Add0~97_sumout\ <= NOT \ULA|Add0~97_sumout\;
\ULA|ALT_INV_Add0~93_sumout\ <= NOT \ULA|Add0~93_sumout\;
\ULA|ALT_INV_Add0~89_sumout\ <= NOT \ULA|Add0~89_sumout\;
\ULA|ALT_INV_Add0~85_sumout\ <= NOT \ULA|Add0~85_sumout\;
\ULA|ALT_INV_Add0~81_sumout\ <= NOT \ULA|Add0~81_sumout\;
\ULA|ALT_INV_Add0~77_sumout\ <= NOT \ULA|Add0~77_sumout\;
\ULA|ALT_INV_Add0~73_sumout\ <= NOT \ULA|Add0~73_sumout\;
\ULA|ALT_INV_Add0~69_sumout\ <= NOT \ULA|Add0~69_sumout\;
\ULA|ALT_INV_Add0~65_sumout\ <= NOT \ULA|Add0~65_sumout\;
\ULA|ALT_INV_Add0~61_sumout\ <= NOT \ULA|Add0~61_sumout\;
\ULA|ALT_INV_Add0~57_sumout\ <= NOT \ULA|Add0~57_sumout\;
\ULA|ALT_INV_Add0~53_sumout\ <= NOT \ULA|Add0~53_sumout\;
\ULA|ALT_INV_Add0~49_sumout\ <= NOT \ULA|Add0~49_sumout\;
\BRG|ALT_INV_registrador~1091_combout\ <= NOT \BRG|registrador~1091_combout\;
\BRG|ALT_INV_registrador~1090_combout\ <= NOT \BRG|registrador~1090_combout\;
\ULA|ALT_INV_Equal7~1_combout\ <= NOT \ULA|Equal7~1_combout\;
\ULA|ALT_INV_saida[31]~91_combout\ <= NOT \ULA|saida[31]~91_combout\;
\ULA|ALT_INV_saida[31]~90_combout\ <= NOT \ULA|saida[31]~90_combout\;
\ULA|ALT_INV_saida[30]~88_combout\ <= NOT \ULA|saida[30]~88_combout\;
\ULA|ALT_INV_saida[30]~87_combout\ <= NOT \ULA|saida[30]~87_combout\;
\ULA|ALT_INV_saida[29]~85_combout\ <= NOT \ULA|saida[29]~85_combout\;
\ULA|ALT_INV_saida[29]~84_combout\ <= NOT \ULA|saida[29]~84_combout\;
\ULA|ALT_INV_saida[28]~82_combout\ <= NOT \ULA|saida[28]~82_combout\;
\ULA|ALT_INV_saida[28]~81_combout\ <= NOT \ULA|saida[28]~81_combout\;
\ULA|ALT_INV_saida[27]~79_combout\ <= NOT \ULA|saida[27]~79_combout\;
\ULA|ALT_INV_saida[27]~78_combout\ <= NOT \ULA|saida[27]~78_combout\;
\ULA|ALT_INV_saida[26]~76_combout\ <= NOT \ULA|saida[26]~76_combout\;
\ULA|ALT_INV_saida[26]~75_combout\ <= NOT \ULA|saida[26]~75_combout\;
\ULA|ALT_INV_saida[25]~73_combout\ <= NOT \ULA|saida[25]~73_combout\;
\ULA|ALT_INV_saida[25]~72_combout\ <= NOT \ULA|saida[25]~72_combout\;
\ULA|ALT_INV_saida[24]~70_combout\ <= NOT \ULA|saida[24]~70_combout\;
\ULA|ALT_INV_saida[24]~69_combout\ <= NOT \ULA|saida[24]~69_combout\;
\ULA|ALT_INV_saida[23]~67_combout\ <= NOT \ULA|saida[23]~67_combout\;
\ULA|ALT_INV_saida[23]~66_combout\ <= NOT \ULA|saida[23]~66_combout\;
\ULA|ALT_INV_saida[22]~64_combout\ <= NOT \ULA|saida[22]~64_combout\;
\ULA|ALT_INV_saida[22]~63_combout\ <= NOT \ULA|saida[22]~63_combout\;
\ULA|ALT_INV_saida[21]~61_combout\ <= NOT \ULA|saida[21]~61_combout\;
\ULA|ALT_INV_saida[21]~60_combout\ <= NOT \ULA|saida[21]~60_combout\;
\ULA|ALT_INV_saida[20]~58_combout\ <= NOT \ULA|saida[20]~58_combout\;
\ULA|ALT_INV_saida[20]~57_combout\ <= NOT \ULA|saida[20]~57_combout\;
\ULA|ALT_INV_saida[19]~55_combout\ <= NOT \ULA|saida[19]~55_combout\;
\ULA|ALT_INV_saida[19]~54_combout\ <= NOT \ULA|saida[19]~54_combout\;
\ULA|ALT_INV_saida[18]~52_combout\ <= NOT \ULA|saida[18]~52_combout\;
\ULA|ALT_INV_saida[18]~51_combout\ <= NOT \ULA|saida[18]~51_combout\;
\ULA|ALT_INV_saida[17]~49_combout\ <= NOT \ULA|saida[17]~49_combout\;
\ULA|ALT_INV_saida[17]~48_combout\ <= NOT \ULA|saida[17]~48_combout\;
\ULA|ALT_INV_saida[16]~46_combout\ <= NOT \ULA|saida[16]~46_combout\;
\ULA|ALT_INV_saida[16]~45_combout\ <= NOT \ULA|saida[16]~45_combout\;
\ULA|ALT_INV_saida[15]~43_combout\ <= NOT \ULA|saida[15]~43_combout\;
\ULA|ALT_INV_saida[15]~42_combout\ <= NOT \ULA|saida[15]~42_combout\;
\ULA|ALT_INV_saida[14]~40_combout\ <= NOT \ULA|saida[14]~40_combout\;
\ULA|ALT_INV_saida[14]~39_combout\ <= NOT \ULA|saida[14]~39_combout\;
\ULA|ALT_INV_saida[13]~37_combout\ <= NOT \ULA|saida[13]~37_combout\;
\ULA|ALT_INV_saida[13]~36_combout\ <= NOT \ULA|saida[13]~36_combout\;
\ULA|ALT_INV_saida[12]~34_combout\ <= NOT \ULA|saida[12]~34_combout\;
\ULA|ALT_INV_saida[12]~33_combout\ <= NOT \ULA|saida[12]~33_combout\;
\ULA|ALT_INV_saida[11]~31_combout\ <= NOT \ULA|saida[11]~31_combout\;
\ULA|ALT_INV_saida[11]~30_combout\ <= NOT \ULA|saida[11]~30_combout\;
\ULA|ALT_INV_saida[10]~28_combout\ <= NOT \ULA|saida[10]~28_combout\;
\ULA|ALT_INV_saida[10]~27_combout\ <= NOT \ULA|saida[10]~27_combout\;
\ULA|ALT_INV_saida[9]~25_combout\ <= NOT \ULA|saida[9]~25_combout\;
\ULA|ALT_INV_saida[9]~24_combout\ <= NOT \ULA|saida[9]~24_combout\;
\ULA|ALT_INV_saida[8]~22_combout\ <= NOT \ULA|saida[8]~22_combout\;
\ULA|ALT_INV_saida[8]~21_combout\ <= NOT \ULA|saida[8]~21_combout\;
\ULA|ALT_INV_saida[7]~19_combout\ <= NOT \ULA|saida[7]~19_combout\;
\ULA|ALT_INV_saida[7]~18_combout\ <= NOT \ULA|saida[7]~18_combout\;
\ULA|ALT_INV_saida[6]~16_combout\ <= NOT \ULA|saida[6]~16_combout\;
\ULA|ALT_INV_saida[6]~15_combout\ <= NOT \ULA|saida[6]~15_combout\;
\ULA|ALT_INV_saida[5]~13_combout\ <= NOT \ULA|saida[5]~13_combout\;
\ULA|ALT_INV_saida[5]~12_combout\ <= NOT \ULA|saida[5]~12_combout\;
\ULA|ALT_INV_saida[4]~10_combout\ <= NOT \ULA|saida[4]~10_combout\;
\ULA|ALT_INV_saida[4]~9_combout\ <= NOT \ULA|saida[4]~9_combout\;
\ULA|ALT_INV_saida[3]~7_combout\ <= NOT \ULA|saida[3]~7_combout\;
\ULA|ALT_INV_saida[2]~5_combout\ <= NOT \ULA|saida[2]~5_combout\;
\ULA|ALT_INV_saida[2]~4_combout\ <= NOT \ULA|saida[2]~4_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ULA|ALT_INV_saida[1]~2_combout\ <= NOT \ULA|saida[1]~2_combout\;
\ULA|ALT_INV_saida[0]~0_combout\ <= NOT \ULA|saida[0]~0_combout\;
\ULA|ALT_INV_Equal7~0_combout\ <= NOT \ULA|Equal7~0_combout\;
\BRG|ALT_INV_saidaB[31]~31_combout\ <= NOT \BRG|saidaB[31]~31_combout\;
\BRG|ALT_INV_saidaB[30]~30_combout\ <= NOT \BRG|saidaB[30]~30_combout\;
\BRG|ALT_INV_saidaB[29]~29_combout\ <= NOT \BRG|saidaB[29]~29_combout\;
\BRG|ALT_INV_saidaB[28]~28_combout\ <= NOT \BRG|saidaB[28]~28_combout\;
\BRG|ALT_INV_saidaB[27]~27_combout\ <= NOT \BRG|saidaB[27]~27_combout\;
\BRG|ALT_INV_saidaB[26]~26_combout\ <= NOT \BRG|saidaB[26]~26_combout\;
\BRG|ALT_INV_saidaB[25]~25_combout\ <= NOT \BRG|saidaB[25]~25_combout\;
\BRG|ALT_INV_saidaB[24]~24_combout\ <= NOT \BRG|saidaB[24]~24_combout\;
\BRG|ALT_INV_registrador~1087_combout\ <= NOT \BRG|registrador~1087_combout\;
\BRG|ALT_INV_saidaB[23]~23_combout\ <= NOT \BRG|saidaB[23]~23_combout\;
\BRG|ALT_INV_registrador~1086_combout\ <= NOT \BRG|registrador~1086_combout\;
\BRG|ALT_INV_saidaB[22]~22_combout\ <= NOT \BRG|saidaB[22]~22_combout\;
\BRG|ALT_INV_registrador~1085_combout\ <= NOT \BRG|registrador~1085_combout\;
\BRG|ALT_INV_saidaB[21]~21_combout\ <= NOT \BRG|saidaB[21]~21_combout\;
\BRG|ALT_INV_registrador~1084_combout\ <= NOT \BRG|registrador~1084_combout\;
\BRG|ALT_INV_saidaB[20]~20_combout\ <= NOT \BRG|saidaB[20]~20_combout\;
\BRG|ALT_INV_registrador~1083_combout\ <= NOT \BRG|registrador~1083_combout\;
\BRG|ALT_INV_saidaB[19]~19_combout\ <= NOT \BRG|saidaB[19]~19_combout\;
\BRG|ALT_INV_registrador~1082_combout\ <= NOT \BRG|registrador~1082_combout\;
\BRG|ALT_INV_saidaB[18]~18_combout\ <= NOT \BRG|saidaB[18]~18_combout\;
\BRG|ALT_INV_registrador~1081_combout\ <= NOT \BRG|registrador~1081_combout\;
\BRG|ALT_INV_saidaB[17]~17_combout\ <= NOT \BRG|saidaB[17]~17_combout\;
\BRG|ALT_INV_registrador~1080_combout\ <= NOT \BRG|registrador~1080_combout\;
\BRG|ALT_INV_saidaB[16]~16_combout\ <= NOT \BRG|saidaB[16]~16_combout\;
\BRG|ALT_INV_registrador~1079_combout\ <= NOT \BRG|registrador~1079_combout\;
\BRG|ALT_INV_saidaB[15]~15_combout\ <= NOT \BRG|saidaB[15]~15_combout\;
\ULA|ALT_INV_saida[2]~93_combout\ <= NOT \ULA|saida[2]~93_combout\;
\BRG|ALT_INV_registrador~1116_combout\ <= NOT \BRG|registrador~1116_combout\;
\BRG|ALT_INV_registrador~1115_combout\ <= NOT \BRG|registrador~1115_combout\;
\BRG|ALT_INV_registrador~1114_combout\ <= NOT \BRG|registrador~1114_combout\;
\BRG|ALT_INV_registrador~1113_combout\ <= NOT \BRG|registrador~1113_combout\;
\BRG|ALT_INV_registrador~1112_combout\ <= NOT \BRG|registrador~1112_combout\;
\BRG|ALT_INV_registrador~1111_combout\ <= NOT \BRG|registrador~1111_combout\;
\BRG|ALT_INV_registrador~1110_combout\ <= NOT \BRG|registrador~1110_combout\;
\BRG|ALT_INV_registrador~1109_combout\ <= NOT \BRG|registrador~1109_combout\;
\BRG|ALT_INV_registrador~1108_combout\ <= NOT \BRG|registrador~1108_combout\;
\BRG|ALT_INV_registrador~1107_combout\ <= NOT \BRG|registrador~1107_combout\;
\BRG|ALT_INV_registrador~1106_combout\ <= NOT \BRG|registrador~1106_combout\;
\BRG|ALT_INV_registrador~1105_combout\ <= NOT \BRG|registrador~1105_combout\;
\BRG|ALT_INV_registrador~1104_combout\ <= NOT \BRG|registrador~1104_combout\;
\BRG|ALT_INV_registrador~1103_combout\ <= NOT \BRG|registrador~1103_combout\;
\BRG|ALT_INV_registrador~1102_combout\ <= NOT \BRG|registrador~1102_combout\;
\BRG|ALT_INV_registrador~1101_combout\ <= NOT \BRG|registrador~1101_combout\;
\BRG|ALT_INV_registrador~1100_combout\ <= NOT \BRG|registrador~1100_combout\;
\BRG|ALT_INV_registrador~1099_combout\ <= NOT \BRG|registrador~1099_combout\;
\BRG|ALT_INV_registrador~1098_combout\ <= NOT \BRG|registrador~1098_combout\;
\BRG|ALT_INV_registrador~1097_combout\ <= NOT \BRG|registrador~1097_combout\;
\BRG|ALT_INV_registrador~1096_combout\ <= NOT \BRG|registrador~1096_combout\;
\BRG|ALT_INV_registrador~1095_combout\ <= NOT \BRG|registrador~1095_combout\;
\BRG|ALT_INV_registrador~1094_combout\ <= NOT \BRG|registrador~1094_combout\;
\BRG|ALT_INV_registrador~1093_combout\ <= NOT \BRG|registrador~1093_combout\;
\BRG|ALT_INV_registrador~1092_combout\ <= NOT \BRG|registrador~1092_combout\;
\ALT_INV_rd_wr~input_o\ <= NOT \rd_wr~input_o\;
\ALT_INV_ula_op[0]~input_o\ <= NOT \ula_op[0]~input_o\;
\ALT_INV_ula_op[2]~input_o\ <= NOT \ula_op[2]~input_o\;
\ALT_INV_ula_op[1]~input_o\ <= NOT \ula_op[1]~input_o\;

\opcode_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \opcode_out[0]~output_o\);

\opcode_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \opcode_out[1]~output_o\);

\opcode_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \opcode_out[2]~output_o\);

\opcode_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \opcode_out[3]~output_o\);

\opcode_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \opcode_out[4]~output_o\);

\opcode_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \opcode_out[5]~output_o\);

\funct_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \funct_out[0]~output_o\);

\funct_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \funct_out[1]~output_o\);

\funct_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => \funct_out[2]~output_o\);

\funct_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \funct_out[3]~output_o\);

\funct_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \funct_out[4]~output_o\);

\funct_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => \funct_out[5]~output_o\);

\debug[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[0]~1_combout\,
	devoe => ww_devoe,
	o => \debug[0]~output_o\);

\debug[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[1]~2_combout\,
	devoe => ww_devoe,
	o => \debug[1]~output_o\);

\debug[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[2]~3_combout\,
	devoe => ww_devoe,
	o => \debug[2]~output_o\);

\debug[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[3]~4_combout\,
	devoe => ww_devoe,
	o => \debug[3]~output_o\);

\debug[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[4]~5_combout\,
	devoe => ww_devoe,
	o => \debug[4]~output_o\);

\debug[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[5]~6_combout\,
	devoe => ww_devoe,
	o => \debug[5]~output_o\);

\debug[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[6]~7_combout\,
	devoe => ww_devoe,
	o => \debug[6]~output_o\);

\debug[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[7]~8_combout\,
	devoe => ww_devoe,
	o => \debug[7]~output_o\);

\debug[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[8]~9_combout\,
	devoe => ww_devoe,
	o => \debug[8]~output_o\);

\debug[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[9]~10_combout\,
	devoe => ww_devoe,
	o => \debug[9]~output_o\);

\debug[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[10]~11_combout\,
	devoe => ww_devoe,
	o => \debug[10]~output_o\);

\debug[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[11]~12_combout\,
	devoe => ww_devoe,
	o => \debug[11]~output_o\);

\debug[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[12]~13_combout\,
	devoe => ww_devoe,
	o => \debug[12]~output_o\);

\debug[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[13]~14_combout\,
	devoe => ww_devoe,
	o => \debug[13]~output_o\);

\debug[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[14]~15_combout\,
	devoe => ww_devoe,
	o => \debug[14]~output_o\);

\debug[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[15]~16_combout\,
	devoe => ww_devoe,
	o => \debug[15]~output_o\);

\debug[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[16]~17_combout\,
	devoe => ww_devoe,
	o => \debug[16]~output_o\);

\debug[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[17]~18_combout\,
	devoe => ww_devoe,
	o => \debug[17]~output_o\);

\debug[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[18]~19_combout\,
	devoe => ww_devoe,
	o => \debug[18]~output_o\);

\debug[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[19]~20_combout\,
	devoe => ww_devoe,
	o => \debug[19]~output_o\);

\debug[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[20]~21_combout\,
	devoe => ww_devoe,
	o => \debug[20]~output_o\);

\debug[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[21]~22_combout\,
	devoe => ww_devoe,
	o => \debug[21]~output_o\);

\debug[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[22]~23_combout\,
	devoe => ww_devoe,
	o => \debug[22]~output_o\);

\debug[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[23]~24_combout\,
	devoe => ww_devoe,
	o => \debug[23]~output_o\);

\debug[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[24]~25_combout\,
	devoe => ww_devoe,
	o => \debug[24]~output_o\);

\debug[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[25]~26_combout\,
	devoe => ww_devoe,
	o => \debug[25]~output_o\);

\debug[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[26]~27_combout\,
	devoe => ww_devoe,
	o => \debug[26]~output_o\);

\debug[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[27]~28_combout\,
	devoe => ww_devoe,
	o => \debug[27]~output_o\);

\debug[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[28]~29_combout\,
	devoe => ww_devoe,
	o => \debug[28]~output_o\);

\debug[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[29]~30_combout\,
	devoe => ww_devoe,
	o => \debug[29]~output_o\);

\debug[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[30]~31_combout\,
	devoe => ww_devoe,
	o => \debug[30]~output_o\);

\debug[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[31]~32_combout\,
	devoe => ww_devoe,
	o => \debug[31]~output_o\);

\debug2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[0]~0_combout\,
	devoe => ww_devoe,
	o => \debug2[0]~output_o\);

\debug2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[1]~1_combout\,
	devoe => ww_devoe,
	o => \debug2[1]~output_o\);

\debug2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[2]~2_combout\,
	devoe => ww_devoe,
	o => \debug2[2]~output_o\);

\debug2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[3]~3_combout\,
	devoe => ww_devoe,
	o => \debug2[3]~output_o\);

\debug2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[4]~4_combout\,
	devoe => ww_devoe,
	o => \debug2[4]~output_o\);

\debug2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[5]~5_combout\,
	devoe => ww_devoe,
	o => \debug2[5]~output_o\);

\debug2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[6]~6_combout\,
	devoe => ww_devoe,
	o => \debug2[6]~output_o\);

\debug2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[7]~7_combout\,
	devoe => ww_devoe,
	o => \debug2[7]~output_o\);

\debug2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[8]~8_combout\,
	devoe => ww_devoe,
	o => \debug2[8]~output_o\);

\debug2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[9]~9_combout\,
	devoe => ww_devoe,
	o => \debug2[9]~output_o\);

\debug2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[10]~10_combout\,
	devoe => ww_devoe,
	o => \debug2[10]~output_o\);

\debug2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[11]~11_combout\,
	devoe => ww_devoe,
	o => \debug2[11]~output_o\);

\debug2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[12]~12_combout\,
	devoe => ww_devoe,
	o => \debug2[12]~output_o\);

\debug2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[13]~13_combout\,
	devoe => ww_devoe,
	o => \debug2[13]~output_o\);

\debug2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[14]~14_combout\,
	devoe => ww_devoe,
	o => \debug2[14]~output_o\);

\debug2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[15]~15_combout\,
	devoe => ww_devoe,
	o => \debug2[15]~output_o\);

\debug2[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[16]~16_combout\,
	devoe => ww_devoe,
	o => \debug2[16]~output_o\);

\debug2[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[17]~17_combout\,
	devoe => ww_devoe,
	o => \debug2[17]~output_o\);

\debug2[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[18]~18_combout\,
	devoe => ww_devoe,
	o => \debug2[18]~output_o\);

\debug2[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[19]~19_combout\,
	devoe => ww_devoe,
	o => \debug2[19]~output_o\);

\debug2[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[20]~20_combout\,
	devoe => ww_devoe,
	o => \debug2[20]~output_o\);

\debug2[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[21]~21_combout\,
	devoe => ww_devoe,
	o => \debug2[21]~output_o\);

\debug2[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[22]~22_combout\,
	devoe => ww_devoe,
	o => \debug2[22]~output_o\);

\debug2[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[23]~23_combout\,
	devoe => ww_devoe,
	o => \debug2[23]~output_o\);

\debug2[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[24]~24_combout\,
	devoe => ww_devoe,
	o => \debug2[24]~output_o\);

\debug2[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[25]~25_combout\,
	devoe => ww_devoe,
	o => \debug2[25]~output_o\);

\debug2[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[26]~26_combout\,
	devoe => ww_devoe,
	o => \debug2[26]~output_o\);

\debug2[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[27]~27_combout\,
	devoe => ww_devoe,
	o => \debug2[27]~output_o\);

\debug2[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[28]~28_combout\,
	devoe => ww_devoe,
	o => \debug2[28]~output_o\);

\debug2[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[29]~29_combout\,
	devoe => ww_devoe,
	o => \debug2[29]~output_o\);

\debug2[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[30]~30_combout\,
	devoe => ww_devoe,
	o => \debug2[30]~output_o\);

\debug2[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaB[31]~31_combout\,
	devoe => ww_devoe,
	o => \debug2[31]~output_o\);

\debug3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => \debug3[0]~output_o\);

\debug3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug3[1]~output_o\);

\debug3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug3[2]~output_o\);

\debug3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => \debug3[3]~output_o\);

\debug3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug3[4]~output_o\);

\debug4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug4[0]~output_o\);

\debug4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \debug4[1]~output_o\);

\debug4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug4[2]~output_o\);

\debug4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BRG|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => \debug4[3]~output_o\);

\debug4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug4[4]~output_o\);

\ULA_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[0]~1_combout\,
	devoe => ww_devoe,
	o => \ULA_out[0]~output_o\);

\ULA_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[1]~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[1]~output_o\);

\ULA_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[2]~6_combout\,
	devoe => ww_devoe,
	o => \ULA_out[2]~output_o\);

\ULA_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[3]~8_combout\,
	devoe => ww_devoe,
	o => \ULA_out[3]~output_o\);

\ULA_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[4]~11_combout\,
	devoe => ww_devoe,
	o => \ULA_out[4]~output_o\);

\ULA_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[5]~14_combout\,
	devoe => ww_devoe,
	o => \ULA_out[5]~output_o\);

\ULA_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[6]~17_combout\,
	devoe => ww_devoe,
	o => \ULA_out[6]~output_o\);

\ULA_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[7]~20_combout\,
	devoe => ww_devoe,
	o => \ULA_out[7]~output_o\);

\ULA_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[8]~23_combout\,
	devoe => ww_devoe,
	o => \ULA_out[8]~output_o\);

\ULA_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[9]~26_combout\,
	devoe => ww_devoe,
	o => \ULA_out[9]~output_o\);

\ULA_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[10]~29_combout\,
	devoe => ww_devoe,
	o => \ULA_out[10]~output_o\);

\ULA_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[11]~32_combout\,
	devoe => ww_devoe,
	o => \ULA_out[11]~output_o\);

\ULA_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[12]~35_combout\,
	devoe => ww_devoe,
	o => \ULA_out[12]~output_o\);

\ULA_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[13]~38_combout\,
	devoe => ww_devoe,
	o => \ULA_out[13]~output_o\);

\ULA_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[14]~41_combout\,
	devoe => ww_devoe,
	o => \ULA_out[14]~output_o\);

\ULA_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[15]~44_combout\,
	devoe => ww_devoe,
	o => \ULA_out[15]~output_o\);

\ULA_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[16]~47_combout\,
	devoe => ww_devoe,
	o => \ULA_out[16]~output_o\);

\ULA_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[17]~50_combout\,
	devoe => ww_devoe,
	o => \ULA_out[17]~output_o\);

\ULA_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[18]~53_combout\,
	devoe => ww_devoe,
	o => \ULA_out[18]~output_o\);

\ULA_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[19]~56_combout\,
	devoe => ww_devoe,
	o => \ULA_out[19]~output_o\);

\ULA_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[20]~59_combout\,
	devoe => ww_devoe,
	o => \ULA_out[20]~output_o\);

\ULA_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[21]~62_combout\,
	devoe => ww_devoe,
	o => \ULA_out[21]~output_o\);

\ULA_out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[22]~65_combout\,
	devoe => ww_devoe,
	o => \ULA_out[22]~output_o\);

\ULA_out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[23]~68_combout\,
	devoe => ww_devoe,
	o => \ULA_out[23]~output_o\);

\ULA_out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[24]~71_combout\,
	devoe => ww_devoe,
	o => \ULA_out[24]~output_o\);

\ULA_out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[25]~74_combout\,
	devoe => ww_devoe,
	o => \ULA_out[25]~output_o\);

\ULA_out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[26]~77_combout\,
	devoe => ww_devoe,
	o => \ULA_out[26]~output_o\);

\ULA_out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[27]~80_combout\,
	devoe => ww_devoe,
	o => \ULA_out[27]~output_o\);

\ULA_out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[28]~83_combout\,
	devoe => ww_devoe,
	o => \ULA_out[28]~output_o\);

\ULA_out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[29]~86_combout\,
	devoe => ww_devoe,
	o => \ULA_out[29]~output_o\);

\ULA_out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[30]~89_combout\,
	devoe => ww_devoe,
	o => \ULA_out[30]~output_o\);

\ULA_out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[31]~92_combout\,
	devoe => ww_devoe,
	o => \ULA_out[31]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~0_combout\ = !\PC|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	combout => \PC|DOUT[2]~0_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\SOM|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~1_sumout\ = SUM(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))
-- \SOM|Add0~2\ = CARRY(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	cin => GND,
	sumout => \SOM|Add0~1_sumout\,
	cout => \SOM|Add0~2\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOM|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\SOM|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~9_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \SOM|Add0~2\ ))
-- \SOM|Add0~10\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \SOM|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \SOM|Add0~2\,
	sumout => \SOM|Add0~9_sumout\,
	cout => \SOM|Add0~10\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOM|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\SOM|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~5_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \SOM|Add0~10\ ))
-- \SOM|Add0~6\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \SOM|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \SOM|Add0~10\,
	sumout => \SOM|Add0~5_sumout\,
	cout => \SOM|Add0~6\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOM|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\SOM|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~17_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \SOM|Add0~6\ ))
-- \SOM|Add0~18\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \SOM|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \SOM|Add0~6\,
	sumout => \SOM|Add0~17_sumout\,
	cout => \SOM|Add0~18\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOM|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\SOM|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~13_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \SOM|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \SOM|Add0~18\,
	sumout => \SOM|Add0~13_sumout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOM|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(5) & (!\PC|DOUT\(4) & (!\PC|DOUT\(2) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (\PC|DOUT\(3) & \ROM|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (!\PC|DOUT\(7) & !\PC|DOUT\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~2_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \ROM|memROM~2_combout\ & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000000000000000000000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~3_combout\);

\BRG|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[0]~0_combout\ = ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & ((!\PC|DOUT\(2)) # (!\PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \BRG|saidaA[0]~0_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & ((!\PC|DOUT\(2)) # (!\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~4_combout\);

\ula_op[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(1),
	o => \ula_op[1]~input_o\);

\ula_op[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(0),
	o => \ula_op[0]~input_o\);

\ula_op[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(2),
	o => \ula_op[2]~input_o\);

\ULA|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal7~1_combout\ = (!\ula_op[1]~input_o\ & (!\ula_op[0]~input_o\ & !\ula_op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_op[1]~input_o\,
	datab => \ALT_INV_ula_op[0]~input_o\,
	datac => \ALT_INV_ula_op[2]~input_o\,
	combout => \ULA|Equal7~1_combout\);

\BRG|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1062_combout\ = ( \PC|DOUT\(2) & ( \PC|DOUT\(3) ) ) # ( !\PC|DOUT\(2) & ( \PC|DOUT\(3) & ( (((\PC|DOUT\(4)) # (\PC|DOUT\(5))) # (\PC|DOUT\(6))) # (\PC|DOUT\(7)) ) ) ) # ( \PC|DOUT\(2) & ( !\PC|DOUT\(3) & ( (((\PC|DOUT\(4)) # 
-- (\PC|DOUT\(5))) # (\PC|DOUT\(6))) # (\PC|DOUT\(7)) ) ) ) # ( !\PC|DOUT\(2) & ( !\PC|DOUT\(3) & ( (((\PC|DOUT\(4)) # (\PC|DOUT\(5))) # (\PC|DOUT\(6))) # (\PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \BRG|registrador~1062_combout\);

\BRG|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[0]~0_combout\ = ( \BRG|registrador~294_q\ & ( \BRG|registrador~38_q\ & ( (!\BRG|registrador~1062_combout\ & ((!\ROM|memROM~0_combout\) # ((\ROM|memROM~2_combout\ & \ROM|memROM~4_combout\)))) ) ) ) # ( !\BRG|registrador~294_q\ & ( 
-- \BRG|registrador~38_q\ & ( (!\BRG|registrador~1062_combout\ & (!\ROM|memROM~0_combout\ $ (((\ROM|memROM~2_combout\ & \ROM|memROM~4_combout\))))) ) ) ) # ( \BRG|registrador~294_q\ & ( !\BRG|registrador~38_q\ & ( (!\BRG|registrador~1062_combout\ & 
-- (\ROM|memROM~2_combout\ & \ROM|memROM~4_combout\)) ) ) ) # ( !\BRG|registrador~294_q\ & ( !\BRG|registrador~38_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000010001010100000100000101010000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~294_q\,
	dataf => \BRG|ALT_INV_registrador~38_q\,
	combout => \BRG|saidaB[0]~0_combout\);

\ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~0_combout\ = ( \ula_op[2]~input_o\ & ( (!\BRG|saidaA[0]~1_combout\ & ((!\BRG|saidaB[0]~0_combout\ & (!\ula_op[1]~input_o\ & \ula_op[0]~input_o\)) # (\BRG|saidaB[0]~0_combout\ & ((!\ula_op[1]~input_o\) # (\ula_op[0]~input_o\))))) # 
-- (\BRG|saidaA[0]~1_combout\ & (!\ula_op[1]~input_o\ $ (((\ula_op[0]~input_o\) # (\BRG|saidaB[0]~0_combout\))))) ) ) # ( !\ula_op[2]~input_o\ & ( (!\ula_op[1]~input_o\ & (\BRG|saidaA[0]~1_combout\)) # (\ula_op[1]~input_o\ & ((!\ula_op[0]~input_o\ & 
-- (\BRG|saidaA[0]~1_combout\)) # (\ula_op[0]~input_o\ & ((\BRG|saidaB[0]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011011000011010011101010101010100110110000110100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[0]~1_combout\,
	datab => \BRG|ALT_INV_saidaB[0]~0_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	combout => \ULA|saida[0]~0_combout\);

\ULA|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal7~0_combout\ = (\ula_op[2]~input_o\) # (\ula_op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_op[1]~input_o\,
	datab => \ALT_INV_ula_op[2]~input_o\,
	combout => \ULA|Equal7~0_combout\);

\rd_wr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd_wr,
	o => \rd_wr~input_o\);

\BRG|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1089_combout\ = (!\BRG|saidaA[0]~0_combout\ & \rd_wr~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datab => \ALT_INV_rd_wr~input_o\,
	combout => \BRG|registrador~1089_combout\);

\BRG|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~1_sumout\,
	asdata => \ULA|saida[0]~0_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~38_q\);

\BRG|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1063_combout\ = ( \BRG|registrador~38_q\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\)) # (\ROM|memROM~2_combout\ & ((!\ROM|memROM~0_combout\ & ((!\ROM|memROM~4_combout\) # (\BRG|registrador~294_q\))) # (\ROM|memROM~0_combout\ 
-- & (\ROM|memROM~4_combout\)))) ) ) # ( !\BRG|registrador~38_q\ & ( (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & ((\BRG|registrador~294_q\) # (\ROM|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101110010011100110100000001000001011100100111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~294_q\,
	datae => \BRG|ALT_INV_registrador~38_q\,
	combout => \BRG|registrador~1063_combout\);

\ULA|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~130_cout\ = CARRY(( !\ULA|Equal7~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	cin => GND,
	cout => \ULA|Add0~130_cout\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( \BRG|saidaA[0]~1_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((\BRG|registrador~1063_combout\ & ((\BRG|saidaA[0]~0_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~130_cout\ ))
-- \ULA|Add0~2\ = CARRY(( \BRG|saidaA[0]~1_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((\BRG|registrador~1063_combout\ & ((\BRG|saidaA[0]~0_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datad => \BRG|ALT_INV_saidaA[0]~1_combout\,
	dataf => \BRG|ALT_INV_registrador~1063_combout\,
	cin => \ULA|Add0~130_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\BRG|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1088_combout\ = (\BRG|saidaA[0]~0_combout\ & \rd_wr~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datab => \ALT_INV_rd_wr~input_o\,
	combout => \BRG|registrador~1088_combout\);

\BRG|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~1_sumout\,
	asdata => \ULA|saida[0]~0_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~294_q\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(5) & (!\PC|DOUT\(4) & !\PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~5_combout\);

\BRG|saidaA[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[0]~1_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (\BRG|registrador~294_q\ & !\ROM|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \BRG|ALT_INV_registrador~294_q\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BRG|saidaA[0]~1_combout\);

\BRG|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[1]~1_combout\ = ( \BRG|registrador~295_q\ & ( \BRG|registrador~39_q\ & ( (!\BRG|registrador~1062_combout\ & ((!\ROM|memROM~0_combout\) # ((\ROM|memROM~2_combout\ & \ROM|memROM~4_combout\)))) ) ) ) # ( !\BRG|registrador~295_q\ & ( 
-- \BRG|registrador~39_q\ & ( (!\BRG|registrador~1062_combout\ & (!\ROM|memROM~0_combout\ $ (((\ROM|memROM~2_combout\ & \ROM|memROM~4_combout\))))) ) ) ) # ( \BRG|registrador~295_q\ & ( !\BRG|registrador~39_q\ & ( (!\BRG|registrador~1062_combout\ & 
-- (\ROM|memROM~2_combout\ & \ROM|memROM~4_combout\)) ) ) ) # ( !\BRG|registrador~295_q\ & ( !\BRG|registrador~39_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000010001010100000100000101010000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~295_q\,
	dataf => \BRG|ALT_INV_registrador~39_q\,
	combout => \BRG|saidaB[1]~1_combout\);

\ULA|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~2_combout\ = ( \ula_op[2]~input_o\ & ( (!\BRG|saidaA[1]~2_combout\ & ((!\BRG|saidaB[1]~1_combout\ & (!\ula_op[1]~input_o\ & \ula_op[0]~input_o\)) # (\BRG|saidaB[1]~1_combout\ & ((!\ula_op[1]~input_o\) # (\ula_op[0]~input_o\))))) # 
-- (\BRG|saidaA[1]~2_combout\ & (!\ula_op[1]~input_o\ $ (((\ula_op[0]~input_o\) # (\BRG|saidaB[1]~1_combout\))))) ) ) # ( !\ula_op[2]~input_o\ & ( (!\ula_op[1]~input_o\ & (\BRG|saidaA[1]~2_combout\)) # (\ula_op[1]~input_o\ & ((!\ula_op[0]~input_o\ & 
-- (\BRG|saidaA[1]~2_combout\)) # (\ula_op[0]~input_o\ & ((\BRG|saidaB[1]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011011000011010011101010101010100110110000110100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[1]~2_combout\,
	datab => \BRG|ALT_INV_saidaB[1]~1_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	combout => \ULA|saida[1]~2_combout\);

\BRG|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~5_sumout\,
	asdata => \ULA|saida[1]~2_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~39_q\);

\BRG|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1064_combout\ = ( \BRG|registrador~39_q\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\)) # (\ROM|memROM~2_combout\ & ((!\ROM|memROM~0_combout\ & ((!\ROM|memROM~4_combout\) # (\BRG|registrador~295_q\))) # (\ROM|memROM~0_combout\ 
-- & (\ROM|memROM~4_combout\)))) ) ) # ( !\BRG|registrador~39_q\ & ( (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & ((\BRG|registrador~295_q\) # (\ROM|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101110010011100110100000001000001011100100111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~295_q\,
	datae => \BRG|ALT_INV_registrador~39_q\,
	combout => \BRG|registrador~1064_combout\);

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( \BRG|saidaA[1]~2_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((\BRG|registrador~1064_combout\ & ((\BRG|saidaA[0]~0_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( \BRG|saidaA[1]~2_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((\BRG|registrador~1064_combout\ & ((\BRG|saidaA[0]~0_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datad => \BRG|ALT_INV_saidaA[1]~2_combout\,
	dataf => \BRG|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

\BRG|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~5_sumout\,
	asdata => \ULA|saida[1]~2_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~295_q\);

\BRG|saidaA[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[1]~2_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & ((\BRG|registrador~295_q\) # (\ROM|memROM~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000010001000100000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~295_q\,
	combout => \BRG|saidaA[1]~2_combout\);

\BRG|saidaB[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[2]~2_combout\ = ( \BRG|registrador~296_q\ & ( \BRG|registrador~40_q\ & ( (!\BRG|registrador~1062_combout\ & !\ROM|memROM~0_combout\) ) ) ) # ( !\BRG|registrador~296_q\ & ( \BRG|registrador~40_q\ & ( (!\BRG|registrador~1062_combout\ & 
-- (!\ROM|memROM~0_combout\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\)))) ) ) ) # ( \BRG|registrador~296_q\ & ( !\BRG|registrador~40_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000010100000100000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~296_q\,
	dataf => \BRG|ALT_INV_registrador~40_q\,
	combout => \BRG|saidaB[2]~2_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\PC|DOUT\(5) & (!\PC|DOUT\(4) & !\PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~7_combout\);

\ULA|saida[2]~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~93_combout\ = (\ula_op[0]~input_o\ & \ula_op[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_op[0]~input_o\,
	datab => \ALT_INV_ula_op[2]~input_o\,
	combout => \ULA|saida[2]~93_combout\);

\ULA|saida[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~4_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~296_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~296_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~296_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~296_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[2]~4_combout\);

\ULA|saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~5_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[2]~4_combout\ & ( (!\BRG|saidaA[2]~3_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[2]~4_combout\ ) ) # ( \ula_op[2]~input_o\ & ( 
-- !\ULA|saida[2]~4_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[2]~3_combout\ & (!\BRG|saidaB[2]~2_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[2]~3_combout\ $ (((\ula_op[1]~input_o\))))) ) ) ) # ( !\ula_op[2]~input_o\ & ( 
-- !\ULA|saida[2]~4_combout\ & ( (\BRG|saidaA[2]~3_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[2]~2_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[2]~3_combout\,
	datab => \BRG|ALT_INV_saidaB[2]~2_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~4_combout\,
	combout => \ULA|saida[2]~5_combout\);

\BRG|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~9_sumout\,
	asdata => \ULA|saida[2]~5_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~40_q\);

\BRG|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1065_combout\ = ( \BRG|registrador~40_q\ & ( (!\ROM|memROM~0_combout\ & ((!\ROM|memROM~2_combout\) # ((!\ROM|memROM~4_combout\) # (\BRG|registrador~296_q\)))) ) ) # ( !\BRG|registrador~40_q\ & ( (\ROM|memROM~2_combout\ & 
-- (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~296_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100110010001100110000000000000001001100100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~296_q\,
	datae => \BRG|ALT_INV_registrador~40_q\,
	combout => \BRG|registrador~1065_combout\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( \BRG|saidaA[2]~3_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((\BRG|registrador~1065_combout\ & ((\BRG|saidaA[0]~0_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( \BRG|saidaA[2]~3_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((\BRG|registrador~1065_combout\ & ((\BRG|saidaA[0]~0_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datad => \BRG|ALT_INV_saidaA[2]~3_combout\,
	dataf => \BRG|ALT_INV_registrador~1065_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\BRG|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~9_sumout\,
	asdata => \ULA|saida[2]~5_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~296_q\);

\BRG|saidaA[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[2]~3_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~296_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~296_q\,
	combout => \BRG|saidaA[2]~3_combout\);

\BRG|saidaB[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[3]~3_combout\ = ( \BRG|registrador~297_q\ & ( \BRG|registrador~41_q\ & ( (!\BRG|registrador~1062_combout\ & ((!\ROM|memROM~0_combout\) # ((\ROM|memROM~2_combout\ & \ROM|memROM~4_combout\)))) ) ) ) # ( !\BRG|registrador~297_q\ & ( 
-- \BRG|registrador~41_q\ & ( (!\BRG|registrador~1062_combout\ & (!\ROM|memROM~0_combout\ $ (((\ROM|memROM~2_combout\ & \ROM|memROM~4_combout\))))) ) ) ) # ( \BRG|registrador~297_q\ & ( !\BRG|registrador~41_q\ & ( (!\BRG|registrador~1062_combout\ & 
-- (\ROM|memROM~2_combout\ & \ROM|memROM~4_combout\)) ) ) ) # ( !\BRG|registrador~297_q\ & ( !\BRG|registrador~41_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000010001010100000100000101010000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~297_q\,
	dataf => \BRG|ALT_INV_registrador~41_q\,
	combout => \BRG|saidaB[3]~3_combout\);

\ULA|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~7_combout\ = ( \ula_op[2]~input_o\ & ( (!\BRG|saidaA[3]~4_combout\ & ((!\BRG|saidaB[3]~3_combout\ & (!\ula_op[1]~input_o\ & \ula_op[0]~input_o\)) # (\BRG|saidaB[3]~3_combout\ & ((!\ula_op[1]~input_o\) # (\ula_op[0]~input_o\))))) # 
-- (\BRG|saidaA[3]~4_combout\ & (!\ula_op[1]~input_o\ $ (((\ula_op[0]~input_o\) # (\BRG|saidaB[3]~3_combout\))))) ) ) # ( !\ula_op[2]~input_o\ & ( (!\ula_op[1]~input_o\ & (\BRG|saidaA[3]~4_combout\)) # (\ula_op[1]~input_o\ & ((!\ula_op[0]~input_o\ & 
-- (\BRG|saidaA[3]~4_combout\)) # (\ula_op[0]~input_o\ & ((\BRG|saidaB[3]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011011000011010011101010101010100110110000110100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[3]~4_combout\,
	datab => \BRG|ALT_INV_saidaB[3]~3_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	combout => \ULA|saida[3]~7_combout\);

\BRG|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~13_sumout\,
	asdata => \ULA|saida[3]~7_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~41_q\);

\BRG|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1066_combout\ = ( \BRG|registrador~41_q\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\)) # (\ROM|memROM~2_combout\ & ((!\ROM|memROM~0_combout\ & ((!\ROM|memROM~4_combout\) # (\BRG|registrador~297_q\))) # (\ROM|memROM~0_combout\ 
-- & (\ROM|memROM~4_combout\)))) ) ) # ( !\BRG|registrador~41_q\ & ( (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & ((\BRG|registrador~297_q\) # (\ROM|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101110010011100110100000001000001011100100111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~297_q\,
	datae => \BRG|ALT_INV_registrador~41_q\,
	combout => \BRG|registrador~1066_combout\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( \BRG|saidaA[3]~4_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((\BRG|registrador~1066_combout\ & ((\BRG|saidaA[0]~0_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( \BRG|saidaA[3]~4_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((\BRG|registrador~1066_combout\ & ((\BRG|saidaA[0]~0_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datad => \BRG|ALT_INV_saidaA[3]~4_combout\,
	dataf => \BRG|ALT_INV_registrador~1066_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\BRG|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~13_sumout\,
	asdata => \ULA|saida[3]~7_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~297_q\);

\BRG|saidaA[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[3]~4_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & ((\BRG|registrador~297_q\) # (\ROM|memROM~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000010001000100000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~297_q\,
	combout => \BRG|saidaA[3]~4_combout\);

\BRG|saidaB[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[4]~4_combout\ = ( \BRG|registrador~298_q\ & ( \BRG|registrador~42_q\ & ( (!\BRG|registrador~1062_combout\ & !\ROM|memROM~0_combout\) ) ) ) # ( !\BRG|registrador~298_q\ & ( \BRG|registrador~42_q\ & ( (!\BRG|registrador~1062_combout\ & 
-- (!\ROM|memROM~0_combout\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\)))) ) ) ) # ( \BRG|registrador~298_q\ & ( !\BRG|registrador~42_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000010100000100000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~298_q\,
	dataf => \BRG|ALT_INV_registrador~42_q\,
	combout => \BRG|saidaB[4]~4_combout\);

\ULA|saida[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~9_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~298_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~298_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~298_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~298_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[4]~9_combout\);

\ULA|saida[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~10_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[4]~9_combout\ & ( (!\BRG|saidaA[4]~5_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[4]~9_combout\ ) ) # ( \ula_op[2]~input_o\ & ( 
-- !\ULA|saida[4]~9_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[4]~5_combout\ & (!\BRG|saidaB[4]~4_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[4]~5_combout\ $ (((\ula_op[1]~input_o\))))) ) ) ) # ( !\ula_op[2]~input_o\ & ( 
-- !\ULA|saida[4]~9_combout\ & ( (\BRG|saidaA[4]~5_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[4]~4_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[4]~5_combout\,
	datab => \BRG|ALT_INV_saidaB[4]~4_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[4]~9_combout\,
	combout => \ULA|saida[4]~10_combout\);

\BRG|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~17_sumout\,
	asdata => \ULA|saida[4]~10_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~42_q\);

\BRG|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1067_combout\ = ( \BRG|registrador~42_q\ & ( (!\ROM|memROM~0_combout\ & ((!\ROM|memROM~2_combout\) # ((!\ROM|memROM~4_combout\) # (\BRG|registrador~298_q\)))) ) ) # ( !\BRG|registrador~42_q\ & ( (\ROM|memROM~2_combout\ & 
-- (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~298_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100110010001100110000000000000001001100100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~298_q\,
	datae => \BRG|ALT_INV_registrador~42_q\,
	combout => \BRG|registrador~1067_combout\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( \BRG|saidaA[4]~5_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((\BRG|registrador~1067_combout\ & ((\BRG|saidaA[0]~0_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( \BRG|saidaA[4]~5_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((\BRG|registrador~1067_combout\ & ((\BRG|saidaA[0]~0_combout\) # (\ROM|memROM~0_combout\))))) ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datad => \BRG|ALT_INV_saidaA[4]~5_combout\,
	dataf => \BRG|ALT_INV_registrador~1067_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

\BRG|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~17_sumout\,
	asdata => \ULA|saida[4]~10_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~298_q\);

\BRG|saidaA[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[4]~5_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~298_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~298_q\,
	combout => \BRG|saidaA[4]~5_combout\);

\BRG|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1068_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~299_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~299_q\,
	combout => \BRG|registrador~1068_combout\);

\BRG|saidaB[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[5]~5_combout\ = ( \BRG|registrador~299_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~299_q\,
	combout => \BRG|saidaB[5]~5_combout\);

\ULA|saida[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~12_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~299_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~299_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~299_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~299_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[5]~12_combout\);

\ULA|saida[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~13_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[5]~12_combout\ & ( (!\BRG|saidaA[5]~6_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[5]~12_combout\ ) ) # ( \ula_op[2]~input_o\ & 
-- ( !\ULA|saida[5]~12_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[5]~6_combout\ & (!\BRG|saidaB[5]~5_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[5]~6_combout\ $ (((\ula_op[1]~input_o\))))) ) ) ) # ( !\ula_op[2]~input_o\ & 
-- ( !\ULA|saida[5]~12_combout\ & ( (\BRG|saidaA[5]~6_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[5]~5_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[5]~6_combout\,
	datab => \BRG|ALT_INV_saidaB[5]~5_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[5]~12_combout\,
	combout => \ULA|saida[5]~13_combout\);

\BRG|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~21_sumout\,
	asdata => \ULA|saida[5]~13_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~43_q\);

\BRG|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1090_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~43_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~43_q\,
	combout => \BRG|registrador~1090_combout\);

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( \BRG|saidaA[5]~6_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1090_combout\) # (\BRG|registrador~1068_combout\))))) ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( \BRG|saidaA[5]~6_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1090_combout\) # (\BRG|registrador~1068_combout\))))) ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1068_combout\,
	datad => \BRG|ALT_INV_saidaA[5]~6_combout\,
	dataf => \BRG|ALT_INV_registrador~1090_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\BRG|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~21_sumout\,
	asdata => \ULA|saida[5]~13_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~299_q\);

\BRG|saidaA[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[5]~6_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~299_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~299_q\,
	combout => \BRG|saidaA[5]~6_combout\);

\BRG|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1069_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~300_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~300_q\,
	combout => \BRG|registrador~1069_combout\);

\BRG|saidaB[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[6]~6_combout\ = ( \BRG|registrador~300_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~300_q\,
	combout => \BRG|saidaB[6]~6_combout\);

\ULA|saida[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~15_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~300_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~300_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~300_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~300_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[6]~15_combout\);

\ULA|saida[6]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~16_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[6]~15_combout\ & ( (!\BRG|saidaA[6]~7_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[6]~15_combout\ ) ) # ( \ula_op[2]~input_o\ & 
-- ( !\ULA|saida[6]~15_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[6]~7_combout\ & (!\BRG|saidaB[6]~6_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[6]~7_combout\ $ (((\ula_op[1]~input_o\))))) ) ) ) # ( !\ula_op[2]~input_o\ & 
-- ( !\ULA|saida[6]~15_combout\ & ( (\BRG|saidaA[6]~7_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[6]~6_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[6]~7_combout\,
	datab => \BRG|ALT_INV_saidaB[6]~6_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[6]~15_combout\,
	combout => \ULA|saida[6]~16_combout\);

\BRG|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~25_sumout\,
	asdata => \ULA|saida[6]~16_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~44_q\);

\BRG|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1091_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~44_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~44_q\,
	combout => \BRG|registrador~1091_combout\);

\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( \BRG|saidaA[6]~7_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1091_combout\) # (\BRG|registrador~1069_combout\))))) ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( \BRG|saidaA[6]~7_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1091_combout\) # (\BRG|registrador~1069_combout\))))) ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1069_combout\,
	datad => \BRG|ALT_INV_saidaA[6]~7_combout\,
	dataf => \BRG|ALT_INV_registrador~1091_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

\BRG|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~25_sumout\,
	asdata => \ULA|saida[6]~16_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~300_q\);

\BRG|saidaA[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[6]~7_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~300_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~300_q\,
	combout => \BRG|saidaA[6]~7_combout\);

\BRG|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1070_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~301_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~301_q\,
	combout => \BRG|registrador~1070_combout\);

\BRG|saidaB[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[7]~7_combout\ = ( \BRG|registrador~301_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~301_q\,
	combout => \BRG|saidaB[7]~7_combout\);

\ULA|saida[7]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~18_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~301_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~301_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~301_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~301_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[7]~18_combout\);

\ULA|saida[7]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~19_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[7]~18_combout\ & ( (!\BRG|saidaA[7]~8_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[7]~18_combout\ ) ) # ( \ula_op[2]~input_o\ & 
-- ( !\ULA|saida[7]~18_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[7]~8_combout\ & (!\BRG|saidaB[7]~7_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[7]~8_combout\ $ (((\ula_op[1]~input_o\))))) ) ) ) # ( !\ula_op[2]~input_o\ & 
-- ( !\ULA|saida[7]~18_combout\ & ( (\BRG|saidaA[7]~8_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[7]~7_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[7]~8_combout\,
	datab => \BRG|ALT_INV_saidaB[7]~7_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[7]~18_combout\,
	combout => \ULA|saida[7]~19_combout\);

\BRG|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~29_sumout\,
	asdata => \ULA|saida[7]~19_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~45_q\);

\BRG|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1092_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~45_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~45_q\,
	combout => \BRG|registrador~1092_combout\);

\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( \BRG|saidaA[7]~8_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1092_combout\) # (\BRG|registrador~1070_combout\))))) ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( \BRG|saidaA[7]~8_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1092_combout\) # (\BRG|registrador~1070_combout\))))) ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1070_combout\,
	datad => \BRG|ALT_INV_saidaA[7]~8_combout\,
	dataf => \BRG|ALT_INV_registrador~1092_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

\BRG|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~29_sumout\,
	asdata => \ULA|saida[7]~19_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~301_q\);

\BRG|saidaA[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[7]~8_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~301_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~301_q\,
	combout => \BRG|saidaA[7]~8_combout\);

\BRG|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1071_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~302_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~302_q\,
	combout => \BRG|registrador~1071_combout\);

\BRG|saidaB[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[8]~8_combout\ = ( \BRG|registrador~302_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~302_q\,
	combout => \BRG|saidaB[8]~8_combout\);

\ULA|saida[8]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~21_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~302_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~302_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~302_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~302_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[8]~21_combout\);

\ULA|saida[8]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~22_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[8]~21_combout\ & ( (!\BRG|saidaA[8]~9_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[8]~21_combout\ ) ) # ( \ula_op[2]~input_o\ & 
-- ( !\ULA|saida[8]~21_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[8]~9_combout\ & (!\BRG|saidaB[8]~8_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[8]~9_combout\ $ (((\ula_op[1]~input_o\))))) ) ) ) # ( !\ula_op[2]~input_o\ & 
-- ( !\ULA|saida[8]~21_combout\ & ( (\BRG|saidaA[8]~9_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[8]~8_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[8]~9_combout\,
	datab => \BRG|ALT_INV_saidaB[8]~8_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[8]~21_combout\,
	combout => \ULA|saida[8]~22_combout\);

\BRG|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~33_sumout\,
	asdata => \ULA|saida[8]~22_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~46_q\);

\BRG|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1093_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~46_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~46_q\,
	combout => \BRG|registrador~1093_combout\);

\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( \BRG|saidaA[8]~9_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1093_combout\) # (\BRG|registrador~1071_combout\))))) ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( \BRG|saidaA[8]~9_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1093_combout\) # (\BRG|registrador~1071_combout\))))) ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1071_combout\,
	datad => \BRG|ALT_INV_saidaA[8]~9_combout\,
	dataf => \BRG|ALT_INV_registrador~1093_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

\BRG|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~33_sumout\,
	asdata => \ULA|saida[8]~22_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~302_q\);

\BRG|saidaA[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[8]~9_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~302_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~302_q\,
	combout => \BRG|saidaA[8]~9_combout\);

\BRG|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1072_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~303_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~303_q\,
	combout => \BRG|registrador~1072_combout\);

\BRG|saidaB[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[9]~9_combout\ = ( \BRG|registrador~303_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~303_q\,
	combout => \BRG|saidaB[9]~9_combout\);

\ULA|saida[9]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~24_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~303_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~303_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~303_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~303_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[9]~24_combout\);

\ULA|saida[9]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~25_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[9]~24_combout\ & ( (!\BRG|saidaA[9]~10_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[9]~24_combout\ ) ) # ( \ula_op[2]~input_o\ & 
-- ( !\ULA|saida[9]~24_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[9]~10_combout\ & (!\BRG|saidaB[9]~9_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[9]~10_combout\ $ (((\ula_op[1]~input_o\))))) ) ) ) # ( !\ula_op[2]~input_o\ 
-- & ( !\ULA|saida[9]~24_combout\ & ( (\BRG|saidaA[9]~10_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[9]~9_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[9]~10_combout\,
	datab => \BRG|ALT_INV_saidaB[9]~9_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[9]~24_combout\,
	combout => \ULA|saida[9]~25_combout\);

\BRG|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~37_sumout\,
	asdata => \ULA|saida[9]~25_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~47_q\);

\BRG|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1094_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~47_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~47_q\,
	combout => \BRG|registrador~1094_combout\);

\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( \BRG|saidaA[9]~10_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1094_combout\) # (\BRG|registrador~1072_combout\))))) ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( \BRG|saidaA[9]~10_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1094_combout\) # (\BRG|registrador~1072_combout\))))) ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1072_combout\,
	datad => \BRG|ALT_INV_saidaA[9]~10_combout\,
	dataf => \BRG|ALT_INV_registrador~1094_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

\BRG|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~37_sumout\,
	asdata => \ULA|saida[9]~25_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~303_q\);

\BRG|saidaA[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[9]~10_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~303_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~303_q\,
	combout => \BRG|saidaA[9]~10_combout\);

\BRG|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1073_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~304_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~304_q\,
	combout => \BRG|registrador~1073_combout\);

\BRG|saidaB[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[10]~10_combout\ = ( \BRG|registrador~304_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~304_q\,
	combout => \BRG|saidaB[10]~10_combout\);

\ULA|saida[10]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~27_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~304_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~304_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~304_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~304_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[10]~27_combout\);

\ULA|saida[10]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~28_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[10]~27_combout\ & ( (!\BRG|saidaA[10]~11_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[10]~27_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[10]~27_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[10]~11_combout\ & (!\BRG|saidaB[10]~10_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[10]~11_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[10]~27_combout\ & ( (\BRG|saidaA[10]~11_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[10]~10_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[10]~11_combout\,
	datab => \BRG|ALT_INV_saidaB[10]~10_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[10]~27_combout\,
	combout => \ULA|saida[10]~28_combout\);

\BRG|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~41_sumout\,
	asdata => \ULA|saida[10]~28_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~48_q\);

\BRG|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1095_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~48_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~48_q\,
	combout => \BRG|registrador~1095_combout\);

\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( \BRG|saidaA[10]~11_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1095_combout\) # (\BRG|registrador~1073_combout\))))) ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( \BRG|saidaA[10]~11_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1095_combout\) # (\BRG|registrador~1073_combout\))))) ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1073_combout\,
	datad => \BRG|ALT_INV_saidaA[10]~11_combout\,
	dataf => \BRG|ALT_INV_registrador~1095_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

\BRG|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~41_sumout\,
	asdata => \ULA|saida[10]~28_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~304_q\);

\BRG|saidaA[10]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[10]~11_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~304_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~304_q\,
	combout => \BRG|saidaA[10]~11_combout\);

\BRG|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1074_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~305_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~305_q\,
	combout => \BRG|registrador~1074_combout\);

\BRG|saidaB[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[11]~11_combout\ = ( \BRG|registrador~305_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~305_q\,
	combout => \BRG|saidaB[11]~11_combout\);

\ULA|saida[11]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~30_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~305_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~305_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~305_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~305_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[11]~30_combout\);

\ULA|saida[11]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~31_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[11]~30_combout\ & ( (!\BRG|saidaA[11]~12_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[11]~30_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[11]~30_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[11]~12_combout\ & (!\BRG|saidaB[11]~11_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[11]~12_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[11]~30_combout\ & ( (\BRG|saidaA[11]~12_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[11]~11_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[11]~12_combout\,
	datab => \BRG|ALT_INV_saidaB[11]~11_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[11]~30_combout\,
	combout => \ULA|saida[11]~31_combout\);

\BRG|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~45_sumout\,
	asdata => \ULA|saida[11]~31_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~49_q\);

\BRG|registrador~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1096_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~49_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~49_q\,
	combout => \BRG|registrador~1096_combout\);

\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( \BRG|saidaA[11]~12_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1096_combout\) # (\BRG|registrador~1074_combout\))))) ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( \BRG|saidaA[11]~12_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1096_combout\) # (\BRG|registrador~1074_combout\))))) ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1074_combout\,
	datad => \BRG|ALT_INV_saidaA[11]~12_combout\,
	dataf => \BRG|ALT_INV_registrador~1096_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

\BRG|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~45_sumout\,
	asdata => \ULA|saida[11]~31_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~305_q\);

\BRG|saidaA[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[11]~12_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~305_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~305_q\,
	combout => \BRG|saidaA[11]~12_combout\);

\BRG|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1075_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~306_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~306_q\,
	combout => \BRG|registrador~1075_combout\);

\BRG|saidaB[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[12]~12_combout\ = ( \BRG|registrador~306_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~306_q\,
	combout => \BRG|saidaB[12]~12_combout\);

\ULA|saida[12]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~33_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~306_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~306_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~306_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~306_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[12]~33_combout\);

\ULA|saida[12]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~34_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[12]~33_combout\ & ( (!\BRG|saidaA[12]~13_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[12]~33_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[12]~33_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[12]~13_combout\ & (!\BRG|saidaB[12]~12_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[12]~13_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[12]~33_combout\ & ( (\BRG|saidaA[12]~13_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[12]~12_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[12]~13_combout\,
	datab => \BRG|ALT_INV_saidaB[12]~12_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[12]~33_combout\,
	combout => \ULA|saida[12]~34_combout\);

\BRG|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~49_sumout\,
	asdata => \ULA|saida[12]~34_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~50_q\);

\BRG|registrador~1097\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1097_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~50_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~50_q\,
	combout => \BRG|registrador~1097_combout\);

\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( \BRG|saidaA[12]~13_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1097_combout\) # (\BRG|registrador~1075_combout\))))) ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( \BRG|saidaA[12]~13_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1097_combout\) # (\BRG|registrador~1075_combout\))))) ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1075_combout\,
	datad => \BRG|ALT_INV_saidaA[12]~13_combout\,
	dataf => \BRG|ALT_INV_registrador~1097_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

\BRG|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~49_sumout\,
	asdata => \ULA|saida[12]~34_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~306_q\);

\BRG|saidaA[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[12]~13_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~306_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~306_q\,
	combout => \BRG|saidaA[12]~13_combout\);

\BRG|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1076_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~307_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~307_q\,
	combout => \BRG|registrador~1076_combout\);

\BRG|saidaB[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[13]~13_combout\ = ( \BRG|registrador~307_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~307_q\,
	combout => \BRG|saidaB[13]~13_combout\);

\ULA|saida[13]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~36_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~307_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~307_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~307_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~307_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[13]~36_combout\);

\ULA|saida[13]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~37_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[13]~36_combout\ & ( (!\BRG|saidaA[13]~14_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[13]~36_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[13]~36_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[13]~14_combout\ & (!\BRG|saidaB[13]~13_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[13]~14_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[13]~36_combout\ & ( (\BRG|saidaA[13]~14_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[13]~13_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[13]~14_combout\,
	datab => \BRG|ALT_INV_saidaB[13]~13_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[13]~36_combout\,
	combout => \ULA|saida[13]~37_combout\);

\BRG|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~53_sumout\,
	asdata => \ULA|saida[13]~37_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~51_q\);

\BRG|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1098_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~51_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~51_q\,
	combout => \BRG|registrador~1098_combout\);

\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( \BRG|saidaA[13]~14_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1098_combout\) # (\BRG|registrador~1076_combout\))))) ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( \BRG|saidaA[13]~14_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1098_combout\) # (\BRG|registrador~1076_combout\))))) ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1076_combout\,
	datad => \BRG|ALT_INV_saidaA[13]~14_combout\,
	dataf => \BRG|ALT_INV_registrador~1098_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

\BRG|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~53_sumout\,
	asdata => \ULA|saida[13]~37_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~307_q\);

\BRG|saidaA[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[13]~14_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~307_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~307_q\,
	combout => \BRG|saidaA[13]~14_combout\);

\BRG|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1077_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~308_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~308_q\,
	combout => \BRG|registrador~1077_combout\);

\BRG|saidaB[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[14]~14_combout\ = ( \BRG|registrador~308_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~308_q\,
	combout => \BRG|saidaB[14]~14_combout\);

\ULA|saida[14]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~39_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~308_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~308_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~308_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~308_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[14]~39_combout\);

\ULA|saida[14]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~40_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[14]~39_combout\ & ( (!\BRG|saidaA[14]~15_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[14]~39_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[14]~39_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[14]~15_combout\ & (!\BRG|saidaB[14]~14_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[14]~15_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[14]~39_combout\ & ( (\BRG|saidaA[14]~15_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[14]~14_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[14]~15_combout\,
	datab => \BRG|ALT_INV_saidaB[14]~14_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[14]~39_combout\,
	combout => \ULA|saida[14]~40_combout\);

\BRG|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~57_sumout\,
	asdata => \ULA|saida[14]~40_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~52_q\);

\BRG|registrador~1099\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1099_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~52_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~52_q\,
	combout => \BRG|registrador~1099_combout\);

\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( \BRG|saidaA[14]~15_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1099_combout\) # (\BRG|registrador~1077_combout\))))) ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( \BRG|saidaA[14]~15_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1099_combout\) # (\BRG|registrador~1077_combout\))))) ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1077_combout\,
	datad => \BRG|ALT_INV_saidaA[14]~15_combout\,
	dataf => \BRG|ALT_INV_registrador~1099_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

\BRG|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~57_sumout\,
	asdata => \ULA|saida[14]~40_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~308_q\);

\BRG|saidaA[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[14]~15_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~308_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~308_q\,
	combout => \BRG|saidaA[14]~15_combout\);

\BRG|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1078_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~309_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~309_q\,
	combout => \BRG|registrador~1078_combout\);

\BRG|saidaB[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[15]~15_combout\ = ( \BRG|registrador~309_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~309_q\,
	combout => \BRG|saidaB[15]~15_combout\);

\ULA|saida[15]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~42_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~309_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~309_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~309_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~309_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[15]~42_combout\);

\ULA|saida[15]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~43_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[15]~42_combout\ & ( (!\BRG|saidaA[15]~16_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[15]~42_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[15]~42_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[15]~16_combout\ & (!\BRG|saidaB[15]~15_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[15]~16_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[15]~42_combout\ & ( (\BRG|saidaA[15]~16_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[15]~15_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[15]~16_combout\,
	datab => \BRG|ALT_INV_saidaB[15]~15_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[15]~42_combout\,
	combout => \ULA|saida[15]~43_combout\);

\BRG|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~61_sumout\,
	asdata => \ULA|saida[15]~43_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~53_q\);

\BRG|registrador~1100\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1100_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~53_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~53_q\,
	combout => \BRG|registrador~1100_combout\);

\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( \BRG|saidaA[15]~16_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1100_combout\) # (\BRG|registrador~1078_combout\))))) ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( \BRG|saidaA[15]~16_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1100_combout\) # (\BRG|registrador~1078_combout\))))) ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1078_combout\,
	datad => \BRG|ALT_INV_saidaA[15]~16_combout\,
	dataf => \BRG|ALT_INV_registrador~1100_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

\BRG|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~61_sumout\,
	asdata => \ULA|saida[15]~43_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~309_q\);

\BRG|saidaA[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[15]~16_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~309_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~309_q\,
	combout => \BRG|saidaA[15]~16_combout\);

\BRG|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1079_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~310_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~310_q\,
	combout => \BRG|registrador~1079_combout\);

\BRG|saidaB[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[16]~16_combout\ = ( \BRG|registrador~310_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~310_q\,
	combout => \BRG|saidaB[16]~16_combout\);

\ULA|saida[16]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~45_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~310_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~310_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~310_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~310_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[16]~45_combout\);

\ULA|saida[16]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~46_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[16]~45_combout\ & ( (!\BRG|saidaA[16]~17_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[16]~45_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[16]~45_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[16]~17_combout\ & (!\BRG|saidaB[16]~16_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[16]~17_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[16]~45_combout\ & ( (\BRG|saidaA[16]~17_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[16]~16_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[16]~17_combout\,
	datab => \BRG|ALT_INV_saidaB[16]~16_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[16]~45_combout\,
	combout => \ULA|saida[16]~46_combout\);

\BRG|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~65_sumout\,
	asdata => \ULA|saida[16]~46_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~54_q\);

\BRG|registrador~1101\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1101_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~54_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~54_q\,
	combout => \BRG|registrador~1101_combout\);

\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( \BRG|saidaA[16]~17_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1101_combout\) # (\BRG|registrador~1079_combout\))))) ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( \BRG|saidaA[16]~17_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1101_combout\) # (\BRG|registrador~1079_combout\))))) ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1079_combout\,
	datad => \BRG|ALT_INV_saidaA[16]~17_combout\,
	dataf => \BRG|ALT_INV_registrador~1101_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

\BRG|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~65_sumout\,
	asdata => \ULA|saida[16]~46_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~310_q\);

\BRG|saidaA[16]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[16]~17_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~310_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~310_q\,
	combout => \BRG|saidaA[16]~17_combout\);

\BRG|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1080_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~311_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~311_q\,
	combout => \BRG|registrador~1080_combout\);

\BRG|saidaB[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[17]~17_combout\ = ( \BRG|registrador~311_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~311_q\,
	combout => \BRG|saidaB[17]~17_combout\);

\ULA|saida[17]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~48_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~311_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~311_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~311_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~311_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[17]~48_combout\);

\ULA|saida[17]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~49_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[17]~48_combout\ & ( (!\BRG|saidaA[17]~18_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[17]~48_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[17]~48_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[17]~18_combout\ & (!\BRG|saidaB[17]~17_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[17]~18_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[17]~48_combout\ & ( (\BRG|saidaA[17]~18_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[17]~17_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[17]~18_combout\,
	datab => \BRG|ALT_INV_saidaB[17]~17_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[17]~48_combout\,
	combout => \ULA|saida[17]~49_combout\);

\BRG|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~69_sumout\,
	asdata => \ULA|saida[17]~49_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~55_q\);

\BRG|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1102_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~55_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~55_q\,
	combout => \BRG|registrador~1102_combout\);

\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( \BRG|saidaA[17]~18_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1102_combout\) # (\BRG|registrador~1080_combout\))))) ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( \BRG|saidaA[17]~18_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1102_combout\) # (\BRG|registrador~1080_combout\))))) ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1080_combout\,
	datad => \BRG|ALT_INV_saidaA[17]~18_combout\,
	dataf => \BRG|ALT_INV_registrador~1102_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

\BRG|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~69_sumout\,
	asdata => \ULA|saida[17]~49_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~311_q\);

\BRG|saidaA[17]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[17]~18_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~311_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~311_q\,
	combout => \BRG|saidaA[17]~18_combout\);

\BRG|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1081_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~312_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~312_q\,
	combout => \BRG|registrador~1081_combout\);

\BRG|saidaB[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[18]~18_combout\ = ( \BRG|registrador~312_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~312_q\,
	combout => \BRG|saidaB[18]~18_combout\);

\ULA|saida[18]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~51_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~312_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~312_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~312_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~312_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[18]~51_combout\);

\ULA|saida[18]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~52_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[18]~51_combout\ & ( (!\BRG|saidaA[18]~19_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[18]~51_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[18]~51_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[18]~19_combout\ & (!\BRG|saidaB[18]~18_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[18]~19_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[18]~51_combout\ & ( (\BRG|saidaA[18]~19_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[18]~18_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[18]~19_combout\,
	datab => \BRG|ALT_INV_saidaB[18]~18_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[18]~51_combout\,
	combout => \ULA|saida[18]~52_combout\);

\BRG|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~73_sumout\,
	asdata => \ULA|saida[18]~52_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~56_q\);

\BRG|registrador~1103\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1103_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~56_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~56_q\,
	combout => \BRG|registrador~1103_combout\);

\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( \BRG|saidaA[18]~19_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1103_combout\) # (\BRG|registrador~1081_combout\))))) ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( \BRG|saidaA[18]~19_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1103_combout\) # (\BRG|registrador~1081_combout\))))) ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1081_combout\,
	datad => \BRG|ALT_INV_saidaA[18]~19_combout\,
	dataf => \BRG|ALT_INV_registrador~1103_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

\BRG|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~73_sumout\,
	asdata => \ULA|saida[18]~52_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~312_q\);

\BRG|saidaA[18]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[18]~19_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~312_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~312_q\,
	combout => \BRG|saidaA[18]~19_combout\);

\BRG|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1082_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~313_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~313_q\,
	combout => \BRG|registrador~1082_combout\);

\BRG|saidaB[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[19]~19_combout\ = ( \BRG|registrador~313_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~313_q\,
	combout => \BRG|saidaB[19]~19_combout\);

\ULA|saida[19]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~54_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~313_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~313_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~313_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~313_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[19]~54_combout\);

\ULA|saida[19]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~55_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[19]~54_combout\ & ( (!\BRG|saidaA[19]~20_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[19]~54_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[19]~54_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[19]~20_combout\ & (!\BRG|saidaB[19]~19_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[19]~20_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[19]~54_combout\ & ( (\BRG|saidaA[19]~20_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[19]~19_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[19]~20_combout\,
	datab => \BRG|ALT_INV_saidaB[19]~19_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[19]~54_combout\,
	combout => \ULA|saida[19]~55_combout\);

\BRG|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~77_sumout\,
	asdata => \ULA|saida[19]~55_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~57_q\);

\BRG|registrador~1104\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1104_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~57_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~57_q\,
	combout => \BRG|registrador~1104_combout\);

\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( \BRG|saidaA[19]~20_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1104_combout\) # (\BRG|registrador~1082_combout\))))) ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( \BRG|saidaA[19]~20_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1104_combout\) # (\BRG|registrador~1082_combout\))))) ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1082_combout\,
	datad => \BRG|ALT_INV_saidaA[19]~20_combout\,
	dataf => \BRG|ALT_INV_registrador~1104_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

\BRG|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~77_sumout\,
	asdata => \ULA|saida[19]~55_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~313_q\);

\BRG|saidaA[19]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[19]~20_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~313_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~313_q\,
	combout => \BRG|saidaA[19]~20_combout\);

\BRG|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1083_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~314_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~314_q\,
	combout => \BRG|registrador~1083_combout\);

\BRG|saidaB[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[20]~20_combout\ = ( \BRG|registrador~314_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~314_q\,
	combout => \BRG|saidaB[20]~20_combout\);

\ULA|saida[20]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~57_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~314_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~314_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~314_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~314_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[20]~57_combout\);

\ULA|saida[20]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~58_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[20]~57_combout\ & ( (!\BRG|saidaA[20]~21_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[20]~57_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[20]~57_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[20]~21_combout\ & (!\BRG|saidaB[20]~20_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[20]~21_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[20]~57_combout\ & ( (\BRG|saidaA[20]~21_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[20]~20_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[20]~21_combout\,
	datab => \BRG|ALT_INV_saidaB[20]~20_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[20]~57_combout\,
	combout => \ULA|saida[20]~58_combout\);

\BRG|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~81_sumout\,
	asdata => \ULA|saida[20]~58_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~58_q\);

\BRG|registrador~1105\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1105_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~58_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~58_q\,
	combout => \BRG|registrador~1105_combout\);

\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( \BRG|saidaA[20]~21_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1105_combout\) # (\BRG|registrador~1083_combout\))))) ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( \BRG|saidaA[20]~21_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1105_combout\) # (\BRG|registrador~1083_combout\))))) ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1083_combout\,
	datad => \BRG|ALT_INV_saidaA[20]~21_combout\,
	dataf => \BRG|ALT_INV_registrador~1105_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

\BRG|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~81_sumout\,
	asdata => \ULA|saida[20]~58_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~314_q\);

\BRG|saidaA[20]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[20]~21_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~314_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~314_q\,
	combout => \BRG|saidaA[20]~21_combout\);

\BRG|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1084_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~315_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~315_q\,
	combout => \BRG|registrador~1084_combout\);

\BRG|saidaB[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[21]~21_combout\ = ( \BRG|registrador~315_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~315_q\,
	combout => \BRG|saidaB[21]~21_combout\);

\ULA|saida[21]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~60_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~315_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~315_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~315_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~315_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[21]~60_combout\);

\ULA|saida[21]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~61_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[21]~60_combout\ & ( (!\BRG|saidaA[21]~22_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[21]~60_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[21]~60_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[21]~22_combout\ & (!\BRG|saidaB[21]~21_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[21]~22_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[21]~60_combout\ & ( (\BRG|saidaA[21]~22_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[21]~21_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[21]~22_combout\,
	datab => \BRG|ALT_INV_saidaB[21]~21_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[21]~60_combout\,
	combout => \ULA|saida[21]~61_combout\);

\BRG|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~85_sumout\,
	asdata => \ULA|saida[21]~61_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~59_q\);

\BRG|registrador~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1106_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~59_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~59_q\,
	combout => \BRG|registrador~1106_combout\);

\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( \BRG|saidaA[21]~22_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1106_combout\) # (\BRG|registrador~1084_combout\))))) ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( \BRG|saidaA[21]~22_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1106_combout\) # (\BRG|registrador~1084_combout\))))) ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1084_combout\,
	datad => \BRG|ALT_INV_saidaA[21]~22_combout\,
	dataf => \BRG|ALT_INV_registrador~1106_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

\BRG|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~85_sumout\,
	asdata => \ULA|saida[21]~61_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~315_q\);

\BRG|saidaA[21]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[21]~22_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~315_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~315_q\,
	combout => \BRG|saidaA[21]~22_combout\);

\BRG|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1085_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~316_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~316_q\,
	combout => \BRG|registrador~1085_combout\);

\BRG|saidaB[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[22]~22_combout\ = ( \BRG|registrador~316_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~316_q\,
	combout => \BRG|saidaB[22]~22_combout\);

\ULA|saida[22]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~63_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~316_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~316_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~316_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~316_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[22]~63_combout\);

\ULA|saida[22]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~64_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[22]~63_combout\ & ( (!\BRG|saidaA[22]~23_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[22]~63_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[22]~63_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[22]~23_combout\ & (!\BRG|saidaB[22]~22_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[22]~23_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[22]~63_combout\ & ( (\BRG|saidaA[22]~23_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[22]~22_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[22]~23_combout\,
	datab => \BRG|ALT_INV_saidaB[22]~22_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[22]~63_combout\,
	combout => \ULA|saida[22]~64_combout\);

\BRG|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~89_sumout\,
	asdata => \ULA|saida[22]~64_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~60_q\);

\BRG|registrador~1107\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1107_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~60_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~60_q\,
	combout => \BRG|registrador~1107_combout\);

\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( \BRG|saidaA[22]~23_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1107_combout\) # (\BRG|registrador~1085_combout\))))) ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( \BRG|saidaA[22]~23_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1107_combout\) # (\BRG|registrador~1085_combout\))))) ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1085_combout\,
	datad => \BRG|ALT_INV_saidaA[22]~23_combout\,
	dataf => \BRG|ALT_INV_registrador~1107_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

\BRG|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~89_sumout\,
	asdata => \ULA|saida[22]~64_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~316_q\);

\BRG|saidaA[22]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[22]~23_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~316_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~316_q\,
	combout => \BRG|saidaA[22]~23_combout\);

\BRG|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1086_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~317_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~317_q\,
	combout => \BRG|registrador~1086_combout\);

\BRG|saidaB[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[23]~23_combout\ = ( \BRG|registrador~317_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~317_q\,
	combout => \BRG|saidaB[23]~23_combout\);

\ULA|saida[23]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~66_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~317_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~317_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~317_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~317_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[23]~66_combout\);

\ULA|saida[23]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~67_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[23]~66_combout\ & ( (!\BRG|saidaA[23]~24_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[23]~66_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[23]~66_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[23]~24_combout\ & (!\BRG|saidaB[23]~23_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[23]~24_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[23]~66_combout\ & ( (\BRG|saidaA[23]~24_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[23]~23_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[23]~24_combout\,
	datab => \BRG|ALT_INV_saidaB[23]~23_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[23]~66_combout\,
	combout => \ULA|saida[23]~67_combout\);

\BRG|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~93_sumout\,
	asdata => \ULA|saida[23]~67_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~61_q\);

\BRG|registrador~1108\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1108_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~61_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~61_q\,
	combout => \BRG|registrador~1108_combout\);

\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( \BRG|saidaA[23]~24_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1108_combout\) # (\BRG|registrador~1086_combout\))))) ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( \BRG|saidaA[23]~24_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1108_combout\) # (\BRG|registrador~1086_combout\))))) ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1086_combout\,
	datad => \BRG|ALT_INV_saidaA[23]~24_combout\,
	dataf => \BRG|ALT_INV_registrador~1108_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

\BRG|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~93_sumout\,
	asdata => \ULA|saida[23]~67_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~317_q\);

\BRG|saidaA[23]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[23]~24_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~317_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~317_q\,
	combout => \BRG|saidaA[23]~24_combout\);

\BRG|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1087_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & \BRG|registrador~318_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~318_q\,
	combout => \BRG|registrador~1087_combout\);

\BRG|saidaB[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[24]~24_combout\ = ( \BRG|registrador~318_q\ & ( (!\BRG|registrador~1062_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BRG|ALT_INV_registrador~318_q\,
	combout => \BRG|saidaB[24]~24_combout\);

\ULA|saida[24]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~69_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~318_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~318_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~318_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~318_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[24]~69_combout\);

\ULA|saida[24]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~70_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[24]~69_combout\ & ( (!\BRG|saidaA[24]~25_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[24]~69_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[24]~69_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[24]~25_combout\ & (!\BRG|saidaB[24]~24_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[24]~25_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[24]~69_combout\ & ( (\BRG|saidaA[24]~25_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[24]~24_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[24]~25_combout\,
	datab => \BRG|ALT_INV_saidaB[24]~24_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[24]~69_combout\,
	combout => \ULA|saida[24]~70_combout\);

\BRG|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~97_sumout\,
	asdata => \ULA|saida[24]~70_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~62_q\);

\BRG|registrador~1109\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1109_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|registrador~62_q\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BRG|ALT_INV_registrador~62_q\,
	combout => \BRG|registrador~1109_combout\);

\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( \BRG|saidaA[24]~25_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1109_combout\) # (\BRG|registrador~1087_combout\))))) ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( \BRG|saidaA[24]~25_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1109_combout\) # (\BRG|registrador~1087_combout\))))) ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_registrador~1087_combout\,
	datad => \BRG|ALT_INV_saidaA[24]~25_combout\,
	dataf => \BRG|ALT_INV_registrador~1109_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

\BRG|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~97_sumout\,
	asdata => \ULA|saida[24]~70_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~318_q\);

\BRG|saidaA[24]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[24]~25_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~318_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \BRG|ALT_INV_registrador~318_q\,
	combout => \BRG|saidaA[24]~25_combout\);

\BRG|saidaB[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[25]~25_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|saidaA[0]~0_combout\ & \BRG|registrador~319_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datac => \BRG|ALT_INV_registrador~319_q\,
	combout => \BRG|saidaB[25]~25_combout\);

\ULA|saida[25]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~72_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~319_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~319_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~319_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~319_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[25]~72_combout\);

\ULA|saida[25]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~73_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[25]~72_combout\ & ( (!\BRG|saidaA[25]~26_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[25]~72_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[25]~72_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[25]~26_combout\ & (!\BRG|saidaB[25]~25_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[25]~26_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[25]~72_combout\ & ( (\BRG|saidaA[25]~26_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[25]~25_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[25]~26_combout\,
	datab => \BRG|ALT_INV_saidaB[25]~25_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[25]~72_combout\,
	combout => \ULA|saida[25]~73_combout\);

\BRG|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~101_sumout\,
	asdata => \ULA|saida[25]~73_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~63_q\);

\BRG|registrador~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1110_combout\ = (\BRG|registrador~1062_combout\ & \BRG|registrador~63_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \BRG|ALT_INV_registrador~63_q\,
	combout => \BRG|registrador~1110_combout\);

\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( \BRG|saidaA[25]~26_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1110_combout\) # (\BRG|saidaB[25]~25_combout\))))) ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( \BRG|saidaA[25]~26_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1110_combout\) # (\BRG|saidaB[25]~25_combout\))))) ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_saidaB[25]~25_combout\,
	datad => \BRG|ALT_INV_saidaA[25]~26_combout\,
	dataf => \BRG|ALT_INV_registrador~1110_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

\BRG|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~101_sumout\,
	asdata => \ULA|saida[25]~73_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~319_q\);

\BRG|saidaA[25]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[25]~26_combout\ = (\BRG|saidaA[0]~0_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~319_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \BRG|ALT_INV_registrador~319_q\,
	combout => \BRG|saidaA[25]~26_combout\);

\BRG|saidaB[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[26]~26_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|saidaA[0]~0_combout\ & \BRG|registrador~320_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datac => \BRG|ALT_INV_registrador~320_q\,
	combout => \BRG|saidaB[26]~26_combout\);

\ULA|saida[26]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~75_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~320_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~320_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~320_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~320_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[26]~75_combout\);

\ULA|saida[26]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~76_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[26]~75_combout\ & ( (!\BRG|saidaA[26]~27_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[26]~75_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[26]~75_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[26]~27_combout\ & (!\BRG|saidaB[26]~26_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[26]~27_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[26]~75_combout\ & ( (\BRG|saidaA[26]~27_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[26]~26_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[26]~27_combout\,
	datab => \BRG|ALT_INV_saidaB[26]~26_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[26]~75_combout\,
	combout => \ULA|saida[26]~76_combout\);

\BRG|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~105_sumout\,
	asdata => \ULA|saida[26]~76_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~64_q\);

\BRG|registrador~1111\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1111_combout\ = (\BRG|registrador~1062_combout\ & \BRG|registrador~64_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \BRG|ALT_INV_registrador~64_q\,
	combout => \BRG|registrador~1111_combout\);

\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( \BRG|saidaA[26]~27_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1111_combout\) # (\BRG|saidaB[26]~26_combout\))))) ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( \BRG|saidaA[26]~27_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1111_combout\) # (\BRG|saidaB[26]~26_combout\))))) ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_saidaB[26]~26_combout\,
	datad => \BRG|ALT_INV_saidaA[26]~27_combout\,
	dataf => \BRG|ALT_INV_registrador~1111_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

\BRG|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~105_sumout\,
	asdata => \ULA|saida[26]~76_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~320_q\);

\BRG|saidaA[26]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[26]~27_combout\ = (\BRG|saidaA[0]~0_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~320_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \BRG|ALT_INV_registrador~320_q\,
	combout => \BRG|saidaA[26]~27_combout\);

\BRG|saidaB[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[27]~27_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|saidaA[0]~0_combout\ & \BRG|registrador~321_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datac => \BRG|ALT_INV_registrador~321_q\,
	combout => \BRG|saidaB[27]~27_combout\);

\ULA|saida[27]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~78_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~321_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~321_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~321_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~321_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[27]~78_combout\);

\ULA|saida[27]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~79_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[27]~78_combout\ & ( (!\BRG|saidaA[27]~28_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[27]~78_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[27]~78_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[27]~28_combout\ & (!\BRG|saidaB[27]~27_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[27]~28_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[27]~78_combout\ & ( (\BRG|saidaA[27]~28_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[27]~27_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[27]~28_combout\,
	datab => \BRG|ALT_INV_saidaB[27]~27_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[27]~78_combout\,
	combout => \ULA|saida[27]~79_combout\);

\BRG|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~109_sumout\,
	asdata => \ULA|saida[27]~79_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~65_q\);

\BRG|registrador~1112\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1112_combout\ = (\BRG|registrador~1062_combout\ & \BRG|registrador~65_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \BRG|ALT_INV_registrador~65_q\,
	combout => \BRG|registrador~1112_combout\);

\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( \BRG|saidaA[27]~28_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1112_combout\) # (\BRG|saidaB[27]~27_combout\))))) ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( \BRG|saidaA[27]~28_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1112_combout\) # (\BRG|saidaB[27]~27_combout\))))) ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_saidaB[27]~27_combout\,
	datad => \BRG|ALT_INV_saidaA[27]~28_combout\,
	dataf => \BRG|ALT_INV_registrador~1112_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

\BRG|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~109_sumout\,
	asdata => \ULA|saida[27]~79_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~321_q\);

\BRG|saidaA[27]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[27]~28_combout\ = (\BRG|saidaA[0]~0_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~321_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \BRG|ALT_INV_registrador~321_q\,
	combout => \BRG|saidaA[27]~28_combout\);

\BRG|saidaB[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[28]~28_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|saidaA[0]~0_combout\ & \BRG|registrador~322_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datac => \BRG|ALT_INV_registrador~322_q\,
	combout => \BRG|saidaB[28]~28_combout\);

\ULA|saida[28]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~81_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~322_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~322_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~322_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~322_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[28]~81_combout\);

\ULA|saida[28]~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~82_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[28]~81_combout\ & ( (!\BRG|saidaA[28]~29_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[28]~81_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[28]~81_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[28]~29_combout\ & (!\BRG|saidaB[28]~28_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[28]~29_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[28]~81_combout\ & ( (\BRG|saidaA[28]~29_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[28]~28_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[28]~29_combout\,
	datab => \BRG|ALT_INV_saidaB[28]~28_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[28]~81_combout\,
	combout => \ULA|saida[28]~82_combout\);

\BRG|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~113_sumout\,
	asdata => \ULA|saida[28]~82_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~66_q\);

\BRG|registrador~1113\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1113_combout\ = (\BRG|registrador~1062_combout\ & \BRG|registrador~66_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \BRG|ALT_INV_registrador~66_q\,
	combout => \BRG|registrador~1113_combout\);

\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( \BRG|saidaA[28]~29_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1113_combout\) # (\BRG|saidaB[28]~28_combout\))))) ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( \BRG|saidaA[28]~29_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1113_combout\) # (\BRG|saidaB[28]~28_combout\))))) ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_saidaB[28]~28_combout\,
	datad => \BRG|ALT_INV_saidaA[28]~29_combout\,
	dataf => \BRG|ALT_INV_registrador~1113_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

\BRG|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~113_sumout\,
	asdata => \ULA|saida[28]~82_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~322_q\);

\BRG|saidaA[28]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[28]~29_combout\ = (\BRG|saidaA[0]~0_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~322_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \BRG|ALT_INV_registrador~322_q\,
	combout => \BRG|saidaA[28]~29_combout\);

\BRG|saidaB[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[29]~29_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|saidaA[0]~0_combout\ & \BRG|registrador~323_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datac => \BRG|ALT_INV_registrador~323_q\,
	combout => \BRG|saidaB[29]~29_combout\);

\ULA|saida[29]~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~84_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~323_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~323_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~323_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~323_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[29]~84_combout\);

\ULA|saida[29]~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~85_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[29]~84_combout\ & ( (!\BRG|saidaA[29]~30_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[29]~84_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[29]~84_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[29]~30_combout\ & (!\BRG|saidaB[29]~29_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[29]~30_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[29]~84_combout\ & ( (\BRG|saidaA[29]~30_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[29]~29_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[29]~30_combout\,
	datab => \BRG|ALT_INV_saidaB[29]~29_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[29]~84_combout\,
	combout => \ULA|saida[29]~85_combout\);

\BRG|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~117_sumout\,
	asdata => \ULA|saida[29]~85_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~67_q\);

\BRG|registrador~1114\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1114_combout\ = (\BRG|registrador~1062_combout\ & \BRG|registrador~67_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \BRG|ALT_INV_registrador~67_q\,
	combout => \BRG|registrador~1114_combout\);

\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( \BRG|saidaA[29]~30_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1114_combout\) # (\BRG|saidaB[29]~29_combout\))))) ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( \BRG|saidaA[29]~30_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1114_combout\) # (\BRG|saidaB[29]~29_combout\))))) ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_saidaB[29]~29_combout\,
	datad => \BRG|ALT_INV_saidaA[29]~30_combout\,
	dataf => \BRG|ALT_INV_registrador~1114_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

\BRG|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~117_sumout\,
	asdata => \ULA|saida[29]~85_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~323_q\);

\BRG|saidaA[29]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[29]~30_combout\ = (\BRG|saidaA[0]~0_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~323_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \BRG|ALT_INV_registrador~323_q\,
	combout => \BRG|saidaA[29]~30_combout\);

\BRG|saidaB[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[30]~30_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|saidaA[0]~0_combout\ & \BRG|registrador~324_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datac => \BRG|ALT_INV_registrador~324_q\,
	combout => \BRG|saidaB[30]~30_combout\);

\ULA|saida[30]~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~87_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~324_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~324_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~324_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~324_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[30]~87_combout\);

\ULA|saida[30]~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~88_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[30]~87_combout\ & ( (!\BRG|saidaA[30]~31_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[30]~87_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[30]~87_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[30]~31_combout\ & (!\BRG|saidaB[30]~30_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[30]~31_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[30]~87_combout\ & ( (\BRG|saidaA[30]~31_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[30]~30_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[30]~31_combout\,
	datab => \BRG|ALT_INV_saidaB[30]~30_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[30]~87_combout\,
	combout => \ULA|saida[30]~88_combout\);

\BRG|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~121_sumout\,
	asdata => \ULA|saida[30]~88_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~68_q\);

\BRG|registrador~1115\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1115_combout\ = (\BRG|registrador~1062_combout\ & \BRG|registrador~68_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \BRG|ALT_INV_registrador~68_q\,
	combout => \BRG|registrador~1115_combout\);

\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( \BRG|saidaA[30]~31_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1115_combout\) # (\BRG|saidaB[30]~30_combout\))))) ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( \BRG|saidaA[30]~31_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1115_combout\) # (\BRG|saidaB[30]~30_combout\))))) ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_saidaB[30]~30_combout\,
	datad => \BRG|ALT_INV_saidaA[30]~31_combout\,
	dataf => \BRG|ALT_INV_registrador~1115_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

\BRG|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~121_sumout\,
	asdata => \ULA|saida[30]~88_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~324_q\);

\BRG|saidaA[30]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[30]~31_combout\ = (\BRG|saidaA[0]~0_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~324_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \BRG|ALT_INV_registrador~324_q\,
	combout => \BRG|saidaA[30]~31_combout\);

\BRG|saidaB[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[31]~31_combout\ = (!\ROM|memROM~0_combout\ & (\BRG|saidaA[0]~0_combout\ & \BRG|registrador~325_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datac => \BRG|ALT_INV_registrador~325_q\,
	combout => \BRG|saidaB[31]~31_combout\);

\ULA|saida[31]~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~90_combout\ = ( \ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( (\BRG|registrador~325_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( !\ula_op[1]~input_o\ & ( \ULA|saida[2]~93_combout\ & ( 
-- (\BRG|registrador~325_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ula_op[1]~input_o\ & ( !\ULA|saida[2]~93_combout\ & ( (\BRG|registrador~325_q\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & 
-- \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~325_q\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ALT_INV_ula_op[1]~input_o\,
	dataf => \ULA|ALT_INV_saida[2]~93_combout\,
	combout => \ULA|saida[31]~90_combout\);

\ULA|saida[31]~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~91_combout\ = ( \ula_op[2]~input_o\ & ( \ULA|saida[31]~90_combout\ & ( (!\BRG|saidaA[31]~32_combout\) # ((!\ula_op[0]~input_o\) # (\ula_op[1]~input_o\)) ) ) ) # ( !\ula_op[2]~input_o\ & ( \ULA|saida[31]~90_combout\ ) ) # ( 
-- \ula_op[2]~input_o\ & ( !\ULA|saida[31]~90_combout\ & ( (!\ula_op[0]~input_o\ & (\BRG|saidaA[31]~32_combout\ & (!\BRG|saidaB[31]~31_combout\ & !\ula_op[1]~input_o\))) # (\ula_op[0]~input_o\ & (!\BRG|saidaA[31]~32_combout\ $ (((\ula_op[1]~input_o\))))) ) ) 
-- ) # ( !\ula_op[2]~input_o\ & ( !\ULA|saida[31]~90_combout\ & ( (\BRG|saidaA[31]~32_combout\ & ((!\ula_op[1]~input_o\) # ((!\BRG|saidaB[31]~31_combout\ & !\ula_op[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010000001010010111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[31]~32_combout\,
	datab => \BRG|ALT_INV_saidaB[31]~31_combout\,
	datac => \ALT_INV_ula_op[1]~input_o\,
	datad => \ALT_INV_ula_op[0]~input_o\,
	datae => \ALT_INV_ula_op[2]~input_o\,
	dataf => \ULA|ALT_INV_saida[31]~90_combout\,
	combout => \ULA|saida[31]~91_combout\);

\BRG|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~125_sumout\,
	asdata => \ULA|saida[31]~91_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~69_q\);

\BRG|registrador~1116\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|registrador~1116_combout\ = (\BRG|registrador~1062_combout\ & \BRG|registrador~69_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_registrador~1062_combout\,
	datab => \BRG|ALT_INV_registrador~69_q\,
	combout => \BRG|registrador~1116_combout\);

\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( \BRG|saidaA[31]~32_combout\ ) + ( !\ULA|Equal7~1_combout\ $ (((!\BRG|registrador~1062_combout\ & ((\BRG|registrador~1116_combout\) # (\BRG|saidaB[31]~31_combout\))))) ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~1_combout\,
	datab => \BRG|ALT_INV_registrador~1062_combout\,
	datac => \BRG|ALT_INV_saidaB[31]~31_combout\,
	datad => \BRG|ALT_INV_saidaA[31]~32_combout\,
	dataf => \BRG|ALT_INV_registrador~1116_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

\BRG|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~125_sumout\,
	asdata => \ULA|saida[31]~91_combout\,
	sload => \ULA|Equal7~0_combout\,
	ena => \BRG|registrador~1088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~325_q\);

\BRG|saidaA[31]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaA[31]~32_combout\ = (\BRG|saidaA[0]~0_combout\ & (!\ROM|memROM~5_combout\ & \BRG|registrador~325_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BRG|ALT_INV_saidaA[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \BRG|ALT_INV_registrador~325_q\,
	combout => \BRG|saidaA[31]~32_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (\ROM|memROM~2_combout\ & \ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

\ULA|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~1_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~1_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[0]~0_combout\,
	datac => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \ULA|saida[0]~1_combout\);

\ULA|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~3_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~5_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[1]~2_combout\,
	datac => \ULA|ALT_INV_Add0~5_sumout\,
	combout => \ULA|saida[1]~3_combout\);

\ULA|saida[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~6_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~9_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[2]~5_combout\,
	datac => \ULA|ALT_INV_Add0~9_sumout\,
	combout => \ULA|saida[2]~6_combout\);

\ULA|saida[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~8_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~13_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[3]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[3]~7_combout\,
	datac => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \ULA|saida[3]~8_combout\);

\ULA|saida[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~11_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~17_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[4]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[4]~10_combout\,
	datac => \ULA|ALT_INV_Add0~17_sumout\,
	combout => \ULA|saida[4]~11_combout\);

\ULA|saida[5]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~14_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~21_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[5]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[5]~13_combout\,
	datac => \ULA|ALT_INV_Add0~21_sumout\,
	combout => \ULA|saida[5]~14_combout\);

\ULA|saida[6]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~17_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~25_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[6]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[6]~16_combout\,
	datac => \ULA|ALT_INV_Add0~25_sumout\,
	combout => \ULA|saida[6]~17_combout\);

\ULA|saida[7]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~20_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~29_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[7]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[7]~19_combout\,
	datac => \ULA|ALT_INV_Add0~29_sumout\,
	combout => \ULA|saida[7]~20_combout\);

\ULA|saida[8]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~23_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~33_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[8]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[8]~22_combout\,
	datac => \ULA|ALT_INV_Add0~33_sumout\,
	combout => \ULA|saida[8]~23_combout\);

\ULA|saida[9]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~26_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~37_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[9]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[9]~25_combout\,
	datac => \ULA|ALT_INV_Add0~37_sumout\,
	combout => \ULA|saida[9]~26_combout\);

\ULA|saida[10]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~29_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~41_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[10]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[10]~28_combout\,
	datac => \ULA|ALT_INV_Add0~41_sumout\,
	combout => \ULA|saida[10]~29_combout\);

\ULA|saida[11]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~32_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~45_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[11]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[11]~31_combout\,
	datac => \ULA|ALT_INV_Add0~45_sumout\,
	combout => \ULA|saida[11]~32_combout\);

\ULA|saida[12]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~35_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~49_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[12]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[12]~34_combout\,
	datac => \ULA|ALT_INV_Add0~49_sumout\,
	combout => \ULA|saida[12]~35_combout\);

\ULA|saida[13]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~38_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~53_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[13]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[13]~37_combout\,
	datac => \ULA|ALT_INV_Add0~53_sumout\,
	combout => \ULA|saida[13]~38_combout\);

\ULA|saida[14]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~41_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~57_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[14]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[14]~40_combout\,
	datac => \ULA|ALT_INV_Add0~57_sumout\,
	combout => \ULA|saida[14]~41_combout\);

\ULA|saida[15]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~44_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~61_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[15]~43_combout\,
	datac => \ULA|ALT_INV_Add0~61_sumout\,
	combout => \ULA|saida[15]~44_combout\);

\ULA|saida[16]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~47_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~65_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[16]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[16]~46_combout\,
	datac => \ULA|ALT_INV_Add0~65_sumout\,
	combout => \ULA|saida[16]~47_combout\);

\ULA|saida[17]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~50_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~69_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[17]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[17]~49_combout\,
	datac => \ULA|ALT_INV_Add0~69_sumout\,
	combout => \ULA|saida[17]~50_combout\);

\ULA|saida[18]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~53_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~73_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[18]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[18]~52_combout\,
	datac => \ULA|ALT_INV_Add0~73_sumout\,
	combout => \ULA|saida[18]~53_combout\);

\ULA|saida[19]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~56_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~77_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[19]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[19]~55_combout\,
	datac => \ULA|ALT_INV_Add0~77_sumout\,
	combout => \ULA|saida[19]~56_combout\);

\ULA|saida[20]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~59_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~81_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[20]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[20]~58_combout\,
	datac => \ULA|ALT_INV_Add0~81_sumout\,
	combout => \ULA|saida[20]~59_combout\);

\ULA|saida[21]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~62_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~85_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[21]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[21]~61_combout\,
	datac => \ULA|ALT_INV_Add0~85_sumout\,
	combout => \ULA|saida[21]~62_combout\);

\ULA|saida[22]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~65_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~89_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[22]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[22]~64_combout\,
	datac => \ULA|ALT_INV_Add0~89_sumout\,
	combout => \ULA|saida[22]~65_combout\);

\ULA|saida[23]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~68_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~93_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[23]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[23]~67_combout\,
	datac => \ULA|ALT_INV_Add0~93_sumout\,
	combout => \ULA|saida[23]~68_combout\);

\ULA|saida[24]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~71_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~97_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[24]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[24]~70_combout\,
	datac => \ULA|ALT_INV_Add0~97_sumout\,
	combout => \ULA|saida[24]~71_combout\);

\ULA|saida[25]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~74_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~101_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[25]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[25]~73_combout\,
	datac => \ULA|ALT_INV_Add0~101_sumout\,
	combout => \ULA|saida[25]~74_combout\);

\ULA|saida[26]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~77_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~105_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[26]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[26]~76_combout\,
	datac => \ULA|ALT_INV_Add0~105_sumout\,
	combout => \ULA|saida[26]~77_combout\);

\ULA|saida[27]~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~80_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~109_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[27]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[27]~79_combout\,
	datac => \ULA|ALT_INV_Add0~109_sumout\,
	combout => \ULA|saida[27]~80_combout\);

\ULA|saida[28]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~83_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~113_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[28]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[28]~82_combout\,
	datac => \ULA|ALT_INV_Add0~113_sumout\,
	combout => \ULA|saida[28]~83_combout\);

\ULA|saida[29]~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~86_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~117_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[29]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[29]~85_combout\,
	datac => \ULA|ALT_INV_Add0~117_sumout\,
	combout => \ULA|saida[29]~86_combout\);

\ULA|saida[30]~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~89_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~121_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[30]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[30]~88_combout\,
	datac => \ULA|ALT_INV_Add0~121_sumout\,
	combout => \ULA|saida[30]~89_combout\);

\ULA|saida[31]~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~92_combout\ = (!\ULA|Equal7~0_combout\ & ((\ULA|Add0~125_sumout\))) # (\ULA|Equal7~0_combout\ & (\ULA|saida[31]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_saida[31]~91_combout\,
	datac => \ULA|ALT_INV_Add0~125_sumout\,
	combout => \ULA|saida[31]~92_combout\);

ww_opcode_out(0) <= \opcode_out[0]~output_o\;

ww_opcode_out(1) <= \opcode_out[1]~output_o\;

ww_opcode_out(2) <= \opcode_out[2]~output_o\;

ww_opcode_out(3) <= \opcode_out[3]~output_o\;

ww_opcode_out(4) <= \opcode_out[4]~output_o\;

ww_opcode_out(5) <= \opcode_out[5]~output_o\;

ww_funct_out(0) <= \funct_out[0]~output_o\;

ww_funct_out(1) <= \funct_out[1]~output_o\;

ww_funct_out(2) <= \funct_out[2]~output_o\;

ww_funct_out(3) <= \funct_out[3]~output_o\;

ww_funct_out(4) <= \funct_out[4]~output_o\;

ww_funct_out(5) <= \funct_out[5]~output_o\;

ww_debug(0) <= \debug[0]~output_o\;

ww_debug(1) <= \debug[1]~output_o\;

ww_debug(2) <= \debug[2]~output_o\;

ww_debug(3) <= \debug[3]~output_o\;

ww_debug(4) <= \debug[4]~output_o\;

ww_debug(5) <= \debug[5]~output_o\;

ww_debug(6) <= \debug[6]~output_o\;

ww_debug(7) <= \debug[7]~output_o\;

ww_debug(8) <= \debug[8]~output_o\;

ww_debug(9) <= \debug[9]~output_o\;

ww_debug(10) <= \debug[10]~output_o\;

ww_debug(11) <= \debug[11]~output_o\;

ww_debug(12) <= \debug[12]~output_o\;

ww_debug(13) <= \debug[13]~output_o\;

ww_debug(14) <= \debug[14]~output_o\;

ww_debug(15) <= \debug[15]~output_o\;

ww_debug(16) <= \debug[16]~output_o\;

ww_debug(17) <= \debug[17]~output_o\;

ww_debug(18) <= \debug[18]~output_o\;

ww_debug(19) <= \debug[19]~output_o\;

ww_debug(20) <= \debug[20]~output_o\;

ww_debug(21) <= \debug[21]~output_o\;

ww_debug(22) <= \debug[22]~output_o\;

ww_debug(23) <= \debug[23]~output_o\;

ww_debug(24) <= \debug[24]~output_o\;

ww_debug(25) <= \debug[25]~output_o\;

ww_debug(26) <= \debug[26]~output_o\;

ww_debug(27) <= \debug[27]~output_o\;

ww_debug(28) <= \debug[28]~output_o\;

ww_debug(29) <= \debug[29]~output_o\;

ww_debug(30) <= \debug[30]~output_o\;

ww_debug(31) <= \debug[31]~output_o\;

ww_debug2(0) <= \debug2[0]~output_o\;

ww_debug2(1) <= \debug2[1]~output_o\;

ww_debug2(2) <= \debug2[2]~output_o\;

ww_debug2(3) <= \debug2[3]~output_o\;

ww_debug2(4) <= \debug2[4]~output_o\;

ww_debug2(5) <= \debug2[5]~output_o\;

ww_debug2(6) <= \debug2[6]~output_o\;

ww_debug2(7) <= \debug2[7]~output_o\;

ww_debug2(8) <= \debug2[8]~output_o\;

ww_debug2(9) <= \debug2[9]~output_o\;

ww_debug2(10) <= \debug2[10]~output_o\;

ww_debug2(11) <= \debug2[11]~output_o\;

ww_debug2(12) <= \debug2[12]~output_o\;

ww_debug2(13) <= \debug2[13]~output_o\;

ww_debug2(14) <= \debug2[14]~output_o\;

ww_debug2(15) <= \debug2[15]~output_o\;

ww_debug2(16) <= \debug2[16]~output_o\;

ww_debug2(17) <= \debug2[17]~output_o\;

ww_debug2(18) <= \debug2[18]~output_o\;

ww_debug2(19) <= \debug2[19]~output_o\;

ww_debug2(20) <= \debug2[20]~output_o\;

ww_debug2(21) <= \debug2[21]~output_o\;

ww_debug2(22) <= \debug2[22]~output_o\;

ww_debug2(23) <= \debug2[23]~output_o\;

ww_debug2(24) <= \debug2[24]~output_o\;

ww_debug2(25) <= \debug2[25]~output_o\;

ww_debug2(26) <= \debug2[26]~output_o\;

ww_debug2(27) <= \debug2[27]~output_o\;

ww_debug2(28) <= \debug2[28]~output_o\;

ww_debug2(29) <= \debug2[29]~output_o\;

ww_debug2(30) <= \debug2[30]~output_o\;

ww_debug2(31) <= \debug2[31]~output_o\;

ww_debug3(0) <= \debug3[0]~output_o\;

ww_debug3(1) <= \debug3[1]~output_o\;

ww_debug3(2) <= \debug3[2]~output_o\;

ww_debug3(3) <= \debug3[3]~output_o\;

ww_debug3(4) <= \debug3[4]~output_o\;

ww_debug4(0) <= \debug4[0]~output_o\;

ww_debug4(1) <= \debug4[1]~output_o\;

ww_debug4(2) <= \debug4[2]~output_o\;

ww_debug4(3) <= \debug4[3]~output_o\;

ww_debug4(4) <= \debug4[4]~output_o\;

ww_ULA_out(0) <= \ULA_out[0]~output_o\;

ww_ULA_out(1) <= \ULA_out[1]~output_o\;

ww_ULA_out(2) <= \ULA_out[2]~output_o\;

ww_ULA_out(3) <= \ULA_out[3]~output_o\;

ww_ULA_out(4) <= \ULA_out[4]~output_o\;

ww_ULA_out(5) <= \ULA_out[5]~output_o\;

ww_ULA_out(6) <= \ULA_out[6]~output_o\;

ww_ULA_out(7) <= \ULA_out[7]~output_o\;

ww_ULA_out(8) <= \ULA_out[8]~output_o\;

ww_ULA_out(9) <= \ULA_out[9]~output_o\;

ww_ULA_out(10) <= \ULA_out[10]~output_o\;

ww_ULA_out(11) <= \ULA_out[11]~output_o\;

ww_ULA_out(12) <= \ULA_out[12]~output_o\;

ww_ULA_out(13) <= \ULA_out[13]~output_o\;

ww_ULA_out(14) <= \ULA_out[14]~output_o\;

ww_ULA_out(15) <= \ULA_out[15]~output_o\;

ww_ULA_out(16) <= \ULA_out[16]~output_o\;

ww_ULA_out(17) <= \ULA_out[17]~output_o\;

ww_ULA_out(18) <= \ULA_out[18]~output_o\;

ww_ULA_out(19) <= \ULA_out[19]~output_o\;

ww_ULA_out(20) <= \ULA_out[20]~output_o\;

ww_ULA_out(21) <= \ULA_out[21]~output_o\;

ww_ULA_out(22) <= \ULA_out[22]~output_o\;

ww_ULA_out(23) <= \ULA_out[23]~output_o\;

ww_ULA_out(24) <= \ULA_out[24]~output_o\;

ww_ULA_out(25) <= \ULA_out[25]~output_o\;

ww_ULA_out(26) <= \ULA_out[26]~output_o\;

ww_ULA_out(27) <= \ULA_out[27]~output_o\;

ww_ULA_out(28) <= \ULA_out[28]~output_o\;

ww_ULA_out(29) <= \ULA_out[29]~output_o\;

ww_ULA_out(30) <= \ULA_out[30]~output_o\;

ww_ULA_out(31) <= \ULA_out[31]~output_o\;
END structure;


