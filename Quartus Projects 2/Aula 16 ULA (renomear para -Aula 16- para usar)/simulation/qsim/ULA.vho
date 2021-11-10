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

-- DATE "11/09/2021 21:19:52"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	entradaA : IN std_logic_vector(31 DOWNTO 0);
	entradaB : IN std_logic_vector(31 DOWNTO 0);
	seletor : IN std_logic_vector(1 DOWNTO 0);
	inverteB : IN std_logic;
	saida : OUT std_logic_vector(31 DOWNTO 0);
	flagZero : OUT std_logic
	);
END ULA;

ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entradaA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entradaB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_seletor : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_inverteB : std_logic;
SIGNAL ww_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_flagZero : std_logic;
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \saida[8]~output_o\ : std_logic;
SIGNAL \saida[9]~output_o\ : std_logic;
SIGNAL \saida[10]~output_o\ : std_logic;
SIGNAL \saida[11]~output_o\ : std_logic;
SIGNAL \saida[12]~output_o\ : std_logic;
SIGNAL \saida[13]~output_o\ : std_logic;
SIGNAL \saida[14]~output_o\ : std_logic;
SIGNAL \saida[15]~output_o\ : std_logic;
SIGNAL \saida[16]~output_o\ : std_logic;
SIGNAL \saida[17]~output_o\ : std_logic;
SIGNAL \saida[18]~output_o\ : std_logic;
SIGNAL \saida[19]~output_o\ : std_logic;
SIGNAL \saida[20]~output_o\ : std_logic;
SIGNAL \saida[21]~output_o\ : std_logic;
SIGNAL \saida[22]~output_o\ : std_logic;
SIGNAL \saida[23]~output_o\ : std_logic;
SIGNAL \saida[24]~output_o\ : std_logic;
SIGNAL \saida[25]~output_o\ : std_logic;
SIGNAL \saida[26]~output_o\ : std_logic;
SIGNAL \saida[27]~output_o\ : std_logic;
SIGNAL \saida[28]~output_o\ : std_logic;
SIGNAL \saida[29]~output_o\ : std_logic;
SIGNAL \saida[30]~output_o\ : std_logic;
SIGNAL \saida[31]~output_o\ : std_logic;
SIGNAL \flagZero~output_o\ : std_logic;
SIGNAL \entradaA[30]~input_o\ : std_logic;
SIGNAL \inverteB~input_o\ : std_logic;
SIGNAL \entradaB[30]~input_o\ : std_logic;
SIGNAL \ULA31|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[29]~input_o\ : std_logic;
SIGNAL \entradaB[29]~input_o\ : std_logic;
SIGNAL \ULA30|MuxB|saida~0_combout\ : std_logic;
SIGNAL \ULA30|som|cOut~0_combout\ : std_logic;
SIGNAL \entradaA[28]~input_o\ : std_logic;
SIGNAL \entradaB[28]~input_o\ : std_logic;
SIGNAL \ULA29|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[27]~input_o\ : std_logic;
SIGNAL \entradaB[27]~input_o\ : std_logic;
SIGNAL \ULA28|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[26]~input_o\ : std_logic;
SIGNAL \entradaB[26]~input_o\ : std_logic;
SIGNAL \ULA27|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[25]~input_o\ : std_logic;
SIGNAL \entradaB[25]~input_o\ : std_logic;
SIGNAL \ULA26|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[24]~input_o\ : std_logic;
SIGNAL \entradaB[24]~input_o\ : std_logic;
SIGNAL \ULA25|MuxB|saida~0_combout\ : std_logic;
SIGNAL \ULA25|som|cOut~0_combout\ : std_logic;
SIGNAL \entradaA[23]~input_o\ : std_logic;
SIGNAL \entradaB[23]~input_o\ : std_logic;
SIGNAL \ULA24|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[22]~input_o\ : std_logic;
SIGNAL \entradaB[22]~input_o\ : std_logic;
SIGNAL \ULA23|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[21]~input_o\ : std_logic;
SIGNAL \entradaB[21]~input_o\ : std_logic;
SIGNAL \ULA22|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[20]~input_o\ : std_logic;
SIGNAL \entradaB[20]~input_o\ : std_logic;
SIGNAL \ULA21|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[19]~input_o\ : std_logic;
SIGNAL \entradaB[19]~input_o\ : std_logic;
SIGNAL \ULA20|MuxB|saida~0_combout\ : std_logic;
SIGNAL \ULA20|som|cOut~0_combout\ : std_logic;
SIGNAL \entradaA[18]~input_o\ : std_logic;
SIGNAL \entradaB[18]~input_o\ : std_logic;
SIGNAL \ULA19|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[17]~input_o\ : std_logic;
SIGNAL \entradaB[17]~input_o\ : std_logic;
SIGNAL \ULA18|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[16]~input_o\ : std_logic;
SIGNAL \entradaB[16]~input_o\ : std_logic;
SIGNAL \ULA17|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[15]~input_o\ : std_logic;
SIGNAL \entradaB[15]~input_o\ : std_logic;
SIGNAL \ULA16|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[14]~input_o\ : std_logic;
SIGNAL \entradaB[14]~input_o\ : std_logic;
SIGNAL \ULA15|MuxB|saida~0_combout\ : std_logic;
SIGNAL \ULA15|som|cOut~0_combout\ : std_logic;
SIGNAL \entradaA[13]~input_o\ : std_logic;
SIGNAL \entradaB[13]~input_o\ : std_logic;
SIGNAL \ULA14|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[12]~input_o\ : std_logic;
SIGNAL \entradaB[12]~input_o\ : std_logic;
SIGNAL \ULA13|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[11]~input_o\ : std_logic;
SIGNAL \entradaB[11]~input_o\ : std_logic;
SIGNAL \ULA12|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[10]~input_o\ : std_logic;
SIGNAL \entradaB[10]~input_o\ : std_logic;
SIGNAL \ULA11|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[9]~input_o\ : std_logic;
SIGNAL \entradaB[9]~input_o\ : std_logic;
SIGNAL \ULA10|som|cOut~0_combout\ : std_logic;
SIGNAL \entradaA[8]~input_o\ : std_logic;
SIGNAL \entradaB[8]~input_o\ : std_logic;
SIGNAL \ULA9|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[7]~input_o\ : std_logic;
SIGNAL \entradaB[7]~input_o\ : std_logic;
SIGNAL \ULA8|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[6]~input_o\ : std_logic;
SIGNAL \entradaB[6]~input_o\ : std_logic;
SIGNAL \ULA7|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[5]~input_o\ : std_logic;
SIGNAL \entradaB[5]~input_o\ : std_logic;
SIGNAL \ULA6|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[4]~input_o\ : std_logic;
SIGNAL \entradaB[4]~input_o\ : std_logic;
SIGNAL \ULA5|som|cOut~0_combout\ : std_logic;
SIGNAL \entradaA[3]~input_o\ : std_logic;
SIGNAL \entradaB[3]~input_o\ : std_logic;
SIGNAL \ULA4|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[2]~input_o\ : std_logic;
SIGNAL \entradaB[2]~input_o\ : std_logic;
SIGNAL \ULA3|MuxB|saida~0_combout\ : std_logic;
SIGNAL \entradaA[1]~input_o\ : std_logic;
SIGNAL \entradaB[1]~input_o\ : std_logic;
SIGNAL \entradaB[0]~input_o\ : std_logic;
SIGNAL \entradaA[0]~input_o\ : std_logic;
SIGNAL \ULA2|som|cOut~combout\ : std_logic;
SIGNAL \ULA5|som|saida~0_combout\ : std_logic;
SIGNAL \ULA5|som|cOut~1_combout\ : std_logic;
SIGNAL \ULA7|som|cOut~combout\ : std_logic;
SIGNAL \ULA10|som|saida~0_combout\ : std_logic;
SIGNAL \ULA10|som|cOut~1_combout\ : std_logic;
SIGNAL \ULA12|som|cOut~combout\ : std_logic;
SIGNAL \ULA15|som|saida~0_combout\ : std_logic;
SIGNAL \ULA15|som|cOut~1_combout\ : std_logic;
SIGNAL \ULA17|som|cOut~combout\ : std_logic;
SIGNAL \ULA20|som|saida~0_combout\ : std_logic;
SIGNAL \ULA20|som|cOut~1_combout\ : std_logic;
SIGNAL \ULA22|som|cOut~combout\ : std_logic;
SIGNAL \ULA25|som|saida~0_combout\ : std_logic;
SIGNAL \ULA25|som|cOut~1_combout\ : std_logic;
SIGNAL \ULA27|som|cOut~combout\ : std_logic;
SIGNAL \ULA30|som|saida~0_combout\ : std_logic;
SIGNAL \ULA30|som|cOut~1_combout\ : std_logic;
SIGNAL \entradaA[31]~input_o\ : std_logic;
SIGNAL \entradaB[31]~input_o\ : std_logic;
SIGNAL \seletor[0]~input_o\ : std_logic;
SIGNAL \seletor[1]~input_o\ : std_logic;
SIGNAL \ULA1|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA1|MuxS|saida~1_combout\ : std_logic;
SIGNAL \ULA1|MuxS|saida~2_combout\ : std_logic;
SIGNAL \ULA1|MuxS|saida~3_combout\ : std_logic;
SIGNAL \ULA2|som|saida~combout\ : std_logic;
SIGNAL \ULA2|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA3|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA4|som|saida~0_combout\ : std_logic;
SIGNAL \ULA2|MuxS|saida~1_combout\ : std_logic;
SIGNAL \ULA4|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA4|MuxS|saida~1_combout\ : std_logic;
SIGNAL \ULA4|som|cOut~combout\ : std_logic;
SIGNAL \ULA5|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA6|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA6|MuxS|saida~1_combout\ : std_logic;
SIGNAL \ULA6|som|cOut~combout\ : std_logic;
SIGNAL \ULA7|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA8|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA9|som|saida~0_combout\ : std_logic;
SIGNAL \ULA9|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA9|MuxS|saida~1_combout\ : std_logic;
SIGNAL \ULA9|som|cOut~combout\ : std_logic;
SIGNAL \ULA10|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA11|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA11|MuxS|saida~1_combout\ : std_logic;
SIGNAL \ULA11|som|cOut~combout\ : std_logic;
SIGNAL \ULA12|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA13|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA14|som|saida~0_combout\ : std_logic;
SIGNAL \ULA14|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA14|MuxS|saida~1_combout\ : std_logic;
SIGNAL \ULA14|som|cOut~combout\ : std_logic;
SIGNAL \ULA15|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA16|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA16|MuxS|saida~1_combout\ : std_logic;
SIGNAL \ULA16|som|cOut~combout\ : std_logic;
SIGNAL \ULA17|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA18|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA19|som|saida~0_combout\ : std_logic;
SIGNAL \ULA19|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA19|MuxS|saida~1_combout\ : std_logic;
SIGNAL \ULA19|som|cOut~combout\ : std_logic;
SIGNAL \ULA20|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA21|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA21|MuxS|saida~1_combout\ : std_logic;
SIGNAL \ULA21|som|cOut~combout\ : std_logic;
SIGNAL \ULA22|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA23|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA24|som|saida~0_combout\ : std_logic;
SIGNAL \ULA24|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA24|MuxS|saida~1_combout\ : std_logic;
SIGNAL \ULA24|som|cOut~combout\ : std_logic;
SIGNAL \ULA25|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA26|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA26|MuxS|saida~1_combout\ : std_logic;
SIGNAL \ULA26|som|cOut~combout\ : std_logic;
SIGNAL \ULA27|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA28|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA29|som|saida~0_combout\ : std_logic;
SIGNAL \ULA29|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA29|MuxS|saida~1_combout\ : std_logic;
SIGNAL \ULA29|som|cOut~combout\ : std_logic;
SIGNAL \ULA30|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA31|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA31|MuxS|saida~1_combout\ : std_logic;
SIGNAL \ULA32|som|saida~0_combout\ : std_logic;
SIGNAL \ULA32|MuxS|saida~0_combout\ : std_logic;
SIGNAL \ULA32|MuxS|saida~1_combout\ : std_logic;
SIGNAL \ULA32|MuxS|saida~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \ULA31|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA30|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA29|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA29|MuxS|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA29|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA29|som|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA28|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA27|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA26|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA26|MuxS|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA26|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA25|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA24|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA24|MuxS|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA24|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA24|som|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA23|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA22|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA21|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA21|MuxS|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA21|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA20|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA19|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA19|MuxS|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA19|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA19|som|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA18|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA17|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA16|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA16|MuxS|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA16|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA15|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA14|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA14|MuxS|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA14|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA14|som|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA13|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA12|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA11|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA11|MuxS|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA11|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA10|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA9|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA9|MuxS|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA9|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA9|som|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA8|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA7|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA6|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA6|MuxS|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA6|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA5|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA4|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA4|MuxS|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA4|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA2|MuxS|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA4|som|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA3|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA2|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA2|som|ALT_INV_saida~combout\ : std_logic;
SIGNAL \ULA1|MuxS|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \ULA1|MuxS|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ULA1|MuxS|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA1|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA30|som|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA30|som|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA27|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA25|som|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA25|som|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA22|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA20|som|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA20|som|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA17|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA15|som|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA15|som|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA12|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA10|som|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA10|som|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA7|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA5|som|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA5|som|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA2|som|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA3|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA4|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA5|som|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA6|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA7|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA8|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA9|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA10|som|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA11|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA12|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA13|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA14|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA15|som|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA15|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA16|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA17|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA18|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA19|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA20|som|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA20|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA21|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA22|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA23|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA24|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA25|som|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA25|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA26|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA27|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA28|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA29|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA30|som|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA30|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA31|MuxB|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ALT_INV_seletor[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_seletor[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_inverteB~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ULA32|MuxS|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ULA32|MuxS|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA32|som|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA31|MuxS|ALT_INV_saida~1_combout\ : std_logic;

BEGIN

ww_entradaA <= entradaA;
ww_entradaB <= entradaB;
ww_seletor <= seletor;
ww_inverteB <= inverteB;
saida <= ww_saida;
flagZero <= ww_flagZero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA31|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA31|MuxS|saida~0_combout\;
\ULA30|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA30|MuxS|saida~0_combout\;
\ULA29|som|ALT_INV_cOut~combout\ <= NOT \ULA29|som|cOut~combout\;
\ULA29|MuxS|ALT_INV_saida~1_combout\ <= NOT \ULA29|MuxS|saida~1_combout\;
\ULA29|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA29|MuxS|saida~0_combout\;
\ULA29|som|ALT_INV_saida~0_combout\ <= NOT \ULA29|som|saida~0_combout\;
\ULA28|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA28|MuxS|saida~0_combout\;
\ULA27|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA27|MuxS|saida~0_combout\;
\ULA26|som|ALT_INV_cOut~combout\ <= NOT \ULA26|som|cOut~combout\;
\ULA26|MuxS|ALT_INV_saida~1_combout\ <= NOT \ULA26|MuxS|saida~1_combout\;
\ULA26|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA26|MuxS|saida~0_combout\;
\ULA25|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA25|MuxS|saida~0_combout\;
\ULA24|som|ALT_INV_cOut~combout\ <= NOT \ULA24|som|cOut~combout\;
\ULA24|MuxS|ALT_INV_saida~1_combout\ <= NOT \ULA24|MuxS|saida~1_combout\;
\ULA24|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA24|MuxS|saida~0_combout\;
\ULA24|som|ALT_INV_saida~0_combout\ <= NOT \ULA24|som|saida~0_combout\;
\ULA23|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA23|MuxS|saida~0_combout\;
\ULA22|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA22|MuxS|saida~0_combout\;
\ULA21|som|ALT_INV_cOut~combout\ <= NOT \ULA21|som|cOut~combout\;
\ULA21|MuxS|ALT_INV_saida~1_combout\ <= NOT \ULA21|MuxS|saida~1_combout\;
\ULA21|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA21|MuxS|saida~0_combout\;
\ULA20|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA20|MuxS|saida~0_combout\;
\ULA19|som|ALT_INV_cOut~combout\ <= NOT \ULA19|som|cOut~combout\;
\ULA19|MuxS|ALT_INV_saida~1_combout\ <= NOT \ULA19|MuxS|saida~1_combout\;
\ULA19|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA19|MuxS|saida~0_combout\;
\ULA19|som|ALT_INV_saida~0_combout\ <= NOT \ULA19|som|saida~0_combout\;
\ULA18|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA18|MuxS|saida~0_combout\;
\ULA17|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA17|MuxS|saida~0_combout\;
\ULA16|som|ALT_INV_cOut~combout\ <= NOT \ULA16|som|cOut~combout\;
\ULA16|MuxS|ALT_INV_saida~1_combout\ <= NOT \ULA16|MuxS|saida~1_combout\;
\ULA16|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA16|MuxS|saida~0_combout\;
\ULA15|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA15|MuxS|saida~0_combout\;
\ULA14|som|ALT_INV_cOut~combout\ <= NOT \ULA14|som|cOut~combout\;
\ULA14|MuxS|ALT_INV_saida~1_combout\ <= NOT \ULA14|MuxS|saida~1_combout\;
\ULA14|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA14|MuxS|saida~0_combout\;
\ULA14|som|ALT_INV_saida~0_combout\ <= NOT \ULA14|som|saida~0_combout\;
\ULA13|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA13|MuxS|saida~0_combout\;
\ULA12|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA12|MuxS|saida~0_combout\;
\ULA11|som|ALT_INV_cOut~combout\ <= NOT \ULA11|som|cOut~combout\;
\ULA11|MuxS|ALT_INV_saida~1_combout\ <= NOT \ULA11|MuxS|saida~1_combout\;
\ULA11|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA11|MuxS|saida~0_combout\;
\ULA10|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA10|MuxS|saida~0_combout\;
\ULA9|som|ALT_INV_cOut~combout\ <= NOT \ULA9|som|cOut~combout\;
\ULA9|MuxS|ALT_INV_saida~1_combout\ <= NOT \ULA9|MuxS|saida~1_combout\;
\ULA9|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA9|MuxS|saida~0_combout\;
\ULA9|som|ALT_INV_saida~0_combout\ <= NOT \ULA9|som|saida~0_combout\;
\ULA8|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA8|MuxS|saida~0_combout\;
\ULA7|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA7|MuxS|saida~0_combout\;
\ULA6|som|ALT_INV_cOut~combout\ <= NOT \ULA6|som|cOut~combout\;
\ULA6|MuxS|ALT_INV_saida~1_combout\ <= NOT \ULA6|MuxS|saida~1_combout\;
\ULA6|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA6|MuxS|saida~0_combout\;
\ULA5|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA5|MuxS|saida~0_combout\;
\ULA4|som|ALT_INV_cOut~combout\ <= NOT \ULA4|som|cOut~combout\;
\ULA4|MuxS|ALT_INV_saida~1_combout\ <= NOT \ULA4|MuxS|saida~1_combout\;
\ULA4|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA4|MuxS|saida~0_combout\;
\ULA2|MuxS|ALT_INV_saida~1_combout\ <= NOT \ULA2|MuxS|saida~1_combout\;
\ULA4|som|ALT_INV_saida~0_combout\ <= NOT \ULA4|som|saida~0_combout\;
\ULA3|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA3|MuxS|saida~0_combout\;
\ULA2|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA2|MuxS|saida~0_combout\;
\ULA2|som|ALT_INV_saida~combout\ <= NOT \ULA2|som|saida~combout\;
\ULA1|MuxS|ALT_INV_saida~3_combout\ <= NOT \ULA1|MuxS|saida~3_combout\;
\ULA1|MuxS|ALT_INV_saida~2_combout\ <= NOT \ULA1|MuxS|saida~2_combout\;
\ULA1|MuxS|ALT_INV_saida~1_combout\ <= NOT \ULA1|MuxS|saida~1_combout\;
\ULA1|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA1|MuxS|saida~0_combout\;
\ULA30|som|ALT_INV_cOut~1_combout\ <= NOT \ULA30|som|cOut~1_combout\;
\ULA30|som|ALT_INV_saida~0_combout\ <= NOT \ULA30|som|saida~0_combout\;
\ULA27|som|ALT_INV_cOut~combout\ <= NOT \ULA27|som|cOut~combout\;
\ULA25|som|ALT_INV_cOut~1_combout\ <= NOT \ULA25|som|cOut~1_combout\;
\ULA25|som|ALT_INV_saida~0_combout\ <= NOT \ULA25|som|saida~0_combout\;
\ULA22|som|ALT_INV_cOut~combout\ <= NOT \ULA22|som|cOut~combout\;
\ULA20|som|ALT_INV_cOut~1_combout\ <= NOT \ULA20|som|cOut~1_combout\;
\ULA20|som|ALT_INV_saida~0_combout\ <= NOT \ULA20|som|saida~0_combout\;
\ULA17|som|ALT_INV_cOut~combout\ <= NOT \ULA17|som|cOut~combout\;
\ULA15|som|ALT_INV_cOut~1_combout\ <= NOT \ULA15|som|cOut~1_combout\;
\ULA15|som|ALT_INV_saida~0_combout\ <= NOT \ULA15|som|saida~0_combout\;
\ULA12|som|ALT_INV_cOut~combout\ <= NOT \ULA12|som|cOut~combout\;
\ULA10|som|ALT_INV_cOut~1_combout\ <= NOT \ULA10|som|cOut~1_combout\;
\ULA10|som|ALT_INV_saida~0_combout\ <= NOT \ULA10|som|saida~0_combout\;
\ULA7|som|ALT_INV_cOut~combout\ <= NOT \ULA7|som|cOut~combout\;
\ULA5|som|ALT_INV_cOut~1_combout\ <= NOT \ULA5|som|cOut~1_combout\;
\ULA5|som|ALT_INV_saida~0_combout\ <= NOT \ULA5|som|saida~0_combout\;
\ULA2|som|ALT_INV_cOut~combout\ <= NOT \ULA2|som|cOut~combout\;
\ULA3|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA3|MuxB|saida~0_combout\;
\ULA4|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA4|MuxB|saida~0_combout\;
\ULA5|som|ALT_INV_cOut~0_combout\ <= NOT \ULA5|som|cOut~0_combout\;
\ULA6|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA6|MuxB|saida~0_combout\;
\ULA7|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA7|MuxB|saida~0_combout\;
\ULA8|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA8|MuxB|saida~0_combout\;
\ULA9|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA9|MuxB|saida~0_combout\;
\ULA10|som|ALT_INV_cOut~0_combout\ <= NOT \ULA10|som|cOut~0_combout\;
\ULA11|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA11|MuxB|saida~0_combout\;
\ULA12|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA12|MuxB|saida~0_combout\;
\ULA13|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA13|MuxB|saida~0_combout\;
\ULA14|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA14|MuxB|saida~0_combout\;
\ULA15|som|ALT_INV_cOut~0_combout\ <= NOT \ULA15|som|cOut~0_combout\;
\ULA15|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA15|MuxB|saida~0_combout\;
\ULA16|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA16|MuxB|saida~0_combout\;
\ULA17|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA17|MuxB|saida~0_combout\;
\ULA18|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA18|MuxB|saida~0_combout\;
\ULA19|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA19|MuxB|saida~0_combout\;
\ULA20|som|ALT_INV_cOut~0_combout\ <= NOT \ULA20|som|cOut~0_combout\;
\ULA20|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA20|MuxB|saida~0_combout\;
\ULA21|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA21|MuxB|saida~0_combout\;
\ULA22|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA22|MuxB|saida~0_combout\;
\ULA23|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA23|MuxB|saida~0_combout\;
\ULA24|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA24|MuxB|saida~0_combout\;
\ULA25|som|ALT_INV_cOut~0_combout\ <= NOT \ULA25|som|cOut~0_combout\;
\ULA25|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA25|MuxB|saida~0_combout\;
\ULA26|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA26|MuxB|saida~0_combout\;
\ULA27|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA27|MuxB|saida~0_combout\;
\ULA28|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA28|MuxB|saida~0_combout\;
\ULA29|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA29|MuxB|saida~0_combout\;
\ULA30|som|ALT_INV_cOut~0_combout\ <= NOT \ULA30|som|cOut~0_combout\;
\ULA30|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA30|MuxB|saida~0_combout\;
\ULA31|MuxB|ALT_INV_saida~0_combout\ <= NOT \ULA31|MuxB|saida~0_combout\;
\ALT_INV_seletor[1]~input_o\ <= NOT \seletor[1]~input_o\;
\ALT_INV_seletor[0]~input_o\ <= NOT \seletor[0]~input_o\;
\ALT_INV_entradaB[31]~input_o\ <= NOT \entradaB[31]~input_o\;
\ALT_INV_entradaA[31]~input_o\ <= NOT \entradaA[31]~input_o\;
\ALT_INV_entradaA[0]~input_o\ <= NOT \entradaA[0]~input_o\;
\ALT_INV_entradaB[0]~input_o\ <= NOT \entradaB[0]~input_o\;
\ALT_INV_entradaB[1]~input_o\ <= NOT \entradaB[1]~input_o\;
\ALT_INV_entradaA[1]~input_o\ <= NOT \entradaA[1]~input_o\;
\ALT_INV_entradaB[2]~input_o\ <= NOT \entradaB[2]~input_o\;
\ALT_INV_entradaA[2]~input_o\ <= NOT \entradaA[2]~input_o\;
\ALT_INV_entradaB[3]~input_o\ <= NOT \entradaB[3]~input_o\;
\ALT_INV_entradaA[3]~input_o\ <= NOT \entradaA[3]~input_o\;
\ALT_INV_entradaB[4]~input_o\ <= NOT \entradaB[4]~input_o\;
\ALT_INV_entradaA[4]~input_o\ <= NOT \entradaA[4]~input_o\;
\ALT_INV_entradaB[5]~input_o\ <= NOT \entradaB[5]~input_o\;
\ALT_INV_entradaA[5]~input_o\ <= NOT \entradaA[5]~input_o\;
\ALT_INV_entradaB[6]~input_o\ <= NOT \entradaB[6]~input_o\;
\ALT_INV_entradaA[6]~input_o\ <= NOT \entradaA[6]~input_o\;
\ALT_INV_entradaB[7]~input_o\ <= NOT \entradaB[7]~input_o\;
\ALT_INV_entradaA[7]~input_o\ <= NOT \entradaA[7]~input_o\;
\ALT_INV_entradaB[8]~input_o\ <= NOT \entradaB[8]~input_o\;
\ALT_INV_entradaA[8]~input_o\ <= NOT \entradaA[8]~input_o\;
\ALT_INV_entradaB[9]~input_o\ <= NOT \entradaB[9]~input_o\;
\ALT_INV_entradaA[9]~input_o\ <= NOT \entradaA[9]~input_o\;
\ALT_INV_entradaB[10]~input_o\ <= NOT \entradaB[10]~input_o\;
\ALT_INV_entradaA[10]~input_o\ <= NOT \entradaA[10]~input_o\;
\ALT_INV_entradaB[11]~input_o\ <= NOT \entradaB[11]~input_o\;
\ALT_INV_entradaA[11]~input_o\ <= NOT \entradaA[11]~input_o\;
\ALT_INV_entradaB[12]~input_o\ <= NOT \entradaB[12]~input_o\;
\ALT_INV_entradaA[12]~input_o\ <= NOT \entradaA[12]~input_o\;
\ALT_INV_entradaB[13]~input_o\ <= NOT \entradaB[13]~input_o\;
\ALT_INV_entradaA[13]~input_o\ <= NOT \entradaA[13]~input_o\;
\ALT_INV_entradaB[14]~input_o\ <= NOT \entradaB[14]~input_o\;
\ALT_INV_entradaA[14]~input_o\ <= NOT \entradaA[14]~input_o\;
\ALT_INV_entradaB[15]~input_o\ <= NOT \entradaB[15]~input_o\;
\ALT_INV_entradaA[15]~input_o\ <= NOT \entradaA[15]~input_o\;
\ALT_INV_entradaB[16]~input_o\ <= NOT \entradaB[16]~input_o\;
\ALT_INV_entradaA[16]~input_o\ <= NOT \entradaA[16]~input_o\;
\ALT_INV_entradaB[17]~input_o\ <= NOT \entradaB[17]~input_o\;
\ALT_INV_entradaA[17]~input_o\ <= NOT \entradaA[17]~input_o\;
\ALT_INV_entradaB[18]~input_o\ <= NOT \entradaB[18]~input_o\;
\ALT_INV_entradaA[18]~input_o\ <= NOT \entradaA[18]~input_o\;
\ALT_INV_entradaB[19]~input_o\ <= NOT \entradaB[19]~input_o\;
\ALT_INV_entradaA[19]~input_o\ <= NOT \entradaA[19]~input_o\;
\ALT_INV_entradaB[20]~input_o\ <= NOT \entradaB[20]~input_o\;
\ALT_INV_entradaA[20]~input_o\ <= NOT \entradaA[20]~input_o\;
\ALT_INV_entradaB[21]~input_o\ <= NOT \entradaB[21]~input_o\;
\ALT_INV_entradaA[21]~input_o\ <= NOT \entradaA[21]~input_o\;
\ALT_INV_entradaB[22]~input_o\ <= NOT \entradaB[22]~input_o\;
\ALT_INV_entradaA[22]~input_o\ <= NOT \entradaA[22]~input_o\;
\ALT_INV_entradaB[23]~input_o\ <= NOT \entradaB[23]~input_o\;
\ALT_INV_entradaA[23]~input_o\ <= NOT \entradaA[23]~input_o\;
\ALT_INV_entradaB[24]~input_o\ <= NOT \entradaB[24]~input_o\;
\ALT_INV_entradaA[24]~input_o\ <= NOT \entradaA[24]~input_o\;
\ALT_INV_entradaB[25]~input_o\ <= NOT \entradaB[25]~input_o\;
\ALT_INV_entradaA[25]~input_o\ <= NOT \entradaA[25]~input_o\;
\ALT_INV_entradaB[26]~input_o\ <= NOT \entradaB[26]~input_o\;
\ALT_INV_entradaA[26]~input_o\ <= NOT \entradaA[26]~input_o\;
\ALT_INV_entradaB[27]~input_o\ <= NOT \entradaB[27]~input_o\;
\ALT_INV_entradaA[27]~input_o\ <= NOT \entradaA[27]~input_o\;
\ALT_INV_entradaB[28]~input_o\ <= NOT \entradaB[28]~input_o\;
\ALT_INV_entradaA[28]~input_o\ <= NOT \entradaA[28]~input_o\;
\ALT_INV_entradaB[29]~input_o\ <= NOT \entradaB[29]~input_o\;
\ALT_INV_entradaA[29]~input_o\ <= NOT \entradaA[29]~input_o\;
\ALT_INV_entradaB[30]~input_o\ <= NOT \entradaB[30]~input_o\;
\ALT_INV_inverteB~input_o\ <= NOT \inverteB~input_o\;
\ALT_INV_entradaA[30]~input_o\ <= NOT \entradaA[30]~input_o\;
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ULA32|MuxS|ALT_INV_saida~1_combout\ <= NOT \ULA32|MuxS|saida~1_combout\;
\ULA32|MuxS|ALT_INV_saida~0_combout\ <= NOT \ULA32|MuxS|saida~0_combout\;
\ULA32|som|ALT_INV_saida~0_combout\ <= NOT \ULA32|som|saida~0_combout\;
\ULA31|MuxS|ALT_INV_saida~1_combout\ <= NOT \ULA31|MuxS|saida~1_combout\;

\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|MuxS|saida~3_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA2|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA3|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA4|MuxS|saida~1_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA5|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA6|MuxS|saida~1_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA7|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA8|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

\saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA9|MuxS|saida~1_combout\,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

\saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA10|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

\saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA11|MuxS|saida~1_combout\,
	devoe => ww_devoe,
	o => \saida[10]~output_o\);

\saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA12|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[11]~output_o\);

