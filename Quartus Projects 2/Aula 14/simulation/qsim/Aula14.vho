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

-- DATE "11/03/2021 02:32:29"

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

ENTITY 	Aula14 IS
    PORT (
	CLOCK_50 : IN std_logic;
	opcode_out : OUT std_logic_vector(5 DOWNTO 0);
	funct_out : OUT std_logic_vector(5 DOWNTO 0);
	debug : OUT std_logic_vector(31 DOWNTO 0);
	debug2 : OUT std_logic_vector(31 DOWNTO 0);
	debug3 : OUT std_logic_vector(31 DOWNTO 0);
	debug4 : OUT std_logic_vector(4 DOWNTO 0);
	ULA_out : OUT std_logic_vector(31 DOWNTO 0)
	);
END Aula14;

ARCHITECTURE structure OF Aula14 IS
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
SIGNAL ww_opcode_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_funct_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_debug : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug3 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug4 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ULA_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \debug3[0]~output_o\ : std_logic;
SIGNAL \debug3[1]~output_o\ : std_logic;
SIGNAL \debug3[2]~output_o\ : std_logic;
SIGNAL \debug3[3]~output_o\ : std_logic;
SIGNAL \debug3[4]~output_o\ : std_logic;
SIGNAL \debug3[5]~output_o\ : std_logic;
SIGNAL \debug3[6]~output_o\ : std_logic;
SIGNAL \debug3[7]~output_o\ : std_logic;
SIGNAL \debug3[8]~output_o\ : std_logic;
SIGNAL \debug3[9]~output_o\ : std_logic;
SIGNAL \debug3[10]~output_o\ : std_logic;
SIGNAL \debug3[11]~output_o\ : std_logic;
SIGNAL \debug3[12]~output_o\ : std_logic;
SIGNAL \debug3[13]~output_o\ : std_logic;
SIGNAL \debug3[14]~output_o\ : std_logic;
SIGNAL \debug3[15]~output_o\ : std_logic;
SIGNAL \debug3[16]~output_o\ : std_logic;
SIGNAL \debug3[17]~output_o\ : std_logic;
SIGNAL \debug3[18]~output_o\ : std_logic;
SIGNAL \debug3[19]~output_o\ : std_logic;
SIGNAL \debug3[20]~output_o\ : std_logic;
SIGNAL \debug3[21]~output_o\ : std_logic;
SIGNAL \debug3[22]~output_o\ : std_logic;
SIGNAL \debug3[23]~output_o\ : std_logic;
SIGNAL \debug3[24]~output_o\ : std_logic;
SIGNAL \debug3[25]~output_o\ : std_logic;
SIGNAL \debug3[26]~output_o\ : std_logic;
SIGNAL \debug3[27]~output_o\ : std_logic;
SIGNAL \debug3[28]~output_o\ : std_logic;
SIGNAL \debug3[29]~output_o\ : std_logic;
SIGNAL \debug3[30]~output_o\ : std_logic;
SIGNAL \debug3[31]~output_o\ : std_logic;
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
SIGNAL \SOMC|Add0~17_sumout\ : std_logic;
SIGNAL \SOMC|Add0~18\ : std_logic;
SIGNAL \SOMC|Add0~21_sumout\ : std_logic;
SIGNAL \SOMC|Add0~22\ : std_logic;
SIGNAL \SOMC|Add0~13_sumout\ : std_logic;
SIGNAL \SOMC|Add0~14\ : std_logic;
SIGNAL \SOMC|Add0~9_sumout\ : std_logic;
SIGNAL \SOMC|Add0~10\ : std_logic;
SIGNAL \SOMC|Add0~5_sumout\ : std_logic;
SIGNAL \SOMC|Add0~6\ : std_logic;
SIGNAL \SOMC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \DEC|Equal1~0_combout\ : std_logic;
SIGNAL \RAM|Dado_out[0]~32_combout\ : std_logic;
SIGNAL \BRG|registrador~358_q\ : std_logic;
SIGNAL \BRG|saidaB[0]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \RAM|memRAM~39_q\ : std_logic;
SIGNAL \RAM|Dado_out[1]~33_combout\ : std_logic;
SIGNAL \BRG|registrador~359_q\ : std_logic;
SIGNAL \BRG|saidaB[1]~1_combout\ : std_logic;
SIGNAL \RAM|memRAM~40_q\ : std_logic;
SIGNAL \RAM|Dado_out[2]~34_combout\ : std_logic;
SIGNAL \BRG|registrador~360_q\ : std_logic;
SIGNAL \BRG|saidaB[2]~2_combout\ : std_logic;
SIGNAL \RAM|memRAM~41_q\ : std_logic;
SIGNAL \RAM|Dado_out[3]~35_combout\ : std_logic;
SIGNAL \BRG|registrador~361_q\ : std_logic;
SIGNAL \BRG|saidaB[3]~3_combout\ : std_logic;
SIGNAL \RAM|memRAM~42_q\ : std_logic;
SIGNAL \RAM|Dado_out[4]~36_combout\ : std_logic;
SIGNAL \BRG|registrador~362_q\ : std_logic;
SIGNAL \BRG|saidaB[4]~4_combout\ : std_logic;
SIGNAL \RAM|memRAM~43_q\ : std_logic;
SIGNAL \RAM|Dado_out[5]~37_combout\ : std_logic;
SIGNAL \BRG|registrador~363_q\ : std_logic;
SIGNAL \BRG|saidaB[5]~5_combout\ : std_logic;
SIGNAL \RAM|memRAM~44_q\ : std_logic;
SIGNAL \RAM|Dado_out[6]~38_combout\ : std_logic;
SIGNAL \BRG|registrador~364_q\ : std_logic;
SIGNAL \BRG|saidaB[6]~6_combout\ : std_logic;
SIGNAL \RAM|memRAM~45_q\ : std_logic;
SIGNAL \RAM|Dado_out[7]~39_combout\ : std_logic;
SIGNAL \BRG|registrador~365_q\ : std_logic;
SIGNAL \BRG|saidaB[7]~7_combout\ : std_logic;
SIGNAL \RAM|memRAM~46_q\ : std_logic;
SIGNAL \RAM|Dado_out[8]~40_combout\ : std_logic;
SIGNAL \BRG|registrador~366_q\ : std_logic;
SIGNAL \BRG|saidaB[8]~8_combout\ : std_logic;
SIGNAL \RAM|memRAM~47_q\ : std_logic;
SIGNAL \RAM|Dado_out[9]~41_combout\ : std_logic;
SIGNAL \BRG|registrador~367_q\ : std_logic;
SIGNAL \BRG|saidaB[9]~9_combout\ : std_logic;
SIGNAL \RAM|memRAM~48_q\ : std_logic;
SIGNAL \RAM|Dado_out[10]~42_combout\ : std_logic;
SIGNAL \BRG|registrador~368_q\ : std_logic;
SIGNAL \BRG|saidaB[10]~10_combout\ : std_logic;
SIGNAL \RAM|memRAM~49_q\ : std_logic;
SIGNAL \RAM|Dado_out[11]~43_combout\ : std_logic;
SIGNAL \BRG|registrador~369_q\ : std_logic;
SIGNAL \BRG|saidaB[11]~11_combout\ : std_logic;
SIGNAL \RAM|memRAM~50_q\ : std_logic;
SIGNAL \RAM|Dado_out[12]~44_combout\ : std_logic;
SIGNAL \BRG|registrador~370_q\ : std_logic;
SIGNAL \BRG|saidaB[12]~12_combout\ : std_logic;
SIGNAL \RAM|memRAM~51_q\ : std_logic;
SIGNAL \RAM|Dado_out[13]~45_combout\ : std_logic;
SIGNAL \BRG|registrador~371_q\ : std_logic;
SIGNAL \BRG|saidaB[13]~13_combout\ : std_logic;
SIGNAL \RAM|memRAM~52_q\ : std_logic;
SIGNAL \RAM|Dado_out[14]~46_combout\ : std_logic;
SIGNAL \BRG|registrador~372_q\ : std_logic;
SIGNAL \BRG|saidaB[14]~14_combout\ : std_logic;
SIGNAL \RAM|memRAM~53_q\ : std_logic;
SIGNAL \RAM|Dado_out[15]~47_combout\ : std_logic;
SIGNAL \BRG|registrador~373_q\ : std_logic;
SIGNAL \BRG|saidaB[15]~15_combout\ : std_logic;
SIGNAL \RAM|memRAM~54_q\ : std_logic;
SIGNAL \RAM|Dado_out[16]~48_combout\ : std_logic;
SIGNAL \BRG|registrador~374_q\ : std_logic;
SIGNAL \BRG|saidaB[16]~16_combout\ : std_logic;
SIGNAL \RAM|memRAM~55_q\ : std_logic;
SIGNAL \RAM|Dado_out[17]~49_combout\ : std_logic;
SIGNAL \BRG|registrador~375_q\ : std_logic;
SIGNAL \BRG|saidaB[17]~17_combout\ : std_logic;
SIGNAL \RAM|memRAM~56_q\ : std_logic;
SIGNAL \RAM|Dado_out[18]~50_combout\ : std_logic;
SIGNAL \BRG|registrador~376_q\ : std_logic;
SIGNAL \BRG|saidaB[18]~18_combout\ : std_logic;
SIGNAL \RAM|memRAM~57_q\ : std_logic;
SIGNAL \RAM|Dado_out[19]~51_combout\ : std_logic;
SIGNAL \BRG|registrador~377_q\ : std_logic;
SIGNAL \BRG|saidaB[19]~19_combout\ : std_logic;
SIGNAL \RAM|memRAM~58_q\ : std_logic;
SIGNAL \RAM|Dado_out[20]~52_combout\ : std_logic;
SIGNAL \BRG|registrador~378_q\ : std_logic;
SIGNAL \BRG|saidaB[20]~20_combout\ : std_logic;
SIGNAL \RAM|memRAM~59_q\ : std_logic;
SIGNAL \RAM|Dado_out[21]~53_combout\ : std_logic;
SIGNAL \BRG|registrador~379_q\ : std_logic;
SIGNAL \BRG|saidaB[21]~21_combout\ : std_logic;
SIGNAL \RAM|memRAM~60_q\ : std_logic;
SIGNAL \RAM|Dado_out[22]~54_combout\ : std_logic;
SIGNAL \BRG|registrador~380_q\ : std_logic;
SIGNAL \BRG|saidaB[22]~22_combout\ : std_logic;
SIGNAL \RAM|memRAM~61_q\ : std_logic;
SIGNAL \RAM|Dado_out[23]~55_combout\ : std_logic;
SIGNAL \BRG|registrador~381_q\ : std_logic;
SIGNAL \BRG|saidaB[23]~23_combout\ : std_logic;
SIGNAL \RAM|memRAM~62_q\ : std_logic;
SIGNAL \RAM|Dado_out[24]~56_combout\ : std_logic;
SIGNAL \BRG|registrador~382_q\ : std_logic;
SIGNAL \BRG|saidaB[24]~24_combout\ : std_logic;
SIGNAL \RAM|memRAM~63_q\ : std_logic;
SIGNAL \RAM|Dado_out[25]~57_combout\ : std_logic;
SIGNAL \BRG|registrador~383_q\ : std_logic;
SIGNAL \BRG|saidaB[25]~25_combout\ : std_logic;
SIGNAL \RAM|memRAM~64_q\ : std_logic;
SIGNAL \RAM|Dado_out[26]~58_combout\ : std_logic;
SIGNAL \BRG|registrador~384_q\ : std_logic;
SIGNAL \BRG|saidaB[26]~26_combout\ : std_logic;
SIGNAL \RAM|memRAM~65_q\ : std_logic;
SIGNAL \RAM|Dado_out[27]~59_combout\ : std_logic;
SIGNAL \BRG|registrador~385_q\ : std_logic;
SIGNAL \BRG|saidaB[27]~27_combout\ : std_logic;
SIGNAL \RAM|memRAM~66_q\ : std_logic;
SIGNAL \RAM|Dado_out[28]~60_combout\ : std_logic;
SIGNAL \BRG|registrador~386_q\ : std_logic;
SIGNAL \BRG|saidaB[28]~28_combout\ : std_logic;
SIGNAL \RAM|memRAM~67_q\ : std_logic;
SIGNAL \RAM|Dado_out[29]~61_combout\ : std_logic;
SIGNAL \BRG|registrador~387_q\ : std_logic;
SIGNAL \BRG|saidaB[29]~29_combout\ : std_logic;
SIGNAL \RAM|memRAM~68_q\ : std_logic;
SIGNAL \RAM|Dado_out[30]~62_combout\ : std_logic;
SIGNAL \BRG|registrador~388_q\ : std_logic;
SIGNAL \BRG|saidaB[30]~30_combout\ : std_logic;
SIGNAL \RAM|memRAM~69_q\ : std_logic;
SIGNAL \RAM|Dado_out[31]~63_combout\ : std_logic;
SIGNAL \BRG|registrador~389_q\ : std_logic;
SIGNAL \BRG|saidaB[31]~31_combout\ : std_logic;
SIGNAL \RAM|memRAM~70_q\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RAM|ALT_INV_memRAM~53_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~52_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~51_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~50_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~49_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~48_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~47_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~46_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~45_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~44_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~43_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~40_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~39_q\ : std_logic;
SIGNAL \DEC|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~389_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~388_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~387_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~386_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~385_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~384_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~383_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~382_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~381_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~380_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~379_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~378_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~377_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~376_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~375_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~374_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~373_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~372_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~371_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~370_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~369_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~368_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~367_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~366_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~365_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~364_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~363_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~362_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~361_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~360_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~359_q\ : std_logic;
SIGNAL \BRG|ALT_INV_registrador~358_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 2);
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~70_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~69_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~68_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~67_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~66_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~65_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~64_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~63_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~62_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~61_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~60_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~59_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~58_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~57_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~56_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~55_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~54_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
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
\RAM|ALT_INV_memRAM~53_q\ <= NOT \RAM|memRAM~53_q\;
\RAM|ALT_INV_memRAM~52_q\ <= NOT \RAM|memRAM~52_q\;
\RAM|ALT_INV_memRAM~51_q\ <= NOT \RAM|memRAM~51_q\;
\RAM|ALT_INV_memRAM~50_q\ <= NOT \RAM|memRAM~50_q\;
\RAM|ALT_INV_memRAM~49_q\ <= NOT \RAM|memRAM~49_q\;
\RAM|ALT_INV_memRAM~48_q\ <= NOT \RAM|memRAM~48_q\;
\RAM|ALT_INV_memRAM~47_q\ <= NOT \RAM|memRAM~47_q\;
\RAM|ALT_INV_memRAM~46_q\ <= NOT \RAM|memRAM~46_q\;
\RAM|ALT_INV_memRAM~45_q\ <= NOT \RAM|memRAM~45_q\;
\RAM|ALT_INV_memRAM~44_q\ <= NOT \RAM|memRAM~44_q\;
\RAM|ALT_INV_memRAM~43_q\ <= NOT \RAM|memRAM~43_q\;
\RAM|ALT_INV_memRAM~42_q\ <= NOT \RAM|memRAM~42_q\;
\RAM|ALT_INV_memRAM~41_q\ <= NOT \RAM|memRAM~41_q\;
\RAM|ALT_INV_memRAM~40_q\ <= NOT \RAM|memRAM~40_q\;
\RAM|ALT_INV_memRAM~39_q\ <= NOT \RAM|memRAM~39_q\;
\DEC|ALT_INV_Equal1~0_combout\ <= NOT \DEC|Equal1~0_combout\;
\BRG|ALT_INV_registrador~389_q\ <= NOT \BRG|registrador~389_q\;
\BRG|ALT_INV_registrador~388_q\ <= NOT \BRG|registrador~388_q\;
\BRG|ALT_INV_registrador~387_q\ <= NOT \BRG|registrador~387_q\;
\BRG|ALT_INV_registrador~386_q\ <= NOT \BRG|registrador~386_q\;
\BRG|ALT_INV_registrador~385_q\ <= NOT \BRG|registrador~385_q\;
\BRG|ALT_INV_registrador~384_q\ <= NOT \BRG|registrador~384_q\;
\BRG|ALT_INV_registrador~383_q\ <= NOT \BRG|registrador~383_q\;
\BRG|ALT_INV_registrador~382_q\ <= NOT \BRG|registrador~382_q\;
\BRG|ALT_INV_registrador~381_q\ <= NOT \BRG|registrador~381_q\;
\BRG|ALT_INV_registrador~380_q\ <= NOT \BRG|registrador~380_q\;
\BRG|ALT_INV_registrador~379_q\ <= NOT \BRG|registrador~379_q\;
\BRG|ALT_INV_registrador~378_q\ <= NOT \BRG|registrador~378_q\;
\BRG|ALT_INV_registrador~377_q\ <= NOT \BRG|registrador~377_q\;
\BRG|ALT_INV_registrador~376_q\ <= NOT \BRG|registrador~376_q\;
\BRG|ALT_INV_registrador~375_q\ <= NOT \BRG|registrador~375_q\;
\BRG|ALT_INV_registrador~374_q\ <= NOT \BRG|registrador~374_q\;
\BRG|ALT_INV_registrador~373_q\ <= NOT \BRG|registrador~373_q\;
\BRG|ALT_INV_registrador~372_q\ <= NOT \BRG|registrador~372_q\;
\BRG|ALT_INV_registrador~371_q\ <= NOT \BRG|registrador~371_q\;
\BRG|ALT_INV_registrador~370_q\ <= NOT \BRG|registrador~370_q\;
\BRG|ALT_INV_registrador~369_q\ <= NOT \BRG|registrador~369_q\;
\BRG|ALT_INV_registrador~368_q\ <= NOT \BRG|registrador~368_q\;
\BRG|ALT_INV_registrador~367_q\ <= NOT \BRG|registrador~367_q\;
\BRG|ALT_INV_registrador~366_q\ <= NOT \BRG|registrador~366_q\;
\BRG|ALT_INV_registrador~365_q\ <= NOT \BRG|registrador~365_q\;
\BRG|ALT_INV_registrador~364_q\ <= NOT \BRG|registrador~364_q\;
\BRG|ALT_INV_registrador~363_q\ <= NOT \BRG|registrador~363_q\;
\BRG|ALT_INV_registrador~362_q\ <= NOT \BRG|registrador~362_q\;
\BRG|ALT_INV_registrador~361_q\ <= NOT \BRG|registrador~361_q\;
\BRG|ALT_INV_registrador~360_q\ <= NOT \BRG|registrador~360_q\;
\BRG|ALT_INV_registrador~359_q\ <= NOT \BRG|registrador~359_q\;
\BRG|ALT_INV_registrador~358_q\ <= NOT \BRG|registrador~358_q\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\RAM|ALT_INV_memRAM~70_q\ <= NOT \RAM|memRAM~70_q\;
\RAM|ALT_INV_memRAM~69_q\ <= NOT \RAM|memRAM~69_q\;
\RAM|ALT_INV_memRAM~68_q\ <= NOT \RAM|memRAM~68_q\;
\RAM|ALT_INV_memRAM~67_q\ <= NOT \RAM|memRAM~67_q\;
\RAM|ALT_INV_memRAM~66_q\ <= NOT \RAM|memRAM~66_q\;
\RAM|ALT_INV_memRAM~65_q\ <= NOT \RAM|memRAM~65_q\;
\RAM|ALT_INV_memRAM~64_q\ <= NOT \RAM|memRAM~64_q\;
\RAM|ALT_INV_memRAM~63_q\ <= NOT \RAM|memRAM~63_q\;
\RAM|ALT_INV_memRAM~62_q\ <= NOT \RAM|memRAM~62_q\;
\RAM|ALT_INV_memRAM~61_q\ <= NOT \RAM|memRAM~61_q\;
\RAM|ALT_INV_memRAM~60_q\ <= NOT \RAM|memRAM~60_q\;
\RAM|ALT_INV_memRAM~59_q\ <= NOT \RAM|memRAM~59_q\;
\RAM|ALT_INV_memRAM~58_q\ <= NOT \RAM|memRAM~58_q\;
\RAM|ALT_INV_memRAM~57_q\ <= NOT \RAM|memRAM~57_q\;
\RAM|ALT_INV_memRAM~56_q\ <= NOT \RAM|memRAM~56_q\;
\RAM|ALT_INV_memRAM~55_q\ <= NOT \RAM|memRAM~55_q\;
\RAM|ALT_INV_memRAM~54_q\ <= NOT \RAM|memRAM~54_q\;

