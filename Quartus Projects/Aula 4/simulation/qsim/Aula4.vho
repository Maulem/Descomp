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

-- DATE "09/13/2021 18:13:22"

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

ENTITY 	Aula4 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END Aula4;

ARCHITECTURE structure OF Aula4 IS
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
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
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
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \SOM|Add0~1_sumout\ : std_logic;
SIGNAL \SOM|Add0~2\ : std_logic;
SIGNAL \SOM|Add0~5_sumout\ : std_logic;
SIGNAL \SOM|Add0~6\ : std_logic;
SIGNAL \SOM|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \SOM|Add0~10\ : std_logic;
SIGNAL \SOM|Add0~29_sumout\ : std_logic;
SIGNAL \SOM|Add0~30\ : std_logic;
SIGNAL \SOM|Add0~25_sumout\ : std_logic;
SIGNAL \SOM|Add0~26\ : std_logic;
SIGNAL \SOM|Add0~21_sumout\ : std_logic;
SIGNAL \SOM|Add0~22\ : std_logic;
SIGNAL \SOM|Add0~17_sumout\ : std_logic;
SIGNAL \SOM|Add0~18\ : std_logic;
SIGNAL \SOM|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \DEC|Equal5~0_combout\ : std_logic;
SIGNAL \DEC|saidaDecoder[3]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \DEC|saidaDecoder[1]~2_combout\ : std_logic;
SIGNAL \DEC|saidaDecoder[2]~0_combout\ : std_logic;
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~3_combout\ : std_logic;
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~15_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~4_combout\ : std_logic;
SIGNAL \DEC|saidaDecoder[3]~3_combout\ : std_logic;
SIGNAL \DEC|Equal5~1_combout\ : std_logic;
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~6_combout\ : std_logic;
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~7_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~8_combout\ : std_logic;
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~9_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~10_combout\ : std_logic;
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~11_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~12_combout\ : std_logic;
SIGNAL \MEM|registrador_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~13_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~14_combout\ : std_logic;
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MEM|registrador_rtl_0_bypass\ : std_logic_vector(0 TO 8);
SIGNAL \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\ : std_logic;
SIGNAL \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\ : std_logic;
SIGNAL \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\ : std_logic;
SIGNAL \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\ : std_logic;
SIGNAL \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\ : std_logic;
SIGNAL \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\ : std_logic;
SIGNAL \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\ : std_logic;
SIGNAL \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DEC|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \DEC|ALT_INV_saidaDecoder[3]~3_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \DEC|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[7]~13_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_registrador_rtl_0_bypass\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MUX1|ALT_INV_saida_MUX[6]~11_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[5]~9_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[4]~7_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \DEC|ALT_INV_saidaDecoder[3]~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MEM|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \REG1|DOUT\(0);

\MEM|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \MEM|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\MEM|registrador_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \REG1|DOUT\(1);

\MEM|registrador_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \MEM|registrador_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\MEM|registrador_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \REG1|DOUT\(2);

\MEM|registrador_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \MEM|registrador_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\MEM|registrador_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \REG1|DOUT\(3);

\MEM|registrador_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \MEM|registrador_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\MEM|registrador_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \REG1|DOUT\(4);

\MEM|registrador_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \MEM|registrador_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\MEM|registrador_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \REG1|DOUT\(5);

\MEM|registrador_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \MEM|registrador_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\MEM|registrador_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \REG1|DOUT\(6);

\MEM|registrador_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \MEM|registrador_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\MEM|registrador_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \REG1|DOUT\(7);