\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA13|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[12]~output_o\);

\saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA14|MuxS|saida~1_combout\,
	devoe => ww_devoe,
	o => \saida[13]~output_o\);

\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA15|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[14]~output_o\);

\saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA16|MuxS|saida~1_combout\,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

\saida[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA17|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[16]~output_o\);

\saida[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA18|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[17]~output_o\);

\saida[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA19|MuxS|saida~1_combout\,
	devoe => ww_devoe,
	o => \saida[18]~output_o\);

\saida[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA20|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[19]~output_o\);

\saida[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA21|MuxS|saida~1_combout\,
	devoe => ww_devoe,
	o => \saida[20]~output_o\);

\saida[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA22|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[21]~output_o\);

\saida[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA23|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[22]~output_o\);

\saida[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA24|MuxS|saida~1_combout\,
	devoe => ww_devoe,
	o => \saida[23]~output_o\);

\saida[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA25|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[24]~output_o\);

\saida[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA26|MuxS|saida~1_combout\,
	devoe => ww_devoe,
	o => \saida[25]~output_o\);

\saida[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA27|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[26]~output_o\);

\saida[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA28|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[27]~output_o\);

\saida[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA29|MuxS|saida~1_combout\,
	devoe => ww_devoe,
	o => \saida[28]~output_o\);