\debug3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~39_q\,
	oe => \DEC|Equal1~0_combout\,
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
	i => \RAM|memRAM~40_q\,
	oe => \DEC|Equal1~0_combout\,
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
	i => \RAM|memRAM~41_q\,
	oe => \DEC|Equal1~0_combout\,
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
	i => \RAM|memRAM~42_q\,
	oe => \DEC|Equal1~0_combout\,
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
	i => \RAM|memRAM~43_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[4]~output_o\);

\debug3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~44_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[5]~output_o\);

\debug3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~45_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[6]~output_o\);

\debug3[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~46_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[7]~output_o\);

\debug3[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~47_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[8]~output_o\);

\debug3[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~48_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[9]~output_o\);

\debug3[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~49_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[10]~output_o\);

\debug3[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~50_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[11]~output_o\);

\debug3[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~51_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[12]~output_o\);

\debug3[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~52_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[13]~output_o\);

\debug3[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~53_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[14]~output_o\);

\debug3[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~54_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[15]~output_o\);

\debug3[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~55_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[16]~output_o\);

\debug3[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~56_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[17]~output_o\);

\debug3[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~57_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[18]~output_o\);

\debug3[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~58_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[19]~output_o\);

\debug3[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~59_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[20]~output_o\);

\debug3[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~60_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[21]~output_o\);