\MEM|registrador_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\ & \ROM1|memROM~6_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \MEM|registrador_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);
\MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\ <= NOT \MEM|registrador_rtl_0|auto_generated|ram_block1a7~portbdataout\;
\MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\ <= NOT \MEM|registrador_rtl_0|auto_generated|ram_block1a6~portbdataout\;
\MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\ <= NOT \MEM|registrador_rtl_0|auto_generated|ram_block1a5~portbdataout\;
\MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\ <= NOT \MEM|registrador_rtl_0|auto_generated|ram_block1a4~portbdataout\;
\MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\ <= NOT \MEM|registrador_rtl_0|auto_generated|ram_block1a3~portbdataout\;
\MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\ <= NOT \MEM|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\;
\MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\ <= NOT \MEM|registrador_rtl_0|auto_generated|ram_block1a1~portbdataout\;
\MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \MEM|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\;
\REG1|ALT_INV_DOUT\(7) <= NOT \REG1|DOUT\(7);
\REG1|ALT_INV_DOUT\(6) <= NOT \REG1|DOUT\(6);
\REG1|ALT_INV_DOUT\(5) <= NOT \REG1|DOUT\(5);
\REG1|ALT_INV_DOUT\(4) <= NOT \REG1|DOUT\(4);
\REG1|ALT_INV_DOUT\(3) <= NOT \REG1|DOUT\(3);
\REG1|ALT_INV_DOUT\(2) <= NOT \REG1|DOUT\(2);
\REG1|ALT_INV_DOUT\(1) <= NOT \REG1|DOUT\(1);
\REG1|ALT_INV_DOUT\(0) <= NOT \REG1|DOUT\(0);
\DEC|ALT_INV_Equal5~1_combout\ <= NOT \DEC|Equal5~1_combout\;
\DEC|ALT_INV_saidaDecoder[3]~3_combout\ <= NOT \DEC|saidaDecoder[3]~3_combout\;
\MUX1|ALT_INV_saida_MUX[2]~15_combout\ <= NOT \MUX1|saida_MUX[2]~15_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\DEC|ALT_INV_Equal5~0_combout\ <= NOT \DEC|Equal5~0_combout\;
\MUX1|ALT_INV_saida_MUX[7]~13_combout\ <= NOT \MUX1|saida_MUX[7]~13_combout\;
\MEM|ALT_INV_registrador_rtl_0_bypass\(8) <= NOT \MEM|registrador_rtl_0_bypass\(8);
\MUX1|ALT_INV_saida_MUX[6]~11_combout\ <= NOT \MUX1|saida_MUX[6]~11_combout\;
\MEM|ALT_INV_registrador_rtl_0_bypass\(7) <= NOT \MEM|registrador_rtl_0_bypass\(7);
\MUX1|ALT_INV_saida_MUX[5]~9_combout\ <= NOT \MUX1|saida_MUX[5]~9_combout\;
\MEM|ALT_INV_registrador_rtl_0_bypass\(6) <= NOT \MEM|registrador_rtl_0_bypass\(6);
\MUX1|ALT_INV_saida_MUX[4]~7_combout\ <= NOT \MUX1|saida_MUX[4]~7_combout\;
\MEM|ALT_INV_registrador_rtl_0_bypass\(5) <= NOT \MEM|registrador_rtl_0_bypass\(5);
\MUX1|ALT_INV_saida_MUX[3]~5_combout\ <= NOT \MUX1|saida_MUX[3]~5_combout\;
\MEM|ALT_INV_registrador_rtl_0_bypass\(4) <= NOT \MEM|registrador_rtl_0_bypass\(4);
\MEM|ALT_INV_registrador_rtl_0_bypass\(3) <= NOT \MEM|registrador_rtl_0_bypass\(3);
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\MUX1|ALT_INV_saida_MUX[1]~2_combout\ <= NOT \MUX1|saida_MUX[1]~2_combout\;
\MEM|ALT_INV_registrador_rtl_0_bypass\(2) <= NOT \MEM|registrador_rtl_0_bypass\(2);
\MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX1|saida_MUX[0]~0_combout\;
\MEM|ALT_INV_registrador_rtl_0_bypass\(1) <= NOT \MEM|registrador_rtl_0_bypass\(1);
\MEM|ALT_INV_registrador_rtl_0_bypass\(0) <= NOT \MEM|registrador_rtl_0_bypass\(0);
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\DEC|ALT_INV_saidaDecoder[3]~1_combout\ <= NOT \DEC|saidaDecoder[3]~1_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(0),
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
	i => \REG1|DOUT\(1),
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
	i => \REG1|DOUT\(2),
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
	i => \REG1|DOUT\(3),
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
	i => \REG1|DOUT\(4),
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
	i => \REG1|DOUT\(5),
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
	i => \REG1|DOUT\(6),
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
	i => \REG1|DOUT\(7),
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
	i => \DEC|saidaDecoder[2]~0_combout\,
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
	i => \DEC|saidaDecoder[3]~1_combout\,
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

\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = !\PC|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	combout => \PC|DOUT[0]~0_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC|DOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\SOM|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))
-- \SOM|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(1),
	cin => GND,
	sumout => \SOM|Add0~1_sumout\,
	cout => \SOM|Add0~2\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\SOM|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~5_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \SOM|Add0~2\ ))