\saida[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA30|MuxS|saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[29]~output_o\);

\saida[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA31|MuxS|saida~1_combout\,
	devoe => ww_devoe,
	o => \saida[30]~output_o\);

\saida[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA32|MuxS|saida~2_combout\,
	devoe => ww_devoe,
	o => \saida[31]~output_o\);

\flagZero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~8_combout\,
	devoe => ww_devoe,
	o => \flagZero~output_o\);

\entradaA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(30),
	o => \entradaA[30]~input_o\);

\inverteB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inverteB,
	o => \inverteB~input_o\);

\entradaB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(30),
	o => \entradaB[30]~input_o\);

\ULA31|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[30]~input_o\,
	combout => \ULA31|MuxB|saida~0_combout\);

\entradaA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(29),
	o => \entradaA[29]~input_o\);

\entradaB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(29),
	o => \entradaB[29]~input_o\);

\ULA30|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[29]~input_o\,
	combout => \ULA30|MuxB|saida~0_combout\);

\ULA30|som|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|som|cOut~0_combout\ = (\entradaA[29]~input_o\ & \ULA30|MuxB|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[29]~input_o\,
	datab => \ULA30|MuxB|ALT_INV_saida~0_combout\,
	combout => \ULA30|som|cOut~0_combout\);

\entradaA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(28),
	o => \entradaA[28]~input_o\);

\entradaB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(28),
	o => \entradaB[28]~input_o\);

\ULA29|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[28]~input_o\,
	combout => \ULA29|MuxB|saida~0_combout\);

\entradaA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(27),
	o => \entradaA[27]~input_o\);

\entradaB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(27),
	o => \entradaB[27]~input_o\);

\ULA28|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[27]~input_o\,
	combout => \ULA28|MuxB|saida~0_combout\);

\entradaA[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(26),
	o => \entradaA[26]~input_o\);

\entradaB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(26),
	o => \entradaB[26]~input_o\);

\ULA27|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA27|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[26]~input_o\,
	combout => \ULA27|MuxB|saida~0_combout\);

\entradaA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(25),
	o => \entradaA[25]~input_o\);

\entradaB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(25),
	o => \entradaB[25]~input_o\);

\ULA26|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[25]~input_o\,
	combout => \ULA26|MuxB|saida~0_combout\);

\entradaA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(24),
	o => \entradaA[24]~input_o\);

\entradaB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(24),
	o => \entradaB[24]~input_o\);

\ULA25|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[24]~input_o\,
	combout => \ULA25|MuxB|saida~0_combout\);

\ULA25|som|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|som|cOut~0_combout\ = (\entradaA[24]~input_o\ & \ULA25|MuxB|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[24]~input_o\,
	datab => \ULA25|MuxB|ALT_INV_saida~0_combout\,
	combout => \ULA25|som|cOut~0_combout\);

\entradaA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(23),
	o => \entradaA[23]~input_o\);

\entradaB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(23),
	o => \entradaB[23]~input_o\);

\ULA24|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[23]~input_o\,
	combout => \ULA24|MuxB|saida~0_combout\);

\entradaA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(22),
	o => \entradaA[22]~input_o\);

\entradaB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(22),
	o => \entradaB[22]~input_o\);

\ULA23|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[22]~input_o\,
	combout => \ULA23|MuxB|saida~0_combout\);

\entradaA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(21),
	o => \entradaA[21]~input_o\);

\entradaB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(21),
	o => \entradaB[21]~input_o\);

\ULA22|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA22|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[21]~input_o\,
	combout => \ULA22|MuxB|saida~0_combout\);

\entradaA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(20),
	o => \entradaA[20]~input_o\);

\entradaB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(20),
	o => \entradaB[20]~input_o\);

\ULA21|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[20]~input_o\,
	combout => \ULA21|MuxB|saida~0_combout\);

\entradaA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(19),
	o => \entradaA[19]~input_o\);

\entradaB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(19),
	o => \entradaB[19]~input_o\);

\ULA20|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[19]~input_o\,
	combout => \ULA20|MuxB|saida~0_combout\);

\ULA20|som|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|som|cOut~0_combout\ = (\entradaA[19]~input_o\ & \ULA20|MuxB|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[19]~input_o\,
	datab => \ULA20|MuxB|ALT_INV_saida~0_combout\,
	combout => \ULA20|som|cOut~0_combout\);

\entradaA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(18),
	o => \entradaA[18]~input_o\);

\entradaB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(18),
	o => \entradaB[18]~input_o\);

\ULA19|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[18]~input_o\,
	combout => \ULA19|MuxB|saida~0_combout\);

\entradaA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(17),
	o => \entradaA[17]~input_o\);

\entradaB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(17),
	o => \entradaB[17]~input_o\);

\ULA18|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[17]~input_o\,
	combout => \ULA18|MuxB|saida~0_combout\);

\entradaA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(16),
	o => \entradaA[16]~input_o\);

\entradaB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(16),
	o => \entradaB[16]~input_o\);

\ULA17|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA17|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[16]~input_o\,
	combout => \ULA17|MuxB|saida~0_combout\);

\entradaA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(15),
	o => \entradaA[15]~input_o\);

\entradaB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(15),
	o => \entradaB[15]~input_o\);

\ULA16|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[15]~input_o\,
	combout => \ULA16|MuxB|saida~0_combout\);

\entradaA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(14),
	o => \entradaA[14]~input_o\);

\entradaB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(14),
	o => \entradaB[14]~input_o\);

\ULA15|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[14]~input_o\,
	combout => \ULA15|MuxB|saida~0_combout\);

\ULA15|som|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|som|cOut~0_combout\ = (\entradaA[14]~input_o\ & \ULA15|MuxB|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[14]~input_o\,
	datab => \ULA15|MuxB|ALT_INV_saida~0_combout\,
	combout => \ULA15|som|cOut~0_combout\);

\entradaA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(13),
	o => \entradaA[13]~input_o\);

\entradaB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(13),
	o => \entradaB[13]~input_o\);

\ULA14|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[13]~input_o\,
	combout => \ULA14|MuxB|saida~0_combout\);

\entradaA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(12),
	o => \entradaA[12]~input_o\);

\entradaB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(12),
	o => \entradaB[12]~input_o\);

\ULA13|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[12]~input_o\,
	combout => \ULA13|MuxB|saida~0_combout\);

\entradaA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(11),
	o => \entradaA[11]~input_o\);

\entradaB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(11),
	o => \entradaB[11]~input_o\);

\ULA12|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA12|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[11]~input_o\,
	combout => \ULA12|MuxB|saida~0_combout\);

\entradaA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(10),
	o => \entradaA[10]~input_o\);

\entradaB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(10),
	o => \entradaB[10]~input_o\);

\ULA11|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[10]~input_o\,
	combout => \ULA11|MuxB|saida~0_combout\);

\entradaA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(9),
	o => \entradaA[9]~input_o\);

\entradaB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(9),
	o => \entradaB[9]~input_o\);

\ULA10|som|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|som|cOut~0_combout\ = (\entradaA[9]~input_o\ & (!\inverteB~input_o\ $ (!\entradaB[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[9]~input_o\,
	datac => \ALT_INV_entradaB[9]~input_o\,
	combout => \ULA10|som|cOut~0_combout\);

\entradaA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(8),
	o => \entradaA[8]~input_o\);

\entradaB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(8),
	o => \entradaB[8]~input_o\);

\ULA9|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[8]~input_o\,
	combout => \ULA9|MuxB|saida~0_combout\);

\entradaA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(7),
	o => \entradaA[7]~input_o\);

\entradaB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(7),
	o => \entradaB[7]~input_o\);

\ULA8|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[7]~input_o\,
	combout => \ULA8|MuxB|saida~0_combout\);

\entradaA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(6),
	o => \entradaA[6]~input_o\);

\entradaB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(6),
	o => \entradaB[6]~input_o\);

\ULA7|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[6]~input_o\,
	combout => \ULA7|MuxB|saida~0_combout\);

\entradaA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(5),
	o => \entradaA[5]~input_o\);

\entradaB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(5),
	o => \entradaB[5]~input_o\);

\ULA6|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[5]~input_o\,
	combout => \ULA6|MuxB|saida~0_combout\);

\entradaA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(4),
	o => \entradaA[4]~input_o\);

\entradaB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(4),
	o => \entradaB[4]~input_o\);

\ULA5|som|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|som|cOut~0_combout\ = (\entradaA[4]~input_o\ & (!\inverteB~input_o\ $ (!\entradaB[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[4]~input_o\,
	datac => \ALT_INV_entradaB[4]~input_o\,
	combout => \ULA5|som|cOut~0_combout\);

\entradaA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(3),
	o => \entradaA[3]~input_o\);

\entradaB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(3),
	o => \entradaB[3]~input_o\);

\ULA4|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[3]~input_o\,
	combout => \ULA4|MuxB|saida~0_combout\);

\entradaA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(2),
	o => \entradaA[2]~input_o\);

\entradaB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(2),
	o => \entradaB[2]~input_o\);

\ULA3|MuxB|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|MuxB|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[2]~input_o\,
	combout => \ULA3|MuxB|saida~0_combout\);

\entradaA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(1),
	o => \entradaA[1]~input_o\);

\entradaB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(1),
	o => \entradaB[1]~input_o\);

\entradaB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(0),
	o => \entradaB[0]~input_o\);

\entradaA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(0),
	o => \entradaA[0]~input_o\);