\debug3[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~61_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[22]~output_o\);

\debug3[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~62_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[23]~output_o\);

\debug3[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~63_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[24]~output_o\);

\debug3[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~64_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[25]~output_o\);

\debug3[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~65_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[26]~output_o\);

\debug3[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~66_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[27]~output_o\);

\debug3[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~67_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[28]~output_o\);

\debug3[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~68_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[29]~output_o\);

\debug3[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~69_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[30]~output_o\);

\debug3[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~70_q\,
	oe => \DEC|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \debug3[31]~output_o\);

\opcode_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
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
	i => \ROM|memROM~0_combout\,
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
	i => \ROM|memROM~1_combout\,
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
	i => \ROM|memROM~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \BRG|saidaB[0]~0_combout\,
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
	i => \BRG|saidaB[1]~1_combout\,
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
	i => \BRG|saidaB[2]~2_combout\,
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
	i => \BRG|saidaB[3]~3_combout\,
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
	i => \BRG|saidaB[4]~4_combout\,
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
	i => \BRG|saidaB[5]~5_combout\,
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
	i => \BRG|saidaB[6]~6_combout\,
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
	i => \BRG|saidaB[7]~7_combout\,
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
	i => \BRG|saidaB[8]~8_combout\,
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
	i => \BRG|saidaB[9]~9_combout\,
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
	i => \BRG|saidaB[10]~10_combout\,
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
	i => \BRG|saidaB[11]~11_combout\,
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
	i => \BRG|saidaB[12]~12_combout\,
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
	i => \BRG|saidaB[13]~13_combout\,
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
	i => \BRG|saidaB[14]~14_combout\,
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
	i => \BRG|saidaB[15]~15_combout\,
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
	i => \BRG|saidaB[16]~16_combout\,
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
	i => \BRG|saidaB[17]~17_combout\,
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
	i => \BRG|saidaB[18]~18_combout\,
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
	i => \BRG|saidaB[19]~19_combout\,
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
	i => \BRG|saidaB[20]~20_combout\,
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
	i => \BRG|saidaB[21]~21_combout\,
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
	i => \BRG|saidaB[22]~22_combout\,
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
	i => \BRG|saidaB[23]~23_combout\,
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
	i => \BRG|saidaB[24]~24_combout\,
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
	i => \BRG|saidaB[25]~25_combout\,
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
	i => \BRG|saidaB[26]~26_combout\,
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
	i => \BRG|saidaB[27]~27_combout\,
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
	i => \BRG|saidaB[28]~28_combout\,
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
	i => \BRG|saidaB[29]~29_combout\,
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
	i => \BRG|saidaB[30]~30_combout\,
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
	i => \BRG|saidaB[31]~31_combout\,
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
	i => \DEC|Equal1~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \debug2[31]~output_o\);

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
	i => GND,
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
	i => \ROM|memROM~0_combout\,
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
	i => GND,
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
	i => \ROM|memROM~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