-- \SOM|Add0~6\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \SOM|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \SOM|Add0~2\,
	sumout => \SOM|Add0~5_sumout\,
	cout => \SOM|Add0~6\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\SOM|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~9_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \SOM|Add0~6\ ))
-- \SOM|Add0~10\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \SOM|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \SOM|Add0~6\,
	sumout => \SOM|Add0~9_sumout\,
	cout => \SOM|Add0~10\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(1) $ (((!\PC|DOUT\(0) & \PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011000000000110001100000000011000110000000001100011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\PC|DOUT\(3) & ((!\PC|DOUT\(1) & (!\PC|DOUT\(0) & \PC|DOUT\(2))) # (\PC|DOUT\(1) & ((!\PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100000000000001110000000000000111000000000000011100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (\PC|DOUT\(2) & (!\PC|DOUT\(3) & ((!\PC|DOUT\(1)) # (\PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000000000011010000000000001101000000000000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\SOM|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~29_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \SOM|Add0~10\ ))
-- \SOM|Add0~30\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \SOM|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \SOM|Add0~10\,
	sumout => \SOM|Add0~29_sumout\,
	cout => \SOM|Add0~30\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\SOM|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~25_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \SOM|Add0~30\ ))
-- \SOM|Add0~26\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \SOM|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \SOM|Add0~30\,
	sumout => \SOM|Add0~25_sumout\,
	cout => \SOM|Add0~26\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\SOM|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~21_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \SOM|Add0~26\ ))
-- \SOM|Add0~22\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \SOM|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \SOM|Add0~26\,
	sumout => \SOM|Add0~21_sumout\,
	cout => \SOM|Add0~22\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\SOM|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \SOM|Add0~22\ ))
-- \SOM|Add0~18\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \SOM|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \SOM|Add0~22\,
	sumout => \SOM|Add0~17_sumout\,
	cout => \SOM|Add0~18\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\SOM|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOM|Add0~13_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \SOM|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \SOM|Add0~18\,
	sumout => \SOM|Add0~13_sumout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOM|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~3_combout\);

\DEC|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|Equal5~0_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC|Equal5~0_combout\);

\DEC|saidaDecoder[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|saidaDecoder[3]~1_combout\ = (!\ROM1|memROM~3_combout\) # ((!\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~2_combout\))) # (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111100010111111111110001011111111111000101111111111100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC|saidaDecoder[3]~1_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & ((\PC|DOUT\(1)) # (\PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011100000000000001110000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (\ROM1|memROM~3_combout\ & \ROM1|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~3_combout\ & ( (\PC|DOUT\(0) & (!\PC|DOUT\(1) & (\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~7_combout\);

\MEM|registrador_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ROM1|memROM~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|registrador_rtl_0_bypass\(0));

\MEM|registrador_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|registrador_rtl_0_bypass\(1));

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & (\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~5_combout\);