\ULA2|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|som|cOut~combout\ = ( \entradaA[0]~input_o\ & ( (!\entradaB[1]~input_o\ & (((\entradaA[1]~input_o\ & \entradaB[0]~input_o\)) # (\inverteB~input_o\))) # (\entradaB[1]~input_o\ & (((!\inverteB~input_o\ & \entradaB[0]~input_o\)) # 
-- (\entradaA[1]~input_o\))) ) ) # ( !\entradaA[0]~input_o\ & ( (!\entradaB[1]~input_o\ & (\inverteB~input_o\ & ((!\entradaB[0]~input_o\) # (\entradaA[1]~input_o\)))) # (\entradaB[1]~input_o\ & (\entradaA[1]~input_o\ & ((!\inverteB~input_o\) # 
-- (!\entradaB[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100010010010100110111101101010011000100100101001101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[1]~input_o\,
	datac => \ALT_INV_entradaB[1]~input_o\,
	datad => \ALT_INV_entradaB[0]~input_o\,
	datae => \ALT_INV_entradaA[0]~input_o\,
	combout => \ULA2|som|cOut~combout\);

\ULA5|som|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|som|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaA[4]~input_o\ $ (\entradaB[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[4]~input_o\,
	datac => \ALT_INV_entradaB[4]~input_o\,
	combout => \ULA5|som|saida~0_combout\);

\ULA5|som|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|som|cOut~1_combout\ = ( \ULA2|som|cOut~combout\ & ( \ULA5|som|saida~0_combout\ & ( (!\entradaA[3]~input_o\ & (\ULA4|MuxB|saida~0_combout\ & ((\ULA3|MuxB|saida~0_combout\) # (\entradaA[2]~input_o\)))) # (\entradaA[3]~input_o\ & 
-- (((\ULA3|MuxB|saida~0_combout\) # (\entradaA[2]~input_o\)) # (\ULA4|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA2|som|cOut~combout\ & ( \ULA5|som|saida~0_combout\ & ( (!\entradaA[3]~input_o\ & (\ULA4|MuxB|saida~0_combout\ & (\entradaA[2]~input_o\ & 
-- \ULA3|MuxB|saida~0_combout\))) # (\entradaA[3]~input_o\ & (((\entradaA[2]~input_o\ & \ULA3|MuxB|saida~0_combout\)) # (\ULA4|MuxB|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[3]~input_o\,
	datab => \ULA4|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[2]~input_o\,
	datad => \ULA3|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA2|som|ALT_INV_cOut~combout\,
	dataf => \ULA5|som|ALT_INV_saida~0_combout\,
	combout => \ULA5|som|cOut~1_combout\);

\ULA7|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|som|cOut~combout\ = ( \ULA5|som|cOut~0_combout\ & ( \ULA5|som|cOut~1_combout\ & ( (!\entradaA[6]~input_o\ & ((!\ULA7|MuxB|saida~0_combout\) # ((!\entradaA[5]~input_o\ & !\ULA6|MuxB|saida~0_combout\)))) # (\entradaA[6]~input_o\ & 
-- (!\ULA7|MuxB|saida~0_combout\ & (!\entradaA[5]~input_o\ & !\ULA6|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA5|som|cOut~0_combout\ & ( \ULA5|som|cOut~1_combout\ & ( (!\entradaA[6]~input_o\ & ((!\ULA7|MuxB|saida~0_combout\) # ((!\entradaA[5]~input_o\ & 
-- !\ULA6|MuxB|saida~0_combout\)))) # (\entradaA[6]~input_o\ & (!\ULA7|MuxB|saida~0_combout\ & (!\entradaA[5]~input_o\ & !\ULA6|MuxB|saida~0_combout\))) ) ) ) # ( \ULA5|som|cOut~0_combout\ & ( !\ULA5|som|cOut~1_combout\ & ( (!\entradaA[6]~input_o\ & 
-- ((!\ULA7|MuxB|saida~0_combout\) # ((!\entradaA[5]~input_o\ & !\ULA6|MuxB|saida~0_combout\)))) # (\entradaA[6]~input_o\ & (!\ULA7|MuxB|saida~0_combout\ & (!\entradaA[5]~input_o\ & !\ULA6|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA5|som|cOut~0_combout\ & ( 
-- !\ULA5|som|cOut~1_combout\ & ( (!\entradaA[6]~input_o\ & ((!\ULA7|MuxB|saida~0_combout\) # ((!\entradaA[5]~input_o\) # (!\ULA6|MuxB|saida~0_combout\)))) # (\entradaA[6]~input_o\ & (!\ULA7|MuxB|saida~0_combout\ & ((!\entradaA[5]~input_o\) # 
-- (!\ULA6|MuxB|saida~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[6]~input_o\,
	datab => \ULA7|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[5]~input_o\,
	datad => \ULA6|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA5|som|ALT_INV_cOut~0_combout\,
	dataf => \ULA5|som|ALT_INV_cOut~1_combout\,
	combout => \ULA7|som|cOut~combout\);

\ULA10|som|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|som|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaA[9]~input_o\ $ (\entradaB[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[9]~input_o\,
	datac => \ALT_INV_entradaB[9]~input_o\,
	combout => \ULA10|som|saida~0_combout\);

\ULA10|som|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|som|cOut~1_combout\ = ( \ULA7|som|cOut~combout\ & ( \ULA10|som|saida~0_combout\ & ( (!\entradaA[8]~input_o\ & (\ULA9|MuxB|saida~0_combout\ & (\entradaA[7]~input_o\ & \ULA8|MuxB|saida~0_combout\))) # (\entradaA[8]~input_o\ & (((\entradaA[7]~input_o\ 
-- & \ULA8|MuxB|saida~0_combout\)) # (\ULA9|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA7|som|cOut~combout\ & ( \ULA10|som|saida~0_combout\ & ( (!\entradaA[8]~input_o\ & (\ULA9|MuxB|saida~0_combout\ & ((\ULA8|MuxB|saida~0_combout\) # (\entradaA[7]~input_o\)))) # 
-- (\entradaA[8]~input_o\ & (((\ULA8|MuxB|saida~0_combout\) # (\entradaA[7]~input_o\)) # (\ULA9|MuxB|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[8]~input_o\,
	datab => \ULA9|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[7]~input_o\,
	datad => \ULA8|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA7|som|ALT_INV_cOut~combout\,
	dataf => \ULA10|som|ALT_INV_saida~0_combout\,
	combout => \ULA10|som|cOut~1_combout\);

\ULA12|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA12|som|cOut~combout\ = ( \ULA10|som|cOut~0_combout\ & ( \ULA10|som|cOut~1_combout\ & ( (!\entradaA[11]~input_o\ & ((!\ULA12|MuxB|saida~0_combout\) # ((!\entradaA[10]~input_o\ & !\ULA11|MuxB|saida~0_combout\)))) # (\entradaA[11]~input_o\ & 
-- (!\ULA12|MuxB|saida~0_combout\ & (!\entradaA[10]~input_o\ & !\ULA11|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA10|som|cOut~0_combout\ & ( \ULA10|som|cOut~1_combout\ & ( (!\entradaA[11]~input_o\ & ((!\ULA12|MuxB|saida~0_combout\) # ((!\entradaA[10]~input_o\ & 
-- !\ULA11|MuxB|saida~0_combout\)))) # (\entradaA[11]~input_o\ & (!\ULA12|MuxB|saida~0_combout\ & (!\entradaA[10]~input_o\ & !\ULA11|MuxB|saida~0_combout\))) ) ) ) # ( \ULA10|som|cOut~0_combout\ & ( !\ULA10|som|cOut~1_combout\ & ( (!\entradaA[11]~input_o\ & 
-- ((!\ULA12|MuxB|saida~0_combout\) # ((!\entradaA[10]~input_o\ & !\ULA11|MuxB|saida~0_combout\)))) # (\entradaA[11]~input_o\ & (!\ULA12|MuxB|saida~0_combout\ & (!\entradaA[10]~input_o\ & !\ULA11|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA10|som|cOut~0_combout\ 
-- & ( !\ULA10|som|cOut~1_combout\ & ( (!\entradaA[11]~input_o\ & ((!\ULA12|MuxB|saida~0_combout\) # ((!\entradaA[10]~input_o\) # (!\ULA11|MuxB|saida~0_combout\)))) # (\entradaA[11]~input_o\ & (!\ULA12|MuxB|saida~0_combout\ & ((!\entradaA[10]~input_o\) # 
-- (!\ULA11|MuxB|saida~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[11]~input_o\,
	datab => \ULA12|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[10]~input_o\,
	datad => \ULA11|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA10|som|ALT_INV_cOut~0_combout\,
	dataf => \ULA10|som|ALT_INV_cOut~1_combout\,
	combout => \ULA12|som|cOut~combout\);

\ULA15|som|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|som|saida~0_combout\ = !\entradaA[14]~input_o\ $ (!\ULA15|MuxB|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[14]~input_o\,
	datab => \ULA15|MuxB|ALT_INV_saida~0_combout\,
	combout => \ULA15|som|saida~0_combout\);

\ULA15|som|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|som|cOut~1_combout\ = ( \ULA12|som|cOut~combout\ & ( \ULA15|som|saida~0_combout\ & ( (!\entradaA[13]~input_o\ & (\ULA14|MuxB|saida~0_combout\ & (\entradaA[12]~input_o\ & \ULA13|MuxB|saida~0_combout\))) # (\entradaA[13]~input_o\ & 
-- (((\entradaA[12]~input_o\ & \ULA13|MuxB|saida~0_combout\)) # (\ULA14|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA12|som|cOut~combout\ & ( \ULA15|som|saida~0_combout\ & ( (!\entradaA[13]~input_o\ & (\ULA14|MuxB|saida~0_combout\ & 
-- ((\ULA13|MuxB|saida~0_combout\) # (\entradaA[12]~input_o\)))) # (\entradaA[13]~input_o\ & (((\ULA13|MuxB|saida~0_combout\) # (\entradaA[12]~input_o\)) # (\ULA14|MuxB|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[13]~input_o\,
	datab => \ULA14|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[12]~input_o\,
	datad => \ULA13|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA12|som|ALT_INV_cOut~combout\,
	dataf => \ULA15|som|ALT_INV_saida~0_combout\,
	combout => \ULA15|som|cOut~1_combout\);

\ULA17|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA17|som|cOut~combout\ = ( \ULA15|som|cOut~0_combout\ & ( \ULA15|som|cOut~1_combout\ & ( (!\entradaA[16]~input_o\ & ((!\ULA17|MuxB|saida~0_combout\) # ((!\entradaA[15]~input_o\ & !\ULA16|MuxB|saida~0_combout\)))) # (\entradaA[16]~input_o\ & 
-- (!\ULA17|MuxB|saida~0_combout\ & (!\entradaA[15]~input_o\ & !\ULA16|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA15|som|cOut~0_combout\ & ( \ULA15|som|cOut~1_combout\ & ( (!\entradaA[16]~input_o\ & ((!\ULA17|MuxB|saida~0_combout\) # ((!\entradaA[15]~input_o\ & 
-- !\ULA16|MuxB|saida~0_combout\)))) # (\entradaA[16]~input_o\ & (!\ULA17|MuxB|saida~0_combout\ & (!\entradaA[15]~input_o\ & !\ULA16|MuxB|saida~0_combout\))) ) ) ) # ( \ULA15|som|cOut~0_combout\ & ( !\ULA15|som|cOut~1_combout\ & ( (!\entradaA[16]~input_o\ & 
-- ((!\ULA17|MuxB|saida~0_combout\) # ((!\entradaA[15]~input_o\ & !\ULA16|MuxB|saida~0_combout\)))) # (\entradaA[16]~input_o\ & (!\ULA17|MuxB|saida~0_combout\ & (!\entradaA[15]~input_o\ & !\ULA16|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA15|som|cOut~0_combout\ 
-- & ( !\ULA15|som|cOut~1_combout\ & ( (!\entradaA[16]~input_o\ & ((!\ULA17|MuxB|saida~0_combout\) # ((!\entradaA[15]~input_o\) # (!\ULA16|MuxB|saida~0_combout\)))) # (\entradaA[16]~input_o\ & (!\ULA17|MuxB|saida~0_combout\ & ((!\entradaA[15]~input_o\) # 
-- (!\ULA16|MuxB|saida~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[16]~input_o\,
	datab => \ULA17|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[15]~input_o\,
	datad => \ULA16|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA15|som|ALT_INV_cOut~0_combout\,
	dataf => \ULA15|som|ALT_INV_cOut~1_combout\,
	combout => \ULA17|som|cOut~combout\);

\ULA20|som|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|som|saida~0_combout\ = !\entradaA[19]~input_o\ $ (!\ULA20|MuxB|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[19]~input_o\,
	datab => \ULA20|MuxB|ALT_INV_saida~0_combout\,
	combout => \ULA20|som|saida~0_combout\);

\ULA20|som|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|som|cOut~1_combout\ = ( \ULA17|som|cOut~combout\ & ( \ULA20|som|saida~0_combout\ & ( (!\entradaA[18]~input_o\ & (\ULA19|MuxB|saida~0_combout\ & (\entradaA[17]~input_o\ & \ULA18|MuxB|saida~0_combout\))) # (\entradaA[18]~input_o\ & 
-- (((\entradaA[17]~input_o\ & \ULA18|MuxB|saida~0_combout\)) # (\ULA19|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA17|som|cOut~combout\ & ( \ULA20|som|saida~0_combout\ & ( (!\entradaA[18]~input_o\ & (\ULA19|MuxB|saida~0_combout\ & 
-- ((\ULA18|MuxB|saida~0_combout\) # (\entradaA[17]~input_o\)))) # (\entradaA[18]~input_o\ & (((\ULA18|MuxB|saida~0_combout\) # (\entradaA[17]~input_o\)) # (\ULA19|MuxB|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[18]~input_o\,
	datab => \ULA19|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[17]~input_o\,
	datad => \ULA18|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA17|som|ALT_INV_cOut~combout\,
	dataf => \ULA20|som|ALT_INV_saida~0_combout\,
	combout => \ULA20|som|cOut~1_combout\);

\ULA22|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA22|som|cOut~combout\ = ( \ULA20|som|cOut~0_combout\ & ( \ULA20|som|cOut~1_combout\ & ( (!\entradaA[21]~input_o\ & ((!\ULA22|MuxB|saida~0_combout\) # ((!\entradaA[20]~input_o\ & !\ULA21|MuxB|saida~0_combout\)))) # (\entradaA[21]~input_o\ & 
-- (!\ULA22|MuxB|saida~0_combout\ & (!\entradaA[20]~input_o\ & !\ULA21|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA20|som|cOut~0_combout\ & ( \ULA20|som|cOut~1_combout\ & ( (!\entradaA[21]~input_o\ & ((!\ULA22|MuxB|saida~0_combout\) # ((!\entradaA[20]~input_o\ & 
-- !\ULA21|MuxB|saida~0_combout\)))) # (\entradaA[21]~input_o\ & (!\ULA22|MuxB|saida~0_combout\ & (!\entradaA[20]~input_o\ & !\ULA21|MuxB|saida~0_combout\))) ) ) ) # ( \ULA20|som|cOut~0_combout\ & ( !\ULA20|som|cOut~1_combout\ & ( (!\entradaA[21]~input_o\ & 
-- ((!\ULA22|MuxB|saida~0_combout\) # ((!\entradaA[20]~input_o\ & !\ULA21|MuxB|saida~0_combout\)))) # (\entradaA[21]~input_o\ & (!\ULA22|MuxB|saida~0_combout\ & (!\entradaA[20]~input_o\ & !\ULA21|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA20|som|cOut~0_combout\ 
-- & ( !\ULA20|som|cOut~1_combout\ & ( (!\entradaA[21]~input_o\ & ((!\ULA22|MuxB|saida~0_combout\) # ((!\entradaA[20]~input_o\) # (!\ULA21|MuxB|saida~0_combout\)))) # (\entradaA[21]~input_o\ & (!\ULA22|MuxB|saida~0_combout\ & ((!\entradaA[20]~input_o\) # 
-- (!\ULA21|MuxB|saida~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[21]~input_o\,
	datab => \ULA22|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[20]~input_o\,
	datad => \ULA21|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA20|som|ALT_INV_cOut~0_combout\,
	dataf => \ULA20|som|ALT_INV_cOut~1_combout\,
	combout => \ULA22|som|cOut~combout\);

\ULA25|som|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|som|saida~0_combout\ = !\entradaA[24]~input_o\ $ (!\ULA25|MuxB|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[24]~input_o\,
	datab => \ULA25|MuxB|ALT_INV_saida~0_combout\,
	combout => \ULA25|som|saida~0_combout\);

\ULA25|som|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|som|cOut~1_combout\ = ( \ULA22|som|cOut~combout\ & ( \ULA25|som|saida~0_combout\ & ( (!\entradaA[23]~input_o\ & (\ULA24|MuxB|saida~0_combout\ & (\entradaA[22]~input_o\ & \ULA23|MuxB|saida~0_combout\))) # (\entradaA[23]~input_o\ & 
-- (((\entradaA[22]~input_o\ & \ULA23|MuxB|saida~0_combout\)) # (\ULA24|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA22|som|cOut~combout\ & ( \ULA25|som|saida~0_combout\ & ( (!\entradaA[23]~input_o\ & (\ULA24|MuxB|saida~0_combout\ & 
-- ((\ULA23|MuxB|saida~0_combout\) # (\entradaA[22]~input_o\)))) # (\entradaA[23]~input_o\ & (((\ULA23|MuxB|saida~0_combout\) # (\entradaA[22]~input_o\)) # (\ULA24|MuxB|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[23]~input_o\,
	datab => \ULA24|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[22]~input_o\,
	datad => \ULA23|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA22|som|ALT_INV_cOut~combout\,
	dataf => \ULA25|som|ALT_INV_saida~0_combout\,
	combout => \ULA25|som|cOut~1_combout\);

\ULA27|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA27|som|cOut~combout\ = ( \ULA25|som|cOut~0_combout\ & ( \ULA25|som|cOut~1_combout\ & ( (!\entradaA[26]~input_o\ & ((!\ULA27|MuxB|saida~0_combout\) # ((!\entradaA[25]~input_o\ & !\ULA26|MuxB|saida~0_combout\)))) # (\entradaA[26]~input_o\ & 
-- (!\ULA27|MuxB|saida~0_combout\ & (!\entradaA[25]~input_o\ & !\ULA26|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA25|som|cOut~0_combout\ & ( \ULA25|som|cOut~1_combout\ & ( (!\entradaA[26]~input_o\ & ((!\ULA27|MuxB|saida~0_combout\) # ((!\entradaA[25]~input_o\ & 
-- !\ULA26|MuxB|saida~0_combout\)))) # (\entradaA[26]~input_o\ & (!\ULA27|MuxB|saida~0_combout\ & (!\entradaA[25]~input_o\ & !\ULA26|MuxB|saida~0_combout\))) ) ) ) # ( \ULA25|som|cOut~0_combout\ & ( !\ULA25|som|cOut~1_combout\ & ( (!\entradaA[26]~input_o\ & 
-- ((!\ULA27|MuxB|saida~0_combout\) # ((!\entradaA[25]~input_o\ & !\ULA26|MuxB|saida~0_combout\)))) # (\entradaA[26]~input_o\ & (!\ULA27|MuxB|saida~0_combout\ & (!\entradaA[25]~input_o\ & !\ULA26|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA25|som|cOut~0_combout\ 
-- & ( !\ULA25|som|cOut~1_combout\ & ( (!\entradaA[26]~input_o\ & ((!\ULA27|MuxB|saida~0_combout\) # ((!\entradaA[25]~input_o\) # (!\ULA26|MuxB|saida~0_combout\)))) # (\entradaA[26]~input_o\ & (!\ULA27|MuxB|saida~0_combout\ & ((!\entradaA[25]~input_o\) # 
-- (!\ULA26|MuxB|saida~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[26]~input_o\,
	datab => \ULA27|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[25]~input_o\,
	datad => \ULA26|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA25|som|ALT_INV_cOut~0_combout\,
	dataf => \ULA25|som|ALT_INV_cOut~1_combout\,
	combout => \ULA27|som|cOut~combout\);

\ULA30|som|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|som|saida~0_combout\ = !\entradaA[29]~input_o\ $ (!\ULA30|MuxB|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[29]~input_o\,
	datab => \ULA30|MuxB|ALT_INV_saida~0_combout\,
	combout => \ULA30|som|saida~0_combout\);

\ULA30|som|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|som|cOut~1_combout\ = ( \ULA27|som|cOut~combout\ & ( \ULA30|som|saida~0_combout\ & ( (!\entradaA[28]~input_o\ & (\ULA29|MuxB|saida~0_combout\ & (\entradaA[27]~input_o\ & \ULA28|MuxB|saida~0_combout\))) # (\entradaA[28]~input_o\ & 
-- (((\entradaA[27]~input_o\ & \ULA28|MuxB|saida~0_combout\)) # (\ULA29|MuxB|saida~0_combout\))) ) ) ) # ( !\ULA27|som|cOut~combout\ & ( \ULA30|som|saida~0_combout\ & ( (!\entradaA[28]~input_o\ & (\ULA29|MuxB|saida~0_combout\ & 
-- ((\ULA28|MuxB|saida~0_combout\) # (\entradaA[27]~input_o\)))) # (\entradaA[28]~input_o\ & (((\ULA28|MuxB|saida~0_combout\) # (\entradaA[27]~input_o\)) # (\ULA29|MuxB|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[28]~input_o\,
	datab => \ULA29|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[27]~input_o\,
	datad => \ULA28|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA27|som|ALT_INV_cOut~combout\,
	dataf => \ULA30|som|ALT_INV_saida~0_combout\,
	combout => \ULA30|som|cOut~1_combout\);

\entradaA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(31),
	o => \entradaA[31]~input_o\);

\entradaB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(31),
	o => \entradaB[31]~input_o\);

\seletor[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(0),
	o => \seletor[0]~input_o\);

\seletor[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(1),
	o => \seletor[1]~input_o\);

\ULA1|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|MuxS|saida~0_combout\ = ( \seletor[1]~input_o\ & ( (\seletor[0]~input_o\ & ((!\entradaB[31]~input_o\ $ (!\inverteB~input_o\)) # (\entradaA[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000111110100000000000000000000000001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[31]~input_o\,
	datab => \ALT_INV_entradaB[31]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_seletor[0]~input_o\,
	datae => \ALT_INV_seletor[1]~input_o\,
	combout => \ULA1|MuxS|saida~0_combout\);

\ULA1|MuxS|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|MuxS|saida~1_combout\ = (\entradaA[31]~input_o\ & (!\entradaB[31]~input_o\ $ (!\inverteB~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[31]~input_o\,
	datab => \ALT_INV_entradaB[31]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	combout => \ULA1|MuxS|saida~1_combout\);

\ULA1|MuxS|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|MuxS|saida~2_combout\ = ( \ULA1|MuxS|saida~1_combout\ & ( (!\seletor[0]~input_o\ & ((!\seletor[1]~input_o\ & (\entradaB[0]~input_o\ & \entradaA[0]~input_o\)) # (\seletor[1]~input_o\ & (!\entradaB[0]~input_o\ $ (!\entradaA[0]~input_o\))))) # 
-- (\seletor[0]~input_o\ & (((\entradaA[0]~input_o\) # (\entradaB[0]~input_o\)) # (\seletor[1]~input_o\))) ) ) # ( !\ULA1|MuxS|saida~1_combout\ & ( (!\entradaB[0]~input_o\ & (\entradaA[0]~input_o\ & (!\seletor[0]~input_o\ $ (!\seletor[1]~input_o\)))) # 
-- (\entradaB[0]~input_o\ & (!\seletor[1]~input_o\ $ (((!\seletor[0]~input_o\ & !\entradaA[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100000101110111110100000110011011000001011101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaB[0]~input_o\,
	datad => \ALT_INV_entradaA[0]~input_o\,
	datae => \ULA1|MuxS|ALT_INV_saida~1_combout\,
	combout => \ULA1|MuxS|saida~2_combout\);

\ULA1|MuxS|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|MuxS|saida~3_combout\ = ( \ULA1|MuxS|saida~0_combout\ & ( \ULA1|MuxS|saida~2_combout\ ) ) # ( !\ULA1|MuxS|saida~0_combout\ & ( \ULA1|MuxS|saida~2_combout\ ) ) # ( \ULA1|MuxS|saida~0_combout\ & ( !\ULA1|MuxS|saida~2_combout\ & ( 
-- (!\entradaA[30]~input_o\ & ((!\ULA31|MuxB|saida~0_combout\) # ((!\ULA30|som|cOut~0_combout\ & !\ULA30|som|cOut~1_combout\)))) # (\entradaA[30]~input_o\ & (!\ULA31|MuxB|saida~0_combout\ & (!\ULA30|som|cOut~0_combout\ & !\ULA30|som|cOut~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010001000100011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[30]~input_o\,
	datab => \ULA31|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA30|som|ALT_INV_cOut~0_combout\,
	datad => \ULA30|som|ALT_INV_cOut~1_combout\,
	datae => \ULA1|MuxS|ALT_INV_saida~0_combout\,
	dataf => \ULA1|MuxS|ALT_INV_saida~2_combout\,
	combout => \ULA1|MuxS|saida~3_combout\);

\ULA2|som|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|som|saida~combout\ = ( \entradaA[0]~input_o\ & ( !\entradaA[1]~input_o\ $ (!\entradaB[1]~input_o\ $ (((!\inverteB~input_o\ & \entradaB[0]~input_o\)))) ) ) # ( !\entradaA[0]~input_o\ & ( !\entradaA[1]~input_o\ $ (!\entradaB[1]~input_o\ $ 
-- (((\inverteB~input_o\ & \entradaB[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111001001011000111100011010010011110010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[1]~input_o\,
	datac => \ALT_INV_entradaB[1]~input_o\,
	datad => \ALT_INV_entradaB[0]~input_o\,
	datae => \ALT_INV_entradaA[0]~input_o\,
	combout => \ULA2|som|saida~combout\);

\ULA2|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|MuxS|saida~0_combout\ = ( \ULA2|som|saida~combout\ & ( (!\seletor[0]~input_o\ & (((\entradaA[1]~input_o\ & \entradaB[1]~input_o\)) # (\seletor[1]~input_o\))) # (\seletor[0]~input_o\ & (!\seletor[1]~input_o\ & ((\entradaB[1]~input_o\) # 
-- (\entradaA[1]~input_o\)))) ) ) # ( !\ULA2|som|saida~combout\ & ( (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[1]~input_o\ & \entradaB[1]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[1]~input_o\) # (\entradaA[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100001001100110111000000100010011000010011001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[1]~input_o\,
	datad => \ALT_INV_entradaB[1]~input_o\,
	datae => \ULA2|som|ALT_INV_saida~combout\,
	combout => \ULA2|MuxS|saida~0_combout\);

\ULA3|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|MuxS|saida~0_combout\ = ( \entradaB[2]~input_o\ & ( \ULA2|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[2]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( 
-- !\entradaB[2]~input_o\ & ( \ULA2|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[2]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[2]~input_o\)))) ) ) ) # ( 
-- \entradaB[2]~input_o\ & ( !\ULA2|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[2]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[2]~input_o\ & ( 
-- !\ULA2|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[2]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000111000001110001111010000001000001101000011010011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[2]~input_o\,
	datae => \ALT_INV_entradaB[2]~input_o\,
	dataf => \ULA2|som|ALT_INV_cOut~combout\,
	combout => \ULA3|MuxS|saida~0_combout\);

\ULA4|som|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|som|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaA[3]~input_o\ $ (\entradaB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[3]~input_o\,
	datac => \ALT_INV_entradaB[3]~input_o\,
	combout => \ULA4|som|saida~0_combout\);

\ULA2|MuxS|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|MuxS|saida~1_combout\ = (!\seletor[0]~input_o\ & \seletor[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	combout => \ULA2|MuxS|saida~1_combout\);

\ULA4|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|MuxS|saida~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[3]~input_o\ & \entradaB[3]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[3]~input_o\) # (\entradaA[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[3]~input_o\,
	datad => \ALT_INV_entradaB[3]~input_o\,
	combout => \ULA4|MuxS|saida~0_combout\);

\ULA4|MuxS|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|MuxS|saida~1_combout\ = ( \ULA2|MuxS|saida~1_combout\ & ( \ULA4|MuxS|saida~0_combout\ ) ) # ( !\ULA2|MuxS|saida~1_combout\ & ( \ULA4|MuxS|saida~0_combout\ ) ) # ( \ULA2|MuxS|saida~1_combout\ & ( !\ULA4|MuxS|saida~0_combout\ & ( 
-- !\ULA4|som|saida~0_combout\ $ (((!\entradaA[2]~input_o\ & ((!\ULA3|MuxB|saida~0_combout\) # (!\ULA2|som|cOut~combout\))) # (\entradaA[2]~input_o\ & (!\ULA3|MuxB|saida~0_combout\ & !\ULA2|som|cOut~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101111110100011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[2]~input_o\,
	datab => \ULA3|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA2|som|ALT_INV_cOut~combout\,
	datad => \ULA4|som|ALT_INV_saida~0_combout\,
	datae => \ULA2|MuxS|ALT_INV_saida~1_combout\,
	dataf => \ULA4|MuxS|ALT_INV_saida~0_combout\,
	combout => \ULA4|MuxS|saida~1_combout\);

\ULA4|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|som|cOut~combout\ = ( \ULA2|som|cOut~combout\ & ( (!\entradaA[3]~input_o\ & (\ULA4|MuxB|saida~0_combout\ & ((\ULA3|MuxB|saida~0_combout\) # (\entradaA[2]~input_o\)))) # (\entradaA[3]~input_o\ & (((\ULA3|MuxB|saida~0_combout\) # 
-- (\entradaA[2]~input_o\)) # (\ULA4|MuxB|saida~0_combout\))) ) ) # ( !\ULA2|som|cOut~combout\ & ( (!\entradaA[3]~input_o\ & (\ULA4|MuxB|saida~0_combout\ & (\entradaA[2]~input_o\ & \ULA3|MuxB|saida~0_combout\))) # (\entradaA[3]~input_o\ & 
-- (((\entradaA[2]~input_o\ & \ULA3|MuxB|saida~0_combout\)) # (\ULA4|MuxB|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000101110111011100010001000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[3]~input_o\,
	datab => \ULA4|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[2]~input_o\,
	datad => \ULA3|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA2|som|ALT_INV_cOut~combout\,
	combout => \ULA4|som|cOut~combout\);

\ULA5|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|MuxS|saida~0_combout\ = ( \entradaB[4]~input_o\ & ( \ULA4|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[4]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( 
-- !\entradaB[4]~input_o\ & ( \ULA4|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[4]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[4]~input_o\)))) ) ) ) # ( 
-- \entradaB[4]~input_o\ & ( !\ULA4|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[4]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[4]~input_o\ & ( 
-- !\ULA4|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[4]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000111000001110001111010000001000001101000011010011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[4]~input_o\,
	datae => \ALT_INV_entradaB[4]~input_o\,
	dataf => \ULA4|som|ALT_INV_cOut~combout\,
	combout => \ULA5|MuxS|saida~0_combout\);

\ULA6|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|MuxS|saida~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[5]~input_o\ & \entradaB[5]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[5]~input_o\) # (\entradaA[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[5]~input_o\,
	datad => \ALT_INV_entradaB[5]~input_o\,
	combout => \ULA6|MuxS|saida~0_combout\);

\ULA6|MuxS|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|MuxS|saida~1_combout\ = ( \ULA2|MuxS|saida~1_combout\ & ( \ULA6|MuxS|saida~0_combout\ ) ) # ( !\ULA2|MuxS|saida~1_combout\ & ( \ULA6|MuxS|saida~0_combout\ ) ) # ( \ULA2|MuxS|saida~1_combout\ & ( !\ULA6|MuxS|saida~0_combout\ & ( 
-- !\entradaA[5]~input_o\ $ (!\ULA6|MuxB|saida~0_combout\ $ (((\ULA5|som|cOut~1_combout\) # (\ULA5|som|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011010011001100111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[5]~input_o\,
	datab => \ULA6|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA5|som|ALT_INV_cOut~0_combout\,
	datad => \ULA5|som|ALT_INV_cOut~1_combout\,
	datae => \ULA2|MuxS|ALT_INV_saida~1_combout\,
	dataf => \ULA6|MuxS|ALT_INV_saida~0_combout\,
	combout => \ULA6|MuxS|saida~1_combout\);

\ULA6|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|som|cOut~combout\ = (!\entradaA[5]~input_o\ & ((!\ULA6|MuxB|saida~0_combout\) # ((!\ULA5|som|cOut~0_combout\ & !\ULA5|som|cOut~1_combout\)))) # (\entradaA[5]~input_o\ & (!\ULA6|MuxB|saida~0_combout\ & (!\ULA5|som|cOut~0_combout\ & 
-- !\ULA5|som|cOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[5]~input_o\,
	datab => \ULA6|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA5|som|ALT_INV_cOut~0_combout\,
	datad => \ULA5|som|ALT_INV_cOut~1_combout\,
	combout => \ULA6|som|cOut~combout\);

\ULA7|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|MuxS|saida~0_combout\ = ( \entradaB[6]~input_o\ & ( \ULA6|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[6]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( 
-- !\entradaB[6]~input_o\ & ( \ULA6|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[6]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[6]~input_o\)))) ) ) ) # ( 
-- \entradaB[6]~input_o\ & ( !\ULA6|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[6]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[6]~input_o\ & ( 
-- !\ULA6|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[6]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[6]~input_o\,
	datae => \ALT_INV_entradaB[6]~input_o\,
	dataf => \ULA6|som|ALT_INV_cOut~combout\,
	combout => \ULA7|MuxS|saida~0_combout\);

\ULA8|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|MuxS|saida~0_combout\ = ( \entradaB[7]~input_o\ & ( \ULA7|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[7]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( 
-- !\entradaB[7]~input_o\ & ( \ULA7|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[7]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[7]~input_o\)))) ) ) ) # ( 
-- \entradaB[7]~input_o\ & ( !\ULA7|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[7]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[7]~input_o\ & ( 
-- !\ULA7|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[7]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[7]~input_o\,
	datae => \ALT_INV_entradaB[7]~input_o\,
	dataf => \ULA7|som|ALT_INV_cOut~combout\,
	combout => \ULA8|MuxS|saida~0_combout\);

\ULA9|som|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|som|saida~0_combout\ = !\entradaA[8]~input_o\ $ (!\ULA9|MuxB|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[8]~input_o\,
	datab => \ULA9|MuxB|ALT_INV_saida~0_combout\,
	combout => \ULA9|som|saida~0_combout\);

\ULA9|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|MuxS|saida~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[8]~input_o\ & \entradaB[8]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[8]~input_o\) # (\entradaA[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[8]~input_o\,
	datad => \ALT_INV_entradaB[8]~input_o\,
	combout => \ULA9|MuxS|saida~0_combout\);

\ULA9|MuxS|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|MuxS|saida~1_combout\ = ( \ULA2|MuxS|saida~1_combout\ & ( \ULA9|MuxS|saida~0_combout\ ) ) # ( !\ULA2|MuxS|saida~1_combout\ & ( \ULA9|MuxS|saida~0_combout\ ) ) # ( \ULA2|MuxS|saida~1_combout\ & ( !\ULA9|MuxS|saida~0_combout\ & ( 
-- !\ULA9|som|saida~0_combout\ $ (((!\entradaA[7]~input_o\ & ((!\ULA8|MuxB|saida~0_combout\) # (\ULA7|som|cOut~combout\))) # (\entradaA[7]~input_o\ & (!\ULA8|MuxB|saida~0_combout\ & \ULA7|som|cOut~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100011000111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[7]~input_o\,
	datab => \ULA8|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA7|som|ALT_INV_cOut~combout\,
	datad => \ULA9|som|ALT_INV_saida~0_combout\,
	datae => \ULA2|MuxS|ALT_INV_saida~1_combout\,
	dataf => \ULA9|MuxS|ALT_INV_saida~0_combout\,
	combout => \ULA9|MuxS|saida~1_combout\);

\ULA9|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|som|cOut~combout\ = ( \ULA7|som|cOut~combout\ & ( (!\entradaA[8]~input_o\ & (\ULA9|MuxB|saida~0_combout\ & (\entradaA[7]~input_o\ & \ULA8|MuxB|saida~0_combout\))) # (\entradaA[8]~input_o\ & (((\entradaA[7]~input_o\ & \ULA8|MuxB|saida~0_combout\)) # 
-- (\ULA9|MuxB|saida~0_combout\))) ) ) # ( !\ULA7|som|cOut~combout\ & ( (!\entradaA[8]~input_o\ & (\ULA9|MuxB|saida~0_combout\ & ((\ULA8|MuxB|saida~0_combout\) # (\entradaA[7]~input_o\)))) # (\entradaA[8]~input_o\ & (((\ULA8|MuxB|saida~0_combout\) # 
-- (\entradaA[7]~input_o\)) # (\ULA9|MuxB|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101110111000100010001011100010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[8]~input_o\,
	datab => \ULA9|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[7]~input_o\,
	datad => \ULA8|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA7|som|ALT_INV_cOut~combout\,
	combout => \ULA9|som|cOut~combout\);

\ULA10|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|MuxS|saida~0_combout\ = ( \entradaB[9]~input_o\ & ( \ULA9|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[9]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # 
-- ( !\entradaB[9]~input_o\ & ( \ULA9|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[9]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[9]~input_o\)))) ) ) ) # ( 
-- \entradaB[9]~input_o\ & ( !\ULA9|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[9]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[9]~input_o\ & ( 
-- !\ULA9|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[9]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000111000001110001111010000001000001101000011010011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[9]~input_o\,
	datae => \ALT_INV_entradaB[9]~input_o\,
	dataf => \ULA9|som|ALT_INV_cOut~combout\,
	combout => \ULA10|MuxS|saida~0_combout\);

\ULA11|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|MuxS|saida~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[10]~input_o\ & \entradaB[10]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[10]~input_o\) # (\entradaA[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[10]~input_o\,
	datad => \ALT_INV_entradaB[10]~input_o\,
	combout => \ULA11|MuxS|saida~0_combout\);

\ULA11|MuxS|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|MuxS|saida~1_combout\ = ( \ULA2|MuxS|saida~1_combout\ & ( \ULA11|MuxS|saida~0_combout\ ) ) # ( !\ULA2|MuxS|saida~1_combout\ & ( \ULA11|MuxS|saida~0_combout\ ) ) # ( \ULA2|MuxS|saida~1_combout\ & ( !\ULA11|MuxS|saida~0_combout\ & ( 
-- !\entradaA[10]~input_o\ $ (!\ULA11|MuxB|saida~0_combout\ $ (((\ULA10|som|cOut~1_combout\) # (\ULA10|som|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011010011001100111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[10]~input_o\,
	datab => \ULA11|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA10|som|ALT_INV_cOut~0_combout\,
	datad => \ULA10|som|ALT_INV_cOut~1_combout\,
	datae => \ULA2|MuxS|ALT_INV_saida~1_combout\,
	dataf => \ULA11|MuxS|ALT_INV_saida~0_combout\,
	combout => \ULA11|MuxS|saida~1_combout\);

\ULA11|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|som|cOut~combout\ = (!\entradaA[10]~input_o\ & ((!\ULA11|MuxB|saida~0_combout\) # ((!\ULA10|som|cOut~0_combout\ & !\ULA10|som|cOut~1_combout\)))) # (\entradaA[10]~input_o\ & (!\ULA11|MuxB|saida~0_combout\ & (!\ULA10|som|cOut~0_combout\ & 
-- !\ULA10|som|cOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[10]~input_o\,
	datab => \ULA11|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA10|som|ALT_INV_cOut~0_combout\,
	datad => \ULA10|som|ALT_INV_cOut~1_combout\,
	combout => \ULA11|som|cOut~combout\);

\ULA12|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA12|MuxS|saida~0_combout\ = ( \entradaB[11]~input_o\ & ( \ULA11|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[11]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) 
-- # ( !\entradaB[11]~input_o\ & ( \ULA11|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[11]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[11]~input_o\)))) ) ) ) # ( 
-- \entradaB[11]~input_o\ & ( !\ULA11|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[11]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[11]~input_o\ & ( 
-- !\ULA11|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[11]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[11]~input_o\,
	datae => \ALT_INV_entradaB[11]~input_o\,
	dataf => \ULA11|som|ALT_INV_cOut~combout\,
	combout => \ULA12|MuxS|saida~0_combout\);

\ULA13|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|MuxS|saida~0_combout\ = ( \entradaB[12]~input_o\ & ( \ULA12|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[12]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) 
-- # ( !\entradaB[12]~input_o\ & ( \ULA12|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[12]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[12]~input_o\)))) ) ) ) # ( 
-- \entradaB[12]~input_o\ & ( !\ULA12|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[12]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[12]~input_o\ & ( 
-- !\ULA12|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[12]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[12]~input_o\,
	datae => \ALT_INV_entradaB[12]~input_o\,
	dataf => \ULA12|som|ALT_INV_cOut~combout\,
	combout => \ULA13|MuxS|saida~0_combout\);

\ULA14|som|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|som|saida~0_combout\ = !\entradaA[13]~input_o\ $ (!\ULA14|MuxB|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[13]~input_o\,
	datab => \ULA14|MuxB|ALT_INV_saida~0_combout\,
	combout => \ULA14|som|saida~0_combout\);

\ULA14|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|MuxS|saida~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[13]~input_o\ & \entradaB[13]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[13]~input_o\) # (\entradaA[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[13]~input_o\,
	datad => \ALT_INV_entradaB[13]~input_o\,
	combout => \ULA14|MuxS|saida~0_combout\);

\ULA14|MuxS|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|MuxS|saida~1_combout\ = ( \ULA2|MuxS|saida~1_combout\ & ( \ULA14|MuxS|saida~0_combout\ ) ) # ( !\ULA2|MuxS|saida~1_combout\ & ( \ULA14|MuxS|saida~0_combout\ ) ) # ( \ULA2|MuxS|saida~1_combout\ & ( !\ULA14|MuxS|saida~0_combout\ & ( 
-- !\ULA14|som|saida~0_combout\ $ (((!\entradaA[12]~input_o\ & ((!\ULA13|MuxB|saida~0_combout\) # (\ULA12|som|cOut~combout\))) # (\entradaA[12]~input_o\ & (!\ULA13|MuxB|saida~0_combout\ & \ULA12|som|cOut~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100011000111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[12]~input_o\,
	datab => \ULA13|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA12|som|ALT_INV_cOut~combout\,
	datad => \ULA14|som|ALT_INV_saida~0_combout\,
	datae => \ULA2|MuxS|ALT_INV_saida~1_combout\,
	dataf => \ULA14|MuxS|ALT_INV_saida~0_combout\,
	combout => \ULA14|MuxS|saida~1_combout\);

\ULA14|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|som|cOut~combout\ = ( \ULA12|som|cOut~combout\ & ( (!\entradaA[13]~input_o\ & (\ULA14|MuxB|saida~0_combout\ & (\entradaA[12]~input_o\ & \ULA13|MuxB|saida~0_combout\))) # (\entradaA[13]~input_o\ & (((\entradaA[12]~input_o\ & 
-- \ULA13|MuxB|saida~0_combout\)) # (\ULA14|MuxB|saida~0_combout\))) ) ) # ( !\ULA12|som|cOut~combout\ & ( (!\entradaA[13]~input_o\ & (\ULA14|MuxB|saida~0_combout\ & ((\ULA13|MuxB|saida~0_combout\) # (\entradaA[12]~input_o\)))) # (\entradaA[13]~input_o\ & 
-- (((\ULA13|MuxB|saida~0_combout\) # (\entradaA[12]~input_o\)) # (\ULA14|MuxB|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101110111000100010001011100010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[13]~input_o\,
	datab => \ULA14|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[12]~input_o\,
	datad => \ULA13|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA12|som|ALT_INV_cOut~combout\,
	combout => \ULA14|som|cOut~combout\);

\ULA15|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|MuxS|saida~0_combout\ = ( \entradaB[14]~input_o\ & ( \ULA14|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[14]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) 
-- # ( !\entradaB[14]~input_o\ & ( \ULA14|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[14]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[14]~input_o\)))) ) ) ) # ( 
-- \entradaB[14]~input_o\ & ( !\ULA14|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[14]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[14]~input_o\ & ( 
-- !\ULA14|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[14]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000111000001110001111010000001000001101000011010011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[14]~input_o\,
	datae => \ALT_INV_entradaB[14]~input_o\,
	dataf => \ULA14|som|ALT_INV_cOut~combout\,
	combout => \ULA15|MuxS|saida~0_combout\);

\ULA16|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|MuxS|saida~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[15]~input_o\ & \entradaB[15]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[15]~input_o\) # (\entradaA[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[15]~input_o\,
	datad => \ALT_INV_entradaB[15]~input_o\,
	combout => \ULA16|MuxS|saida~0_combout\);

\ULA16|MuxS|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|MuxS|saida~1_combout\ = ( \ULA2|MuxS|saida~1_combout\ & ( \ULA16|MuxS|saida~0_combout\ ) ) # ( !\ULA2|MuxS|saida~1_combout\ & ( \ULA16|MuxS|saida~0_combout\ ) ) # ( \ULA2|MuxS|saida~1_combout\ & ( !\ULA16|MuxS|saida~0_combout\ & ( 
-- !\entradaA[15]~input_o\ $ (!\ULA16|MuxB|saida~0_combout\ $ (((\ULA15|som|cOut~1_combout\) # (\ULA15|som|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011010011001100111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[15]~input_o\,
	datab => \ULA16|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA15|som|ALT_INV_cOut~0_combout\,
	datad => \ULA15|som|ALT_INV_cOut~1_combout\,
	datae => \ULA2|MuxS|ALT_INV_saida~1_combout\,
	dataf => \ULA16|MuxS|ALT_INV_saida~0_combout\,
	combout => \ULA16|MuxS|saida~1_combout\);

\ULA16|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|som|cOut~combout\ = (!\entradaA[15]~input_o\ & ((!\ULA16|MuxB|saida~0_combout\) # ((!\ULA15|som|cOut~0_combout\ & !\ULA15|som|cOut~1_combout\)))) # (\entradaA[15]~input_o\ & (!\ULA16|MuxB|saida~0_combout\ & (!\ULA15|som|cOut~0_combout\ & 
-- !\ULA15|som|cOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[15]~input_o\,
	datab => \ULA16|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA15|som|ALT_INV_cOut~0_combout\,
	datad => \ULA15|som|ALT_INV_cOut~1_combout\,
	combout => \ULA16|som|cOut~combout\);

\ULA17|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA17|MuxS|saida~0_combout\ = ( \entradaB[16]~input_o\ & ( \ULA16|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[16]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) 
-- # ( !\entradaB[16]~input_o\ & ( \ULA16|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[16]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[16]~input_o\)))) ) ) ) # ( 
-- \entradaB[16]~input_o\ & ( !\ULA16|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[16]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[16]~input_o\ & ( 
-- !\ULA16|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[16]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[16]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[16]~input_o\,
	datae => \ALT_INV_entradaB[16]~input_o\,
	dataf => \ULA16|som|ALT_INV_cOut~combout\,
	combout => \ULA17|MuxS|saida~0_combout\);

\ULA18|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|MuxS|saida~0_combout\ = ( \entradaB[17]~input_o\ & ( \ULA17|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[17]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) 
-- # ( !\entradaB[17]~input_o\ & ( \ULA17|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[17]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[17]~input_o\)))) ) ) ) # ( 
-- \entradaB[17]~input_o\ & ( !\ULA17|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[17]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[17]~input_o\ & ( 
-- !\ULA17|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[17]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[17]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[17]~input_o\,
	datae => \ALT_INV_entradaB[17]~input_o\,
	dataf => \ULA17|som|ALT_INV_cOut~combout\,
	combout => \ULA18|MuxS|saida~0_combout\);

\ULA19|som|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|som|saida~0_combout\ = !\entradaA[18]~input_o\ $ (!\ULA19|MuxB|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[18]~input_o\,
	datab => \ULA19|MuxB|ALT_INV_saida~0_combout\,
	combout => \ULA19|som|saida~0_combout\);

\ULA19|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|MuxS|saida~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[18]~input_o\ & \entradaB[18]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[18]~input_o\) # (\entradaA[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[18]~input_o\,
	datad => \ALT_INV_entradaB[18]~input_o\,
	combout => \ULA19|MuxS|saida~0_combout\);

\ULA19|MuxS|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|MuxS|saida~1_combout\ = ( \ULA2|MuxS|saida~1_combout\ & ( \ULA19|MuxS|saida~0_combout\ ) ) # ( !\ULA2|MuxS|saida~1_combout\ & ( \ULA19|MuxS|saida~0_combout\ ) ) # ( \ULA2|MuxS|saida~1_combout\ & ( !\ULA19|MuxS|saida~0_combout\ & ( 
-- !\ULA19|som|saida~0_combout\ $ (((!\entradaA[17]~input_o\ & ((!\ULA18|MuxB|saida~0_combout\) # (\ULA17|som|cOut~combout\))) # (\entradaA[17]~input_o\ & (!\ULA18|MuxB|saida~0_combout\ & \ULA17|som|cOut~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100011000111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[17]~input_o\,
	datab => \ULA18|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA17|som|ALT_INV_cOut~combout\,
	datad => \ULA19|som|ALT_INV_saida~0_combout\,
	datae => \ULA2|MuxS|ALT_INV_saida~1_combout\,
	dataf => \ULA19|MuxS|ALT_INV_saida~0_combout\,
	combout => \ULA19|MuxS|saida~1_combout\);

\ULA19|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|som|cOut~combout\ = ( \ULA17|som|cOut~combout\ & ( (!\entradaA[18]~input_o\ & (\ULA19|MuxB|saida~0_combout\ & (\entradaA[17]~input_o\ & \ULA18|MuxB|saida~0_combout\))) # (\entradaA[18]~input_o\ & (((\entradaA[17]~input_o\ & 
-- \ULA18|MuxB|saida~0_combout\)) # (\ULA19|MuxB|saida~0_combout\))) ) ) # ( !\ULA17|som|cOut~combout\ & ( (!\entradaA[18]~input_o\ & (\ULA19|MuxB|saida~0_combout\ & ((\ULA18|MuxB|saida~0_combout\) # (\entradaA[17]~input_o\)))) # (\entradaA[18]~input_o\ & 
-- (((\ULA18|MuxB|saida~0_combout\) # (\entradaA[17]~input_o\)) # (\ULA19|MuxB|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101110111000100010001011100010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[18]~input_o\,
	datab => \ULA19|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[17]~input_o\,
	datad => \ULA18|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA17|som|ALT_INV_cOut~combout\,
	combout => \ULA19|som|cOut~combout\);

\ULA20|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|MuxS|saida~0_combout\ = ( \entradaB[19]~input_o\ & ( \ULA19|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[19]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) 
-- # ( !\entradaB[19]~input_o\ & ( \ULA19|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[19]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[19]~input_o\)))) ) ) ) # ( 
-- \entradaB[19]~input_o\ & ( !\ULA19|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[19]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[19]~input_o\ & ( 
-- !\ULA19|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[19]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[19]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000111000001110001111010000001000001101000011010011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[19]~input_o\,
	datae => \ALT_INV_entradaB[19]~input_o\,
	dataf => \ULA19|som|ALT_INV_cOut~combout\,
	combout => \ULA20|MuxS|saida~0_combout\);

\ULA21|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|MuxS|saida~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[20]~input_o\ & \entradaB[20]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[20]~input_o\) # (\entradaA[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[20]~input_o\,
	datad => \ALT_INV_entradaB[20]~input_o\,
	combout => \ULA21|MuxS|saida~0_combout\);

\ULA21|MuxS|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|MuxS|saida~1_combout\ = ( \ULA2|MuxS|saida~1_combout\ & ( \ULA21|MuxS|saida~0_combout\ ) ) # ( !\ULA2|MuxS|saida~1_combout\ & ( \ULA21|MuxS|saida~0_combout\ ) ) # ( \ULA2|MuxS|saida~1_combout\ & ( !\ULA21|MuxS|saida~0_combout\ & ( 
-- !\entradaA[20]~input_o\ $ (!\ULA21|MuxB|saida~0_combout\ $ (((\ULA20|som|cOut~1_combout\) # (\ULA20|som|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011010011001100111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[20]~input_o\,
	datab => \ULA21|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA20|som|ALT_INV_cOut~0_combout\,
	datad => \ULA20|som|ALT_INV_cOut~1_combout\,
	datae => \ULA2|MuxS|ALT_INV_saida~1_combout\,
	dataf => \ULA21|MuxS|ALT_INV_saida~0_combout\,
	combout => \ULA21|MuxS|saida~1_combout\);

\ULA21|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|som|cOut~combout\ = (!\entradaA[20]~input_o\ & ((!\ULA21|MuxB|saida~0_combout\) # ((!\ULA20|som|cOut~0_combout\ & !\ULA20|som|cOut~1_combout\)))) # (\entradaA[20]~input_o\ & (!\ULA21|MuxB|saida~0_combout\ & (!\ULA20|som|cOut~0_combout\ & 
-- !\ULA20|som|cOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[20]~input_o\,
	datab => \ULA21|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA20|som|ALT_INV_cOut~0_combout\,
	datad => \ULA20|som|ALT_INV_cOut~1_combout\,
	combout => \ULA21|som|cOut~combout\);

\ULA22|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA22|MuxS|saida~0_combout\ = ( \entradaB[21]~input_o\ & ( \ULA21|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[21]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) 
-- # ( !\entradaB[21]~input_o\ & ( \ULA21|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[21]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[21]~input_o\)))) ) ) ) # ( 
-- \entradaB[21]~input_o\ & ( !\ULA21|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[21]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[21]~input_o\ & ( 
-- !\ULA21|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[21]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[21]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[21]~input_o\,
	datae => \ALT_INV_entradaB[21]~input_o\,
	dataf => \ULA21|som|ALT_INV_cOut~combout\,
	combout => \ULA22|MuxS|saida~0_combout\);

\ULA23|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|MuxS|saida~0_combout\ = ( \entradaB[22]~input_o\ & ( \ULA22|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[22]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) 
-- # ( !\entradaB[22]~input_o\ & ( \ULA22|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[22]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[22]~input_o\)))) ) ) ) # ( 
-- \entradaB[22]~input_o\ & ( !\ULA22|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[22]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[22]~input_o\ & ( 
-- !\ULA22|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[22]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[22]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[22]~input_o\,
	datae => \ALT_INV_entradaB[22]~input_o\,
	dataf => \ULA22|som|ALT_INV_cOut~combout\,
	combout => \ULA23|MuxS|saida~0_combout\);

\ULA24|som|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|som|saida~0_combout\ = !\entradaA[23]~input_o\ $ (!\ULA24|MuxB|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[23]~input_o\,
	datab => \ULA24|MuxB|ALT_INV_saida~0_combout\,
	combout => \ULA24|som|saida~0_combout\);

\ULA24|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|MuxS|saida~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[23]~input_o\ & \entradaB[23]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[23]~input_o\) # (\entradaA[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[23]~input_o\,
	datad => \ALT_INV_entradaB[23]~input_o\,
	combout => \ULA24|MuxS|saida~0_combout\);

\ULA24|MuxS|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|MuxS|saida~1_combout\ = ( \ULA2|MuxS|saida~1_combout\ & ( \ULA24|MuxS|saida~0_combout\ ) ) # ( !\ULA2|MuxS|saida~1_combout\ & ( \ULA24|MuxS|saida~0_combout\ ) ) # ( \ULA2|MuxS|saida~1_combout\ & ( !\ULA24|MuxS|saida~0_combout\ & ( 
-- !\ULA24|som|saida~0_combout\ $ (((!\entradaA[22]~input_o\ & ((!\ULA23|MuxB|saida~0_combout\) # (\ULA22|som|cOut~combout\))) # (\entradaA[22]~input_o\ & (!\ULA23|MuxB|saida~0_combout\ & \ULA22|som|cOut~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100011000111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[22]~input_o\,
	datab => \ULA23|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA22|som|ALT_INV_cOut~combout\,
	datad => \ULA24|som|ALT_INV_saida~0_combout\,
	datae => \ULA2|MuxS|ALT_INV_saida~1_combout\,
	dataf => \ULA24|MuxS|ALT_INV_saida~0_combout\,
	combout => \ULA24|MuxS|saida~1_combout\);

\ULA24|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|som|cOut~combout\ = ( \ULA22|som|cOut~combout\ & ( (!\entradaA[23]~input_o\ & (\ULA24|MuxB|saida~0_combout\ & (\entradaA[22]~input_o\ & \ULA23|MuxB|saida~0_combout\))) # (\entradaA[23]~input_o\ & (((\entradaA[22]~input_o\ & 
-- \ULA23|MuxB|saida~0_combout\)) # (\ULA24|MuxB|saida~0_combout\))) ) ) # ( !\ULA22|som|cOut~combout\ & ( (!\entradaA[23]~input_o\ & (\ULA24|MuxB|saida~0_combout\ & ((\ULA23|MuxB|saida~0_combout\) # (\entradaA[22]~input_o\)))) # (\entradaA[23]~input_o\ & 
-- (((\ULA23|MuxB|saida~0_combout\) # (\entradaA[22]~input_o\)) # (\ULA24|MuxB|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101110111000100010001011100010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[23]~input_o\,
	datab => \ULA24|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[22]~input_o\,
	datad => \ULA23|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA22|som|ALT_INV_cOut~combout\,
	combout => \ULA24|som|cOut~combout\);

\ULA25|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|MuxS|saida~0_combout\ = ( \entradaB[24]~input_o\ & ( \ULA24|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[24]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) 
-- # ( !\entradaB[24]~input_o\ & ( \ULA24|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[24]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[24]~input_o\)))) ) ) ) # ( 
-- \entradaB[24]~input_o\ & ( !\ULA24|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[24]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[24]~input_o\ & ( 
-- !\ULA24|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[24]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[24]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000111000001110001111010000001000001101000011010011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[24]~input_o\,
	datae => \ALT_INV_entradaB[24]~input_o\,
	dataf => \ULA24|som|ALT_INV_cOut~combout\,
	combout => \ULA25|MuxS|saida~0_combout\);

\ULA26|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|MuxS|saida~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[25]~input_o\ & \entradaB[25]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[25]~input_o\) # (\entradaA[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[25]~input_o\,
	datad => \ALT_INV_entradaB[25]~input_o\,
	combout => \ULA26|MuxS|saida~0_combout\);

\ULA26|MuxS|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|MuxS|saida~1_combout\ = ( \ULA2|MuxS|saida~1_combout\ & ( \ULA26|MuxS|saida~0_combout\ ) ) # ( !\ULA2|MuxS|saida~1_combout\ & ( \ULA26|MuxS|saida~0_combout\ ) ) # ( \ULA2|MuxS|saida~1_combout\ & ( !\ULA26|MuxS|saida~0_combout\ & ( 
-- !\entradaA[25]~input_o\ $ (!\ULA26|MuxB|saida~0_combout\ $ (((\ULA25|som|cOut~1_combout\) # (\ULA25|som|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011010011001100111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[25]~input_o\,
	datab => \ULA26|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA25|som|ALT_INV_cOut~0_combout\,
	datad => \ULA25|som|ALT_INV_cOut~1_combout\,
	datae => \ULA2|MuxS|ALT_INV_saida~1_combout\,
	dataf => \ULA26|MuxS|ALT_INV_saida~0_combout\,
	combout => \ULA26|MuxS|saida~1_combout\);

\ULA26|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|som|cOut~combout\ = (!\entradaA[25]~input_o\ & ((!\ULA26|MuxB|saida~0_combout\) # ((!\ULA25|som|cOut~0_combout\ & !\ULA25|som|cOut~1_combout\)))) # (\entradaA[25]~input_o\ & (!\ULA26|MuxB|saida~0_combout\ & (!\ULA25|som|cOut~0_combout\ & 
-- !\ULA25|som|cOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[25]~input_o\,
	datab => \ULA26|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA25|som|ALT_INV_cOut~0_combout\,
	datad => \ULA25|som|ALT_INV_cOut~1_combout\,
	combout => \ULA26|som|cOut~combout\);

\ULA27|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA27|MuxS|saida~0_combout\ = ( \entradaB[26]~input_o\ & ( \ULA26|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[26]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) 
-- # ( !\entradaB[26]~input_o\ & ( \ULA26|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[26]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[26]~input_o\)))) ) ) ) # ( 
-- \entradaB[26]~input_o\ & ( !\ULA26|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[26]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[26]~input_o\ & ( 
-- !\ULA26|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[26]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[26]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[26]~input_o\,
	datae => \ALT_INV_entradaB[26]~input_o\,
	dataf => \ULA26|som|ALT_INV_cOut~combout\,
	combout => \ULA27|MuxS|saida~0_combout\);

\ULA28|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|MuxS|saida~0_combout\ = ( \entradaB[27]~input_o\ & ( \ULA27|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[27]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) 
-- # ( !\entradaB[27]~input_o\ & ( \ULA27|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[27]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[27]~input_o\)))) ) ) ) # ( 
-- \entradaB[27]~input_o\ & ( !\ULA27|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[27]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[27]~input_o\ & ( 
-- !\ULA27|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[27]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[27]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[27]~input_o\,
	datae => \ALT_INV_entradaB[27]~input_o\,
	dataf => \ULA27|som|ALT_INV_cOut~combout\,
	combout => \ULA28|MuxS|saida~0_combout\);

\ULA29|som|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|som|saida~0_combout\ = !\entradaA[28]~input_o\ $ (!\ULA29|MuxB|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[28]~input_o\,
	datab => \ULA29|MuxB|ALT_INV_saida~0_combout\,
	combout => \ULA29|som|saida~0_combout\);

\ULA29|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|MuxS|saida~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[28]~input_o\ & \entradaB[28]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[28]~input_o\) # (\entradaA[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[28]~input_o\,
	datad => \ALT_INV_entradaB[28]~input_o\,
	combout => \ULA29|MuxS|saida~0_combout\);

\ULA29|MuxS|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|MuxS|saida~1_combout\ = ( \ULA2|MuxS|saida~1_combout\ & ( \ULA29|MuxS|saida~0_combout\ ) ) # ( !\ULA2|MuxS|saida~1_combout\ & ( \ULA29|MuxS|saida~0_combout\ ) ) # ( \ULA2|MuxS|saida~1_combout\ & ( !\ULA29|MuxS|saida~0_combout\ & ( 
-- !\ULA29|som|saida~0_combout\ $ (((!\entradaA[27]~input_o\ & ((!\ULA28|MuxB|saida~0_combout\) # (\ULA27|som|cOut~combout\))) # (\entradaA[27]~input_o\ & (!\ULA28|MuxB|saida~0_combout\ & \ULA27|som|cOut~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100011000111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[27]~input_o\,
	datab => \ULA28|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA27|som|ALT_INV_cOut~combout\,
	datad => \ULA29|som|ALT_INV_saida~0_combout\,
	datae => \ULA2|MuxS|ALT_INV_saida~1_combout\,
	dataf => \ULA29|MuxS|ALT_INV_saida~0_combout\,
	combout => \ULA29|MuxS|saida~1_combout\);

\ULA29|som|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|som|cOut~combout\ = ( \ULA27|som|cOut~combout\ & ( (!\entradaA[28]~input_o\ & (\ULA29|MuxB|saida~0_combout\ & (\entradaA[27]~input_o\ & \ULA28|MuxB|saida~0_combout\))) # (\entradaA[28]~input_o\ & (((\entradaA[27]~input_o\ & 
-- \ULA28|MuxB|saida~0_combout\)) # (\ULA29|MuxB|saida~0_combout\))) ) ) # ( !\ULA27|som|cOut~combout\ & ( (!\entradaA[28]~input_o\ & (\ULA29|MuxB|saida~0_combout\ & ((\ULA28|MuxB|saida~0_combout\) # (\entradaA[27]~input_o\)))) # (\entradaA[28]~input_o\ & 
-- (((\ULA28|MuxB|saida~0_combout\) # (\entradaA[27]~input_o\)) # (\ULA29|MuxB|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101110111000100010001011100010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[28]~input_o\,
	datab => \ULA29|MuxB|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_entradaA[27]~input_o\,
	datad => \ULA28|MuxB|ALT_INV_saida~0_combout\,
	datae => \ULA27|som|ALT_INV_cOut~combout\,
	combout => \ULA29|som|cOut~combout\);

\ULA30|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|MuxS|saida~0_combout\ = ( \entradaB[29]~input_o\ & ( \ULA29|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[29]~input_o\ $ (((!\inverteB~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) 
-- # ( !\entradaB[29]~input_o\ & ( \ULA29|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (\entradaA[29]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[29]~input_o\)))) ) ) ) # ( 
-- \entradaB[29]~input_o\ & ( !\ULA29|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[29]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverteB~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[29]~input_o\ & ( 
-- !\ULA29|som|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaA[29]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[29]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000111000001110001111010000001000001101000011010011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[29]~input_o\,
	datae => \ALT_INV_entradaB[29]~input_o\,
	dataf => \ULA29|som|ALT_INV_cOut~combout\,
	combout => \ULA30|MuxS|saida~0_combout\);

\ULA31|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|MuxS|saida~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[30]~input_o\ & \entradaB[30]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[30]~input_o\) # (\entradaA[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[30]~input_o\,
	datad => \ALT_INV_entradaB[30]~input_o\,
	combout => \ULA31|MuxS|saida~0_combout\);

\ULA31|MuxS|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|MuxS|saida~1_combout\ = ( \ULA2|MuxS|saida~1_combout\ & ( \ULA31|MuxS|saida~0_combout\ ) ) # ( !\ULA2|MuxS|saida~1_combout\ & ( \ULA31|MuxS|saida~0_combout\ ) ) # ( \ULA2|MuxS|saida~1_combout\ & ( !\ULA31|MuxS|saida~0_combout\ & ( 
-- !\entradaA[30]~input_o\ $ (!\ULA31|MuxB|saida~0_combout\ $ (((\ULA30|som|cOut~1_combout\) # (\ULA30|som|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011010011001100111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[30]~input_o\,
	datab => \ULA31|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA30|som|ALT_INV_cOut~0_combout\,
	datad => \ULA30|som|ALT_INV_cOut~1_combout\,
	datae => \ULA2|MuxS|ALT_INV_saida~1_combout\,
	dataf => \ULA31|MuxS|ALT_INV_saida~0_combout\,
	combout => \ULA31|MuxS|saida~1_combout\);

\ULA32|som|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA32|som|saida~0_combout\ = !\entradaA[31]~input_o\ $ (!\entradaB[31]~input_o\ $ (\inverteB~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[31]~input_o\,
	datab => \ALT_INV_entradaB[31]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	combout => \ULA32|som|saida~0_combout\);

\ULA32|MuxS|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA32|MuxS|saida~0_combout\ = ( \ULA2|MuxS|saida~1_combout\ & ( \ULA32|som|saida~0_combout\ & ( (!\entradaA[30]~input_o\ & ((!\ULA31|MuxB|saida~0_combout\) # ((!\ULA30|som|cOut~0_combout\ & !\ULA30|som|cOut~1_combout\)))) # (\entradaA[30]~input_o\ & 
-- (!\ULA31|MuxB|saida~0_combout\ & (!\ULA30|som|cOut~0_combout\ & !\ULA30|som|cOut~1_combout\))) ) ) ) # ( \ULA2|MuxS|saida~1_combout\ & ( !\ULA32|som|saida~0_combout\ & ( (!\entradaA[30]~input_o\ & (\ULA31|MuxB|saida~0_combout\ & 
-- ((\ULA30|som|cOut~1_combout\) # (\ULA30|som|cOut~0_combout\)))) # (\entradaA[30]~input_o\ & (((\ULA30|som|cOut~1_combout\) # (\ULA30|som|cOut~0_combout\)) # (\ULA31|MuxB|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110111011100000000000000001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[30]~input_o\,
	datab => \ULA31|MuxB|ALT_INV_saida~0_combout\,
	datac => \ULA30|som|ALT_INV_cOut~0_combout\,
	datad => \ULA30|som|ALT_INV_cOut~1_combout\,
	datae => \ULA2|MuxS|ALT_INV_saida~1_combout\,
	dataf => \ULA32|som|ALT_INV_saida~0_combout\,
	combout => \ULA32|MuxS|saida~0_combout\);

\ULA32|MuxS|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA32|MuxS|saida~1_combout\ = (!\seletor[1]~input_o\ & ((!\entradaA[31]~input_o\ & (\entradaB[31]~input_o\ & \seletor[0]~input_o\)) # (\entradaA[31]~input_o\ & ((\seletor[0]~input_o\) # (\entradaB[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100000000000101110000000000010111000000000001011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[31]~input_o\,
	datab => \ALT_INV_entradaB[31]~input_o\,
	datac => \ALT_INV_seletor[0]~input_o\,
	datad => \ALT_INV_seletor[1]~input_o\,
	combout => \ULA32|MuxS|saida~1_combout\);

\ULA32|MuxS|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA32|MuxS|saida~2_combout\ = (\ULA32|MuxS|saida~1_combout\) # (\ULA32|MuxS|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA32|MuxS|ALT_INV_saida~0_combout\,
	datab => \ULA32|MuxS|ALT_INV_saida~1_combout\,
	combout => \ULA32|MuxS|saida~2_combout\);

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\ULA6|MuxS|saida~1_combout\ & ( (!\ULA2|MuxS|saida~0_combout\ & (!\ULA3|MuxS|saida~0_combout\ & (!\ULA4|MuxS|saida~1_combout\ & !\ULA5|MuxS|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA2|MuxS|ALT_INV_saida~0_combout\,
	datab => \ULA3|MuxS|ALT_INV_saida~0_combout\,
	datac => \ULA4|MuxS|ALT_INV_saida~1_combout\,
	datad => \ULA5|MuxS|ALT_INV_saida~0_combout\,
	datae => \ULA6|MuxS|ALT_INV_saida~1_combout\,
	combout => \Equal0~0_combout\);

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\ULA7|MuxS|saida~0_combout\ & (!\ULA8|MuxS|saida~0_combout\ & (!\ULA9|MuxS|saida~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA7|MuxS|ALT_INV_saida~0_combout\,
	datab => \ULA8|MuxS|ALT_INV_saida~0_combout\,
	datac => \ULA9|MuxS|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~1_combout\);

\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \Equal0~1_combout\ & ( (!\ULA10|MuxS|saida~0_combout\ & (!\ULA11|MuxS|saida~1_combout\ & (!\ULA12|MuxS|saida~0_combout\ & !\ULA13|MuxS|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA10|MuxS|ALT_INV_saida~0_combout\,
	datab => \ULA11|MuxS|ALT_INV_saida~1_combout\,
	datac => \ULA12|MuxS|ALT_INV_saida~0_combout\,
	datad => \ULA13|MuxS|ALT_INV_saida~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~2_combout\);

\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\ULA14|MuxS|saida~1_combout\ & (!\ULA15|MuxS|saida~0_combout\ & (!\ULA16|MuxS|saida~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA14|MuxS|ALT_INV_saida~1_combout\,
	datab => \ULA15|MuxS|ALT_INV_saida~0_combout\,
	datac => \ULA16|MuxS|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~3_combout\);

\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\ULA17|MuxS|saida~0_combout\ & (!\ULA18|MuxS|saida~0_combout\ & (!\ULA19|MuxS|saida~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA17|MuxS|ALT_INV_saida~0_combout\,
	datab => \ULA18|MuxS|ALT_INV_saida~0_combout\,
	datac => \ULA19|MuxS|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~4_combout\ & ( (!\ULA20|MuxS|saida~0_combout\ & (!\ULA21|MuxS|saida~1_combout\ & (!\ULA22|MuxS|saida~0_combout\ & !\ULA23|MuxS|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA20|MuxS|ALT_INV_saida~0_combout\,
	datab => \ULA21|MuxS|ALT_INV_saida~1_combout\,
	datac => \ULA22|MuxS|ALT_INV_saida~0_combout\,
	datad => \ULA23|MuxS|ALT_INV_saida~0_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~5_combout\);

\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\ULA24|MuxS|saida~1_combout\ & (!\ULA25|MuxS|saida~0_combout\ & (!\ULA26|MuxS|saida~1_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA24|MuxS|ALT_INV_saida~1_combout\,
	datab => \ULA25|MuxS|ALT_INV_saida~0_combout\,
	datac => \ULA26|MuxS|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6_combout\);

\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\ULA27|MuxS|saida~0_combout\ & (!\ULA28|MuxS|saida~0_combout\ & (!\ULA29|MuxS|saida~1_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA27|MuxS|ALT_INV_saida~0_combout\,
	datab => \ULA28|MuxS|ALT_INV_saida~0_combout\,
	datac => \ULA29|MuxS|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_Equal0~6_combout\,
	combout => \Equal0~7_combout\);

\Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = ( !\ULA1|MuxS|saida~3_combout\ & ( \Equal0~7_combout\ & ( (!\ULA30|MuxS|saida~0_combout\ & (!\ULA31|MuxS|saida~1_combout\ & (!\ULA32|MuxS|saida~0_combout\ & !\ULA32|MuxS|saida~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA30|MuxS|ALT_INV_saida~0_combout\,
	datab => \ULA31|MuxS|ALT_INV_saida~1_combout\,
	datac => \ULA32|MuxS|ALT_INV_saida~0_combout\,
	datad => \ULA32|MuxS|ALT_INV_saida~1_combout\,
	datae => \ULA1|MuxS|ALT_INV_saida~3_combout\,
	dataf => \ALT_INV_Equal0~7_combout\,
	combout => \Equal0~8_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_saida(8) <= \saida[8]~output_o\;

ww_saida(9) <= \saida[9]~output_o\;

ww_saida(10) <= \saida[10]~output_o\;

ww_saida(11) <= \saida[11]~output_o\;

ww_saida(12) <= \saida[12]~output_o\;

ww_saida(13) <= \saida[13]~output_o\;

ww_saida(14) <= \saida[14]~output_o\;

ww_saida(15) <= \saida[15]~output_o\;

ww_saida(16) <= \saida[16]~output_o\;

ww_saida(17) <= \saida[17]~output_o\;

ww_saida(18) <= \saida[18]~output_o\;

ww_saida(19) <= \saida[19]~output_o\;

ww_saida(20) <= \saida[20]~output_o\;

ww_saida(21) <= \saida[21]~output_o\;

ww_saida(22) <= \saida[22]~output_o\;

ww_saida(23) <= \saida[23]~output_o\;

ww_saida(24) <= \saida[24]~output_o\;

ww_saida(25) <= \saida[25]~output_o\;

ww_saida(26) <= \saida[26]~output_o\;

ww_saida(27) <= \saida[27]~output_o\;

ww_saida(28) <= \saida[28]~output_o\;

ww_saida(29) <= \saida[29]~output_o\;

ww_saida(30) <= \saida[30]~output_o\;

ww_saida(31) <= \saida[31]~output_o\;

ww_flagZero <= \flagZero~output_o\;
END structure;