\SOMC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMC|Add0~17_sumout\ = SUM(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))
-- \SOMC|Add0~18\ = CARRY(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \SOMC|Add0~17_sumout\,
	cout => \SOMC|Add0~18\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\SOMC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMC|Add0~21_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \SOMC|Add0~18\ ))
-- \SOMC|Add0~22\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \SOMC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \SOMC|Add0~18\,
	sumout => \SOMC|Add0~21_sumout\,
	cout => \SOMC|Add0~22\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\SOMC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMC|Add0~13_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \SOMC|Add0~22\ ))
-- \SOMC|Add0~14\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \SOMC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \SOMC|Add0~22\,
	sumout => \SOMC|Add0~13_sumout\,
	cout => \SOMC|Add0~14\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\SOMC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMC|Add0~9_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \SOMC|Add0~14\ ))
-- \SOMC|Add0~10\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \SOMC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \SOMC|Add0~14\,
	sumout => \SOMC|Add0~9_sumout\,
	cout => \SOMC|Add0~10\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\SOMC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMC|Add0~5_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \SOMC|Add0~10\ ))
-- \SOMC|Add0~6\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \SOMC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \SOMC|Add0~10\,
	sumout => \SOMC|Add0~5_sumout\,
	cout => \SOMC|Add0~6\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\SOMC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMC|Add0~1_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \SOMC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \SOMC|Add0~6\,
	sumout => \SOMC|Add0~1_sumout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & !\PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~0_combout\);