\MEM|registrador_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradoresArqRegMem:MEM|altsyncram:registrador_rtl_0|altsyncram_2ki1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ROM1|memROM~7_combout\,
	portbre => VCC,
	clk0 => \KEY[0]~input_o\,
	clk1 => \KEY[0]~input_o\,
	ena0 => \ROM1|memROM~7_combout\,
	portadatain => \MEM|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEM|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = (!\MEM|registrador_rtl_0_bypass\(0) & ((\MEM|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (\MEM|registrador_rtl_0_bypass\(0) & (\MEM|registrador_rtl_0_bypass\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_registrador_rtl_0_bypass\(0),
	datab => \MEM|ALT_INV_registrador_rtl_0_bypass\(1),
	datac => \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( !\DEC|Equal5~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal5~0_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\DEC|Equal5~0_combout\ $ (((!\DEC|saidaDecoder[3]~1_combout\ & ((\MUX1|saida_MUX[0]~0_combout\))) # (\DEC|saidaDecoder[3]~1_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\DEC|Equal5~0_combout\ $ (((!\DEC|saidaDecoder[3]~1_combout\ & ((\MUX1|saida_MUX[0]~0_combout\))) # (\DEC|saidaDecoder[3]~1_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal5~0_combout\,
	datab => \DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \REG1|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~1_combout\ = ( \ROM1|memROM~4_combout\ & ( \MUX1|saida_MUX[0]~0_combout\ & ( \ROM1|memROM~3_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \MUX1|saida_MUX[0]~0_combout\ & ( (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~1_combout\ & 
-- ((\ROM1|memROM~2_combout\))) # (\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\)))) ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\MUX1|saida_MUX[0]~0_combout\ & ( (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~2_combout\))) # 
-- (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001110001000000000000111010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \MUX1|saida_MUX[0]~1_combout\);

\DEC|saidaDecoder[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|saidaDecoder[1]~2_combout\ = (!\ROM1|memROM~1_combout\) # (!\ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111100110011111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC|saidaDecoder[1]~2_combout\);

\DEC|saidaDecoder[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|saidaDecoder[2]~0_combout\ = (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~0_combout\ $ (((!\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001101010000000000110101000000000011010100000000001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC|saidaDecoder[2]~0_combout\);

\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \MUX1|saida_MUX[0]~1_combout\,
	sload => \DEC|saidaDecoder[1]~2_combout\,
	ena => \DEC|saidaDecoder[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

\MEM|registrador_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|registrador_rtl_0_bypass\(2));

\MEM|registrador_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradoresArqRegMem:MEM|altsyncram:registrador_rtl_0|altsyncram_2ki1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ROM1|memROM~7_combout\,
	portbre => VCC,
	clk0 => \KEY[0]~input_o\,
	clk1 => \KEY[0]~input_o\,
	ena0 => \ROM1|memROM~7_combout\,
	portadatain => \MEM|registrador_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEM|registrador_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\MUX1|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~2_combout\ = (!\MEM|registrador_rtl_0_bypass\(0) & ((\MEM|registrador_rtl_0|auto_generated|ram_block1a1~portbdataout\))) # (\MEM|registrador_rtl_0_bypass\(0) & (\MEM|registrador_rtl_0_bypass\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_registrador_rtl_0_bypass\(0),
	datab => \MEM|ALT_INV_registrador_rtl_0_bypass\(2),
	datac => \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\,
	combout => \MUX1|saida_MUX[1]~2_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\DEC|Equal5~0_combout\ $ (((!\DEC|saidaDecoder[3]~1_combout\ & ((\MUX1|saida_MUX[1]~2_combout\))) # (\DEC|saidaDecoder[3]~1_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( !\DEC|Equal5~0_combout\ $ (((!\DEC|saidaDecoder[3]~1_combout\ & ((\MUX1|saida_MUX[1]~2_combout\))) # (\DEC|saidaDecoder[3]~1_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal5~0_combout\,
	datab => \DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	dataf => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\MUX1|saida_MUX[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~3_combout\ = ( \ROM1|memROM~4_combout\ & ( \MUX1|saida_MUX[1]~2_combout\ & ( \ROM1|memROM~3_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \MUX1|saida_MUX[1]~2_combout\ & ( (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~1_combout\ & 
-- ((\ROM1|memROM~2_combout\))) # (\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\)))) ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\MUX1|saida_MUX[1]~2_combout\ & ( (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~2_combout\))) # 
-- (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001110001000000000000111010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	combout => \MUX1|saida_MUX[1]~3_combout\);

\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \MUX1|saida_MUX[1]~3_combout\,
	sload => \DEC|saidaDecoder[1]~2_combout\,
	ena => \DEC|saidaDecoder[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

\MEM|registrador_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|registrador_rtl_0_bypass\(3));

\MEM|registrador_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradoresArqRegMem:MEM|altsyncram:registrador_rtl_0|altsyncram_2ki1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ROM1|memROM~7_combout\,
	portbre => VCC,
	clk0 => \KEY[0]~input_o\,
	clk1 => \KEY[0]~input_o\,
	ena0 => \ROM1|memROM~7_combout\,
	portadatain => \MEM|registrador_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEM|registrador_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\MUX1|saida_MUX[2]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~15_combout\ = (!\MEM|registrador_rtl_0_bypass\(0) & ((\MEM|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\))) # (\MEM|registrador_rtl_0_bypass\(0) & (\MEM|registrador_rtl_0_bypass\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_registrador_rtl_0_bypass\(0),
	datab => \MEM|ALT_INV_registrador_rtl_0_bypass\(3),
	datac => \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\,
	combout => \MUX1|saida_MUX[2]~15_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\DEC|Equal5~0_combout\ $ (((!\DEC|saidaDecoder[3]~1_combout\ & ((\MUX1|saida_MUX[2]~15_combout\))) # (\DEC|saidaDecoder[3]~1_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\DEC|Equal5~0_combout\ $ (((!\DEC|saidaDecoder[3]~1_combout\ & ((\MUX1|saida_MUX[2]~15_combout\))) # (\DEC|saidaDecoder[3]~1_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal5~0_combout\,
	datab => \DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[2]~15_combout\,
	dataf => \REG1|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\MUX1|saida_MUX[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~4_combout\ = ( \MEM|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\ & ( (!\DEC|saidaDecoder[3]~1_combout\ & ((!\MEM|registrador_rtl_0_bypass\(0)) # ((\MEM|registrador_rtl_0_bypass\(3))))) # (\DEC|saidaDecoder[3]~1_combout\ & 
-- (((\ROM1|memROM~5_combout\)))) ) ) # ( !\MEM|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\ & ( (!\DEC|saidaDecoder[3]~1_combout\ & (\MEM|registrador_rtl_0_bypass\(0) & ((\MEM|registrador_rtl_0_bypass\(3))))) # 
-- (\DEC|saidaDecoder[3]~1_combout\ & (((\ROM1|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111100011011010111100000101001001111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_saidaDecoder[3]~1_combout\,
	datab => \MEM|ALT_INV_registrador_rtl_0_bypass\(0),
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \MEM|ALT_INV_registrador_rtl_0_bypass\(3),
	datae => \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\,
	combout => \MUX1|saida_MUX[2]~4_combout\);

\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \MUX1|saida_MUX[2]~4_combout\,
	sload => \DEC|saidaDecoder[1]~2_combout\,
	ena => \DEC|saidaDecoder[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

\DEC|saidaDecoder[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|saidaDecoder[3]~3_combout\ = (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\)) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100010000000000110001000000000011000100000000001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC|saidaDecoder[3]~3_combout\);

\DEC|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|Equal5~1_combout\ = (!\ROM1|memROM~3_combout\) # ((!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110000000111111111000000011111111100000001111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC|Equal5~1_combout\);

\MEM|registrador_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|registrador_rtl_0_bypass\(4));

\MEM|registrador_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradoresArqRegMem:MEM|altsyncram:registrador_rtl_0|altsyncram_2ki1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ROM1|memROM~7_combout\,
	portbre => VCC,
	clk0 => \KEY[0]~input_o\,
	clk1 => \KEY[0]~input_o\,
	ena0 => \ROM1|memROM~7_combout\,
	portadatain => \MEM|registrador_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEM|registrador_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\MUX1|saida_MUX[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~5_combout\ = (!\MEM|registrador_rtl_0_bypass\(0) & ((\MEM|registrador_rtl_0|auto_generated|ram_block1a3~portbdataout\))) # (\MEM|registrador_rtl_0_bypass\(0) & (\MEM|registrador_rtl_0_bypass\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_registrador_rtl_0_bypass\(0),
	datab => \MEM|ALT_INV_registrador_rtl_0_bypass\(4),
	datac => \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\,
	combout => \MUX1|saida_MUX[3]~5_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( (!\DEC|Equal5~0_combout\ & (((!\MUX1|saida_MUX[3]~5_combout\) # (\DEC|Equal5~1_combout\)) # (\DEC|saidaDecoder[3]~3_combout\))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( (!\DEC|Equal5~0_combout\ & (((!\MUX1|saida_MUX[3]~5_combout\) # (\DEC|Equal5~1_combout\)) # (\DEC|saidaDecoder[3]~3_combout\))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal5~0_combout\,
	datab => \DEC|ALT_INV_saidaDecoder[3]~3_combout\,
	datac => \DEC|ALT_INV_Equal5~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[3]~5_combout\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\MUX1|saida_MUX[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~6_combout\ = ( \MUX1|saida_MUX[3]~5_combout\ & ( (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~1_combout\ & ((\ROM1|memROM~2_combout\))) # (\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001110100000000000000000000000000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \MUX1|ALT_INV_saida_MUX[3]~5_combout\,
	combout => \MUX1|saida_MUX[3]~6_combout\);

\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \MUX1|saida_MUX[3]~6_combout\,
	sload => \DEC|saidaDecoder[1]~2_combout\,
	ena => \DEC|saidaDecoder[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

\MEM|registrador_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|registrador_rtl_0_bypass\(5));

\MEM|registrador_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradoresArqRegMem:MEM|altsyncram:registrador_rtl_0|altsyncram_2ki1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ROM1|memROM~7_combout\,
	portbre => VCC,
	clk0 => \KEY[0]~input_o\,
	clk1 => \KEY[0]~input_o\,
	ena0 => \ROM1|memROM~7_combout\,
	portadatain => \MEM|registrador_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEM|registrador_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\MUX1|saida_MUX[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~7_combout\ = (!\MEM|registrador_rtl_0_bypass\(0) & ((\MEM|registrador_rtl_0|auto_generated|ram_block1a4~portbdataout\))) # (\MEM|registrador_rtl_0_bypass\(0) & (\MEM|registrador_rtl_0_bypass\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_registrador_rtl_0_bypass\(0),
	datab => \MEM|ALT_INV_registrador_rtl_0_bypass\(5),
	datac => \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\,
	combout => \MUX1|saida_MUX[4]~7_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( (!\DEC|Equal5~0_combout\ & (((!\MUX1|saida_MUX[4]~7_combout\) # (\DEC|Equal5~1_combout\)) # (\DEC|saidaDecoder[3]~3_combout\))) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( (!\DEC|Equal5~0_combout\ & (((!\MUX1|saida_MUX[4]~7_combout\) # (\DEC|Equal5~1_combout\)) # (\DEC|saidaDecoder[3]~3_combout\))) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal5~0_combout\,
	datab => \DEC|ALT_INV_saidaDecoder[3]~3_combout\,
	datac => \DEC|ALT_INV_Equal5~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[4]~7_combout\,
	dataf => \REG1|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\MUX1|saida_MUX[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~8_combout\ = ( \MUX1|saida_MUX[4]~7_combout\ & ( (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~1_combout\ & ((\ROM1|memROM~2_combout\))) # (\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001110100000000000000000000000000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \MUX1|ALT_INV_saida_MUX[4]~7_combout\,
	combout => \MUX1|saida_MUX[4]~8_combout\);

\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \MUX1|saida_MUX[4]~8_combout\,
	sload => \DEC|saidaDecoder[1]~2_combout\,
	ena => \DEC|saidaDecoder[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

\MEM|registrador_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|registrador_rtl_0_bypass\(6));

\MEM|registrador_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradoresArqRegMem:MEM|altsyncram:registrador_rtl_0|altsyncram_2ki1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ROM1|memROM~7_combout\,
	portbre => VCC,
	clk0 => \KEY[0]~input_o\,
	clk1 => \KEY[0]~input_o\,
	ena0 => \ROM1|memROM~7_combout\,
	portadatain => \MEM|registrador_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEM|registrador_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\MUX1|saida_MUX[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~9_combout\ = (!\MEM|registrador_rtl_0_bypass\(0) & ((\MEM|registrador_rtl_0|auto_generated|ram_block1a5~portbdataout\))) # (\MEM|registrador_rtl_0_bypass\(0) & (\MEM|registrador_rtl_0_bypass\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_registrador_rtl_0_bypass\(0),
	datab => \MEM|ALT_INV_registrador_rtl_0_bypass\(6),
	datac => \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\,
	combout => \MUX1|saida_MUX[5]~9_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( (!\DEC|Equal5~0_combout\ & (((!\MUX1|saida_MUX[5]~9_combout\) # (\DEC|Equal5~1_combout\)) # (\DEC|saidaDecoder[3]~3_combout\))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( (!\DEC|Equal5~0_combout\ & (((!\MUX1|saida_MUX[5]~9_combout\) # (\DEC|Equal5~1_combout\)) # (\DEC|saidaDecoder[3]~3_combout\))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal5~0_combout\,
	datab => \DEC|ALT_INV_saidaDecoder[3]~3_combout\,
	datac => \DEC|ALT_INV_Equal5~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[5]~9_combout\,
	dataf => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\MUX1|saida_MUX[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~10_combout\ = ( \MUX1|saida_MUX[5]~9_combout\ & ( (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~1_combout\ & ((\ROM1|memROM~2_combout\))) # (\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001110100000000000000000000000000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \MUX1|ALT_INV_saida_MUX[5]~9_combout\,
	combout => \MUX1|saida_MUX[5]~10_combout\);

\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \MUX1|saida_MUX[5]~10_combout\,
	sload => \DEC|saidaDecoder[1]~2_combout\,
	ena => \DEC|saidaDecoder[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

\MEM|registrador_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|registrador_rtl_0_bypass\(7));

\MEM|registrador_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradoresArqRegMem:MEM|altsyncram:registrador_rtl_0|altsyncram_2ki1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ROM1|memROM~7_combout\,
	portbre => VCC,
	clk0 => \KEY[0]~input_o\,
	clk1 => \KEY[0]~input_o\,
	ena0 => \ROM1|memROM~7_combout\,
	portadatain => \MEM|registrador_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEM|registrador_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\MUX1|saida_MUX[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~11_combout\ = (!\MEM|registrador_rtl_0_bypass\(0) & ((\MEM|registrador_rtl_0|auto_generated|ram_block1a6~portbdataout\))) # (\MEM|registrador_rtl_0_bypass\(0) & (\MEM|registrador_rtl_0_bypass\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_registrador_rtl_0_bypass\(0),
	datab => \MEM|ALT_INV_registrador_rtl_0_bypass\(7),
	datac => \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\,
	combout => \MUX1|saida_MUX[6]~11_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (!\DEC|Equal5~0_combout\ & (((!\MUX1|saida_MUX[6]~11_combout\) # (\DEC|Equal5~1_combout\)) # (\DEC|saidaDecoder[3]~3_combout\))) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( (!\DEC|Equal5~0_combout\ & (((!\MUX1|saida_MUX[6]~11_combout\) # (\DEC|Equal5~1_combout\)) # (\DEC|saidaDecoder[3]~3_combout\))) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal5~0_combout\,
	datab => \DEC|ALT_INV_saidaDecoder[3]~3_combout\,
	datac => \DEC|ALT_INV_Equal5~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[6]~11_combout\,
	dataf => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\MUX1|saida_MUX[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~12_combout\ = ( \MUX1|saida_MUX[6]~11_combout\ & ( (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~1_combout\ & ((\ROM1|memROM~2_combout\))) # (\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001110100000000000000000000000000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \MUX1|ALT_INV_saida_MUX[6]~11_combout\,
	combout => \MUX1|saida_MUX[6]~12_combout\);

\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \MUX1|saida_MUX[6]~12_combout\,
	sload => \DEC|saidaDecoder[1]~2_combout\,
	ena => \DEC|saidaDecoder[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

\MEM|registrador_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|registrador_rtl_0_bypass\(8));

\MEM|registrador_rtl_0|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradoresArqRegMem:MEM|altsyncram:registrador_rtl_0|altsyncram_2ki1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ROM1|memROM~7_combout\,
	portbre => VCC,
	clk0 => \KEY[0]~input_o\,
	clk1 => \KEY[0]~input_o\,
	ena0 => \ROM1|memROM~7_combout\,
	portadatain => \MEM|registrador_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \MEM|registrador_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEM|registrador_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\MUX1|saida_MUX[7]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~13_combout\ = (!\MEM|registrador_rtl_0_bypass\(0) & ((\MEM|registrador_rtl_0|auto_generated|ram_block1a7~portbdataout\))) # (\MEM|registrador_rtl_0_bypass\(0) & (\MEM|registrador_rtl_0_bypass\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_registrador_rtl_0_bypass\(0),
	datab => \MEM|ALT_INV_registrador_rtl_0_bypass\(8),
	datac => \MEM|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\,
	combout => \MUX1|saida_MUX[7]~13_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (!\DEC|Equal5~0_combout\ & (((!\MUX1|saida_MUX[7]~13_combout\) # (\DEC|Equal5~1_combout\)) # (\DEC|saidaDecoder[3]~3_combout\))) ) + ( \REG1|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC|ALT_INV_Equal5~0_combout\,
	datab => \DEC|ALT_INV_saidaDecoder[3]~3_combout\,
	datac => \DEC|ALT_INV_Equal5~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[7]~13_combout\,
	dataf => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

\MUX1|saida_MUX[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~14_combout\ = ( \MUX1|saida_MUX[7]~13_combout\ & ( (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~1_combout\ & ((\ROM1|memROM~2_combout\))) # (\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001110100000000000000000000000000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \MUX1|ALT_INV_saida_MUX[7]~13_combout\,
	combout => \MUX1|saida_MUX[7]~14_combout\);

\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \MUX1|saida_MUX[7]~14_combout\,
	sload => \DEC|saidaDecoder[1]~2_combout\,
	ena => \DEC|saidaDecoder[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

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