\DEC|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|Equal1~0_combout\ = ( !\PC|DOUT\(2) & ( \PC|DOUT\(3) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & !\PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \DEC|Equal1~0_combout\);

\RAM|Dado_out[0]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[0]~32_combout\ = (\DEC|Equal1~0_combout\ & !\RAM|memRAM~39_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~39_q\,
	combout => \RAM|Dado_out[0]~32_combout\);

\BRG|registrador~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[0]~32_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~358_q\);

\BRG|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[0]~0_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & !\BRG|registrador~358_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~358_q\,
	combout => \BRG|saidaB[0]~0_combout\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\PC|DOUT\(2) & ( !\PC|DOUT\(3) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & !\PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~1_combout\);

\RAM|memRAM~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[0]~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~39_q\);

\RAM|Dado_out[1]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[1]~33_combout\ = (\DEC|Equal1~0_combout\ & !\RAM|memRAM~40_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~40_q\,
	combout => \RAM|Dado_out[1]~33_combout\);

\BRG|registrador~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[1]~33_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~359_q\);

\BRG|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[1]~1_combout\ = (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(3)) # (!\BRG|registrador~359_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001000110010001100100011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~359_q\,
	combout => \BRG|saidaB[1]~1_combout\);

\RAM|memRAM~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[1]~1_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~40_q\);

\RAM|Dado_out[2]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[2]~34_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~41_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~41_q\,
	combout => \RAM|Dado_out[2]~34_combout\);

\BRG|registrador~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[2]~34_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~360_q\);

\BRG|saidaB[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[2]~2_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~360_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~360_q\,
	combout => \BRG|saidaB[2]~2_combout\);

\RAM|memRAM~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[2]~2_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~41_q\);

\RAM|Dado_out[3]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[3]~35_combout\ = (\DEC|Equal1~0_combout\ & !\RAM|memRAM~42_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~42_q\,
	combout => \RAM|Dado_out[3]~35_combout\);

\BRG|registrador~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[3]~35_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~361_q\);

\BRG|saidaB[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[3]~3_combout\ = (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(3)) # (!\BRG|registrador~361_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001000110010001100100011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~361_q\,
	combout => \BRG|saidaB[3]~3_combout\);

\RAM|memRAM~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[3]~3_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~42_q\);

\RAM|Dado_out[4]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[4]~36_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~43_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~43_q\,
	combout => \RAM|Dado_out[4]~36_combout\);

\BRG|registrador~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[4]~36_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~362_q\);

\BRG|saidaB[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[4]~4_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~362_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~362_q\,
	combout => \BRG|saidaB[4]~4_combout\);

\RAM|memRAM~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[4]~4_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~43_q\);

\RAM|Dado_out[5]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[5]~37_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~44_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~44_q\,
	combout => \RAM|Dado_out[5]~37_combout\);

\BRG|registrador~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[5]~37_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~363_q\);

\BRG|saidaB[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[5]~5_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~363_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~363_q\,
	combout => \BRG|saidaB[5]~5_combout\);

\RAM|memRAM~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[5]~5_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~44_q\);

\RAM|Dado_out[6]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[6]~38_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~45_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~45_q\,
	combout => \RAM|Dado_out[6]~38_combout\);

\BRG|registrador~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[6]~38_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~364_q\);

\BRG|saidaB[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[6]~6_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~364_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~364_q\,
	combout => \BRG|saidaB[6]~6_combout\);

\RAM|memRAM~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[6]~6_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~45_q\);

\RAM|Dado_out[7]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[7]~39_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~46_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~46_q\,
	combout => \RAM|Dado_out[7]~39_combout\);

\BRG|registrador~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[7]~39_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~365_q\);

\BRG|saidaB[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[7]~7_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~365_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~365_q\,
	combout => \BRG|saidaB[7]~7_combout\);

\RAM|memRAM~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[7]~7_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~46_q\);

\RAM|Dado_out[8]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[8]~40_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~47_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~47_q\,
	combout => \RAM|Dado_out[8]~40_combout\);

\BRG|registrador~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[8]~40_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~366_q\);

\BRG|saidaB[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[8]~8_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~366_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~366_q\,
	combout => \BRG|saidaB[8]~8_combout\);

\RAM|memRAM~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[8]~8_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~47_q\);

\RAM|Dado_out[9]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[9]~41_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~48_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~48_q\,
	combout => \RAM|Dado_out[9]~41_combout\);

\BRG|registrador~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[9]~41_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~367_q\);

\BRG|saidaB[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[9]~9_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~367_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~367_q\,
	combout => \BRG|saidaB[9]~9_combout\);

\RAM|memRAM~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[9]~9_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~48_q\);

\RAM|Dado_out[10]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[10]~42_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~49_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~49_q\,
	combout => \RAM|Dado_out[10]~42_combout\);

\BRG|registrador~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[10]~42_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~368_q\);

\BRG|saidaB[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[10]~10_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~368_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~368_q\,
	combout => \BRG|saidaB[10]~10_combout\);

\RAM|memRAM~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[10]~10_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~49_q\);

\RAM|Dado_out[11]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[11]~43_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~50_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~50_q\,
	combout => \RAM|Dado_out[11]~43_combout\);

\BRG|registrador~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[11]~43_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~369_q\);

\BRG|saidaB[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[11]~11_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~369_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~369_q\,
	combout => \BRG|saidaB[11]~11_combout\);

\RAM|memRAM~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[11]~11_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~50_q\);

\RAM|Dado_out[12]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[12]~44_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~51_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~51_q\,
	combout => \RAM|Dado_out[12]~44_combout\);

\BRG|registrador~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[12]~44_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~370_q\);

\BRG|saidaB[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[12]~12_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~370_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~370_q\,
	combout => \BRG|saidaB[12]~12_combout\);

\RAM|memRAM~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[12]~12_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~51_q\);

\RAM|Dado_out[13]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[13]~45_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~52_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~52_q\,
	combout => \RAM|Dado_out[13]~45_combout\);

\BRG|registrador~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[13]~45_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~371_q\);

\BRG|saidaB[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[13]~13_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~371_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~371_q\,
	combout => \BRG|saidaB[13]~13_combout\);

\RAM|memRAM~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[13]~13_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~52_q\);

\RAM|Dado_out[14]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[14]~46_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~53_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~53_q\,
	combout => \RAM|Dado_out[14]~46_combout\);

\BRG|registrador~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[14]~46_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~372_q\);

\BRG|saidaB[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[14]~14_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~372_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~372_q\,
	combout => \BRG|saidaB[14]~14_combout\);

\RAM|memRAM~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[14]~14_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~53_q\);

\RAM|Dado_out[15]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[15]~47_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~54_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~54_q\,
	combout => \RAM|Dado_out[15]~47_combout\);

\BRG|registrador~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[15]~47_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~373_q\);

\BRG|saidaB[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[15]~15_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~373_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~373_q\,
	combout => \BRG|saidaB[15]~15_combout\);

\RAM|memRAM~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[15]~15_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~54_q\);

\RAM|Dado_out[16]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[16]~48_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~55_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~55_q\,
	combout => \RAM|Dado_out[16]~48_combout\);

\BRG|registrador~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[16]~48_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~374_q\);

\BRG|saidaB[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[16]~16_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~374_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~374_q\,
	combout => \BRG|saidaB[16]~16_combout\);

\RAM|memRAM~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[16]~16_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~55_q\);

\RAM|Dado_out[17]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[17]~49_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~56_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~56_q\,
	combout => \RAM|Dado_out[17]~49_combout\);

\BRG|registrador~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[17]~49_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~375_q\);

\BRG|saidaB[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[17]~17_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~375_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~375_q\,
	combout => \BRG|saidaB[17]~17_combout\);

\RAM|memRAM~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[17]~17_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~56_q\);

\RAM|Dado_out[18]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[18]~50_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~57_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~57_q\,
	combout => \RAM|Dado_out[18]~50_combout\);

\BRG|registrador~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[18]~50_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~376_q\);

\BRG|saidaB[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[18]~18_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~376_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~376_q\,
	combout => \BRG|saidaB[18]~18_combout\);

\RAM|memRAM~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[18]~18_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~57_q\);

\RAM|Dado_out[19]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[19]~51_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~58_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~58_q\,
	combout => \RAM|Dado_out[19]~51_combout\);

\BRG|registrador~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[19]~51_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~377_q\);

\BRG|saidaB[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[19]~19_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~377_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~377_q\,
	combout => \BRG|saidaB[19]~19_combout\);

\RAM|memRAM~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[19]~19_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~58_q\);

\RAM|Dado_out[20]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[20]~52_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~59_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~59_q\,
	combout => \RAM|Dado_out[20]~52_combout\);

\BRG|registrador~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[20]~52_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~378_q\);

\BRG|saidaB[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[20]~20_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~378_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~378_q\,
	combout => \BRG|saidaB[20]~20_combout\);

\RAM|memRAM~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[20]~20_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~59_q\);

\RAM|Dado_out[21]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[21]~53_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~60_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~60_q\,
	combout => \RAM|Dado_out[21]~53_combout\);

\BRG|registrador~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[21]~53_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~379_q\);

\BRG|saidaB[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[21]~21_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~379_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~379_q\,
	combout => \BRG|saidaB[21]~21_combout\);

\RAM|memRAM~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[21]~21_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~60_q\);

\RAM|Dado_out[22]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[22]~54_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~61_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~61_q\,
	combout => \RAM|Dado_out[22]~54_combout\);

\BRG|registrador~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[22]~54_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~380_q\);

\BRG|saidaB[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[22]~22_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~380_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~380_q\,
	combout => \BRG|saidaB[22]~22_combout\);

\RAM|memRAM~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[22]~22_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~61_q\);

\RAM|Dado_out[23]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[23]~55_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~62_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~62_q\,
	combout => \RAM|Dado_out[23]~55_combout\);

\BRG|registrador~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[23]~55_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~381_q\);

\BRG|saidaB[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[23]~23_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~381_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~381_q\,
	combout => \BRG|saidaB[23]~23_combout\);

\RAM|memRAM~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[23]~23_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~62_q\);

\RAM|Dado_out[24]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[24]~56_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~63_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~63_q\,
	combout => \RAM|Dado_out[24]~56_combout\);

\BRG|registrador~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[24]~56_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~382_q\);

\BRG|saidaB[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[24]~24_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~382_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~382_q\,
	combout => \BRG|saidaB[24]~24_combout\);

\RAM|memRAM~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[24]~24_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~63_q\);

\RAM|Dado_out[25]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[25]~57_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~64_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~64_q\,
	combout => \RAM|Dado_out[25]~57_combout\);

\BRG|registrador~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[25]~57_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~383_q\);

\BRG|saidaB[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[25]~25_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~383_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~383_q\,
	combout => \BRG|saidaB[25]~25_combout\);

\RAM|memRAM~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[25]~25_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~64_q\);

\RAM|Dado_out[26]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[26]~58_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~65_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~65_q\,
	combout => \RAM|Dado_out[26]~58_combout\);

\BRG|registrador~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[26]~58_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~384_q\);

\BRG|saidaB[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[26]~26_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~384_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~384_q\,
	combout => \BRG|saidaB[26]~26_combout\);

\RAM|memRAM~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[26]~26_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~65_q\);

\RAM|Dado_out[27]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[27]~59_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~66_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~66_q\,
	combout => \RAM|Dado_out[27]~59_combout\);

\BRG|registrador~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[27]~59_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~385_q\);

\BRG|saidaB[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[27]~27_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~385_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~385_q\,
	combout => \BRG|saidaB[27]~27_combout\);

\RAM|memRAM~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[27]~27_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~66_q\);

\RAM|Dado_out[28]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[28]~60_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~67_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~67_q\,
	combout => \RAM|Dado_out[28]~60_combout\);

\BRG|registrador~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[28]~60_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~386_q\);

\BRG|saidaB[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[28]~28_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~386_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~386_q\,
	combout => \BRG|saidaB[28]~28_combout\);

\RAM|memRAM~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[28]~28_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~67_q\);

\RAM|Dado_out[29]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[29]~61_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~68_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~68_q\,
	combout => \RAM|Dado_out[29]~61_combout\);

\BRG|registrador~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[29]~61_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~387_q\);

\BRG|saidaB[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[29]~29_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~387_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~387_q\,
	combout => \BRG|saidaB[29]~29_combout\);

\RAM|memRAM~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[29]~29_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~68_q\);

\RAM|Dado_out[30]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[30]~62_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~69_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~69_q\,
	combout => \RAM|Dado_out[30]~62_combout\);

\BRG|registrador~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[30]~62_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~388_q\);

\BRG|saidaB[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[30]~30_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~388_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~388_q\,
	combout => \BRG|saidaB[30]~30_combout\);

\RAM|memRAM~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[30]~30_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~69_q\);

\RAM|Dado_out[31]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[31]~63_combout\ = (!\DEC|Equal1~0_combout\) # (\RAM|memRAM~70_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal1~0_combout\,
	datab => \RAM|ALT_INV_memRAM~70_q\,
	combout => \RAM|Dado_out[31]~63_combout\);

\BRG|registrador~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \RAM|Dado_out[31]~63_combout\,
	ena => \DEC|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BRG|registrador~389_q\);

\BRG|saidaB[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BRG|saidaB[31]~31_combout\ = (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \BRG|registrador~389_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BRG|ALT_INV_registrador~389_q\,
	combout => \BRG|saidaB[31]~31_combout\);

\RAM|memRAM~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BRG|saidaB[31]~31_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~70_q\);

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

ww_debug3(5) <= \debug3[5]~output_o\;

ww_debug3(6) <= \debug3[6]~output_o\;

ww_debug3(7) <= \debug3[7]~output_o\;

ww_debug3(8) <= \debug3[8]~output_o\;

ww_debug3(9) <= \debug3[9]~output_o\;

ww_debug3(10) <= \debug3[10]~output_o\;

ww_debug3(11) <= \debug3[11]~output_o\;

ww_debug3(12) <= \debug3[12]~output_o\;

ww_debug3(13) <= \debug3[13]~output_o\;

ww_debug3(14) <= \debug3[14]~output_o\;

ww_debug3(15) <= \debug3[15]~output_o\;

ww_debug3(16) <= \debug3[16]~output_o\;

ww_debug3(17) <= \debug3[17]~output_o\;

ww_debug3(18) <= \debug3[18]~output_o\;

ww_debug3(19) <= \debug3[19]~output_o\;

ww_debug3(20) <= \debug3[20]~output_o\;

ww_debug3(21) <= \debug3[21]~output_o\;

ww_debug3(22) <= \debug3[22]~output_o\;

ww_debug3(23) <= \debug3[23]~output_o\;

ww_debug3(24) <= \debug3[24]~output_o\;

ww_debug3(25) <= \debug3[25]~output_o\;

ww_debug3(26) <= \debug3[26]~output_o\;

ww_debug3(27) <= \debug3[27]~output_o\;

ww_debug3(28) <= \debug3[28]~output_o\;

ww_debug3(29) <= \debug3[29]~output_o\;

ww_debug3(30) <= \debug3[30]~output_o\;

ww_debug3(31) <= \debug3[31]~output_o\;

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


