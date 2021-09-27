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

-- DATE "09/20/2021 21:36:37"

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

ENTITY 	Aula8 IS
    PORT (
	CLOCK_50 : IN std_logic;
	FPGA_RESET : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	DEBUG : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	LED7a : BUFFER std_logic_vector(6 DOWNTO 0);
	LED7b : BUFFER std_logic_vector(6 DOWNTO 0);
	LED7c : BUFFER std_logic_vector(6 DOWNTO 0);
	LED7d : BUFFER std_logic_vector(6 DOWNTO 0);
	LED7e : BUFFER std_logic_vector(6 DOWNTO 0);
	LED7f : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Aula8;

-- Design Ports Information
-- DEBUG[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG[4]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG[6]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7a[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7a[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7a[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7a[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7a[4]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7a[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7a[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7b[0]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7b[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7b[2]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7b[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7b[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7b[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7b[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7c[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7c[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7c[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7c[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7c[4]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7c[5]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7c[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7d[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7d[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7d[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7d[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7d[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7d[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7d[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7e[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7e[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7e[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7e[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7e[4]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7e[5]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7e[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7f[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7f[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7f[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7f[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7f[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7f[5]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7f[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Aula8 IS
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
SIGNAL ww_FPGA_RESET : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_DEBUG : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LED7a : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED7b : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED7c : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED7d : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED7e : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED7f : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~23_combout\ : std_logic;
SIGNAL \CPU|SOM|Add0~18\ : std_logic;
SIGNAL \CPU|SOM|Add0~14\ : std_logic;
SIGNAL \CPU|SOM|Add0~25_sumout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|DEC|saidaDecoder[10]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \CPU|DEC|saidaDecoder~4_combout\ : std_logic;
SIGNAL \CPU|MUX4|saida_MUX[4]~6_combout\ : std_logic;
SIGNAL \CPU|SOM|Add0~26\ : std_logic;
SIGNAL \CPU|SOM|Add0~10\ : std_logic;
SIGNAL \CPU|SOM|Add0~30\ : std_logic;
SIGNAL \CPU|SOM|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX4|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|SOM|Add0~34\ : std_logic;
SIGNAL \CPU|SOM|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \CPU|MUX4|saida_MUX[8]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \CPU|SOM|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX4|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~21_combout\ : std_logic;
SIGNAL \CPU|SOM|Add0~2\ : std_logic;
SIGNAL \CPU|SOM|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX4|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|SOM|Add0~6\ : std_logic;
SIGNAL \CPU|SOM|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX4|saida_MUX[2]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~22_combout\ : std_logic;
SIGNAL \CPU|SOM|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX4|saida_MUX[5]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \CPU|DEC|saidaDecoder~5_combout\ : std_logic;
SIGNAL \CPU|DEC|saidaDecoder[3]~8_combout\ : std_logic;
SIGNAL \CPU|DEC|Equal10~2_combout\ : std_logic;
SIGNAL \CPU|DEC|Equal10~0_combout\ : std_logic;
SIGNAL \CPU|DEC|Equal10~1_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \DEM|saidaDecoder[5]~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~14_combout\ : std_logic;
SIGNAL \CPU|DEC|saidaDecoder[3]~6_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~26_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \DEBUG~0_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|DEC|saidaDecoder[10]~2_combout\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \RAM|dado_out[0]~8_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FLIP_FLOP_KEY0|Equal0~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[0]~2_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[0]~7_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~9_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~4_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~5_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \FLIP_FLOP_KEY0|saida~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP_KEY0|Equal0~1_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \FLIP_FLOP_KEY0|Equal0~2_combout\ : std_logic;
SIGNAL \FLIP_FLOP_KEY0|saida~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|dado_out[0]~6_combout\ : std_logic;
SIGNAL \ROM|memROM~25_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|ULA|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|DEC|saidaDecoder[2]~7_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~2\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add1~18\ : std_logic;
SIGNAL \CPU|ULA|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|DEC|saidaDecoder[4]~3_combout\ : std_logic;
SIGNAL \RAM|process_0~1_combout\ : std_logic;
SIGNAL \RAM|ram~566_combout\ : std_logic;
SIGNAL \RAM|ram~567_combout\ : std_logic;
SIGNAL \RAM|ram~336_q\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~272_q\ : std_logic;
SIGNAL \RAM|ram~288feeder_combout\ : std_logic;
SIGNAL \RAM|ram~614_combout\ : std_logic;
SIGNAL \RAM|ram~615_combout\ : std_logic;
SIGNAL \RAM|ram~288_q\ : std_logic;
SIGNAL \RAM|ram~630_combout\ : std_logic;
SIGNAL \RAM|ram~631_combout\ : std_logic;
SIGNAL \RAM|ram~352_q\ : std_logic;
SIGNAL \RAM|ram~681_combout\ : std_logic;
SIGNAL \RAM|ram~574_combout\ : std_logic;
SIGNAL \RAM|ram~575_combout\ : std_logic;
SIGNAL \RAM|ram~368_q\ : std_logic;
SIGNAL \RAM|ram~320feeder_combout\ : std_logic;
SIGNAL \RAM|ram~622_combout\ : std_logic;
SIGNAL \RAM|ram~623_combout\ : std_logic;
SIGNAL \RAM|ram~320_q\ : std_logic;
SIGNAL \RAM|ram~558_combout\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \RAM|ram~304_q\ : std_logic;
SIGNAL \RAM|ram~638_combout\ : std_logic;
SIGNAL \RAM|ram~639_combout\ : std_logic;
SIGNAL \RAM|ram~384_q\ : std_logic;
SIGNAL \RAM|ram~683_combout\ : std_logic;
SIGNAL \RAM|ram~606_combout\ : std_logic;
SIGNAL \RAM|ram~607_combout\ : std_logic;
SIGNAL \RAM|ram~376_q\ : std_logic;
SIGNAL \RAM|ram~590_combout\ : std_logic;
SIGNAL \RAM|ram~591_combout\ : std_logic;
SIGNAL \RAM|ram~312_q\ : std_logic;
SIGNAL \RAM|ram~654_combout\ : std_logic;
SIGNAL \RAM|ram~655_combout\ : std_logic;
SIGNAL \RAM|ram~328_q\ : std_logic;
SIGNAL \RAM|ram~658_combout\ : std_logic;
SIGNAL \RAM|ram~659_combout\ : std_logic;
SIGNAL \RAM|ram~392_q\ : std_logic;
SIGNAL \RAM|ram~684_combout\ : std_logic;
SIGNAL \RAM|ram~280feeder_combout\ : std_logic;
SIGNAL \RAM|ram~582_combout\ : std_logic;
SIGNAL \RAM|ram~583_combout\ : std_logic;
SIGNAL \RAM|ram~280_q\ : std_logic;
SIGNAL \RAM|ram~598_combout\ : std_logic;
SIGNAL \RAM|ram~599_combout\ : std_logic;
SIGNAL \RAM|ram~344_q\ : std_logic;
SIGNAL \RAM|ram~646_combout\ : std_logic;
SIGNAL \RAM|ram~647_combout\ : std_logic;
SIGNAL \RAM|ram~296_q\ : std_logic;
SIGNAL \RAM|ram~650_combout\ : std_logic;
SIGNAL \RAM|ram~651_combout\ : std_logic;
SIGNAL \RAM|ram~360_q\ : std_logic;
SIGNAL \RAM|ram~682_combout\ : std_logic;
SIGNAL \RAM|ram~685_combout\ : std_logic;
SIGNAL \RAM|ram~662_combout\ : std_logic;
SIGNAL \RAM|ram~663_combout\ : std_logic;
SIGNAL \RAM|ram~424_q\ : std_logic;
SIGNAL \RAM|ram~618_combout\ : std_logic;
SIGNAL \RAM|ram~619_combout\ : std_logic;
SIGNAL \RAM|ram~416_q\ : std_logic;
SIGNAL \RAM|ram~626_combout\ : std_logic;
SIGNAL \RAM|ram~627_combout\ : std_logic;
SIGNAL \RAM|ram~448_q\ : std_logic;
SIGNAL \RAM|ram~670_combout\ : std_logic;
SIGNAL \RAM|ram~671_combout\ : std_logic;
SIGNAL \RAM|ram~456_q\ : std_logic;
SIGNAL \RAM|ram~692_combout\ : std_logic;
SIGNAL \RAM|ram~642_combout\ : std_logic;
SIGNAL \RAM|ram~643_combout\ : std_logic;
SIGNAL \RAM|ram~512_q\ : std_logic;
SIGNAL \RAM|ram~634_combout\ : std_logic;
SIGNAL \RAM|ram~635_combout\ : std_logic;
SIGNAL \RAM|ram~480_q\ : std_logic;
SIGNAL \RAM|ram~666_combout\ : std_logic;
SIGNAL \RAM|ram~667_combout\ : std_logic;
SIGNAL \RAM|ram~488_q\ : std_logic;
SIGNAL \RAM|ram~674_combout\ : std_logic;
SIGNAL \RAM|ram~675_combout\ : std_logic;
SIGNAL \RAM|ram~520_q\ : std_logic;
SIGNAL \RAM|ram~694_combout\ : std_logic;
SIGNAL \RAM|ram~602_combout\ : std_logic;
SIGNAL \RAM|ram~603_combout\ : std_logic;
SIGNAL \RAM|ram~472_q\ : std_logic;
SIGNAL \RAM|ram~570_combout\ : std_logic;
SIGNAL \RAM|ram~571_combout\ : std_logic;
SIGNAL \RAM|ram~464_q\ : std_logic;
SIGNAL \RAM|ram~578_combout\ : std_logic;
SIGNAL \RAM|ram~579_combout\ : std_logic;
SIGNAL \RAM|ram~496_q\ : std_logic;
SIGNAL \RAM|ram~610_combout\ : std_logic;
SIGNAL \RAM|ram~611_combout\ : std_logic;
SIGNAL \RAM|ram~504_q\ : std_logic;
SIGNAL \RAM|ram~693_combout\ : std_logic;
SIGNAL \RAM|ram~594_combout\ : std_logic;
SIGNAL \RAM|ram~595_combout\ : std_logic;
SIGNAL \RAM|ram~440_q\ : std_logic;
SIGNAL \RAM|ram~586_combout\ : std_logic;
SIGNAL \RAM|ram~587_combout\ : std_logic;
SIGNAL \RAM|ram~408_q\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~400_q\ : std_logic;
SIGNAL \RAM|ram~432feeder_combout\ : std_logic;
SIGNAL \RAM|ram~562_combout\ : std_logic;
SIGNAL \RAM|ram~563_combout\ : std_logic;
SIGNAL \RAM|ram~432_q\ : std_logic;
SIGNAL \RAM|ram~691_combout\ : std_logic;
SIGNAL \RAM|ram~695_combout\ : std_logic;
SIGNAL \RAM|ram~656_combout\ : std_logic;
SIGNAL \RAM|ram~657_combout\ : std_logic;
SIGNAL \RAM|ram~136_q\ : std_logic;
SIGNAL \RAM|ram~96feeder_combout\ : std_logic;
SIGNAL \RAM|ram~628_combout\ : std_logic;
SIGNAL \RAM|ram~629_combout\ : std_logic;
SIGNAL \RAM|ram~96_q\ : std_logic;
SIGNAL \RAM|ram~648_combout\ : std_logic;
SIGNAL \RAM|ram~649_combout\ : std_logic;
SIGNAL \RAM|ram~104_q\ : std_logic;
SIGNAL \RAM|ram~636_combout\ : std_logic;
SIGNAL \RAM|ram~637_combout\ : std_logic;
SIGNAL \RAM|ram~128_q\ : std_logic;
SIGNAL \RAM|ram~679_combout\ : std_logic;
SIGNAL \RAM|ram~80feeder_combout\ : std_logic;
SIGNAL \RAM|ram~564_combout\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \RAM|ram~80_q\ : std_logic;
SIGNAL \RAM|ram~112feeder_combout\ : std_logic;
SIGNAL \RAM|ram~572_combout\ : std_logic;
SIGNAL \RAM|ram~573_combout\ : std_logic;
SIGNAL \RAM|ram~112_q\ : std_logic;
SIGNAL \RAM|ram~596_combout\ : std_logic;
SIGNAL \RAM|ram~597_combout\ : std_logic;
SIGNAL \RAM|ram~88_q\ : std_logic;
SIGNAL \RAM|ram~604_combout\ : std_logic;
SIGNAL \RAM|ram~605_combout\ : std_logic;
SIGNAL \RAM|ram~120_q\ : std_logic;
SIGNAL \RAM|ram~678_combout\ : std_logic;
SIGNAL \RAM|ram~580_combout\ : std_logic;
SIGNAL \RAM|ram~581_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~48_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~588_combout\ : std_logic;
SIGNAL \RAM|ram~589_combout\ : std_logic;
SIGNAL \RAM|ram~56_q\ : std_logic;
SIGNAL \RAM|ram~676_combout\ : std_logic;
SIGNAL \RAM|ram~40feeder_combout\ : std_logic;
SIGNAL \RAM|ram~644_combout\ : std_logic;
SIGNAL \RAM|ram~645_combout\ : std_logic;
SIGNAL \RAM|ram~40_q\ : std_logic;
SIGNAL \RAM|ram~620_combout\ : std_logic;
SIGNAL \RAM|ram~621_combout\ : std_logic;
SIGNAL \RAM|ram~64_q\ : std_logic;
SIGNAL \RAM|ram~612_combout\ : std_logic;
SIGNAL \RAM|ram~613_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~652_combout\ : std_logic;
SIGNAL \RAM|ram~653_combout\ : std_logic;
SIGNAL \RAM|ram~72_q\ : std_logic;
SIGNAL \RAM|ram~677_combout\ : std_logic;
SIGNAL \RAM|ram~680_combout\ : std_logic;
SIGNAL \RAM|ram~568_combout\ : std_logic;
SIGNAL \RAM|ram~569_combout\ : std_logic;
SIGNAL \RAM|ram~208_q\ : std_logic;
SIGNAL \RAM|ram~240feeder_combout\ : std_logic;
SIGNAL \RAM|ram~576_combout\ : std_logic;
SIGNAL \RAM|ram~577_combout\ : std_logic;
SIGNAL \RAM|ram~240_q\ : std_logic;
SIGNAL \RAM|ram~600_combout\ : std_logic;
SIGNAL \RAM|ram~601_combout\ : std_logic;
SIGNAL \RAM|ram~216_q\ : std_logic;
SIGNAL \RAM|ram~608_combout\ : std_logic;
SIGNAL \RAM|ram~609_combout\ : std_logic;
SIGNAL \RAM|ram~248_q\ : std_logic;
SIGNAL \RAM|ram~688_combout\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~176_q\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~144_q\ : std_logic;
SIGNAL \RAM|ram~152feeder_combout\ : std_logic;
SIGNAL \RAM|ram~584_combout\ : std_logic;
SIGNAL \RAM|ram~585_combout\ : std_logic;
SIGNAL \RAM|ram~152_q\ : std_logic;
SIGNAL \RAM|ram~184feeder_combout\ : std_logic;
SIGNAL \RAM|ram~592_combout\ : std_logic;
SIGNAL \RAM|ram~593_combout\ : std_logic;
SIGNAL \RAM|ram~184_q\ : std_logic;
SIGNAL \RAM|ram~686_combout\ : std_logic;
SIGNAL \RAM|ram~664_combout\ : std_logic;
SIGNAL \RAM|ram~665_combout\ : std_logic;
SIGNAL \RAM|ram~232_q\ : std_logic;
SIGNAL \RAM|ram~672_combout\ : std_logic;
SIGNAL \RAM|ram~673_combout\ : std_logic;
SIGNAL \RAM|ram~264_q\ : std_logic;
SIGNAL \RAM|ram~632_combout\ : std_logic;
SIGNAL \RAM|ram~633_combout\ : std_logic;
SIGNAL \RAM|ram~224_q\ : std_logic;
SIGNAL \RAM|ram~640_combout\ : std_logic;
SIGNAL \RAM|ram~641_combout\ : std_logic;
SIGNAL \RAM|ram~256_q\ : std_logic;
SIGNAL \RAM|ram~689_combout\ : std_logic;
SIGNAL \RAM|ram~668_combout\ : std_logic;
SIGNAL \RAM|ram~669_combout\ : std_logic;
SIGNAL \RAM|ram~200_q\ : std_logic;
SIGNAL \RAM|ram~616_combout\ : std_logic;
SIGNAL \RAM|ram~617_combout\ : std_logic;
SIGNAL \RAM|ram~160_q\ : std_logic;
SIGNAL \RAM|ram~660_combout\ : std_logic;
SIGNAL \RAM|ram~661_combout\ : std_logic;
SIGNAL \RAM|ram~168_q\ : std_logic;
SIGNAL \RAM|ram~624_combout\ : std_logic;
SIGNAL \RAM|ram~625_combout\ : std_logic;
SIGNAL \RAM|ram~192_q\ : std_logic;
SIGNAL \RAM|ram~687_combout\ : std_logic;
SIGNAL \RAM|ram~690_combout\ : std_logic;
SIGNAL \RAM|ram~696_combout\ : std_logic;
SIGNAL \CPU|MUX|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add1~22\ : std_logic;
SIGNAL \CPU|ULA|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~433_q\ : std_logic;
SIGNAL \RAM|ram~193_q\ : std_logic;
SIGNAL \RAM|ram~177_q\ : std_logic;
SIGNAL \RAM|ram~449_q\ : std_logic;
SIGNAL \RAM|ram~703_combout\ : std_logic;
SIGNAL \RAM|ram~513_q\ : std_logic;
SIGNAL \RAM|ram~497_q\ : std_logic;
SIGNAL \RAM|ram~241_q\ : std_logic;
SIGNAL \RAM|ram~257_q\ : std_logic;
SIGNAL \RAM|ram~705_combout\ : std_logic;
SIGNAL \RAM|ram~369_q\ : std_logic;
SIGNAL \RAM|ram~385_q\ : std_logic;
SIGNAL \RAM|ram~129_q\ : std_logic;
SIGNAL \RAM|ram~113_q\ : std_logic;
SIGNAL \RAM|ram~704_combout\ : std_logic;
SIGNAL \RAM|ram~305_q\ : std_logic;
SIGNAL \RAM|ram~65_q\ : std_logic;
SIGNAL \RAM|ram~49feeder_combout\ : std_logic;
SIGNAL \RAM|ram~49_q\ : std_logic;
SIGNAL \RAM|ram~321_q\ : std_logic;
SIGNAL \RAM|ram~702_combout\ : std_logic;
SIGNAL \RAM|ram~706_combout\ : std_logic;
SIGNAL \RAM|ram~329_q\ : std_logic;
SIGNAL \RAM|ram~313_q\ : std_logic;
SIGNAL \RAM|ram~73_q\ : std_logic;
SIGNAL \RAM|ram~57_q\ : std_logic;
SIGNAL \RAM|ram~712_combout\ : std_logic;
SIGNAL \RAM|ram~249_q\ : std_logic;
SIGNAL \RAM|ram~265_q\ : std_logic;
SIGNAL \RAM|ram~505_q\ : std_logic;
SIGNAL \RAM|ram~521_q\ : std_logic;
SIGNAL \RAM|ram~715_combout\ : std_logic;
SIGNAL \RAM|ram~137_q\ : std_logic;
SIGNAL \RAM|ram~377_q\ : std_logic;
SIGNAL \RAM|ram~393_q\ : std_logic;
SIGNAL \RAM|ram~121_q\ : std_logic;
SIGNAL \RAM|ram~713_combout\ : std_logic;
SIGNAL \RAM|ram~441_q\ : std_logic;
SIGNAL \RAM|ram~185_q\ : std_logic;
SIGNAL \RAM|ram~201_q\ : std_logic;
SIGNAL \RAM|ram~457_q\ : std_logic;
SIGNAL \RAM|ram~714_combout\ : std_logic;
SIGNAL \RAM|ram~716_combout\ : std_logic;
SIGNAL \RAM|ram~169_q\ : std_logic;
SIGNAL \RAM|ram~297_q\ : std_logic;
SIGNAL \RAM|ram~41_q\ : std_logic;
SIGNAL \RAM|ram~425_q\ : std_logic;
SIGNAL \RAM|ram~708_combout\ : std_logic;
SIGNAL \RAM|ram~153_q\ : std_logic;
SIGNAL \RAM|ram~281feeder_combout\ : std_logic;
SIGNAL \RAM|ram~281_q\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~409_q\ : std_logic;
SIGNAL \RAM|ram~707_combout\ : std_logic;
SIGNAL \RAM|ram~89_q\ : std_logic;
SIGNAL \RAM|ram~473_q\ : std_logic;
SIGNAL \RAM|ram~217_q\ : std_logic;
SIGNAL \RAM|ram~345_q\ : std_logic;
SIGNAL \RAM|ram~709_combout\ : std_logic;
SIGNAL \RAM|ram~105_q\ : std_logic;
SIGNAL \RAM|ram~233_q\ : std_logic;
SIGNAL \RAM|ram~361_q\ : std_logic;
SIGNAL \RAM|ram~489_q\ : std_logic;
SIGNAL \RAM|ram~710_combout\ : std_logic;
SIGNAL \RAM|ram~711_combout\ : std_logic;
SIGNAL \RAM|ram~209_q\ : std_logic;
SIGNAL \RAM|ram~225_q\ : std_logic;
SIGNAL \RAM|ram~465_q\ : std_logic;
SIGNAL \RAM|ram~481_q\ : std_logic;
SIGNAL \RAM|ram~700_combout\ : std_logic;
SIGNAL \RAM|ram~417_q\ : std_logic;
SIGNAL \RAM|ram~401_q\ : std_logic;
SIGNAL \RAM|ram~145_q\ : std_logic;
SIGNAL \RAM|ram~161_q\ : std_logic;
SIGNAL \RAM|ram~698_combout\ : std_logic;
SIGNAL \RAM|ram~353_q\ : std_logic;
SIGNAL \RAM|ram~337_q\ : std_logic;
SIGNAL \RAM|ram~81feeder_combout\ : std_logic;
SIGNAL \RAM|ram~81_q\ : std_logic;
SIGNAL \RAM|ram~97feeder_combout\ : std_logic;
SIGNAL \RAM|ram~97_q\ : std_logic;
SIGNAL \RAM|ram~699_combout\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~273_q\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~289_q\ : std_logic;
SIGNAL \RAM|ram~697_combout\ : std_logic;
SIGNAL \RAM|ram~701_combout\ : std_logic;
SIGNAL \RAM|ram~717_combout\ : std_logic;
SIGNAL \CPU|MUX|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add1~26\ : std_logic;
SIGNAL \CPU|ULA|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~202_q\ : std_logic;
SIGNAL \RAM|ram~42_q\ : std_logic;
SIGNAL \RAM|ram~74feeder_combout\ : std_logic;
SIGNAL \RAM|ram~74_q\ : std_logic;
SIGNAL \RAM|ram~170_q\ : std_logic;
SIGNAL \RAM|ram~729_combout\ : std_logic;
SIGNAL \RAM|ram~66feeder_combout\ : std_logic;
SIGNAL \RAM|ram~66_q\ : std_logic;
SIGNAL \RAM|ram~34feeder_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~162_q\ : std_logic;
SIGNAL \RAM|ram~194_q\ : std_logic;
SIGNAL \RAM|ram~728_combout\ : std_logic;
SIGNAL \RAM|ram~106_q\ : std_logic;
SIGNAL \RAM|ram~138_q\ : std_logic;
SIGNAL \RAM|ram~234_q\ : std_logic;
SIGNAL \RAM|ram~266_q\ : std_logic;
SIGNAL \RAM|ram~731_combout\ : std_logic;
SIGNAL \RAM|ram~130_q\ : std_logic;
SIGNAL \RAM|ram~98_q\ : std_logic;
SIGNAL \RAM|ram~258feeder_combout\ : std_logic;
SIGNAL \RAM|ram~258_q\ : std_logic;
SIGNAL \RAM|ram~226_q\ : std_logic;
SIGNAL \RAM|ram~730_combout\ : std_logic;
SIGNAL \RAM|ram~732_combout\ : std_logic;
SIGNAL \RAM|ram~402_q\ : std_logic;
SIGNAL \RAM|ram~282_q\ : std_logic;
SIGNAL \RAM|ram~410_q\ : std_logic;
SIGNAL \RAM|ram~274_q\ : std_logic;
SIGNAL \RAM|ram~723_combout\ : std_logic;
SIGNAL \RAM|ram~434feeder_combout\ : std_logic;
SIGNAL \RAM|ram~434_q\ : std_logic;
SIGNAL \RAM|ram~314_q\ : std_logic;
SIGNAL \RAM|ram~442_q\ : std_logic;
SIGNAL \RAM|ram~306_q\ : std_logic;
SIGNAL \RAM|ram~724_combout\ : std_logic;
SIGNAL \RAM|ram~506_q\ : std_logic;
SIGNAL \RAM|ram~498_q\ : std_logic;
SIGNAL \RAM|ram~370_q\ : std_logic;
SIGNAL \RAM|ram~378_q\ : std_logic;
SIGNAL \RAM|ram~726_combout\ : std_logic;
SIGNAL \RAM|ram~346_q\ : std_logic;
SIGNAL \RAM|ram~466_q\ : std_logic;
SIGNAL \RAM|ram~338_q\ : std_logic;
SIGNAL \RAM|ram~474_q\ : std_logic;
SIGNAL \RAM|ram~725_combout\ : std_logic;
SIGNAL \RAM|ram~727_combout\ : std_logic;
SIGNAL \RAM|ram~18feeder_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~82_q\ : std_logic;
SIGNAL \RAM|ram~146_q\ : std_logic;
SIGNAL \RAM|ram~210_q\ : std_logic;
SIGNAL \RAM|ram~718_combout\ : std_logic;
SIGNAL \RAM|ram~122_q\ : std_logic;
SIGNAL \RAM|ram~58_q\ : std_logic;
SIGNAL \RAM|ram~186_q\ : std_logic;
SIGNAL \RAM|ram~250_q\ : std_logic;
SIGNAL \RAM|ram~721_combout\ : std_logic;
SIGNAL \RAM|ram~178_q\ : std_logic;
SIGNAL \RAM|ram~242_q\ : std_logic;
SIGNAL \RAM|ram~114_q\ : std_logic;
SIGNAL \RAM|ram~50_q\ : std_logic;
SIGNAL \RAM|ram~720_combout\ : std_logic;
SIGNAL \RAM|ram~154_q\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~90_q\ : std_logic;
SIGNAL \RAM|ram~218_q\ : std_logic;
SIGNAL \RAM|ram~719_combout\ : std_logic;
SIGNAL \RAM|ram~722_combout\ : std_logic;
SIGNAL \RAM|ram~426_q\ : std_logic;
SIGNAL \RAM|ram~490_q\ : std_logic;
SIGNAL \RAM|ram~298_q\ : std_logic;
SIGNAL \RAM|ram~362_q\ : std_logic;
SIGNAL \RAM|ram~734_combout\ : std_logic;
SIGNAL \RAM|ram~386_q\ : std_logic;
SIGNAL \RAM|ram~514_q\ : std_logic;
SIGNAL \RAM|ram~450feeder_combout\ : std_logic;
SIGNAL \RAM|ram~450_q\ : std_logic;
SIGNAL \RAM|ram~322feeder_combout\ : std_logic;
SIGNAL \RAM|ram~322_q\ : std_logic;
SIGNAL \RAM|ram~735_combout\ : std_logic;
SIGNAL \RAM|ram~330_q\ : std_logic;
SIGNAL \RAM|ram~522_q\ : std_logic;
SIGNAL \RAM|ram~458_q\ : std_logic;
SIGNAL \RAM|ram~394_q\ : std_logic;
SIGNAL \RAM|ram~736_combout\ : std_logic;
SIGNAL \RAM|ram~418_q\ : std_logic;
SIGNAL \RAM|ram~290feeder_combout\ : std_logic;
SIGNAL \RAM|ram~290_q\ : std_logic;
SIGNAL \RAM|ram~354_q\ : std_logic;
SIGNAL \RAM|ram~482_q\ : std_logic;
SIGNAL \RAM|ram~733_combout\ : std_logic;
SIGNAL \RAM|ram~737_combout\ : std_logic;
SIGNAL \RAM|ram~738_combout\ : std_logic;
SIGNAL \CPU|MUX|saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~43feeder_combout\ : std_logic;
SIGNAL \RAM|ram~43_q\ : std_logic;
SIGNAL \RAM|ram~35feeder_combout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~19feeder_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~739_combout\ : std_logic;
SIGNAL \RAM|ram~123_q\ : std_logic;
SIGNAL \RAM|ram~131_q\ : std_logic;
SIGNAL \RAM|ram~115_q\ : std_logic;
SIGNAL \RAM|ram~139_q\ : std_logic;
SIGNAL \RAM|ram~742_combout\ : std_logic;
SIGNAL \RAM|ram~91_q\ : std_logic;
SIGNAL \RAM|ram~83_q\ : std_logic;
SIGNAL \RAM|ram~99_q\ : std_logic;
SIGNAL \RAM|ram~107_q\ : std_logic;
SIGNAL \RAM|ram~741_combout\ : std_logic;
SIGNAL \RAM|ram~59_q\ : std_logic;
SIGNAL \RAM|ram~51feeder_combout\ : std_logic;
SIGNAL \RAM|ram~51_q\ : std_logic;
SIGNAL \RAM|ram~75_q\ : std_logic;
SIGNAL \RAM|ram~67feeder_combout\ : std_logic;
SIGNAL \RAM|ram~67_q\ : std_logic;
SIGNAL \RAM|ram~740_combout\ : std_logic;
SIGNAL \RAM|ram~743_combout\ : std_logic;
SIGNAL \RAM|ram~459_q\ : std_logic;
SIGNAL \RAM|ram~443_q\ : std_logic;
SIGNAL \RAM|ram~435_q\ : std_logic;
SIGNAL \RAM|ram~451_q\ : std_logic;
SIGNAL \RAM|ram~755_combout\ : std_logic;
SIGNAL \RAM|ram~475_q\ : std_logic;
SIGNAL \RAM|ram~483_q\ : std_logic;
SIGNAL \RAM|ram~467_q\ : std_logic;
SIGNAL \RAM|ram~491_q\ : std_logic;
SIGNAL \RAM|ram~756_combout\ : std_logic;
SIGNAL \RAM|ram~515_q\ : std_logic;
SIGNAL \RAM|ram~499_q\ : std_logic;
SIGNAL \RAM|ram~507_q\ : std_logic;
SIGNAL \RAM|ram~523_q\ : std_logic;
SIGNAL \RAM|ram~757_combout\ : std_logic;
SIGNAL \RAM|ram~419_q\ : std_logic;
SIGNAL \RAM|ram~403_q\ : std_logic;
SIGNAL \RAM|ram~411_q\ : std_logic;
SIGNAL \RAM|ram~427_q\ : std_logic;
SIGNAL \RAM|ram~754_combout\ : std_logic;
SIGNAL \RAM|ram~758_combout\ : std_logic;
SIGNAL \RAM|ram~171_q\ : std_logic;
SIGNAL \RAM|ram~227_q\ : std_logic;
SIGNAL \RAM|ram~163_q\ : std_logic;
SIGNAL \RAM|ram~235_q\ : std_logic;
SIGNAL \RAM|ram~750_combout\ : std_logic;
SIGNAL \RAM|ram~187feeder_combout\ : std_logic;
SIGNAL \RAM|ram~187_q\ : std_logic;
SIGNAL \RAM|ram~243_q\ : std_logic;
SIGNAL \RAM|ram~251_q\ : std_logic;
SIGNAL \RAM|ram~179_q\ : std_logic;
SIGNAL \RAM|ram~751_combout\ : std_logic;
SIGNAL \RAM|ram~211_q\ : std_logic;
SIGNAL \RAM|ram~155feeder_combout\ : std_logic;
SIGNAL \RAM|ram~155_q\ : std_logic;
SIGNAL \RAM|ram~219feeder_combout\ : std_logic;
SIGNAL \RAM|ram~219_q\ : std_logic;
SIGNAL \RAM|ram~147_q\ : std_logic;
SIGNAL \RAM|ram~749_combout\ : std_logic;
SIGNAL \RAM|ram~259_q\ : std_logic;
SIGNAL \RAM|ram~195_q\ : std_logic;
SIGNAL \RAM|ram~203_q\ : std_logic;
SIGNAL \RAM|ram~267_q\ : std_logic;
SIGNAL \RAM|ram~752_combout\ : std_logic;
SIGNAL \RAM|ram~753_combout\ : std_logic;
SIGNAL \RAM|ram~355_q\ : std_logic;
SIGNAL \RAM|ram~387_q\ : std_logic;
SIGNAL \RAM|ram~363_q\ : std_logic;
SIGNAL \RAM|ram~395_q\ : std_logic;
SIGNAL \RAM|ram~747_combout\ : std_logic;
SIGNAL \RAM|ram~323_q\ : std_logic;
SIGNAL \RAM|ram~299_q\ : std_logic;
SIGNAL \RAM|ram~291feeder_combout\ : std_logic;
SIGNAL \RAM|ram~291_q\ : std_logic;
SIGNAL \RAM|ram~331_q\ : std_logic;
SIGNAL \RAM|ram~745_combout\ : std_logic;
SIGNAL \RAM|ram~339_q\ : std_logic;
SIGNAL \RAM|ram~371feeder_combout\ : std_logic;
SIGNAL \RAM|ram~371_q\ : std_logic;
SIGNAL \RAM|ram~347_q\ : std_logic;
SIGNAL \RAM|ram~379_q\ : std_logic;
SIGNAL \RAM|ram~746_combout\ : std_logic;
SIGNAL \RAM|ram~283feeder_combout\ : std_logic;
SIGNAL \RAM|ram~283_q\ : std_logic;
SIGNAL \RAM|ram~275_q\ : std_logic;
SIGNAL \RAM|ram~307_q\ : std_logic;
SIGNAL \RAM|ram~315_q\ : std_logic;
SIGNAL \RAM|ram~744_combout\ : std_logic;
SIGNAL \RAM|ram~748_combout\ : std_logic;
SIGNAL \RAM|ram~759_combout\ : std_logic;
SIGNAL \CPU|MUX|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \CPU|ULA|Add1~30\ : std_logic;
SIGNAL \CPU|ULA|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|FREG|DOUT~1_combout\ : std_logic;
SIGNAL \ROM|memROM~24_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add1~2\ : std_logic;
SIGNAL \CPU|ULA|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~44_q\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~60feeder_combout\ : std_logic;
SIGNAL \RAM|ram~60_q\ : std_logic;
SIGNAL \RAM|ram~76_q\ : std_logic;
SIGNAL \RAM|ram~770_combout\ : std_logic;
SIGNAL \RAM|ram~140_q\ : std_logic;
SIGNAL \RAM|ram~92_q\ : std_logic;
SIGNAL \RAM|ram~124_q\ : std_logic;
SIGNAL \RAM|ram~108_q\ : std_logic;
SIGNAL \RAM|ram~772_combout\ : std_logic;
SIGNAL \RAM|ram~156_q\ : std_logic;
SIGNAL \RAM|ram~172_q\ : std_logic;
SIGNAL \RAM|ram~188_q\ : std_logic;
SIGNAL \RAM|ram~204_q\ : std_logic;
SIGNAL \RAM|ram~771_combout\ : std_logic;
SIGNAL \RAM|ram~236_q\ : std_logic;
SIGNAL \RAM|ram~268_q\ : std_logic;
SIGNAL \RAM|ram~220_q\ : std_logic;
SIGNAL \RAM|ram~252feeder_combout\ : std_logic;
SIGNAL \RAM|ram~252_q\ : std_logic;
SIGNAL \RAM|ram~773_combout\ : std_logic;
SIGNAL \RAM|ram~774_combout\ : std_logic;
SIGNAL \RAM|ram~484_q\ : std_logic;
SIGNAL \RAM|ram~356_q\ : std_logic;
SIGNAL \RAM|ram~388_q\ : std_logic;
SIGNAL \RAM|ram~516_q\ : std_logic;
SIGNAL \RAM|ram~768_combout\ : std_logic;
SIGNAL \RAM|ram~292_q\ : std_logic;
SIGNAL \RAM|ram~420feeder_combout\ : std_logic;
SIGNAL \RAM|ram~420_q\ : std_logic;
SIGNAL \RAM|ram~324_q\ : std_logic;
SIGNAL \RAM|ram~452_q\ : std_logic;
SIGNAL \RAM|ram~766_combout\ : std_logic;
SIGNAL \RAM|ram~340_q\ : std_logic;
SIGNAL \RAM|ram~372_q\ : std_logic;
SIGNAL \RAM|ram~468_q\ : std_logic;
SIGNAL \RAM|ram~500_q\ : std_logic;
SIGNAL \RAM|ram~767_combout\ : std_logic;
SIGNAL \RAM|ram~276_q\ : std_logic;
SIGNAL \RAM|ram~404_q\ : std_logic;
SIGNAL \RAM|ram~308_q\ : std_logic;
SIGNAL \RAM|ram~436_q\ : std_logic;
SIGNAL \RAM|ram~765_combout\ : std_logic;
SIGNAL \RAM|ram~769_combout\ : std_logic;
SIGNAL \RAM|ram~460_q\ : std_logic;
SIGNAL \RAM|ram~428_q\ : std_logic;
SIGNAL \RAM|ram~492_q\ : std_logic;
SIGNAL \RAM|ram~524_q\ : std_logic;
SIGNAL \RAM|ram~778_combout\ : std_logic;
SIGNAL \RAM|ram~412_q\ : std_logic;
SIGNAL \RAM|ram~444_q\ : std_logic;
SIGNAL \RAM|ram~476_q\ : std_logic;
SIGNAL \RAM|ram~508_q\ : std_logic;
SIGNAL \RAM|ram~777_combout\ : std_logic;
SIGNAL \RAM|ram~300_q\ : std_logic;
SIGNAL \RAM|ram~332_q\ : std_logic;
SIGNAL \RAM|ram~396_q\ : std_logic;
SIGNAL \RAM|ram~364_q\ : std_logic;
SIGNAL \RAM|ram~776_combout\ : std_logic;
SIGNAL \RAM|ram~284_q\ : std_logic;
SIGNAL \RAM|ram~348_q\ : std_logic;
SIGNAL \RAM|ram~316feeder_combout\ : std_logic;
SIGNAL \RAM|ram~316_q\ : std_logic;
SIGNAL \RAM|ram~380_q\ : std_logic;
SIGNAL \RAM|ram~775_combout\ : std_logic;
SIGNAL \RAM|ram~779_combout\ : std_logic;
SIGNAL \RAM|ram~212_q\ : std_logic;
SIGNAL \RAM|ram~260_q\ : std_logic;
SIGNAL \RAM|ram~228_q\ : std_logic;
SIGNAL \RAM|ram~244_q\ : std_logic;
SIGNAL \RAM|ram~763_combout\ : std_logic;
SIGNAL \RAM|ram~164feeder_combout\ : std_logic;
SIGNAL \RAM|ram~164_q\ : std_logic;
SIGNAL \RAM|ram~180_q\ : std_logic;
SIGNAL \RAM|ram~148_q\ : std_logic;
SIGNAL \RAM|ram~196_q\ : std_logic;
SIGNAL \RAM|ram~761_combout\ : std_logic;
SIGNAL \RAM|ram~84_q\ : std_logic;
SIGNAL \RAM|ram~132_q\ : std_logic;
SIGNAL \RAM|ram~116_q\ : std_logic;
SIGNAL \RAM|ram~100_q\ : std_logic;
SIGNAL \RAM|ram~762_combout\ : std_logic;
SIGNAL \RAM|ram~52feeder_combout\ : std_logic;
SIGNAL \RAM|ram~52_q\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~68_q\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~760_combout\ : std_logic;
SIGNAL \RAM|ram~764_combout\ : std_logic;
SIGNAL \RAM|ram~780_combout\ : std_logic;
SIGNAL \CPU|MUX|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~405_q\ : std_logic;
SIGNAL \RAM|ram~469feeder_combout\ : std_logic;
SIGNAL \RAM|ram~469_q\ : std_logic;
SIGNAL \RAM|ram~485_q\ : std_logic;
SIGNAL \RAM|ram~421_q\ : std_logic;
SIGNAL \RAM|ram~788_combout\ : std_logic;
SIGNAL \RAM|ram~341feeder_combout\ : std_logic;
SIGNAL \RAM|ram~341_q\ : std_logic;
SIGNAL \RAM|ram~293_q\ : std_logic;
SIGNAL \RAM|ram~277_q\ : std_logic;
SIGNAL \RAM|ram~357_q\ : std_logic;
SIGNAL \RAM|ram~786_combout\ : std_logic;
SIGNAL \RAM|ram~493_q\ : std_logic;
SIGNAL \RAM|ram~413_q\ : std_logic;
SIGNAL \RAM|ram~429_q\ : std_logic;
SIGNAL \RAM|ram~477_q\ : std_logic;
SIGNAL \RAM|ram~789_combout\ : std_logic;
SIGNAL \RAM|ram~301_q\ : std_logic;
SIGNAL \RAM|ram~349_q\ : std_logic;
SIGNAL \RAM|ram~285feeder_combout\ : std_logic;
SIGNAL \RAM|ram~285_q\ : std_logic;
SIGNAL \RAM|ram~365_q\ : std_logic;
SIGNAL \RAM|ram~787_combout\ : std_logic;
SIGNAL \RAM|ram~790_combout\ : std_logic;
SIGNAL \RAM|ram~453_q\ : std_logic;
SIGNAL \RAM|ram~445_q\ : std_logic;
SIGNAL \RAM|ram~437_q\ : std_logic;
SIGNAL \RAM|ram~461_q\ : std_logic;
SIGNAL \RAM|ram~797_combout\ : std_logic;
SIGNAL \RAM|ram~309_q\ : std_logic;
SIGNAL \RAM|ram~317_q\ : std_logic;
SIGNAL \RAM|ram~325_q\ : std_logic;
SIGNAL \RAM|ram~333_q\ : std_logic;
SIGNAL \RAM|ram~796_combout\ : std_logic;
SIGNAL \RAM|ram~517_q\ : std_logic;
SIGNAL \RAM|ram~509_q\ : std_logic;
SIGNAL \RAM|ram~501_q\ : std_logic;
SIGNAL \RAM|ram~525_q\ : std_logic;
SIGNAL \RAM|ram~799_combout\ : std_logic;
SIGNAL \RAM|ram~389_q\ : std_logic;
SIGNAL \RAM|ram~397_q\ : std_logic;
SIGNAL \RAM|ram~381_q\ : std_logic;
SIGNAL \RAM|ram~373feeder_combout\ : std_logic;
SIGNAL \RAM|ram~373_q\ : std_logic;
SIGNAL \RAM|ram~798_combout\ : std_logic;
SIGNAL \RAM|ram~800_combout\ : std_logic;
SIGNAL \RAM|ram~69feeder_combout\ : std_logic;
SIGNAL \RAM|ram~69_q\ : std_logic;
SIGNAL \RAM|ram~181_q\ : std_logic;
SIGNAL \RAM|ram~197_q\ : std_logic;
SIGNAL \RAM|ram~53_q\ : std_logic;
SIGNAL \RAM|ram~791_combout\ : std_logic;
SIGNAL \RAM|ram~141_q\ : std_logic;
SIGNAL \RAM|ram~125_q\ : std_logic;
SIGNAL \RAM|ram~253_q\ : std_logic;
SIGNAL \RAM|ram~269_q\ : std_logic;
SIGNAL \RAM|ram~794_combout\ : std_logic;
SIGNAL \RAM|ram~133_q\ : std_logic;
SIGNAL \RAM|ram~117feeder_combout\ : std_logic;
SIGNAL \RAM|ram~117_q\ : std_logic;
SIGNAL \RAM|ram~245feeder_combout\ : std_logic;
SIGNAL \RAM|ram~245_q\ : std_logic;
SIGNAL \RAM|ram~261_q\ : std_logic;
SIGNAL \RAM|ram~793_combout\ : std_logic;
SIGNAL \RAM|ram~61feeder_combout\ : std_logic;
SIGNAL \RAM|ram~61_q\ : std_logic;
SIGNAL \RAM|ram~189_q\ : std_logic;
SIGNAL \RAM|ram~77_q\ : std_logic;
SIGNAL \RAM|ram~205_q\ : std_logic;
SIGNAL \RAM|ram~792_combout\ : std_logic;
SIGNAL \RAM|ram~795_combout\ : std_logic;
SIGNAL \RAM|ram~229_q\ : std_logic;
SIGNAL \RAM|ram~213_q\ : std_logic;
SIGNAL \RAM|ram~221_q\ : std_logic;
SIGNAL \RAM|ram~237_q\ : std_logic;
SIGNAL \RAM|ram~784_combout\ : std_logic;
SIGNAL \RAM|ram~165_q\ : std_logic;
SIGNAL \RAM|ram~149_q\ : std_logic;
SIGNAL \RAM|ram~157feeder_combout\ : std_logic;
SIGNAL \RAM|ram~157_q\ : std_logic;
SIGNAL \RAM|ram~173_q\ : std_logic;
SIGNAL \RAM|ram~782_combout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~45_q\ : std_logic;
SIGNAL \RAM|ram~781_combout\ : std_logic;
SIGNAL \RAM|ram~93_q\ : std_logic;
SIGNAL \RAM|ram~85feeder_combout\ : std_logic;
SIGNAL \RAM|ram~85_q\ : std_logic;
SIGNAL \RAM|ram~101feeder_combout\ : std_logic;
SIGNAL \RAM|ram~101_q\ : std_logic;
SIGNAL \RAM|ram~109_q\ : std_logic;
SIGNAL \RAM|ram~783_combout\ : std_logic;
SIGNAL \RAM|ram~785_combout\ : std_logic;
SIGNAL \RAM|ram~801_combout\ : std_logic;
SIGNAL \CPU|MUX|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \CPU|ULA|Add1~6\ : std_logic;
SIGNAL \CPU|ULA|Add1~9_sumout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM|ram~110_q\ : std_logic;
SIGNAL \RAM|ram~46_q\ : std_logic;
SIGNAL \RAM|ram~142_q\ : std_logic;
SIGNAL \RAM|ram~78feeder_combout\ : std_logic;
SIGNAL \RAM|ram~78_q\ : std_logic;
SIGNAL \RAM|ram~808_combout\ : std_logic;
SIGNAL \RAM|ram~134_q\ : std_logic;
SIGNAL \RAM|ram~102_q\ : std_logic;
SIGNAL \RAM|ram~70_q\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~807_combout\ : std_logic;
SIGNAL \RAM|ram~230_q\ : std_logic;
SIGNAL \RAM|ram~198_q\ : std_logic;
SIGNAL \RAM|ram~166feeder_combout\ : std_logic;
SIGNAL \RAM|ram~166_q\ : std_logic;
SIGNAL \RAM|ram~262_q\ : std_logic;
SIGNAL \RAM|ram~809_combout\ : std_logic;
SIGNAL \RAM|ram~206feeder_combout\ : std_logic;
SIGNAL \RAM|ram~206_q\ : std_logic;
SIGNAL \RAM|ram~174_q\ : std_logic;
SIGNAL \RAM|ram~270_q\ : std_logic;
SIGNAL \RAM|ram~238_q\ : std_logic;
SIGNAL \RAM|ram~810_combout\ : std_logic;
SIGNAL \RAM|ram~811_combout\ : std_logic;
SIGNAL \RAM|ram~62_q\ : std_logic;
SIGNAL \RAM|ram~190_q\ : std_logic;
SIGNAL \RAM|ram~182_q\ : std_logic;
SIGNAL \RAM|ram~54_q\ : std_logic;
SIGNAL \RAM|ram~803_combout\ : std_logic;
SIGNAL \RAM|ram~94_q\ : std_logic;
SIGNAL \RAM|ram~214_q\ : std_logic;
SIGNAL \RAM|ram~86_q\ : std_logic;
SIGNAL \RAM|ram~222_q\ : std_logic;
SIGNAL \RAM|ram~804_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~158feeder_combout\ : std_logic;
SIGNAL \RAM|ram~158_q\ : std_logic;
SIGNAL \RAM|ram~150_q\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~802_combout\ : std_logic;
SIGNAL \RAM|ram~246_q\ : std_logic;
SIGNAL \RAM|ram~126_q\ : std_logic;
SIGNAL \RAM|ram~118_q\ : std_logic;
SIGNAL \RAM|ram~254_q\ : std_logic;
SIGNAL \RAM|ram~805_combout\ : std_logic;
SIGNAL \RAM|ram~806_combout\ : std_logic;
SIGNAL \RAM|ram~374_q\ : std_logic;
SIGNAL \RAM|ram~502_q\ : std_logic;
SIGNAL \RAM|ram~382_q\ : std_logic;
SIGNAL \RAM|ram~510_q\ : std_logic;
SIGNAL \RAM|ram~815_combout\ : std_logic;
SIGNAL \RAM|ram~310_q\ : std_logic;
SIGNAL \RAM|ram~446_q\ : std_logic;
SIGNAL \RAM|ram~438_q\ : std_logic;
SIGNAL \RAM|ram~318_q\ : std_logic;
SIGNAL \RAM|ram~813_combout\ : std_logic;
SIGNAL \RAM|ram~286_q\ : std_logic;
SIGNAL \RAM|ram~278_q\ : std_logic;
SIGNAL \RAM|ram~406_q\ : std_logic;
SIGNAL \RAM|ram~414_q\ : std_logic;
SIGNAL \RAM|ram~812_combout\ : std_logic;
SIGNAL \RAM|ram~478_q\ : std_logic;
SIGNAL \RAM|ram~342_q\ : std_logic;
SIGNAL \RAM|ram~470feeder_combout\ : std_logic;
SIGNAL \RAM|ram~470_q\ : std_logic;
SIGNAL \RAM|ram~350_q\ : std_logic;
SIGNAL \RAM|ram~814_combout\ : std_logic;
SIGNAL \RAM|ram~816_combout\ : std_logic;
SIGNAL \RAM|ram~326_q\ : std_logic;
SIGNAL \RAM|ram~358_q\ : std_logic;
SIGNAL \RAM|ram~294_q\ : std_logic;
SIGNAL \RAM|ram~390_q\ : std_logic;
SIGNAL \RAM|ram~817_combout\ : std_logic;
SIGNAL \RAM|ram~462_q\ : std_logic;
SIGNAL \RAM|ram~494_q\ : std_logic;
SIGNAL \RAM|ram~430_q\ : std_logic;
SIGNAL \RAM|ram~526_q\ : std_logic;
SIGNAL \RAM|ram~820_combout\ : std_logic;
SIGNAL \RAM|ram~486_q\ : std_logic;
SIGNAL \RAM|ram~454_q\ : std_logic;
SIGNAL \RAM|ram~422_q\ : std_logic;
SIGNAL \RAM|ram~518_q\ : std_logic;
SIGNAL \RAM|ram~819_combout\ : std_logic;
SIGNAL \RAM|ram~366_q\ : std_logic;
SIGNAL \RAM|ram~334_q\ : std_logic;
SIGNAL \RAM|ram~302_q\ : std_logic;
SIGNAL \RAM|ram~398_q\ : std_logic;
SIGNAL \RAM|ram~818_combout\ : std_logic;
SIGNAL \RAM|ram~821_combout\ : std_logic;
SIGNAL \RAM|ram~822_combout\ : std_logic;
SIGNAL \CPU|MUX|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \CPU|ULA|Add1~10\ : std_logic;
SIGNAL \CPU|ULA|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|FREG|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FREG|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FREG|DOUT~q\ : std_logic;
SIGNAL \CPU|MUX4|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|SOM|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX4|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DEC|saidaDecoder[10]~1_combout\ : std_logic;
SIGNAL \CPU|LOG|saidaLogica[0]~0_combout\ : std_logic;
SIGNAL \CPU|SOM|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX4|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \RAM|ram~255_q\ : std_logic;
SIGNAL \RAM|ram~511_q\ : std_logic;
SIGNAL \RAM|ram~383_q\ : std_logic;
SIGNAL \RAM|ram~127_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~63_q\ : std_logic;
SIGNAL \RAM|ram~191_q\ : std_logic;
SIGNAL \RAM|ram~447_q\ : std_logic;
SIGNAL \RAM|ram~319feeder_combout\ : std_logic;
SIGNAL \RAM|ram~319_q\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~479_q\ : std_logic;
SIGNAL \RAM|ram~223_q\ : std_logic;
SIGNAL \RAM|ram~351_q\ : std_logic;
SIGNAL \RAM|ram~95_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~159_q\ : std_logic;
SIGNAL \RAM|ram~415_q\ : std_logic;
SIGNAL \RAM|ram~287feeder_combout\ : std_logic;
SIGNAL \RAM|ram~287_q\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~367feeder_combout\ : std_logic;
SIGNAL \RAM|ram~367_q\ : std_logic;
SIGNAL \RAM|ram~495_q\ : std_logic;
SIGNAL \RAM|ram~111feeder_combout\ : std_logic;
SIGNAL \RAM|ram~111_q\ : std_logic;
SIGNAL \RAM|ram~239feeder_combout\ : std_logic;
SIGNAL \RAM|ram~239_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~303_q\ : std_logic;
SIGNAL \RAM|ram~431_q\ : std_logic;
SIGNAL \RAM|ram~175_q\ : std_logic;
SIGNAL \RAM|ram~47feeder_combout\ : std_logic;
SIGNAL \RAM|ram~47_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~463_q\ : std_logic;
SIGNAL \RAM|ram~335_q\ : std_logic;
SIGNAL \RAM|ram~207_q\ : std_logic;
SIGNAL \RAM|ram~79_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~399_q\ : std_logic;
SIGNAL \RAM|ram~271_q\ : std_logic;
SIGNAL \RAM|ram~15feeder_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~143_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~183_q\ : std_logic;
SIGNAL \RAM|ram~55feeder_combout\ : std_logic;
SIGNAL \RAM|ram~55_q\ : std_logic;
SIGNAL \RAM|ram~311feeder_combout\ : std_logic;
SIGNAL \RAM|ram~311_q\ : std_logic;
SIGNAL \RAM|ram~439_q\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~247_q\ : std_logic;
SIGNAL \RAM|ram~503_q\ : std_logic;
SIGNAL \RAM|ram~375_q\ : std_logic;
SIGNAL \RAM|ram~119_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~215_q\ : std_logic;
SIGNAL \RAM|ram~87_q\ : std_logic;
SIGNAL \RAM|ram~343_q\ : std_logic;
SIGNAL \RAM|ram~471_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~407_q\ : std_logic;
SIGNAL \RAM|ram~151_q\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~279_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~487_q\ : std_logic;
SIGNAL \RAM|ram~231_q\ : std_logic;
SIGNAL \RAM|ram~167_q\ : std_logic;
SIGNAL \RAM|ram~423_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~71_q\ : std_logic;
SIGNAL \RAM|ram~327_q\ : std_logic;
SIGNAL \RAM|ram~135_q\ : std_logic;
SIGNAL \RAM|ram~391_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~455_q\ : std_logic;
SIGNAL \RAM|ram~519_q\ : std_logic;
SIGNAL \RAM|ram~199_q\ : std_logic;
SIGNAL \RAM|ram~263_q\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~39feeder_combout\ : std_logic;
SIGNAL \RAM|ram~39_q\ : std_logic;
SIGNAL \RAM|ram~359_q\ : std_logic;
SIGNAL \RAM|ram~103_q\ : std_logic;
SIGNAL \RAM|ram~295_q\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \FLIP_FLOP_KEY0|saida~q\ : std_logic;
SIGNAL \RAM|dado_out[0]~3_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \REG7|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \REG8|DOUT~0_combout\ : std_logic;
SIGNAL \REG8|DOUT~q\ : std_logic;
SIGNAL \REG9|DOUT~0_combout\ : std_logic;
SIGNAL \REG9|DOUT~q\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \L7Ga|REGD|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \L7Ga|CON|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \L7Ga|CON|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \L7Ga|CON|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \L7Ga|CON|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \L7Ga|CON|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \L7Ga|CON|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \L7Ga|CON|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \L7Gb|CON|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \L7Gb|CON|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \L7Gb|CON|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \L7Gb|CON|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \L7Gb|CON|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \L7Gb|CON|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \L7Gb|CON|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \L7Gc|REGD|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \L7Gc|REGD|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \L7Gc|CON|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \L7Gc|CON|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \L7Gc|CON|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \L7Gc|CON|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \L7Gc|CON|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \L7Gc|CON|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \L7Gc|CON|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \L7Gd|REGD|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \L7Gd|CON|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \L7Gd|CON|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \L7Gd|CON|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \L7Gd|CON|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \L7Gd|CON|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \L7Gd|CON|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \L7Gd|CON|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \L7Ge|REGD|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \L7Ge|REGD|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \L7Ge|CON|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \L7Ge|CON|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \L7Ge|CON|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \L7Ge|CON|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \L7Ge|CON|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \L7Ge|CON|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \L7Ge|CON|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~12_combout\ : std_logic;
SIGNAL \comb~13_combout\ : std_logic;
SIGNAL \L7Gf|REGD|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \L7Gf|REGD|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \L7Gf|REGD|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \L7Gf|CON|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \L7Gf|CON|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \L7Gf|CON|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \L7Gf|CON|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \L7Gf|CON|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \L7Gf|CON|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \L7Gf|CON|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \L7Gc|REGD|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|ACU|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG7|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L7Ga|REGD|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L7Gb|REGD|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L7Gd|REGD|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L7Ge|REGD|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L7Gf|REGD|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|RREG|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \L7Ge|REGD|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \L7Gd|REGD|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \FLIP_FLOP_KEY0|ALT_INV_saida~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET~input_o\ : std_logic;
SIGNAL \CPU|DEC|ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~8_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~7_combout\ : std_logic;
SIGNAL \CPU|FREG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FREG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \CPU|DEC|ALT_INV_saidaDecoder[3]~8_combout\ : std_logic;
SIGNAL \CPU|DEC|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \CPU|MUX|ALT_INV_saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~822_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~821_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~820_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~462_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~430_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~819_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~454_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~422_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~818_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~817_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~816_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~815_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~814_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~813_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~446_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~438_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~812_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~414_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~406_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~811_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~810_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~174_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~809_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~166_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~808_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~807_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~806_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~805_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~804_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~803_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~802_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|MUX|ALT_INV_saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~801_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~800_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~799_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~798_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~797_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~461_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~445_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~453_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~437_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~796_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~795_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~794_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~793_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~792_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~791_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~790_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~789_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~429_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~413_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~788_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~421_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~405_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~787_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~786_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~785_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~784_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~783_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~782_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~173_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~165_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~781_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|MUX|ALT_INV_saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~780_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~779_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~778_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~460_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~428_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~777_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~444_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~412_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~776_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~775_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~774_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~773_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~772_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~771_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~172_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~770_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~769_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~768_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~388_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~767_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~372_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~766_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~452_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~420_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~765_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~436_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~404_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~764_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~763_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~762_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~761_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~164_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~760_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|MUX|ALT_INV_saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~759_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~758_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~757_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~756_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~755_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~459_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~443_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~451_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~435_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~754_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~427_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~411_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~419_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~403_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~753_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~752_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~751_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~750_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~171_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~163_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~749_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~748_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~747_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~746_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~745_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~744_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~743_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~742_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~741_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~740_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~739_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|MUX|ALT_INV_saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~738_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~737_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~736_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~458_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~735_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~450_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~734_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~426_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~733_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~418_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~732_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~731_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~730_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~729_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~170_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~728_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~162_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~727_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~726_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~725_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~724_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~442_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~434_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~723_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~410_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~402_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~722_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~721_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~720_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~719_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~718_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|MUX|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~717_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~716_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~715_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~714_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~457_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~441_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~713_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~712_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~711_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~710_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~709_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~708_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~425_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~169_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~707_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~409_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~706_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~705_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~704_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~703_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~449_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~433_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~702_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~701_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~700_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~699_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~698_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~417_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~161_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~401_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~697_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|MUX|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~696_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~695_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~694_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~693_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~464_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~692_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~456_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~448_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~424_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~416_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~440_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~432_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~408_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~400_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~690_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~689_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~688_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~687_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~168_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~686_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~152_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~685_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~684_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~683_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~682_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~681_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~680_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~678_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~677_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~676_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \ALT_INV_comb~14_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~6_combout\ : std_logic;
SIGNAL \CPU|DEC|ALT_INV_saidaDecoder[3]~6_combout\ : std_logic;
SIGNAL \CPU|DEC|ALT_INV_saidaDecoder~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~674_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~672_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~670_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~668_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~666_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~664_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~660_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~656_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~652_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~648_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~644_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~642_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~640_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~638_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~636_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~634_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~632_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~630_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~626_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~622_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~618_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~614_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \ALT_INV_comb~12_combout\ : std_logic;
SIGNAL \ALT_INV_comb~10_combout\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \CPU|DEC|ALT_INV_saidaDecoder[4]~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \CPU|DEC|ALT_INV_saidaDecoder[10]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~455_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~423_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~167_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~447_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~415_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~439_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~407_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~151_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~463_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~431_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~399_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|RREG|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \CPU|LOG|ALT_INV_saidaLogica[0]~0_combout\ : std_logic;
SIGNAL \CPU|MUX4|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU|FREG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \FLIP_FLOP_KEY0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \FLIP_FLOP_KEY0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \FLIP_FLOP_KEY0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \L7Gf|REGD|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L7Ge|REGD|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L7Gd|REGD|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L7Gc|REGD|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L7Gb|REGD|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L7Ga|REGD|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \REG8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_DEBUG~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \CPU|DEC|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \CPU|DEC|ALT_INV_saidaDecoder[10]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \DEM|ALT_INV_saidaDecoder[5]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \FLIP_FLOP_KEY0|ALT_INV_saida~q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~9_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ACU|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|SOM|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|SOM|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|SOM|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|SOM|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|SOM|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|SOM|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|SOM|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|SOM|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|SOM|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_FPGA_RESET <= FPGA_RESET;
ww_KEY <= KEY;
ww_SW <= SW;
DEBUG <= ww_DEBUG;
LEDR <= ww_LEDR;
LED7a <= ww_LED7a;
LED7b <= ww_LED7b;
LED7c <= ww_LED7c;
LED7d <= ww_LED7d;
LED7e <= ww_LED7e;
LED7f <= ww_LED7f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\L7Ge|REGD|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \L7Ge|REGD|DOUT[3]~DUPLICATE_q\;
\L7Gd|REGD|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \L7Gd|REGD|DOUT[0]~DUPLICATE_q\;
\FLIP_FLOP_KEY0|ALT_INV_saida~DUPLICATE_q\ <= NOT \FLIP_FLOP_KEY0|saida~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_FPGA_RESET~input_o\ <= NOT \FPGA_RESET~input_o\;
\CPU|DEC|ALT_INV_Equal10~2_combout\ <= NOT \CPU|DEC|Equal10~2_combout\;
\RAM|ALT_INV_dado_out[0]~8_combout\ <= NOT \RAM|dado_out[0]~8_combout\;
\RAM|ALT_INV_dado_out[0]~7_combout\ <= NOT \RAM|dado_out[0]~7_combout\;
\CPU|FREG|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FREG|DOUT~2_combout\;
\CPU|FREG|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FREG|DOUT~1_combout\;
\ROM|ALT_INV_memROM~26_combout\ <= NOT \ROM|memROM~26_combout\;
\ROM|ALT_INV_memROM~25_combout\ <= NOT \ROM|memROM~25_combout\;
\ROM|ALT_INV_memROM~24_combout\ <= NOT \ROM|memROM~24_combout\;
\CPU|DEC|ALT_INV_saidaDecoder[3]~8_combout\ <= NOT \CPU|DEC|saidaDecoder[3]~8_combout\;
\CPU|DEC|ALT_INV_Equal10~1_combout\ <= NOT \CPU|DEC|Equal10~1_combout\;
\CPU|MUX|ALT_INV_saida_MUX[7]~6_combout\ <= NOT \CPU|MUX|saida_MUX[7]~6_combout\;
\RAM|ALT_INV_ram~822_combout\ <= NOT \RAM|ram~822_combout\;
\RAM|ALT_INV_ram~821_combout\ <= NOT \RAM|ram~821_combout\;
\RAM|ALT_INV_ram~820_combout\ <= NOT \RAM|ram~820_combout\;
\RAM|ALT_INV_ram~526_q\ <= NOT \RAM|ram~526_q\;
\RAM|ALT_INV_ram~494_q\ <= NOT \RAM|ram~494_q\;
\RAM|ALT_INV_ram~462_q\ <= NOT \RAM|ram~462_q\;
\RAM|ALT_INV_ram~430_q\ <= NOT \RAM|ram~430_q\;
\RAM|ALT_INV_ram~819_combout\ <= NOT \RAM|ram~819_combout\;
\RAM|ALT_INV_ram~518_q\ <= NOT \RAM|ram~518_q\;
\RAM|ALT_INV_ram~486_q\ <= NOT \RAM|ram~486_q\;
\RAM|ALT_INV_ram~454_q\ <= NOT \RAM|ram~454_q\;
\RAM|ALT_INV_ram~422_q\ <= NOT \RAM|ram~422_q\;
\RAM|ALT_INV_ram~818_combout\ <= NOT \RAM|ram~818_combout\;
\RAM|ALT_INV_ram~398_q\ <= NOT \RAM|ram~398_q\;
\RAM|ALT_INV_ram~366_q\ <= NOT \RAM|ram~366_q\;
\RAM|ALT_INV_ram~334_q\ <= NOT \RAM|ram~334_q\;
\RAM|ALT_INV_ram~302_q\ <= NOT \RAM|ram~302_q\;
\RAM|ALT_INV_ram~817_combout\ <= NOT \RAM|ram~817_combout\;
\RAM|ALT_INV_ram~390_q\ <= NOT \RAM|ram~390_q\;
\RAM|ALT_INV_ram~358_q\ <= NOT \RAM|ram~358_q\;
\RAM|ALT_INV_ram~326_q\ <= NOT \RAM|ram~326_q\;
\RAM|ALT_INV_ram~294_q\ <= NOT \RAM|ram~294_q\;
\RAM|ALT_INV_ram~816_combout\ <= NOT \RAM|ram~816_combout\;
\RAM|ALT_INV_ram~815_combout\ <= NOT \RAM|ram~815_combout\;
\RAM|ALT_INV_ram~510_q\ <= NOT \RAM|ram~510_q\;
\RAM|ALT_INV_ram~502_q\ <= NOT \RAM|ram~502_q\;
\RAM|ALT_INV_ram~382_q\ <= NOT \RAM|ram~382_q\;
\RAM|ALT_INV_ram~374_q\ <= NOT \RAM|ram~374_q\;
\RAM|ALT_INV_ram~814_combout\ <= NOT \RAM|ram~814_combout\;
\RAM|ALT_INV_ram~478_q\ <= NOT \RAM|ram~478_q\;
\RAM|ALT_INV_ram~470_q\ <= NOT \RAM|ram~470_q\;
\RAM|ALT_INV_ram~350_q\ <= NOT \RAM|ram~350_q\;
\RAM|ALT_INV_ram~342_q\ <= NOT \RAM|ram~342_q\;
\RAM|ALT_INV_ram~813_combout\ <= NOT \RAM|ram~813_combout\;
\RAM|ALT_INV_ram~446_q\ <= NOT \RAM|ram~446_q\;
\RAM|ALT_INV_ram~438_q\ <= NOT \RAM|ram~438_q\;
\RAM|ALT_INV_ram~318_q\ <= NOT \RAM|ram~318_q\;
\RAM|ALT_INV_ram~310_q\ <= NOT \RAM|ram~310_q\;
\RAM|ALT_INV_ram~812_combout\ <= NOT \RAM|ram~812_combout\;
\RAM|ALT_INV_ram~414_q\ <= NOT \RAM|ram~414_q\;
\RAM|ALT_INV_ram~406_q\ <= NOT \RAM|ram~406_q\;
\RAM|ALT_INV_ram~286_q\ <= NOT \RAM|ram~286_q\;
\RAM|ALT_INV_ram~278_q\ <= NOT \RAM|ram~278_q\;
\RAM|ALT_INV_ram~811_combout\ <= NOT \RAM|ram~811_combout\;
\RAM|ALT_INV_ram~810_combout\ <= NOT \RAM|ram~810_combout\;
\RAM|ALT_INV_ram~270_q\ <= NOT \RAM|ram~270_q\;
\RAM|ALT_INV_ram~238_q\ <= NOT \RAM|ram~238_q\;
\RAM|ALT_INV_ram~206_q\ <= NOT \RAM|ram~206_q\;
\RAM|ALT_INV_ram~174_q\ <= NOT \RAM|ram~174_q\;
\RAM|ALT_INV_ram~809_combout\ <= NOT \RAM|ram~809_combout\;
\RAM|ALT_INV_ram~262_q\ <= NOT \RAM|ram~262_q\;
\RAM|ALT_INV_ram~230_q\ <= NOT \RAM|ram~230_q\;
\RAM|ALT_INV_ram~198_q\ <= NOT \RAM|ram~198_q\;
\RAM|ALT_INV_ram~166_q\ <= NOT \RAM|ram~166_q\;
\RAM|ALT_INV_ram~808_combout\ <= NOT \RAM|ram~808_combout\;
\RAM|ALT_INV_ram~142_q\ <= NOT \RAM|ram~142_q\;
\RAM|ALT_INV_ram~110_q\ <= NOT \RAM|ram~110_q\;
\RAM|ALT_INV_ram~78_q\ <= NOT \RAM|ram~78_q\;
\RAM|ALT_INV_ram~46_q\ <= NOT \RAM|ram~46_q\;
\RAM|ALT_INV_ram~807_combout\ <= NOT \RAM|ram~807_combout\;
\RAM|ALT_INV_ram~134_q\ <= NOT \RAM|ram~134_q\;
\RAM|ALT_INV_ram~102_q\ <= NOT \RAM|ram~102_q\;
\RAM|ALT_INV_ram~70_q\ <= NOT \RAM|ram~70_q\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~806_combout\ <= NOT \RAM|ram~806_combout\;
\RAM|ALT_INV_ram~805_combout\ <= NOT \RAM|ram~805_combout\;
\RAM|ALT_INV_ram~254_q\ <= NOT \RAM|ram~254_q\;
\RAM|ALT_INV_ram~246_q\ <= NOT \RAM|ram~246_q\;
\RAM|ALT_INV_ram~126_q\ <= NOT \RAM|ram~126_q\;
\RAM|ALT_INV_ram~118_q\ <= NOT \RAM|ram~118_q\;
\RAM|ALT_INV_ram~804_combout\ <= NOT \RAM|ram~804_combout\;
\RAM|ALT_INV_ram~222_q\ <= NOT \RAM|ram~222_q\;
\RAM|ALT_INV_ram~214_q\ <= NOT \RAM|ram~214_q\;
\RAM|ALT_INV_ram~94_q\ <= NOT \RAM|ram~94_q\;
\RAM|ALT_INV_ram~86_q\ <= NOT \RAM|ram~86_q\;
\RAM|ALT_INV_ram~803_combout\ <= NOT \RAM|ram~803_combout\;
\RAM|ALT_INV_ram~190_q\ <= NOT \RAM|ram~190_q\;
\RAM|ALT_INV_ram~182_q\ <= NOT \RAM|ram~182_q\;
\RAM|ALT_INV_ram~62_q\ <= NOT \RAM|ram~62_q\;
\RAM|ALT_INV_ram~54_q\ <= NOT \RAM|ram~54_q\;
\RAM|ALT_INV_ram~802_combout\ <= NOT \RAM|ram~802_combout\;
\RAM|ALT_INV_ram~158_q\ <= NOT \RAM|ram~158_q\;
\RAM|ALT_INV_ram~150_q\ <= NOT \RAM|ram~150_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\CPU|MUX|ALT_INV_saida_MUX[6]~5_combout\ <= NOT \CPU|MUX|saida_MUX[6]~5_combout\;
\RAM|ALT_INV_ram~801_combout\ <= NOT \RAM|ram~801_combout\;
\RAM|ALT_INV_ram~800_combout\ <= NOT \RAM|ram~800_combout\;
\RAM|ALT_INV_ram~799_combout\ <= NOT \RAM|ram~799_combout\;
\RAM|ALT_INV_ram~525_q\ <= NOT \RAM|ram~525_q\;
\RAM|ALT_INV_ram~509_q\ <= NOT \RAM|ram~509_q\;
\RAM|ALT_INV_ram~517_q\ <= NOT \RAM|ram~517_q\;
\RAM|ALT_INV_ram~501_q\ <= NOT \RAM|ram~501_q\;
\RAM|ALT_INV_ram~798_combout\ <= NOT \RAM|ram~798_combout\;
\RAM|ALT_INV_ram~397_q\ <= NOT \RAM|ram~397_q\;
\RAM|ALT_INV_ram~381_q\ <= NOT \RAM|ram~381_q\;
\RAM|ALT_INV_ram~389_q\ <= NOT \RAM|ram~389_q\;
\RAM|ALT_INV_ram~373_q\ <= NOT \RAM|ram~373_q\;
\RAM|ALT_INV_ram~797_combout\ <= NOT \RAM|ram~797_combout\;
\RAM|ALT_INV_ram~461_q\ <= NOT \RAM|ram~461_q\;
\RAM|ALT_INV_ram~445_q\ <= NOT \RAM|ram~445_q\;
\RAM|ALT_INV_ram~453_q\ <= NOT \RAM|ram~453_q\;
\RAM|ALT_INV_ram~437_q\ <= NOT \RAM|ram~437_q\;
\RAM|ALT_INV_ram~796_combout\ <= NOT \RAM|ram~796_combout\;
\RAM|ALT_INV_ram~333_q\ <= NOT \RAM|ram~333_q\;
\RAM|ALT_INV_ram~317_q\ <= NOT \RAM|ram~317_q\;
\RAM|ALT_INV_ram~325_q\ <= NOT \RAM|ram~325_q\;
\RAM|ALT_INV_ram~309_q\ <= NOT \RAM|ram~309_q\;
\RAM|ALT_INV_ram~795_combout\ <= NOT \RAM|ram~795_combout\;
\RAM|ALT_INV_ram~794_combout\ <= NOT \RAM|ram~794_combout\;
\RAM|ALT_INV_ram~269_q\ <= NOT \RAM|ram~269_q\;
\RAM|ALT_INV_ram~253_q\ <= NOT \RAM|ram~253_q\;
\RAM|ALT_INV_ram~141_q\ <= NOT \RAM|ram~141_q\;
\RAM|ALT_INV_ram~125_q\ <= NOT \RAM|ram~125_q\;
\RAM|ALT_INV_ram~793_combout\ <= NOT \RAM|ram~793_combout\;
\RAM|ALT_INV_ram~261_q\ <= NOT \RAM|ram~261_q\;
\RAM|ALT_INV_ram~245_q\ <= NOT \RAM|ram~245_q\;
\RAM|ALT_INV_ram~133_q\ <= NOT \RAM|ram~133_q\;
\RAM|ALT_INV_ram~117_q\ <= NOT \RAM|ram~117_q\;
\RAM|ALT_INV_ram~792_combout\ <= NOT \RAM|ram~792_combout\;
\RAM|ALT_INV_ram~205_q\ <= NOT \RAM|ram~205_q\;
\RAM|ALT_INV_ram~189_q\ <= NOT \RAM|ram~189_q\;
\RAM|ALT_INV_ram~77_q\ <= NOT \RAM|ram~77_q\;
\RAM|ALT_INV_ram~61_q\ <= NOT \RAM|ram~61_q\;
\RAM|ALT_INV_ram~791_combout\ <= NOT \RAM|ram~791_combout\;
\RAM|ALT_INV_ram~197_q\ <= NOT \RAM|ram~197_q\;
\RAM|ALT_INV_ram~181_q\ <= NOT \RAM|ram~181_q\;
\RAM|ALT_INV_ram~69_q\ <= NOT \RAM|ram~69_q\;
\RAM|ALT_INV_ram~53_q\ <= NOT \RAM|ram~53_q\;
\RAM|ALT_INV_ram~790_combout\ <= NOT \RAM|ram~790_combout\;
\RAM|ALT_INV_ram~789_combout\ <= NOT \RAM|ram~789_combout\;
\RAM|ALT_INV_ram~493_q\ <= NOT \RAM|ram~493_q\;
\RAM|ALT_INV_ram~477_q\ <= NOT \RAM|ram~477_q\;
\RAM|ALT_INV_ram~429_q\ <= NOT \RAM|ram~429_q\;
\RAM|ALT_INV_ram~413_q\ <= NOT \RAM|ram~413_q\;
\RAM|ALT_INV_ram~788_combout\ <= NOT \RAM|ram~788_combout\;
\RAM|ALT_INV_ram~485_q\ <= NOT \RAM|ram~485_q\;
\RAM|ALT_INV_ram~469_q\ <= NOT \RAM|ram~469_q\;
\RAM|ALT_INV_ram~421_q\ <= NOT \RAM|ram~421_q\;
\RAM|ALT_INV_ram~405_q\ <= NOT \RAM|ram~405_q\;
\RAM|ALT_INV_ram~787_combout\ <= NOT \RAM|ram~787_combout\;
\RAM|ALT_INV_ram~365_q\ <= NOT \RAM|ram~365_q\;
\RAM|ALT_INV_ram~349_q\ <= NOT \RAM|ram~349_q\;
\RAM|ALT_INV_ram~301_q\ <= NOT \RAM|ram~301_q\;
\RAM|ALT_INV_ram~285_q\ <= NOT \RAM|ram~285_q\;
\RAM|ALT_INV_ram~786_combout\ <= NOT \RAM|ram~786_combout\;
\RAM|ALT_INV_ram~357_q\ <= NOT \RAM|ram~357_q\;
\RAM|ALT_INV_ram~341_q\ <= NOT \RAM|ram~341_q\;
\RAM|ALT_INV_ram~293_q\ <= NOT \RAM|ram~293_q\;
\RAM|ALT_INV_ram~277_q\ <= NOT \RAM|ram~277_q\;
\RAM|ALT_INV_ram~785_combout\ <= NOT \RAM|ram~785_combout\;
\RAM|ALT_INV_ram~784_combout\ <= NOT \RAM|ram~784_combout\;
\RAM|ALT_INV_ram~237_q\ <= NOT \RAM|ram~237_q\;
\RAM|ALT_INV_ram~221_q\ <= NOT \RAM|ram~221_q\;
\RAM|ALT_INV_ram~229_q\ <= NOT \RAM|ram~229_q\;
\RAM|ALT_INV_ram~213_q\ <= NOT \RAM|ram~213_q\;
\RAM|ALT_INV_ram~783_combout\ <= NOT \RAM|ram~783_combout\;
\RAM|ALT_INV_ram~109_q\ <= NOT \RAM|ram~109_q\;
\RAM|ALT_INV_ram~93_q\ <= NOT \RAM|ram~93_q\;
\RAM|ALT_INV_ram~101_q\ <= NOT \RAM|ram~101_q\;
\RAM|ALT_INV_ram~85_q\ <= NOT \RAM|ram~85_q\;
\RAM|ALT_INV_ram~782_combout\ <= NOT \RAM|ram~782_combout\;
\RAM|ALT_INV_ram~173_q\ <= NOT \RAM|ram~173_q\;
\RAM|ALT_INV_ram~157_q\ <= NOT \RAM|ram~157_q\;
\RAM|ALT_INV_ram~165_q\ <= NOT \RAM|ram~165_q\;
\RAM|ALT_INV_ram~149_q\ <= NOT \RAM|ram~149_q\;
\RAM|ALT_INV_ram~781_combout\ <= NOT \RAM|ram~781_combout\;
\RAM|ALT_INV_ram~45_q\ <= NOT \RAM|ram~45_q\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\CPU|MUX|ALT_INV_saida_MUX[5]~4_combout\ <= NOT \CPU|MUX|saida_MUX[5]~4_combout\;
\RAM|ALT_INV_ram~780_combout\ <= NOT \RAM|ram~780_combout\;
\RAM|ALT_INV_ram~779_combout\ <= NOT \RAM|ram~779_combout\;
\RAM|ALT_INV_ram~778_combout\ <= NOT \RAM|ram~778_combout\;
\RAM|ALT_INV_ram~524_q\ <= NOT \RAM|ram~524_q\;
\RAM|ALT_INV_ram~492_q\ <= NOT \RAM|ram~492_q\;
\RAM|ALT_INV_ram~460_q\ <= NOT \RAM|ram~460_q\;
\RAM|ALT_INV_ram~428_q\ <= NOT \RAM|ram~428_q\;
\RAM|ALT_INV_ram~777_combout\ <= NOT \RAM|ram~777_combout\;
\RAM|ALT_INV_ram~508_q\ <= NOT \RAM|ram~508_q\;
\RAM|ALT_INV_ram~476_q\ <= NOT \RAM|ram~476_q\;
\RAM|ALT_INV_ram~444_q\ <= NOT \RAM|ram~444_q\;
\RAM|ALT_INV_ram~412_q\ <= NOT \RAM|ram~412_q\;
\RAM|ALT_INV_ram~776_combout\ <= NOT \RAM|ram~776_combout\;
\RAM|ALT_INV_ram~396_q\ <= NOT \RAM|ram~396_q\;
\RAM|ALT_INV_ram~364_q\ <= NOT \RAM|ram~364_q\;
\RAM|ALT_INV_ram~332_q\ <= NOT \RAM|ram~332_q\;
\RAM|ALT_INV_ram~300_q\ <= NOT \RAM|ram~300_q\;
\RAM|ALT_INV_ram~775_combout\ <= NOT \RAM|ram~775_combout\;
\RAM|ALT_INV_ram~380_q\ <= NOT \RAM|ram~380_q\;
\RAM|ALT_INV_ram~348_q\ <= NOT \RAM|ram~348_q\;
\RAM|ALT_INV_ram~316_q\ <= NOT \RAM|ram~316_q\;
\RAM|ALT_INV_ram~284_q\ <= NOT \RAM|ram~284_q\;
\RAM|ALT_INV_ram~774_combout\ <= NOT \RAM|ram~774_combout\;
\RAM|ALT_INV_ram~773_combout\ <= NOT \RAM|ram~773_combout\;
\RAM|ALT_INV_ram~268_q\ <= NOT \RAM|ram~268_q\;
\RAM|ALT_INV_ram~252_q\ <= NOT \RAM|ram~252_q\;
\RAM|ALT_INV_ram~236_q\ <= NOT \RAM|ram~236_q\;
\RAM|ALT_INV_ram~220_q\ <= NOT \RAM|ram~220_q\;
\RAM|ALT_INV_ram~772_combout\ <= NOT \RAM|ram~772_combout\;
\RAM|ALT_INV_ram~140_q\ <= NOT \RAM|ram~140_q\;
\RAM|ALT_INV_ram~124_q\ <= NOT \RAM|ram~124_q\;
\RAM|ALT_INV_ram~108_q\ <= NOT \RAM|ram~108_q\;
\RAM|ALT_INV_ram~92_q\ <= NOT \RAM|ram~92_q\;
\RAM|ALT_INV_ram~771_combout\ <= NOT \RAM|ram~771_combout\;
\RAM|ALT_INV_ram~204_q\ <= NOT \RAM|ram~204_q\;
\RAM|ALT_INV_ram~188_q\ <= NOT \RAM|ram~188_q\;
\RAM|ALT_INV_ram~172_q\ <= NOT \RAM|ram~172_q\;
\RAM|ALT_INV_ram~156_q\ <= NOT \RAM|ram~156_q\;
\RAM|ALT_INV_ram~770_combout\ <= NOT \RAM|ram~770_combout\;
\RAM|ALT_INV_ram~76_q\ <= NOT \RAM|ram~76_q\;
\RAM|ALT_INV_ram~60_q\ <= NOT \RAM|ram~60_q\;
\RAM|ALT_INV_ram~44_q\ <= NOT \RAM|ram~44_q\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~769_combout\ <= NOT \RAM|ram~769_combout\;
\RAM|ALT_INV_ram~768_combout\ <= NOT \RAM|ram~768_combout\;
\RAM|ALT_INV_ram~516_q\ <= NOT \RAM|ram~516_q\;
\RAM|ALT_INV_ram~484_q\ <= NOT \RAM|ram~484_q\;
\RAM|ALT_INV_ram~388_q\ <= NOT \RAM|ram~388_q\;
\RAM|ALT_INV_ram~356_q\ <= NOT \RAM|ram~356_q\;
\RAM|ALT_INV_ram~767_combout\ <= NOT \RAM|ram~767_combout\;
\RAM|ALT_INV_ram~500_q\ <= NOT \RAM|ram~500_q\;
\RAM|ALT_INV_ram~468_q\ <= NOT \RAM|ram~468_q\;
\RAM|ALT_INV_ram~372_q\ <= NOT \RAM|ram~372_q\;
\RAM|ALT_INV_ram~340_q\ <= NOT \RAM|ram~340_q\;
\RAM|ALT_INV_ram~766_combout\ <= NOT \RAM|ram~766_combout\;
\RAM|ALT_INV_ram~452_q\ <= NOT \RAM|ram~452_q\;
\RAM|ALT_INV_ram~420_q\ <= NOT \RAM|ram~420_q\;
\RAM|ALT_INV_ram~324_q\ <= NOT \RAM|ram~324_q\;
\RAM|ALT_INV_ram~292_q\ <= NOT \RAM|ram~292_q\;
\RAM|ALT_INV_ram~765_combout\ <= NOT \RAM|ram~765_combout\;
\RAM|ALT_INV_ram~436_q\ <= NOT \RAM|ram~436_q\;
\RAM|ALT_INV_ram~404_q\ <= NOT \RAM|ram~404_q\;
\RAM|ALT_INV_ram~308_q\ <= NOT \RAM|ram~308_q\;
\RAM|ALT_INV_ram~276_q\ <= NOT \RAM|ram~276_q\;
\RAM|ALT_INV_ram~764_combout\ <= NOT \RAM|ram~764_combout\;
\RAM|ALT_INV_ram~763_combout\ <= NOT \RAM|ram~763_combout\;
\RAM|ALT_INV_ram~260_q\ <= NOT \RAM|ram~260_q\;
\RAM|ALT_INV_ram~244_q\ <= NOT \RAM|ram~244_q\;
\RAM|ALT_INV_ram~228_q\ <= NOT \RAM|ram~228_q\;
\RAM|ALT_INV_ram~212_q\ <= NOT \RAM|ram~212_q\;
\RAM|ALT_INV_ram~762_combout\ <= NOT \RAM|ram~762_combout\;
\RAM|ALT_INV_ram~132_q\ <= NOT \RAM|ram~132_q\;
\RAM|ALT_INV_ram~116_q\ <= NOT \RAM|ram~116_q\;
\RAM|ALT_INV_ram~100_q\ <= NOT \RAM|ram~100_q\;
\RAM|ALT_INV_ram~84_q\ <= NOT \RAM|ram~84_q\;
\RAM|ALT_INV_ram~761_combout\ <= NOT \RAM|ram~761_combout\;
\RAM|ALT_INV_ram~196_q\ <= NOT \RAM|ram~196_q\;
\RAM|ALT_INV_ram~180_q\ <= NOT \RAM|ram~180_q\;
\RAM|ALT_INV_ram~164_q\ <= NOT \RAM|ram~164_q\;
\RAM|ALT_INV_ram~148_q\ <= NOT \RAM|ram~148_q\;
\RAM|ALT_INV_ram~760_combout\ <= NOT \RAM|ram~760_combout\;
\RAM|ALT_INV_ram~68_q\ <= NOT \RAM|ram~68_q\;
\RAM|ALT_INV_ram~52_q\ <= NOT \RAM|ram~52_q\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\CPU|MUX|ALT_INV_saida_MUX[4]~3_combout\ <= NOT \CPU|MUX|saida_MUX[4]~3_combout\;
\RAM|ALT_INV_ram~759_combout\ <= NOT \RAM|ram~759_combout\;
\RAM|ALT_INV_ram~758_combout\ <= NOT \RAM|ram~758_combout\;
\RAM|ALT_INV_ram~757_combout\ <= NOT \RAM|ram~757_combout\;
\RAM|ALT_INV_ram~523_q\ <= NOT \RAM|ram~523_q\;
\RAM|ALT_INV_ram~507_q\ <= NOT \RAM|ram~507_q\;
\RAM|ALT_INV_ram~515_q\ <= NOT \RAM|ram~515_q\;
\RAM|ALT_INV_ram~499_q\ <= NOT \RAM|ram~499_q\;
\RAM|ALT_INV_ram~756_combout\ <= NOT \RAM|ram~756_combout\;
\RAM|ALT_INV_ram~491_q\ <= NOT \RAM|ram~491_q\;
\RAM|ALT_INV_ram~475_q\ <= NOT \RAM|ram~475_q\;
\RAM|ALT_INV_ram~483_q\ <= NOT \RAM|ram~483_q\;
\RAM|ALT_INV_ram~467_q\ <= NOT \RAM|ram~467_q\;
\RAM|ALT_INV_ram~755_combout\ <= NOT \RAM|ram~755_combout\;
\RAM|ALT_INV_ram~459_q\ <= NOT \RAM|ram~459_q\;
\RAM|ALT_INV_ram~443_q\ <= NOT \RAM|ram~443_q\;
\RAM|ALT_INV_ram~451_q\ <= NOT \RAM|ram~451_q\;
\RAM|ALT_INV_ram~435_q\ <= NOT \RAM|ram~435_q\;
\RAM|ALT_INV_ram~754_combout\ <= NOT \RAM|ram~754_combout\;
\RAM|ALT_INV_ram~427_q\ <= NOT \RAM|ram~427_q\;
\RAM|ALT_INV_ram~411_q\ <= NOT \RAM|ram~411_q\;
\RAM|ALT_INV_ram~419_q\ <= NOT \RAM|ram~419_q\;
\RAM|ALT_INV_ram~403_q\ <= NOT \RAM|ram~403_q\;
\RAM|ALT_INV_ram~753_combout\ <= NOT \RAM|ram~753_combout\;
\RAM|ALT_INV_ram~752_combout\ <= NOT \RAM|ram~752_combout\;
\RAM|ALT_INV_ram~267_q\ <= NOT \RAM|ram~267_q\;
\RAM|ALT_INV_ram~259_q\ <= NOT \RAM|ram~259_q\;
\RAM|ALT_INV_ram~203_q\ <= NOT \RAM|ram~203_q\;
\RAM|ALT_INV_ram~195_q\ <= NOT \RAM|ram~195_q\;
\RAM|ALT_INV_ram~751_combout\ <= NOT \RAM|ram~751_combout\;
\RAM|ALT_INV_ram~251_q\ <= NOT \RAM|ram~251_q\;
\RAM|ALT_INV_ram~243_q\ <= NOT \RAM|ram~243_q\;
\RAM|ALT_INV_ram~187_q\ <= NOT \RAM|ram~187_q\;
\RAM|ALT_INV_ram~179_q\ <= NOT \RAM|ram~179_q\;
\RAM|ALT_INV_ram~750_combout\ <= NOT \RAM|ram~750_combout\;
\RAM|ALT_INV_ram~235_q\ <= NOT \RAM|ram~235_q\;
\RAM|ALT_INV_ram~227_q\ <= NOT \RAM|ram~227_q\;
\RAM|ALT_INV_ram~171_q\ <= NOT \RAM|ram~171_q\;
\RAM|ALT_INV_ram~163_q\ <= NOT \RAM|ram~163_q\;
\RAM|ALT_INV_ram~749_combout\ <= NOT \RAM|ram~749_combout\;
\RAM|ALT_INV_ram~219_q\ <= NOT \RAM|ram~219_q\;
\RAM|ALT_INV_ram~211_q\ <= NOT \RAM|ram~211_q\;
\RAM|ALT_INV_ram~155_q\ <= NOT \RAM|ram~155_q\;
\RAM|ALT_INV_ram~147_q\ <= NOT \RAM|ram~147_q\;
\RAM|ALT_INV_ram~748_combout\ <= NOT \RAM|ram~748_combout\;
\RAM|ALT_INV_ram~747_combout\ <= NOT \RAM|ram~747_combout\;
\RAM|ALT_INV_ram~395_q\ <= NOT \RAM|ram~395_q\;
\RAM|ALT_INV_ram~387_q\ <= NOT \RAM|ram~387_q\;
\RAM|ALT_INV_ram~363_q\ <= NOT \RAM|ram~363_q\;
\RAM|ALT_INV_ram~355_q\ <= NOT \RAM|ram~355_q\;
\RAM|ALT_INV_ram~746_combout\ <= NOT \RAM|ram~746_combout\;
\RAM|ALT_INV_ram~379_q\ <= NOT \RAM|ram~379_q\;
\RAM|ALT_INV_ram~371_q\ <= NOT \RAM|ram~371_q\;
\RAM|ALT_INV_ram~347_q\ <= NOT \RAM|ram~347_q\;
\RAM|ALT_INV_ram~339_q\ <= NOT \RAM|ram~339_q\;
\RAM|ALT_INV_ram~745_combout\ <= NOT \RAM|ram~745_combout\;
\RAM|ALT_INV_ram~331_q\ <= NOT \RAM|ram~331_q\;
\RAM|ALT_INV_ram~323_q\ <= NOT \RAM|ram~323_q\;
\RAM|ALT_INV_ram~299_q\ <= NOT \RAM|ram~299_q\;
\RAM|ALT_INV_ram~291_q\ <= NOT \RAM|ram~291_q\;
\RAM|ALT_INV_ram~744_combout\ <= NOT \RAM|ram~744_combout\;
\RAM|ALT_INV_ram~315_q\ <= NOT \RAM|ram~315_q\;
\RAM|ALT_INV_ram~307_q\ <= NOT \RAM|ram~307_q\;
\RAM|ALT_INV_ram~283_q\ <= NOT \RAM|ram~283_q\;
\RAM|ALT_INV_ram~275_q\ <= NOT \RAM|ram~275_q\;
\RAM|ALT_INV_ram~743_combout\ <= NOT \RAM|ram~743_combout\;
\RAM|ALT_INV_ram~742_combout\ <= NOT \RAM|ram~742_combout\;
\RAM|ALT_INV_ram~139_q\ <= NOT \RAM|ram~139_q\;
\RAM|ALT_INV_ram~131_q\ <= NOT \RAM|ram~131_q\;
\RAM|ALT_INV_ram~123_q\ <= NOT \RAM|ram~123_q\;
\RAM|ALT_INV_ram~115_q\ <= NOT \RAM|ram~115_q\;
\RAM|ALT_INV_ram~741_combout\ <= NOT \RAM|ram~741_combout\;
\RAM|ALT_INV_ram~107_q\ <= NOT \RAM|ram~107_q\;
\RAM|ALT_INV_ram~99_q\ <= NOT \RAM|ram~99_q\;
\RAM|ALT_INV_ram~91_q\ <= NOT \RAM|ram~91_q\;
\RAM|ALT_INV_ram~83_q\ <= NOT \RAM|ram~83_q\;
\RAM|ALT_INV_ram~740_combout\ <= NOT \RAM|ram~740_combout\;
\RAM|ALT_INV_ram~75_q\ <= NOT \RAM|ram~75_q\;
\RAM|ALT_INV_ram~67_q\ <= NOT \RAM|ram~67_q\;
\RAM|ALT_INV_ram~59_q\ <= NOT \RAM|ram~59_q\;
\RAM|ALT_INV_ram~51_q\ <= NOT \RAM|ram~51_q\;
\RAM|ALT_INV_ram~739_combout\ <= NOT \RAM|ram~739_combout\;
\RAM|ALT_INV_ram~43_q\ <= NOT \RAM|ram~43_q\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\CPU|MUX|ALT_INV_saida_MUX[3]~2_combout\ <= NOT \CPU|MUX|saida_MUX[3]~2_combout\;
\RAM|ALT_INV_ram~738_combout\ <= NOT \RAM|ram~738_combout\;
\RAM|ALT_INV_ram~737_combout\ <= NOT \RAM|ram~737_combout\;
\RAM|ALT_INV_ram~736_combout\ <= NOT \RAM|ram~736_combout\;
\RAM|ALT_INV_ram~522_q\ <= NOT \RAM|ram~522_q\;
\RAM|ALT_INV_ram~394_q\ <= NOT \RAM|ram~394_q\;
\RAM|ALT_INV_ram~458_q\ <= NOT \RAM|ram~458_q\;
\RAM|ALT_INV_ram~330_q\ <= NOT \RAM|ram~330_q\;
\RAM|ALT_INV_ram~735_combout\ <= NOT \RAM|ram~735_combout\;
\RAM|ALT_INV_ram~514_q\ <= NOT \RAM|ram~514_q\;
\RAM|ALT_INV_ram~386_q\ <= NOT \RAM|ram~386_q\;
\RAM|ALT_INV_ram~450_q\ <= NOT \RAM|ram~450_q\;
\RAM|ALT_INV_ram~322_q\ <= NOT \RAM|ram~322_q\;
\RAM|ALT_INV_ram~734_combout\ <= NOT \RAM|ram~734_combout\;
\RAM|ALT_INV_ram~490_q\ <= NOT \RAM|ram~490_q\;
\RAM|ALT_INV_ram~362_q\ <= NOT \RAM|ram~362_q\;
\RAM|ALT_INV_ram~426_q\ <= NOT \RAM|ram~426_q\;
\RAM|ALT_INV_ram~298_q\ <= NOT \RAM|ram~298_q\;
\RAM|ALT_INV_ram~733_combout\ <= NOT \RAM|ram~733_combout\;
\RAM|ALT_INV_ram~482_q\ <= NOT \RAM|ram~482_q\;
\RAM|ALT_INV_ram~354_q\ <= NOT \RAM|ram~354_q\;
\RAM|ALT_INV_ram~418_q\ <= NOT \RAM|ram~418_q\;
\RAM|ALT_INV_ram~290_q\ <= NOT \RAM|ram~290_q\;
\RAM|ALT_INV_ram~732_combout\ <= NOT \RAM|ram~732_combout\;
\RAM|ALT_INV_ram~731_combout\ <= NOT \RAM|ram~731_combout\;
\RAM|ALT_INV_ram~266_q\ <= NOT \RAM|ram~266_q\;
\RAM|ALT_INV_ram~234_q\ <= NOT \RAM|ram~234_q\;
\RAM|ALT_INV_ram~138_q\ <= NOT \RAM|ram~138_q\;
\RAM|ALT_INV_ram~106_q\ <= NOT \RAM|ram~106_q\;
\RAM|ALT_INV_ram~730_combout\ <= NOT \RAM|ram~730_combout\;
\RAM|ALT_INV_ram~258_q\ <= NOT \RAM|ram~258_q\;
\RAM|ALT_INV_ram~226_q\ <= NOT \RAM|ram~226_q\;
\RAM|ALT_INV_ram~130_q\ <= NOT \RAM|ram~130_q\;
\RAM|ALT_INV_ram~98_q\ <= NOT \RAM|ram~98_q\;
\RAM|ALT_INV_ram~729_combout\ <= NOT \RAM|ram~729_combout\;
\RAM|ALT_INV_ram~202_q\ <= NOT \RAM|ram~202_q\;
\RAM|ALT_INV_ram~170_q\ <= NOT \RAM|ram~170_q\;
\RAM|ALT_INV_ram~74_q\ <= NOT \RAM|ram~74_q\;
\RAM|ALT_INV_ram~42_q\ <= NOT \RAM|ram~42_q\;
\RAM|ALT_INV_ram~728_combout\ <= NOT \RAM|ram~728_combout\;
\RAM|ALT_INV_ram~194_q\ <= NOT \RAM|ram~194_q\;
\RAM|ALT_INV_ram~162_q\ <= NOT \RAM|ram~162_q\;
\RAM|ALT_INV_ram~66_q\ <= NOT \RAM|ram~66_q\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~727_combout\ <= NOT \RAM|ram~727_combout\;
\RAM|ALT_INV_ram~726_combout\ <= NOT \RAM|ram~726_combout\;
\RAM|ALT_INV_ram~506_q\ <= NOT \RAM|ram~506_q\;
\RAM|ALT_INV_ram~498_q\ <= NOT \RAM|ram~498_q\;
\RAM|ALT_INV_ram~378_q\ <= NOT \RAM|ram~378_q\;
\RAM|ALT_INV_ram~370_q\ <= NOT \RAM|ram~370_q\;
\RAM|ALT_INV_ram~725_combout\ <= NOT \RAM|ram~725_combout\;
\RAM|ALT_INV_ram~474_q\ <= NOT \RAM|ram~474_q\;
\RAM|ALT_INV_ram~466_q\ <= NOT \RAM|ram~466_q\;
\RAM|ALT_INV_ram~346_q\ <= NOT \RAM|ram~346_q\;
\RAM|ALT_INV_ram~338_q\ <= NOT \RAM|ram~338_q\;
\RAM|ALT_INV_ram~724_combout\ <= NOT \RAM|ram~724_combout\;
\RAM|ALT_INV_ram~442_q\ <= NOT \RAM|ram~442_q\;
\RAM|ALT_INV_ram~434_q\ <= NOT \RAM|ram~434_q\;
\RAM|ALT_INV_ram~314_q\ <= NOT \RAM|ram~314_q\;
\RAM|ALT_INV_ram~306_q\ <= NOT \RAM|ram~306_q\;
\RAM|ALT_INV_ram~723_combout\ <= NOT \RAM|ram~723_combout\;
\RAM|ALT_INV_ram~410_q\ <= NOT \RAM|ram~410_q\;
\RAM|ALT_INV_ram~402_q\ <= NOT \RAM|ram~402_q\;
\RAM|ALT_INV_ram~282_q\ <= NOT \RAM|ram~282_q\;
\RAM|ALT_INV_ram~274_q\ <= NOT \RAM|ram~274_q\;
\RAM|ALT_INV_ram~722_combout\ <= NOT \RAM|ram~722_combout\;
\RAM|ALT_INV_ram~721_combout\ <= NOT \RAM|ram~721_combout\;
\RAM|ALT_INV_ram~250_q\ <= NOT \RAM|ram~250_q\;
\RAM|ALT_INV_ram~122_q\ <= NOT \RAM|ram~122_q\;
\RAM|ALT_INV_ram~186_q\ <= NOT \RAM|ram~186_q\;
\RAM|ALT_INV_ram~58_q\ <= NOT \RAM|ram~58_q\;
\RAM|ALT_INV_ram~720_combout\ <= NOT \RAM|ram~720_combout\;
\RAM|ALT_INV_ram~242_q\ <= NOT \RAM|ram~242_q\;
\RAM|ALT_INV_ram~114_q\ <= NOT \RAM|ram~114_q\;
\RAM|ALT_INV_ram~178_q\ <= NOT \RAM|ram~178_q\;
\RAM|ALT_INV_ram~50_q\ <= NOT \RAM|ram~50_q\;
\RAM|ALT_INV_ram~719_combout\ <= NOT \RAM|ram~719_combout\;
\RAM|ALT_INV_ram~218_q\ <= NOT \RAM|ram~218_q\;
\RAM|ALT_INV_ram~90_q\ <= NOT \RAM|ram~90_q\;
\RAM|ALT_INV_ram~154_q\ <= NOT \RAM|ram~154_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~718_combout\ <= NOT \RAM|ram~718_combout\;
\RAM|ALT_INV_ram~210_q\ <= NOT \RAM|ram~210_q\;
\RAM|ALT_INV_ram~82_q\ <= NOT \RAM|ram~82_q\;
\RAM|ALT_INV_ram~146_q\ <= NOT \RAM|ram~146_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\CPU|MUX|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \CPU|MUX|saida_MUX[2]~1_combout\;
\RAM|ALT_INV_ram~717_combout\ <= NOT \RAM|ram~717_combout\;
\RAM|ALT_INV_ram~716_combout\ <= NOT \RAM|ram~716_combout\;
\RAM|ALT_INV_ram~715_combout\ <= NOT \RAM|ram~715_combout\;
\RAM|ALT_INV_ram~521_q\ <= NOT \RAM|ram~521_q\;
\RAM|ALT_INV_ram~265_q\ <= NOT \RAM|ram~265_q\;
\RAM|ALT_INV_ram~505_q\ <= NOT \RAM|ram~505_q\;
\RAM|ALT_INV_ram~249_q\ <= NOT \RAM|ram~249_q\;
\RAM|ALT_INV_ram~714_combout\ <= NOT \RAM|ram~714_combout\;
\RAM|ALT_INV_ram~457_q\ <= NOT \RAM|ram~457_q\;
\RAM|ALT_INV_ram~201_q\ <= NOT \RAM|ram~201_q\;
\RAM|ALT_INV_ram~441_q\ <= NOT \RAM|ram~441_q\;
\RAM|ALT_INV_ram~185_q\ <= NOT \RAM|ram~185_q\;
\RAM|ALT_INV_ram~713_combout\ <= NOT \RAM|ram~713_combout\;
\RAM|ALT_INV_ram~393_q\ <= NOT \RAM|ram~393_q\;
\RAM|ALT_INV_ram~137_q\ <= NOT \RAM|ram~137_q\;
\RAM|ALT_INV_ram~377_q\ <= NOT \RAM|ram~377_q\;
\RAM|ALT_INV_ram~121_q\ <= NOT \RAM|ram~121_q\;
\RAM|ALT_INV_ram~712_combout\ <= NOT \RAM|ram~712_combout\;
\RAM|ALT_INV_ram~329_q\ <= NOT \RAM|ram~329_q\;
\RAM|ALT_INV_ram~73_q\ <= NOT \RAM|ram~73_q\;
\RAM|ALT_INV_ram~313_q\ <= NOT \RAM|ram~313_q\;
\RAM|ALT_INV_ram~57_q\ <= NOT \RAM|ram~57_q\;
\RAM|ALT_INV_ram~711_combout\ <= NOT \RAM|ram~711_combout\;
\RAM|ALT_INV_ram~710_combout\ <= NOT \RAM|ram~710_combout\;
\RAM|ALT_INV_ram~489_q\ <= NOT \RAM|ram~489_q\;
\RAM|ALT_INV_ram~233_q\ <= NOT \RAM|ram~233_q\;
\RAM|ALT_INV_ram~361_q\ <= NOT \RAM|ram~361_q\;
\RAM|ALT_INV_ram~105_q\ <= NOT \RAM|ram~105_q\;
\RAM|ALT_INV_ram~709_combout\ <= NOT \RAM|ram~709_combout\;
\RAM|ALT_INV_ram~473_q\ <= NOT \RAM|ram~473_q\;
\RAM|ALT_INV_ram~217_q\ <= NOT \RAM|ram~217_q\;
\RAM|ALT_INV_ram~345_q\ <= NOT \RAM|ram~345_q\;
\RAM|ALT_INV_ram~89_q\ <= NOT \RAM|ram~89_q\;
\RAM|ALT_INV_ram~708_combout\ <= NOT \RAM|ram~708_combout\;
\RAM|ALT_INV_ram~425_q\ <= NOT \RAM|ram~425_q\;
\RAM|ALT_INV_ram~169_q\ <= NOT \RAM|ram~169_q\;
\RAM|ALT_INV_ram~297_q\ <= NOT \RAM|ram~297_q\;
\RAM|ALT_INV_ram~41_q\ <= NOT \RAM|ram~41_q\;
\RAM|ALT_INV_ram~707_combout\ <= NOT \RAM|ram~707_combout\;
\RAM|ALT_INV_ram~409_q\ <= NOT \RAM|ram~409_q\;
\RAM|ALT_INV_ram~153_q\ <= NOT \RAM|ram~153_q\;
\RAM|ALT_INV_ram~281_q\ <= NOT \RAM|ram~281_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~706_combout\ <= NOT \RAM|ram~706_combout\;
\RAM|ALT_INV_ram~705_combout\ <= NOT \RAM|ram~705_combout\;
\RAM|ALT_INV_ram~513_q\ <= NOT \RAM|ram~513_q\;
\RAM|ALT_INV_ram~257_q\ <= NOT \RAM|ram~257_q\;
\RAM|ALT_INV_ram~497_q\ <= NOT \RAM|ram~497_q\;
\RAM|ALT_INV_ram~241_q\ <= NOT \RAM|ram~241_q\;
\RAM|ALT_INV_ram~704_combout\ <= NOT \RAM|ram~704_combout\;
\RAM|ALT_INV_ram~385_q\ <= NOT \RAM|ram~385_q\;
\RAM|ALT_INV_ram~129_q\ <= NOT \RAM|ram~129_q\;
\RAM|ALT_INV_ram~369_q\ <= NOT \RAM|ram~369_q\;
\RAM|ALT_INV_ram~113_q\ <= NOT \RAM|ram~113_q\;
\RAM|ALT_INV_ram~703_combout\ <= NOT \RAM|ram~703_combout\;
\RAM|ALT_INV_ram~449_q\ <= NOT \RAM|ram~449_q\;
\RAM|ALT_INV_ram~193_q\ <= NOT \RAM|ram~193_q\;
\RAM|ALT_INV_ram~433_q\ <= NOT \RAM|ram~433_q\;
\RAM|ALT_INV_ram~177_q\ <= NOT \RAM|ram~177_q\;
\RAM|ALT_INV_ram~702_combout\ <= NOT \RAM|ram~702_combout\;
\RAM|ALT_INV_ram~321_q\ <= NOT \RAM|ram~321_q\;
\RAM|ALT_INV_ram~65_q\ <= NOT \RAM|ram~65_q\;
\RAM|ALT_INV_ram~305_q\ <= NOT \RAM|ram~305_q\;
\RAM|ALT_INV_ram~49_q\ <= NOT \RAM|ram~49_q\;
\RAM|ALT_INV_ram~701_combout\ <= NOT \RAM|ram~701_combout\;
\RAM|ALT_INV_ram~700_combout\ <= NOT \RAM|ram~700_combout\;
\RAM|ALT_INV_ram~481_q\ <= NOT \RAM|ram~481_q\;
\RAM|ALT_INV_ram~225_q\ <= NOT \RAM|ram~225_q\;
\RAM|ALT_INV_ram~465_q\ <= NOT \RAM|ram~465_q\;
\RAM|ALT_INV_ram~209_q\ <= NOT \RAM|ram~209_q\;
\RAM|ALT_INV_ram~699_combout\ <= NOT \RAM|ram~699_combout\;
\RAM|ALT_INV_ram~353_q\ <= NOT \RAM|ram~353_q\;
\RAM|ALT_INV_ram~97_q\ <= NOT \RAM|ram~97_q\;
\RAM|ALT_INV_ram~337_q\ <= NOT \RAM|ram~337_q\;
\RAM|ALT_INV_ram~81_q\ <= NOT \RAM|ram~81_q\;
\RAM|ALT_INV_ram~698_combout\ <= NOT \RAM|ram~698_combout\;
\RAM|ALT_INV_ram~417_q\ <= NOT \RAM|ram~417_q\;
\RAM|ALT_INV_ram~161_q\ <= NOT \RAM|ram~161_q\;
\RAM|ALT_INV_ram~401_q\ <= NOT \RAM|ram~401_q\;
\RAM|ALT_INV_ram~145_q\ <= NOT \RAM|ram~145_q\;
\RAM|ALT_INV_ram~697_combout\ <= NOT \RAM|ram~697_combout\;
\RAM|ALT_INV_ram~289_q\ <= NOT \RAM|ram~289_q\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~273_q\ <= NOT \RAM|ram~273_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\CPU|MUX|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \CPU|MUX|saida_MUX[1]~0_combout\;
\RAM|ALT_INV_ram~696_combout\ <= NOT \RAM|ram~696_combout\;
\RAM|ALT_INV_ram~695_combout\ <= NOT \RAM|ram~695_combout\;
\RAM|ALT_INV_ram~694_combout\ <= NOT \RAM|ram~694_combout\;
\RAM|ALT_INV_ram~520_q\ <= NOT \RAM|ram~520_q\;
\RAM|ALT_INV_ram~512_q\ <= NOT \RAM|ram~512_q\;
\RAM|ALT_INV_ram~488_q\ <= NOT \RAM|ram~488_q\;
\RAM|ALT_INV_ram~480_q\ <= NOT \RAM|ram~480_q\;
\RAM|ALT_INV_ram~693_combout\ <= NOT \RAM|ram~693_combout\;
\RAM|ALT_INV_ram~504_q\ <= NOT \RAM|ram~504_q\;
\RAM|ALT_INV_ram~496_q\ <= NOT \RAM|ram~496_q\;
\RAM|ALT_INV_ram~472_q\ <= NOT \RAM|ram~472_q\;
\RAM|ALT_INV_ram~464_q\ <= NOT \RAM|ram~464_q\;
\RAM|ALT_INV_ram~692_combout\ <= NOT \RAM|ram~692_combout\;
\RAM|ALT_INV_ram~456_q\ <= NOT \RAM|ram~456_q\;
\RAM|ALT_INV_ram~448_q\ <= NOT \RAM|ram~448_q\;
\RAM|ALT_INV_ram~424_q\ <= NOT \RAM|ram~424_q\;
\RAM|ALT_INV_ram~416_q\ <= NOT \RAM|ram~416_q\;
\RAM|ALT_INV_ram~691_combout\ <= NOT \RAM|ram~691_combout\;
\RAM|ALT_INV_ram~440_q\ <= NOT \RAM|ram~440_q\;
\RAM|ALT_INV_ram~432_q\ <= NOT \RAM|ram~432_q\;
\RAM|ALT_INV_ram~408_q\ <= NOT \RAM|ram~408_q\;
\RAM|ALT_INV_ram~400_q\ <= NOT \RAM|ram~400_q\;
\RAM|ALT_INV_ram~690_combout\ <= NOT \RAM|ram~690_combout\;
\RAM|ALT_INV_ram~689_combout\ <= NOT \RAM|ram~689_combout\;
\RAM|ALT_INV_ram~264_q\ <= NOT \RAM|ram~264_q\;
\RAM|ALT_INV_ram~256_q\ <= NOT \RAM|ram~256_q\;
\RAM|ALT_INV_ram~232_q\ <= NOT \RAM|ram~232_q\;
\RAM|ALT_INV_ram~224_q\ <= NOT \RAM|ram~224_q\;
\RAM|ALT_INV_ram~688_combout\ <= NOT \RAM|ram~688_combout\;
\RAM|ALT_INV_ram~248_q\ <= NOT \RAM|ram~248_q\;
\RAM|ALT_INV_ram~240_q\ <= NOT \RAM|ram~240_q\;
\RAM|ALT_INV_ram~216_q\ <= NOT \RAM|ram~216_q\;
\RAM|ALT_INV_ram~208_q\ <= NOT \RAM|ram~208_q\;
\RAM|ALT_INV_ram~687_combout\ <= NOT \RAM|ram~687_combout\;
\RAM|ALT_INV_ram~200_q\ <= NOT \RAM|ram~200_q\;
\RAM|ALT_INV_ram~192_q\ <= NOT \RAM|ram~192_q\;
\RAM|ALT_INV_ram~168_q\ <= NOT \RAM|ram~168_q\;
\RAM|ALT_INV_ram~160_q\ <= NOT \RAM|ram~160_q\;
\RAM|ALT_INV_ram~686_combout\ <= NOT \RAM|ram~686_combout\;
\RAM|ALT_INV_ram~184_q\ <= NOT \RAM|ram~184_q\;
\RAM|ALT_INV_ram~176_q\ <= NOT \RAM|ram~176_q\;
\RAM|ALT_INV_ram~152_q\ <= NOT \RAM|ram~152_q\;
\RAM|ALT_INV_ram~144_q\ <= NOT \RAM|ram~144_q\;
\RAM|ALT_INV_ram~685_combout\ <= NOT \RAM|ram~685_combout\;
\RAM|ALT_INV_ram~684_combout\ <= NOT \RAM|ram~684_combout\;
\RAM|ALT_INV_ram~392_q\ <= NOT \RAM|ram~392_q\;
\RAM|ALT_INV_ram~376_q\ <= NOT \RAM|ram~376_q\;
\RAM|ALT_INV_ram~328_q\ <= NOT \RAM|ram~328_q\;
\RAM|ALT_INV_ram~312_q\ <= NOT \RAM|ram~312_q\;
\RAM|ALT_INV_ram~683_combout\ <= NOT \RAM|ram~683_combout\;
\RAM|ALT_INV_ram~384_q\ <= NOT \RAM|ram~384_q\;
\RAM|ALT_INV_ram~368_q\ <= NOT \RAM|ram~368_q\;
\RAM|ALT_INV_ram~320_q\ <= NOT \RAM|ram~320_q\;
\RAM|ALT_INV_ram~304_q\ <= NOT \RAM|ram~304_q\;
\RAM|ALT_INV_ram~682_combout\ <= NOT \RAM|ram~682_combout\;
\RAM|ALT_INV_ram~360_q\ <= NOT \RAM|ram~360_q\;
\RAM|ALT_INV_ram~344_q\ <= NOT \RAM|ram~344_q\;
\RAM|ALT_INV_ram~296_q\ <= NOT \RAM|ram~296_q\;
\RAM|ALT_INV_ram~280_q\ <= NOT \RAM|ram~280_q\;
\RAM|ALT_INV_ram~681_combout\ <= NOT \RAM|ram~681_combout\;
\RAM|ALT_INV_ram~352_q\ <= NOT \RAM|ram~352_q\;
\RAM|ALT_INV_ram~336_q\ <= NOT \RAM|ram~336_q\;
\RAM|ALT_INV_ram~288_q\ <= NOT \RAM|ram~288_q\;
\RAM|ALT_INV_ram~272_q\ <= NOT \RAM|ram~272_q\;
\RAM|ALT_INV_ram~680_combout\ <= NOT \RAM|ram~680_combout\;
\RAM|ALT_INV_ram~679_combout\ <= NOT \RAM|ram~679_combout\;
\RAM|ALT_INV_ram~136_q\ <= NOT \RAM|ram~136_q\;
\RAM|ALT_INV_ram~128_q\ <= NOT \RAM|ram~128_q\;
\RAM|ALT_INV_ram~104_q\ <= NOT \RAM|ram~104_q\;
\RAM|ALT_INV_ram~96_q\ <= NOT \RAM|ram~96_q\;
\RAM|ALT_INV_ram~678_combout\ <= NOT \RAM|ram~678_combout\;
\RAM|ALT_INV_ram~120_q\ <= NOT \RAM|ram~120_q\;
\RAM|ALT_INV_ram~112_q\ <= NOT \RAM|ram~112_q\;
\RAM|ALT_INV_ram~88_q\ <= NOT \RAM|ram~88_q\;
\RAM|ALT_INV_ram~80_q\ <= NOT \RAM|ram~80_q\;
\RAM|ALT_INV_ram~677_combout\ <= NOT \RAM|ram~677_combout\;
\RAM|ALT_INV_ram~72_q\ <= NOT \RAM|ram~72_q\;
\RAM|ALT_INV_ram~64_q\ <= NOT \RAM|ram~64_q\;
\RAM|ALT_INV_ram~40_q\ <= NOT \RAM|ram~40_q\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~676_combout\ <= NOT \RAM|ram~676_combout\;
\RAM|ALT_INV_ram~56_q\ <= NOT \RAM|ram~56_q\;
\RAM|ALT_INV_ram~48_q\ <= NOT \RAM|ram~48_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\ALT_INV_comb~14_combout\ <= NOT \comb~14_combout\;
\CPU|ULA|ALT_INV_Equal0~0_combout\ <= NOT \CPU|ULA|Equal0~0_combout\;
\RAM|ALT_INV_dado_out[0]~6_combout\ <= NOT \RAM|dado_out[0]~6_combout\;
\CPU|DEC|ALT_INV_saidaDecoder[3]~6_combout\ <= NOT \CPU|DEC|saidaDecoder[3]~6_combout\;
\CPU|DEC|ALT_INV_saidaDecoder~5_combout\ <= NOT \CPU|DEC|saidaDecoder~5_combout\;
\RAM|ALT_INV_ram~674_combout\ <= NOT \RAM|ram~674_combout\;
\RAM|ALT_INV_ram~672_combout\ <= NOT \RAM|ram~672_combout\;
\RAM|ALT_INV_ram~670_combout\ <= NOT \RAM|ram~670_combout\;
\RAM|ALT_INV_ram~668_combout\ <= NOT \RAM|ram~668_combout\;
\RAM|ALT_INV_ram~666_combout\ <= NOT \RAM|ram~666_combout\;
\RAM|ALT_INV_ram~664_combout\ <= NOT \RAM|ram~664_combout\;
\RAM|ALT_INV_ram~662_combout\ <= NOT \RAM|ram~662_combout\;
\RAM|ALT_INV_ram~660_combout\ <= NOT \RAM|ram~660_combout\;
\RAM|ALT_INV_ram~658_combout\ <= NOT \RAM|ram~658_combout\;
\RAM|ALT_INV_ram~656_combout\ <= NOT \RAM|ram~656_combout\;
\RAM|ALT_INV_ram~654_combout\ <= NOT \RAM|ram~654_combout\;
\RAM|ALT_INV_ram~652_combout\ <= NOT \RAM|ram~652_combout\;
\RAM|ALT_INV_ram~650_combout\ <= NOT \RAM|ram~650_combout\;
\RAM|ALT_INV_ram~648_combout\ <= NOT \RAM|ram~648_combout\;
\RAM|ALT_INV_ram~646_combout\ <= NOT \RAM|ram~646_combout\;
\RAM|ALT_INV_ram~644_combout\ <= NOT \RAM|ram~644_combout\;
\RAM|ALT_INV_ram~642_combout\ <= NOT \RAM|ram~642_combout\;
\RAM|ALT_INV_ram~640_combout\ <= NOT \RAM|ram~640_combout\;
\RAM|ALT_INV_ram~638_combout\ <= NOT \RAM|ram~638_combout\;
\RAM|ALT_INV_ram~636_combout\ <= NOT \RAM|ram~636_combout\;
\RAM|ALT_INV_ram~634_combout\ <= NOT \RAM|ram~634_combout\;
\RAM|ALT_INV_ram~632_combout\ <= NOT \RAM|ram~632_combout\;
\RAM|ALT_INV_ram~630_combout\ <= NOT \RAM|ram~630_combout\;
\RAM|ALT_INV_ram~628_combout\ <= NOT \RAM|ram~628_combout\;
\RAM|ALT_INV_ram~626_combout\ <= NOT \RAM|ram~626_combout\;
\RAM|ALT_INV_ram~624_combout\ <= NOT \RAM|ram~624_combout\;
\RAM|ALT_INV_ram~622_combout\ <= NOT \RAM|ram~622_combout\;
\RAM|ALT_INV_ram~620_combout\ <= NOT \RAM|ram~620_combout\;
\RAM|ALT_INV_ram~618_combout\ <= NOT \RAM|ram~618_combout\;
\RAM|ALT_INV_ram~616_combout\ <= NOT \RAM|ram~616_combout\;
\RAM|ALT_INV_ram~614_combout\ <= NOT \RAM|ram~614_combout\;
\RAM|ALT_INV_ram~612_combout\ <= NOT \RAM|ram~612_combout\;
\RAM|ALT_INV_ram~610_combout\ <= NOT \RAM|ram~610_combout\;
\RAM|ALT_INV_ram~608_combout\ <= NOT \RAM|ram~608_combout\;
\RAM|ALT_INV_ram~606_combout\ <= NOT \RAM|ram~606_combout\;
\RAM|ALT_INV_ram~604_combout\ <= NOT \RAM|ram~604_combout\;
\RAM|ALT_INV_ram~602_combout\ <= NOT \RAM|ram~602_combout\;
\RAM|ALT_INV_ram~600_combout\ <= NOT \RAM|ram~600_combout\;
\RAM|ALT_INV_ram~598_combout\ <= NOT \RAM|ram~598_combout\;
\RAM|ALT_INV_ram~596_combout\ <= NOT \RAM|ram~596_combout\;
\RAM|ALT_INV_ram~594_combout\ <= NOT \RAM|ram~594_combout\;
\RAM|ALT_INV_ram~592_combout\ <= NOT \RAM|ram~592_combout\;
\RAM|ALT_INV_ram~590_combout\ <= NOT \RAM|ram~590_combout\;
\RAM|ALT_INV_ram~588_combout\ <= NOT \RAM|ram~588_combout\;
\RAM|ALT_INV_ram~586_combout\ <= NOT \RAM|ram~586_combout\;
\RAM|ALT_INV_ram~584_combout\ <= NOT \RAM|ram~584_combout\;
\RAM|ALT_INV_ram~582_combout\ <= NOT \RAM|ram~582_combout\;
\RAM|ALT_INV_ram~580_combout\ <= NOT \RAM|ram~580_combout\;
\RAM|ALT_INV_ram~578_combout\ <= NOT \RAM|ram~578_combout\;
\RAM|ALT_INV_ram~576_combout\ <= NOT \RAM|ram~576_combout\;
\RAM|ALT_INV_ram~574_combout\ <= NOT \RAM|ram~574_combout\;
\RAM|ALT_INV_ram~572_combout\ <= NOT \RAM|ram~572_combout\;
\RAM|ALT_INV_ram~570_combout\ <= NOT \RAM|ram~570_combout\;
\RAM|ALT_INV_ram~568_combout\ <= NOT \RAM|ram~568_combout\;
\RAM|ALT_INV_ram~566_combout\ <= NOT \RAM|ram~566_combout\;
\RAM|ALT_INV_ram~564_combout\ <= NOT \RAM|ram~564_combout\;
\RAM|ALT_INV_ram~562_combout\ <= NOT \RAM|ram~562_combout\;
\RAM|ALT_INV_ram~560_combout\ <= NOT \RAM|ram~560_combout\;
\RAM|ALT_INV_ram~558_combout\ <= NOT \RAM|ram~558_combout\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~554_combout\ <= NOT \RAM|ram~554_combout\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_process_0~1_combout\ <= NOT \RAM|process_0~1_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\ALT_INV_comb~12_combout\ <= NOT \comb~12_combout\;
\ALT_INV_comb~10_combout\ <= NOT \comb~10_combout\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\CPU|DEC|ALT_INV_saidaDecoder[4]~3_combout\ <= NOT \CPU|DEC|saidaDecoder[4]~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\RAM|ALT_INV_dado_out[0]~5_combout\ <= NOT \RAM|dado_out[0]~5_combout\;
\RAM|ALT_INV_dado_out[0]~4_combout\ <= NOT \RAM|dado_out[0]~4_combout\;
\RAM|ALT_INV_dado_out[0]~2_combout\ <= NOT \RAM|dado_out[0]~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\CPU|DEC|ALT_INV_saidaDecoder[10]~2_combout\ <= NOT \CPU|DEC|saidaDecoder[10]~2_combout\;
\RAM|ALT_INV_dado_out[0]~1_combout\ <= NOT \RAM|dado_out[0]~1_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~519_q\ <= NOT \RAM|ram~519_q\;
\RAM|ALT_INV_ram~263_q\ <= NOT \RAM|ram~263_q\;
\RAM|ALT_INV_ram~455_q\ <= NOT \RAM|ram~455_q\;
\RAM|ALT_INV_ram~199_q\ <= NOT \RAM|ram~199_q\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~487_q\ <= NOT \RAM|ram~487_q\;
\RAM|ALT_INV_ram~231_q\ <= NOT \RAM|ram~231_q\;
\RAM|ALT_INV_ram~423_q\ <= NOT \RAM|ram~423_q\;
\RAM|ALT_INV_ram~167_q\ <= NOT \RAM|ram~167_q\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~391_q\ <= NOT \RAM|ram~391_q\;
\RAM|ALT_INV_ram~135_q\ <= NOT \RAM|ram~135_q\;
\RAM|ALT_INV_ram~327_q\ <= NOT \RAM|ram~327_q\;
\RAM|ALT_INV_ram~71_q\ <= NOT \RAM|ram~71_q\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~359_q\ <= NOT \RAM|ram~359_q\;
\RAM|ALT_INV_ram~103_q\ <= NOT \RAM|ram~103_q\;
\RAM|ALT_INV_ram~295_q\ <= NOT \RAM|ram~295_q\;
\RAM|ALT_INV_ram~39_q\ <= NOT \RAM|ram~39_q\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~511_q\ <= NOT \RAM|ram~511_q\;
\RAM|ALT_INV_ram~255_q\ <= NOT \RAM|ram~255_q\;
\RAM|ALT_INV_ram~383_q\ <= NOT \RAM|ram~383_q\;
\RAM|ALT_INV_ram~127_q\ <= NOT \RAM|ram~127_q\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~479_q\ <= NOT \RAM|ram~479_q\;
\RAM|ALT_INV_ram~223_q\ <= NOT \RAM|ram~223_q\;
\RAM|ALT_INV_ram~351_q\ <= NOT \RAM|ram~351_q\;
\RAM|ALT_INV_ram~95_q\ <= NOT \RAM|ram~95_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~447_q\ <= NOT \RAM|ram~447_q\;
\RAM|ALT_INV_ram~191_q\ <= NOT \RAM|ram~191_q\;
\RAM|ALT_INV_ram~319_q\ <= NOT \RAM|ram~319_q\;
\RAM|ALT_INV_ram~63_q\ <= NOT \RAM|ram~63_q\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~415_q\ <= NOT \RAM|ram~415_q\;
\RAM|ALT_INV_ram~159_q\ <= NOT \RAM|ram~159_q\;
\RAM|ALT_INV_ram~287_q\ <= NOT \RAM|ram~287_q\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~503_q\ <= NOT \RAM|ram~503_q\;
\RAM|ALT_INV_ram~247_q\ <= NOT \RAM|ram~247_q\;
\RAM|ALT_INV_ram~375_q\ <= NOT \RAM|ram~375_q\;
\RAM|ALT_INV_ram~119_q\ <= NOT \RAM|ram~119_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~471_q\ <= NOT \RAM|ram~471_q\;
\RAM|ALT_INV_ram~215_q\ <= NOT \RAM|ram~215_q\;
\RAM|ALT_INV_ram~343_q\ <= NOT \RAM|ram~343_q\;
\RAM|ALT_INV_ram~87_q\ <= NOT \RAM|ram~87_q\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~439_q\ <= NOT \RAM|ram~439_q\;
\RAM|ALT_INV_ram~183_q\ <= NOT \RAM|ram~183_q\;
\RAM|ALT_INV_ram~311_q\ <= NOT \RAM|ram~311_q\;
\RAM|ALT_INV_ram~55_q\ <= NOT \RAM|ram~55_q\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~407_q\ <= NOT \RAM|ram~407_q\;
\RAM|ALT_INV_ram~151_q\ <= NOT \RAM|ram~151_q\;
\RAM|ALT_INV_ram~279_q\ <= NOT \RAM|ram~279_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~495_q\ <= NOT \RAM|ram~495_q\;
\RAM|ALT_INV_ram~239_q\ <= NOT \RAM|ram~239_q\;
\RAM|ALT_INV_ram~367_q\ <= NOT \RAM|ram~367_q\;
\RAM|ALT_INV_ram~111_q\ <= NOT \RAM|ram~111_q\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~463_q\ <= NOT \RAM|ram~463_q\;
\RAM|ALT_INV_ram~207_q\ <= NOT \RAM|ram~207_q\;
\RAM|ALT_INV_ram~335_q\ <= NOT \RAM|ram~335_q\;
\RAM|ALT_INV_ram~79_q\ <= NOT \RAM|ram~79_q\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~431_q\ <= NOT \RAM|ram~431_q\;
\RAM|ALT_INV_ram~175_q\ <= NOT \RAM|ram~175_q\;
\RAM|ALT_INV_ram~303_q\ <= NOT \RAM|ram~303_q\;
\RAM|ALT_INV_ram~47_q\ <= NOT \RAM|ram~47_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~399_q\ <= NOT \RAM|ram~399_q\;
\RAM|ALT_INV_ram~143_q\ <= NOT \RAM|ram~143_q\;
\RAM|ALT_INV_ram~271_q\ <= NOT \RAM|ram~271_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\CPU|RREG|ALT_INV_DOUT\(7) <= NOT \CPU|RREG|DOUT\(7);
\CPU|RREG|ALT_INV_DOUT\(6) <= NOT \CPU|RREG|DOUT\(6);
\CPU|RREG|ALT_INV_DOUT\(4) <= NOT \CPU|RREG|DOUT\(4);
\ROM|ALT_INV_memROM~23_combout\ <= NOT \ROM|memROM~23_combout\;
\CPU|RREG|ALT_INV_DOUT\(8) <= NOT \CPU|RREG|DOUT\(8);
\CPU|RREG|ALT_INV_DOUT\(2) <= NOT \CPU|RREG|DOUT\(2);
\CPU|RREG|ALT_INV_DOUT\(3) <= NOT \CPU|RREG|DOUT\(3);
\CPU|RREG|ALT_INV_DOUT\(5) <= NOT \CPU|RREG|DOUT\(5);
\ROM|ALT_INV_memROM~22_combout\ <= NOT \ROM|memROM~22_combout\;
\CPU|RREG|ALT_INV_DOUT\(1) <= NOT \CPU|RREG|DOUT\(1);
\ROM|ALT_INV_memROM~21_combout\ <= NOT \ROM|memROM~21_combout\;
\CPU|RREG|ALT_INV_DOUT\(0) <= NOT \CPU|RREG|DOUT\(0);
\CPU|LOG|ALT_INV_saidaLogica[0]~0_combout\ <= NOT \CPU|LOG|saidaLogica[0]~0_combout\;
\CPU|MUX4|ALT_INV_Equal2~0_combout\ <= NOT \CPU|MUX4|Equal2~0_combout\;
\CPU|FREG|ALT_INV_DOUT~q\ <= NOT \CPU|FREG|DOUT~q\;
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\FLIP_FLOP_KEY0|ALT_INV_Equal0~2_combout\ <= NOT \FLIP_FLOP_KEY0|Equal0~2_combout\;
\FLIP_FLOP_KEY0|ALT_INV_Equal0~1_combout\ <= NOT \FLIP_FLOP_KEY0|Equal0~1_combout\;
\FLIP_FLOP_KEY0|ALT_INV_Equal0~0_combout\ <= NOT \FLIP_FLOP_KEY0|Equal0~0_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\L7Gf|REGD|ALT_INV_DOUT\(2) <= NOT \L7Gf|REGD|DOUT\(2);
\L7Gf|REGD|ALT_INV_DOUT\(1) <= NOT \L7Gf|REGD|DOUT\(1);
\L7Gf|REGD|ALT_INV_DOUT\(3) <= NOT \L7Gf|REGD|DOUT\(3);
\L7Gf|REGD|ALT_INV_DOUT\(0) <= NOT \L7Gf|REGD|DOUT\(0);
\L7Ge|REGD|ALT_INV_DOUT\(2) <= NOT \L7Ge|REGD|DOUT\(2);
\L7Ge|REGD|ALT_INV_DOUT\(1) <= NOT \L7Ge|REGD|DOUT\(1);
\L7Ge|REGD|ALT_INV_DOUT\(3) <= NOT \L7Ge|REGD|DOUT\(3);
\L7Ge|REGD|ALT_INV_DOUT\(0) <= NOT \L7Ge|REGD|DOUT\(0);
\L7Gd|REGD|ALT_INV_DOUT\(2) <= NOT \L7Gd|REGD|DOUT\(2);
\L7Gd|REGD|ALT_INV_DOUT\(1) <= NOT \L7Gd|REGD|DOUT\(1);
\L7Gd|REGD|ALT_INV_DOUT\(3) <= NOT \L7Gd|REGD|DOUT\(3);
\L7Gd|REGD|ALT_INV_DOUT\(0) <= NOT \L7Gd|REGD|DOUT\(0);
\L7Gc|REGD|ALT_INV_DOUT\(2) <= NOT \L7Gc|REGD|DOUT\(2);
\L7Gc|REGD|ALT_INV_DOUT\(1) <= NOT \L7Gc|REGD|DOUT\(1);
\L7Gc|REGD|ALT_INV_DOUT\(3) <= NOT \L7Gc|REGD|DOUT\(3);
\L7Gc|REGD|ALT_INV_DOUT\(0) <= NOT \L7Gc|REGD|DOUT\(0);
\L7Gb|REGD|ALT_INV_DOUT\(2) <= NOT \L7Gb|REGD|DOUT\(2);
\L7Gb|REGD|ALT_INV_DOUT\(1) <= NOT \L7Gb|REGD|DOUT\(1);
\L7Gb|REGD|ALT_INV_DOUT\(3) <= NOT \L7Gb|REGD|DOUT\(3);
\L7Gb|REGD|ALT_INV_DOUT\(0) <= NOT \L7Gb|REGD|DOUT\(0);
\L7Ga|REGD|ALT_INV_DOUT\(2) <= NOT \L7Ga|REGD|DOUT\(2);
\L7Ga|REGD|ALT_INV_DOUT\(1) <= NOT \L7Ga|REGD|DOUT\(1);
\L7Ga|REGD|ALT_INV_DOUT\(3) <= NOT \L7Ga|REGD|DOUT\(3);
\L7Ga|REGD|ALT_INV_DOUT\(0) <= NOT \L7Ga|REGD|DOUT\(0);
\REG9|ALT_INV_DOUT~q\ <= NOT \REG9|DOUT~q\;
\REG8|ALT_INV_DOUT~q\ <= NOT \REG8|DOUT~q\;
\ALT_INV_DEBUG~0_combout\ <= NOT \DEBUG~0_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\CPU|DEC|ALT_INV_Equal10~0_combout\ <= NOT \CPU|DEC|Equal10~0_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\ <= NOT \CPU|DEC|saidaDecoder[10]~1_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\CPU|DEC|ALT_INV_saidaDecoder[10]~0_combout\ <= NOT \CPU|DEC|saidaDecoder[10]~0_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\DEM|ALT_INV_saidaDecoder[5]~0_combout\ <= NOT \DEM|saidaDecoder[5]~0_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\FLIP_FLOP_KEY0|ALT_INV_saida~q\ <= NOT \FLIP_FLOP_KEY0|saida~q\;
\RAM|ALT_INV_dado_out[0]~9_combout\ <= NOT \RAM|dado_out[0]~9_combout\;
\CPU|ULA|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA|Add1~29_sumout\;
\CPU|ULA|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA|Add1~25_sumout\;
\CPU|ULA|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA|Add1~21_sumout\;
\CPU|ULA|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA|Add1~17_sumout\;
\CPU|ULA|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA|Add1~13_sumout\;
\CPU|ULA|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA|Add1~9_sumout\;
\CPU|ULA|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA|Add1~5_sumout\;
\CPU|ULA|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA|Add1~1_sumout\;
\CPU|ACU|ALT_INV_DOUT\(7) <= NOT \CPU|ACU|DOUT\(7);
\CPU|ACU|ALT_INV_DOUT\(6) <= NOT \CPU|ACU|DOUT\(6);
\CPU|ACU|ALT_INV_DOUT\(5) <= NOT \CPU|ACU|DOUT\(5);
\CPU|ACU|ALT_INV_DOUT\(4) <= NOT \CPU|ACU|DOUT\(4);
\CPU|ACU|ALT_INV_DOUT\(3) <= NOT \CPU|ACU|DOUT\(3);
\CPU|ACU|ALT_INV_DOUT\(2) <= NOT \CPU|ACU|DOUT\(2);
\CPU|ACU|ALT_INV_DOUT\(1) <= NOT \CPU|ACU|DOUT\(1);
\CPU|ACU|ALT_INV_DOUT\(0) <= NOT \CPU|ACU|DOUT\(0);
\CPU|SOM|ALT_INV_Add0~33_sumout\ <= NOT \CPU|SOM|Add0~33_sumout\;
\CPU|SOM|ALT_INV_Add0~29_sumout\ <= NOT \CPU|SOM|Add0~29_sumout\;
\CPU|SOM|ALT_INV_Add0~25_sumout\ <= NOT \CPU|SOM|Add0~25_sumout\;
\CPU|SOM|ALT_INV_Add0~21_sumout\ <= NOT \CPU|SOM|Add0~21_sumout\;
\CPU|SOM|ALT_INV_Add0~17_sumout\ <= NOT \CPU|SOM|Add0~17_sumout\;
\CPU|SOM|ALT_INV_Add0~13_sumout\ <= NOT \CPU|SOM|Add0~13_sumout\;
\CPU|SOM|ALT_INV_Add0~9_sumout\ <= NOT \CPU|SOM|Add0~9_sumout\;
\CPU|SOM|ALT_INV_Add0~5_sumout\ <= NOT \CPU|SOM|Add0~5_sumout\;
\CPU|SOM|ALT_INV_Add0~1_sumout\ <= NOT \CPU|SOM|Add0~1_sumout\;
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);

-- Location: IOOBUF_X68_Y0_N2
\DEBUG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[0]~3_combout\,
	oe => \RAM|dado_out[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_DEBUG(2));

-- Location: IOOBUF_X89_Y8_N39
\DEBUG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP_KEY0|saida~q\,
	devoe => ww_devoe,
	o => ww_DEBUG(0));

-- Location: IOOBUF_X89_Y8_N22
\DEBUG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEBUG~0_combout\,
	devoe => ww_devoe,
	o => ww_DEBUG(1));

-- Location: IOOBUF_X30_Y81_N2
\DEBUG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DEBUG(3));

-- Location: IOOBUF_X88_Y81_N37
\DEBUG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DEBUG(4));

-- Location: IOOBUF_X34_Y0_N59
\DEBUG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DEBUG(5));

-- Location: IOOBUF_X88_Y81_N54
\DEBUG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DEBUG(6));

-- Location: IOOBUF_X89_Y36_N22
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
	o => ww_LEDR(0));

-- Location: IOOBUF_X78_Y81_N36
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
	o => ww_LEDR(1));

-- Location: IOOBUF_X72_Y0_N19
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
	o => ww_LEDR(2));

-- Location: IOOBUF_X89_Y9_N5
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
	o => ww_LEDR(3));

-- Location: IOOBUF_X89_Y6_N5
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
	o => ww_LEDR(4));

-- Location: IOOBUF_X89_Y9_N39
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
	o => ww_LEDR(5));

-- Location: IOOBUF_X89_Y9_N22
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
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y9_N56
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
	o => ww_LEDR(7));

-- Location: IOOBUF_X50_Y0_N76
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
	o => ww_LEDR(8));

-- Location: IOOBUF_X54_Y0_N19
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
	o => ww_LEDR(9));

-- Location: IOOBUF_X52_Y0_N19
\LED7a[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Ga|CON|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LED7a(0));

-- Location: IOOBUF_X56_Y0_N36
\LED7a[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Ga|CON|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_LED7a(1));

-- Location: IOOBUF_X64_Y0_N2
\LED7a[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Ga|CON|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_LED7a(2));

-- Location: IOOBUF_X40_Y0_N36
\LED7a[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Ga|CON|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_LED7a(3));

-- Location: IOOBUF_X64_Y0_N36
\LED7a[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Ga|CON|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_LED7a(4));

-- Location: IOOBUF_X56_Y0_N53
\LED7a[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Ga|CON|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_LED7a(5));

-- Location: IOOBUF_X58_Y0_N42
\LED7a[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Ga|CON|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_LED7a(6));

-- Location: IOOBUF_X66_Y0_N59
\LED7b[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gb|CON|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LED7b(0));

-- Location: IOOBUF_X70_Y0_N36
\LED7b[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gb|CON|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_LED7b(1));

-- Location: IOOBUF_X72_Y0_N2
\LED7b[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gb|CON|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_LED7b(2));

-- Location: IOOBUF_X68_Y0_N19
\LED7b[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gb|CON|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_LED7b(3));

-- Location: IOOBUF_X64_Y0_N53
\LED7b[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gb|CON|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_LED7b(4));

-- Location: IOOBUF_X66_Y0_N93
\LED7b[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gb|CON|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_LED7b(5));

-- Location: IOOBUF_X56_Y0_N2
\LED7b[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gb|CON|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_LED7b(6));

-- Location: IOOBUF_X56_Y0_N19
\LED7c[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gc|CON|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LED7c(0));

-- Location: IOOBUF_X62_Y0_N36
\LED7c[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gc|CON|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_LED7c(1));

-- Location: IOOBUF_X62_Y0_N19
\LED7c[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gc|CON|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_LED7c(2));

-- Location: IOOBUF_X58_Y0_N76
\LED7c[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gc|CON|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_LED7c(3));

-- Location: IOOBUF_X66_Y0_N42
\LED7c[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gc|CON|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_LED7c(4));

-- Location: IOOBUF_X89_Y4_N96
\LED7c[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gc|CON|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_LED7c(5));

-- Location: IOOBUF_X64_Y0_N19
\LED7c[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gc|CON|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_LED7c(6));

-- Location: IOOBUF_X62_Y0_N53
\LED7d[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gd|CON|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LED7d(0));

-- Location: IOOBUF_X60_Y0_N53
\LED7d[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gd|CON|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_LED7d(1));

-- Location: IOOBUF_X66_Y0_N76
\LED7d[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gd|CON|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_LED7d(2));

-- Location: IOOBUF_X60_Y0_N36
\LED7d[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gd|CON|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_LED7d(3));

-- Location: IOOBUF_X60_Y0_N19
\LED7d[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gd|CON|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_LED7d(4));

-- Location: IOOBUF_X62_Y0_N2
\LED7d[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gd|CON|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_LED7d(5));

-- Location: IOOBUF_X54_Y0_N36
\LED7d[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gd|CON|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_LED7d(6));

-- Location: IOOBUF_X70_Y0_N53
\LED7e[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Ge|CON|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LED7e(0));

-- Location: IOOBUF_X66_Y81_N93
\LED7e[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Ge|CON|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_LED7e(1));

-- Location: IOOBUF_X70_Y0_N2
\LED7e[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Ge|CON|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_LED7e(2));

-- Location: IOOBUF_X68_Y0_N36
\LED7e[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Ge|CON|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_LED7e(3));

-- Location: IOOBUF_X89_Y4_N45
\LED7e[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Ge|CON|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_LED7e(4));

-- Location: IOOBUF_X70_Y0_N19
\LED7e[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Ge|CON|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_LED7e(5));

-- Location: IOOBUF_X38_Y0_N2
\LED7e[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Ge|CON|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_LED7e(6));

-- Location: IOOBUF_X58_Y0_N59
\LED7f[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gf|CON|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LED7f(0));

-- Location: IOOBUF_X54_Y0_N53
\LED7f[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gf|CON|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_LED7f(1));

-- Location: IOOBUF_X58_Y0_N93
\LED7f[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gf|CON|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_LED7f(2));

-- Location: IOOBUF_X50_Y0_N59
\LED7f[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gf|CON|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_LED7f(3));

-- Location: IOOBUF_X54_Y0_N2
\LED7f[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gf|CON|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_LED7f(4));

-- Location: IOOBUF_X60_Y0_N2
\LED7f[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gf|CON|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_LED7f(5));

-- Location: IOOBUF_X66_Y81_N76
\LED7f[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L7Gf|CON|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_LED7f(6));

-- Location: IOIBUF_X89_Y35_N61
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X74_Y8_N51
\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(5) $ (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000011000000000000001100000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~16_combout\);

-- Location: FF_X75_Y8_N26
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4|saida_MUX[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: FF_X74_Y8_N41
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4|saida_MUX[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X74_Y8_N14
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y8_N0
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X73_Y8_N12
\ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~23_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~23_combout\);

-- Location: LABCELL_X75_Y8_N36
\CPU|SOM|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|SOM|Add0~6\ ))
-- \CPU|SOM|Add0~18\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|SOM|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|SOM|Add0~6\,
	sumout => \CPU|SOM|Add0~17_sumout\,
	cout => \CPU|SOM|Add0~18\);

-- Location: LABCELL_X75_Y8_N39
\CPU|SOM|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|SOM|Add0~18\ ))
-- \CPU|SOM|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|SOM|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|SOM|Add0~18\,
	sumout => \CPU|SOM|Add0~13_sumout\,
	cout => \CPU|SOM|Add0~14\);

-- Location: LABCELL_X75_Y8_N42
\CPU|SOM|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|SOM|Add0~14\ ))
-- \CPU|SOM|Add0~26\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|SOM|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|SOM|Add0~14\,
	sumout => \CPU|SOM|Add0~25_sumout\,
	cout => \CPU|SOM|Add0~26\);

-- Location: FF_X74_Y8_N16
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X74_Y8_N48
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(0))))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # ((!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011000000111010001100000010001110000000001000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~7_combout\);

-- Location: LABCELL_X74_Y8_N57
\CPU|DEC|saidaDecoder[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|saidaDecoder[10]~0_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \CPU|DEC|saidaDecoder[10]~0_combout\);

-- Location: FF_X75_Y8_N28
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X75_Y8_N3
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( !\CPU|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM|memROM~3_combout\);

-- Location: LABCELL_X74_Y8_N33
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ $ (\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000010001000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~9_combout\);

-- Location: LABCELL_X73_Y8_N6
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT[5]~DUPLICATE_q\ & 
-- (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~10_combout\);

-- Location: LABCELL_X77_Y7_N51
\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~10_combout\ & ( (!\CPU|PC|DOUT\(8) & \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~10_combout\ & ( (!\CPU|PC|DOUT\(8) & \ROM|memROM~3_combout\) ) ) ) # ( 
-- \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( (!\CPU|PC|DOUT\(8) & \ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \ROM|memROM~20_combout\);

-- Location: LABCELL_X77_Y7_N39
\CPU|DEC|saidaDecoder~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|saidaDecoder~4_combout\ = ( \CPU|DEC|saidaDecoder[10]~1_combout\ & ( (\ROM|memROM~19_combout\ & (!\CPU|DEC|saidaDecoder[10]~0_combout\ & !\ROM|memROM~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[10]~0_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\,
	combout => \CPU|DEC|saidaDecoder~4_combout\);

-- Location: FF_X75_Y8_N44
\CPU|RREG|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOM|Add0~25_sumout\,
	ena => \CPU|DEC|saidaDecoder~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RREG|DOUT\(4));

-- Location: LABCELL_X75_Y8_N0
\CPU|MUX4|saida_MUX[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4|saida_MUX[4]~6_combout\ = ( \CPU|SOM|Add0~25_sumout\ & ( (!\CPU|MUX4|Equal2~0_combout\) # ((!\CPU|LOG|saidaLogica[0]~0_combout\ & (\CPU|RREG|DOUT\(4))) # (\CPU|LOG|saidaLogica[0]~0_combout\ & ((\ROM|memROM~23_combout\)))) ) ) # ( 
-- !\CPU|SOM|Add0~25_sumout\ & ( (\CPU|MUX4|Equal2~0_combout\ & ((!\CPU|LOG|saidaLogica[0]~0_combout\ & (\CPU|RREG|DOUT\(4))) # (\CPU|LOG|saidaLogica[0]~0_combout\ & ((\ROM|memROM~23_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000100000001010110111010101111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX4|ALT_INV_Equal2~0_combout\,
	datab => \CPU|RREG|ALT_INV_DOUT\(4),
	datac => \CPU|LOG|ALT_INV_saidaLogica[0]~0_combout\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \CPU|SOM|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX4|saida_MUX[4]~6_combout\);

-- Location: FF_X75_Y8_N2
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4|saida_MUX[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X75_Y8_N45
\CPU|SOM|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|SOM|Add0~26\ ))
-- \CPU|SOM|Add0~10\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|SOM|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|SOM|Add0~26\,
	sumout => \CPU|SOM|Add0~9_sumout\,
	cout => \CPU|SOM|Add0~10\);

-- Location: LABCELL_X75_Y8_N48
\CPU|SOM|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOM|Add0~10\ ))
-- \CPU|SOM|Add0~30\ = CARRY(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOM|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \CPU|SOM|Add0~10\,
	sumout => \CPU|SOM|Add0~29_sumout\,
	cout => \CPU|SOM|Add0~30\);

-- Location: LABCELL_X75_Y8_N51
\CPU|SOM|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOM|Add0~30\ ))
-- \CPU|SOM|Add0~34\ = CARRY(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOM|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU|SOM|Add0~30\,
	sumout => \CPU|SOM|Add0~33_sumout\,
	cout => \CPU|SOM|Add0~34\);

-- Location: FF_X75_Y8_N52
\CPU|RREG|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOM|Add0~33_sumout\,
	ena => \CPU|DEC|saidaDecoder~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RREG|DOUT\(7));

-- Location: LABCELL_X75_Y8_N27
\CPU|MUX4|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4|saida_MUX[7]~8_combout\ = ( \CPU|SOM|Add0~33_sumout\ & ( (!\CPU|MUX4|Equal2~0_combout\) # ((!\CPU|LOG|saidaLogica[0]~0_combout\ & ((\CPU|RREG|DOUT\(7)))) # (\CPU|LOG|saidaLogica[0]~0_combout\ & (\ROM|memROM~23_combout\))) ) ) # ( 
-- !\CPU|SOM|Add0~33_sumout\ & ( (\CPU|MUX4|Equal2~0_combout\ & ((!\CPU|LOG|saidaLogica[0]~0_combout\ & ((\CPU|RREG|DOUT\(7)))) # (\CPU|LOG|saidaLogica[0]~0_combout\ & (\ROM|memROM~23_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LOG|ALT_INV_saidaLogica[0]~0_combout\,
	datab => \CPU|MUX4|ALT_INV_Equal2~0_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \CPU|RREG|ALT_INV_DOUT\(7),
	dataf => \CPU|SOM|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX4|saida_MUX[7]~8_combout\);

-- Location: FF_X75_Y8_N29
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y8_N54
\CPU|SOM|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOM|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \CPU|SOM|Add0~34\,
	sumout => \CPU|SOM|Add0~21_sumout\);

-- Location: FF_X75_Y8_N55
\CPU|RREG|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOM|Add0~21_sumout\,
	ena => \CPU|DEC|saidaDecoder~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RREG|DOUT\(8));

-- Location: LABCELL_X73_Y8_N42
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|PC|DOUT[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X73_Y8_N39
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT\(3) & \ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~15_combout\);

-- Location: LABCELL_X75_Y8_N24
\CPU|MUX4|saida_MUX[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4|saida_MUX[8]~5_combout\ = ( \ROM|memROM~15_combout\ & ( (!\CPU|MUX4|Equal2~0_combout\ & (((\CPU|SOM|Add0~21_sumout\)))) # (\CPU|MUX4|Equal2~0_combout\ & (((\CPU|RREG|DOUT\(8))) # (\CPU|LOG|saidaLogica[0]~0_combout\))) ) ) # ( 
-- !\ROM|memROM~15_combout\ & ( (!\CPU|MUX4|Equal2~0_combout\ & (((\CPU|SOM|Add0~21_sumout\)))) # (\CPU|MUX4|Equal2~0_combout\ & (!\CPU|LOG|saidaLogica[0]~0_combout\ & (\CPU|RREG|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LOG|ALT_INV_saidaLogica[0]~0_combout\,
	datab => \CPU|MUX4|ALT_INV_Equal2~0_combout\,
	datac => \CPU|RREG|ALT_INV_DOUT\(8),
	datad => \CPU|SOM|ALT_INV_Add0~21_sumout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|MUX4|saida_MUX[8]~5_combout\);

-- Location: FF_X75_Y8_N25
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4|saida_MUX[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X74_Y8_N6
\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = ( \ROM|memROM~3_combout\ & ( (!\CPU|PC|DOUT\(2) & (\ROM|memROM~16_combout\ & !\CPU|PC|DOUT\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~17_combout\);

-- Location: FF_X75_Y8_N41
\CPU|RREG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOM|Add0~13_sumout\,
	ena => \CPU|DEC|saidaDecoder~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RREG|DOUT\(3));

-- Location: LABCELL_X75_Y9_N51
\CPU|MUX4|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4|saida_MUX[3]~3_combout\ = ( \CPU|MUX4|Equal2~0_combout\ & ( (!\CPU|LOG|saidaLogica[0]~0_combout\ & ((\CPU|RREG|DOUT\(3)))) # (\CPU|LOG|saidaLogica[0]~0_combout\ & (\ROM|memROM~17_combout\)) ) ) # ( !\CPU|MUX4|Equal2~0_combout\ & ( 
-- \CPU|SOM|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \CPU|LOG|ALT_INV_saidaLogica[0]~0_combout\,
	datac => \CPU|RREG|ALT_INV_DOUT\(3),
	datad => \CPU|SOM|ALT_INV_Add0~13_sumout\,
	dataf => \CPU|MUX4|ALT_INV_Equal2~0_combout\,
	combout => \CPU|MUX4|saida_MUX[3]~3_combout\);

-- Location: FF_X74_Y8_N32
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX4|saida_MUX[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X74_Y8_N9
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ $ (\CPU|PC|DOUT\(5)))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(5)))) # (\CPU|PC|DOUT\(3) & 
-- (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001100001100001100110011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X74_Y8_N24
\ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~21_combout\ = ( \ROM|memROM~13_combout\ & ( (!\CPU|PC|DOUT\(2) & \ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ROM|memROM~21_combout\);

-- Location: LABCELL_X75_Y8_N30
\CPU|SOM|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOM|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|SOM|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|SOM|Add0~1_sumout\,
	cout => \CPU|SOM|Add0~2\);

-- Location: LABCELL_X75_Y8_N33
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

-- Location: FF_X75_Y8_N34
\CPU|RREG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOM|Add0~5_sumout\,
	ena => \CPU|DEC|saidaDecoder~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RREG|DOUT\(1));

-- Location: LABCELL_X74_Y8_N12
\CPU|MUX4|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4|saida_MUX[1]~1_combout\ = ( \CPU|RREG|DOUT\(1) & ( (!\CPU|MUX4|Equal2~0_combout\ & (((\CPU|SOM|Add0~5_sumout\)))) # (\CPU|MUX4|Equal2~0_combout\ & ((!\CPU|LOG|saidaLogica[0]~0_combout\) # ((\ROM|memROM~21_combout\)))) ) ) # ( !\CPU|RREG|DOUT\(1) 
-- & ( (!\CPU|MUX4|Equal2~0_combout\ & (((\CPU|SOM|Add0~5_sumout\)))) # (\CPU|MUX4|Equal2~0_combout\ & (\CPU|LOG|saidaLogica[0]~0_combout\ & (\ROM|memROM~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LOG|ALT_INV_saidaLogica[0]~0_combout\,
	datab => \CPU|MUX4|ALT_INV_Equal2~0_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \CPU|SOM|ALT_INV_Add0~5_sumout\,
	dataf => \CPU|RREG|ALT_INV_DOUT\(1),
	combout => \CPU|MUX4|saida_MUX[1]~1_combout\);

-- Location: FF_X74_Y8_N13
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: FF_X75_Y8_N37
\CPU|RREG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOM|Add0~17_sumout\,
	ena => \CPU|DEC|saidaDecoder~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RREG|DOUT\(2));

-- Location: LABCELL_X75_Y8_N21
\CPU|MUX4|saida_MUX[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4|saida_MUX[2]~4_combout\ = ( \ROM|memROM~2_combout\ & ( (!\CPU|MUX4|Equal2~0_combout\ & (((\CPU|SOM|Add0~17_sumout\)))) # (\CPU|MUX4|Equal2~0_combout\ & (((\CPU|RREG|DOUT\(2))) # (\CPU|LOG|saidaLogica[0]~0_combout\))) ) ) # ( 
-- !\ROM|memROM~2_combout\ & ( (!\CPU|MUX4|Equal2~0_combout\ & (((\CPU|SOM|Add0~17_sumout\)))) # (\CPU|MUX4|Equal2~0_combout\ & (!\CPU|LOG|saidaLogica[0]~0_combout\ & (\CPU|RREG|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LOG|ALT_INV_saidaLogica[0]~0_combout\,
	datab => \CPU|MUX4|ALT_INV_Equal2~0_combout\,
	datac => \CPU|RREG|ALT_INV_DOUT\(2),
	datad => \CPU|SOM|ALT_INV_Add0~17_sumout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|MUX4|saida_MUX[2]~4_combout\);

-- Location: FF_X75_Y8_N23
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4|saida_MUX[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X74_Y8_N27
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(5)))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3) & 
-- (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & \CPU|PC|DOUT\(5))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000000000000101000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~12_combout\);

-- Location: LABCELL_X74_Y8_N21
\ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~22_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \ROM|memROM~22_combout\);

-- Location: FF_X75_Y8_N46
\CPU|RREG|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOM|Add0~9_sumout\,
	ena => \CPU|DEC|saidaDecoder~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RREG|DOUT\(5));

-- Location: LABCELL_X74_Y8_N39
\CPU|MUX4|saida_MUX[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4|saida_MUX[5]~2_combout\ = ( \CPU|SOM|Add0~9_sumout\ & ( (!\CPU|MUX4|Equal2~0_combout\) # ((!\CPU|LOG|saidaLogica[0]~0_combout\ & ((\CPU|RREG|DOUT\(5)))) # (\CPU|LOG|saidaLogica[0]~0_combout\ & (\ROM|memROM~22_combout\))) ) ) # ( 
-- !\CPU|SOM|Add0~9_sumout\ & ( (\CPU|MUX4|Equal2~0_combout\ & ((!\CPU|LOG|saidaLogica[0]~0_combout\ & ((\CPU|RREG|DOUT\(5)))) # (\CPU|LOG|saidaLogica[0]~0_combout\ & (\ROM|memROM~22_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000110000010111110011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \CPU|RREG|ALT_INV_DOUT\(5),
	datac => \CPU|MUX4|ALT_INV_Equal2~0_combout\,
	datad => \CPU|LOG|ALT_INV_saidaLogica[0]~0_combout\,
	dataf => \CPU|SOM|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX4|saida_MUX[5]~2_combout\);

-- Location: FF_X74_Y8_N40
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4|saida_MUX[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X75_Y8_N12
\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = ( \CPU|PC|DOUT\(1) & ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( 
-- \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(2) $ (((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111100101000001001100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~19_combout\);

-- Location: LABCELL_X77_Y7_N36
\CPU|DEC|saidaDecoder~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|saidaDecoder~5_combout\ = ( \CPU|DEC|saidaDecoder[10]~1_combout\ & ( (!\CPU|DEC|saidaDecoder[10]~0_combout\ & (!\ROM|memROM~19_combout\ $ (!\ROM|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \CPU|DEC|ALT_INV_saidaDecoder[10]~0_combout\,
	dataf => \CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\,
	combout => \CPU|DEC|saidaDecoder~5_combout\);

-- Location: LABCELL_X77_Y7_N21
\CPU|DEC|saidaDecoder[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|saidaDecoder[3]~8_combout\ = ( \ROM|memROM~19_combout\ & ( (!\CPU|DEC|saidaDecoder[10]~1_combout\ & (((\CPU|DEC|saidaDecoder[10]~0_combout\ & \ROM|memROM~20_combout\)))) # (\CPU|DEC|saidaDecoder[10]~1_combout\ & 
-- (\CPU|DEC|saidaDecoder~5_combout\)) ) ) # ( !\ROM|memROM~19_combout\ & ( (!\CPU|DEC|saidaDecoder[10]~1_combout\ & (((\CPU|DEC|saidaDecoder~5_combout\ & !\ROM|memROM~20_combout\)) # (\CPU|DEC|saidaDecoder[10]~0_combout\))) # 
-- (\CPU|DEC|saidaDecoder[10]~1_combout\ & (\CPU|DEC|saidaDecoder~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110100011101010111010001110100010001000111010001000100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder~5_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\,
	datac => \CPU|DEC|ALT_INV_saidaDecoder[10]~0_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~19_combout\,
	combout => \CPU|DEC|saidaDecoder[3]~8_combout\);

-- Location: FF_X75_Y8_N19
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X74_Y8_N30
\CPU|DEC|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|Equal10~2_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT[5]~DUPLICATE_q\ & \CPU|PC|DOUT[0]~DUPLICATE_q\))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & 
-- (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(3)))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(2) $ (((!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT[5]~DUPLICATE_q\ & 
-- (((!\CPU|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101110001000011110111000100011100010000010001110001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \CPU|DEC|Equal10~2_combout\);

-- Location: LABCELL_X74_Y8_N18
\CPU|DEC|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|Equal10~0_combout\ = ( \CPU|DEC|Equal10~2_combout\ & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|DEC|ALT_INV_Equal10~2_combout\,
	combout => \CPU|DEC|Equal10~0_combout\);

-- Location: LABCELL_X77_Y7_N9
\CPU|DEC|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|Equal10~1_combout\ = ( !\CPU|DEC|Equal10~0_combout\ & ( (!\CPU|DEC|saidaDecoder[10]~1_combout\ & !\CPU|DEC|saidaDecoder[10]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\,
	datad => \CPU|DEC|ALT_INV_saidaDecoder[10]~0_combout\,
	dataf => \CPU|DEC|ALT_INV_Equal10~0_combout\,
	combout => \CPU|DEC|Equal10~1_combout\);

-- Location: IOIBUF_X89_Y6_N21
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LABCELL_X73_Y8_N15
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & 
-- (\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((\CPU|PC|DOUT[0]~DUPLICATE_q\)))) # (\CPU|PC|DOUT[5]~DUPLICATE_q\ & (((!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000100010010100000010001010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~11_combout\);

-- Location: LABCELL_X74_Y8_N54
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \ROM|memROM~11_combout\ & ( (\ROM|memROM~3_combout\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\) ) ) # ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~3_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~13_combout\ & !\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \comb~2_combout\);

-- Location: LABCELL_X73_Y8_N51
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(2) & 
-- !\CPU|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~4_combout\);

-- Location: LABCELL_X74_Y7_N30
\DEM|saidaDecoder[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEM|saidaDecoder[5]~0_combout\ = ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~6_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(3) & (\ROM|memROM~4_combout\ & \ROM|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \DEM|saidaDecoder[5]~0_combout\);

-- Location: LABCELL_X74_Y7_N57
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\CPU|DEC|saidaDecoder[10]~0_combout\ & (\DEM|saidaDecoder[5]~0_combout\ & (!\CPU|DEC|saidaDecoder[10]~1_combout\ $ (!\CPU|DEC|Equal10~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001000000000100000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder[10]~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\,
	datac => \DEM|ALT_INV_saidaDecoder[5]~0_combout\,
	datad => \CPU|DEC|ALT_INV_Equal10~0_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X74_Y8_N36
\comb~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~14_combout\ = ( \comb~1_combout\ & ( (!\comb~2_combout\ & !\ROM|memROM~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~2_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \comb~14_combout\);

-- Location: LABCELL_X77_Y7_N33
\CPU|DEC|saidaDecoder[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|saidaDecoder[3]~6_combout\ = ( \CPU|DEC|saidaDecoder~5_combout\ & ( \CPU|DEC|saidaDecoder[10]~1_combout\ ) ) # ( \CPU|DEC|saidaDecoder~5_combout\ & ( !\CPU|DEC|saidaDecoder[10]~1_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- (!\ROM|memROM~19_combout\)) # (\ROM|memROM~20_combout\ & ((\CPU|DEC|saidaDecoder[10]~0_combout\))) ) ) ) # ( !\CPU|DEC|saidaDecoder~5_combout\ & ( !\CPU|DEC|saidaDecoder[10]~1_combout\ & ( (!\ROM|memROM~20_combout\ & (!\ROM|memROM~19_combout\)) # 
-- (\ROM|memROM~20_combout\ & ((\CPU|DEC|saidaDecoder[10]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001111101010100000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datac => \CPU|DEC|ALT_INV_saidaDecoder[10]~0_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \CPU|DEC|ALT_INV_saidaDecoder~5_combout\,
	dataf => \CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\,
	combout => \CPU|DEC|saidaDecoder[3]~6_combout\);

-- Location: IOIBUF_X36_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X73_Y8_N27
\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = ( \ROM|memROM~3_combout\ & ( (!\CPU|PC|DOUT\(8) & \ROM|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~18_combout\);

-- Location: FF_X75_Y8_N22
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4|saida_MUX[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y5_N30
\ROM|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~26_combout\ = ( \ROM|memROM~3_combout\ & ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \ROM|memROM~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~26_combout\);

-- Location: IOIBUF_X72_Y81_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X74_Y8_N42
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~3_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & ((!\ROM|memROM~13_combout\) # (\CPU|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X74_Y7_N0
\DEBUG~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEBUG~0_combout\ = ( \comb~0_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\CPU|DEC|saidaDecoder[10]~0_combout\ & (\DEM|saidaDecoder[5]~0_combout\ & (!\CPU|DEC|Equal10~0_combout\ $ (!\CPU|DEC|saidaDecoder[10]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder[10]~0_combout\,
	datab => \DEM|ALT_INV_saidaDecoder[5]~0_combout\,
	datac => \CPU|DEC|ALT_INV_Equal10~0_combout\,
	datad => \CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \DEBUG~0_combout\);

-- Location: LABCELL_X74_Y7_N24
\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~3_combout\ & ((!\CPU|PC|DOUT\(3)) # (\ROM|memROM~6_combout\)))) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( 
-- (!\CPU|PC|DOUT\(8) & (\ROM|memROM~3_combout\ & ((!\CPU|PC|DOUT\(3)) # (\ROM|memROM~6_combout\)))) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~3_combout\ & ((!\CPU|PC|DOUT\(3)) # 
-- (\ROM|memROM~6_combout\)))) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~6_combout\ & \ROM|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000001000101000000000100010100000000010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|process_0~0_combout\);

-- Location: LABCELL_X74_Y7_N54
\RAM|dado_out[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~1_combout\ = (!\CPU|DEC|saidaDecoder[10]~0_combout\ & (!\RAM|process_0~0_combout\ & (!\CPU|DEC|saidaDecoder[10]~1_combout\ $ (!\CPU|DEC|Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000001000001000000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder[10]~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \CPU|DEC|ALT_INV_Equal10~0_combout\,
	combout => \RAM|dado_out[0]~1_combout\);

-- Location: LABCELL_X73_Y8_N57
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ $ (!\CPU|PC|DOUT\(5)))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~8_combout\);

-- Location: LABCELL_X74_Y8_N3
\CPU|DEC|saidaDecoder[10]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|saidaDecoder[10]~2_combout\ = ( \CPU|DEC|Equal10~2_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~1_combout\ & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # (!\ROM|memROM~8_combout\)))) ) ) # ( !\CPU|DEC|Equal10~2_combout\ & ( (!\ROM|memROM~7_combout\ 
-- & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\ROM|memROM~8_combout\ & \ROM|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000101010000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \CPU|DEC|ALT_INV_Equal10~2_combout\,
	combout => \CPU|DEC|saidaDecoder[10]~2_combout\);

-- Location: IOIBUF_X89_Y4_N61
\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

-- Location: LABCELL_X74_Y7_N21
\RAM|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~8_combout\ = ( \ROM|memROM~2_combout\ & ( (!\CPU|DEC|saidaDecoder[10]~2_combout\) # ((!\DEM|saidaDecoder[5]~0_combout\) # ((!\comb~0_combout\) # (\FPGA_RESET~input_o\))) ) ) # ( !\ROM|memROM~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111110111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder[10]~2_combout\,
	datab => \DEM|ALT_INV_saidaDecoder[5]~0_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ALT_INV_FPGA_RESET~input_o\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|dado_out[0]~8_combout\);

-- Location: IOIBUF_X68_Y0_N52
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X73_Y8_N45
\FLIP_FLOP_KEY0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIP_FLOP_KEY0|Equal0~0_combout\ = ( \ROM|memROM~1_combout\ & ( (\ROM|memROM~13_combout\ & (!\CPU|PC|DOUT\(2) & \ROM|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \FLIP_FLOP_KEY0|Equal0~0_combout\);

-- Location: IOIBUF_X72_Y0_N52
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X74_Y7_N48
\RAM|dado_out[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~2_combout\ = ( \comb~1_combout\ & ( \ROM|memROM~22_combout\ & ( ((!\ROM|memROM~18_combout\) # (\ROM|memROM~21_combout\)) # (\KEY[1]~input_o\) ) ) ) # ( !\comb~1_combout\ & ( \ROM|memROM~22_combout\ ) ) # ( \comb~1_combout\ & ( 
-- !\ROM|memROM~22_combout\ & ( ((!\ROM|memROM~18_combout\) # (\ROM|memROM~21_combout\)) # (\SW[8]~input_o\) ) ) ) # ( !\comb~1_combout\ & ( !\ROM|memROM~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101011111111111111111111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ALT_INV_comb~1_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|dado_out[0]~2_combout\);

-- Location: IOIBUF_X36_Y0_N52
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X72_Y81_N52
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X73_Y9_N21
\RAM|dado_out[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~7_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~22_combout\ & ( \KEY[2]~input_o\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~22_combout\ ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~22_combout\ & ( \SW[9]~input_o\ ) ) ) 
-- # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~22_combout\ & ( \SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|dado_out[0]~7_combout\);

-- Location: LABCELL_X74_Y7_N36
\RAM|dado_out[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~9_combout\ = ( !\ROM|memROM~18_combout\ & ( (\RAM|dado_out[0]~8_combout\ & (((\RAM|dado_out[0]~2_combout\ & ((!\comb~1_combout\) # (\RAM|dado_out[0]~7_combout\)))))) ) ) # ( \ROM|memROM~18_combout\ & ( (\RAM|dado_out[0]~8_combout\ & 
-- (\RAM|dado_out[0]~2_combout\ & (((!\FLIP_FLOP_KEY0|Equal0~0_combout\) # (!\comb~1_combout\)) # (\KEY[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000001010101000001010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \FLIP_FLOP_KEY0|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~1_combout\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~2_combout\,
	datag => \RAM|ALT_INV_dado_out[0]~7_combout\,
	combout => \RAM|dado_out[0]~9_combout\);

-- Location: LABCELL_X74_Y7_N12
\RAM|dado_out[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~4_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~21_combout\ & ( (\RAM|process_0~0_combout\ & (((!\ROM|memROM~22_combout\) # (!\DEM|saidaDecoder[5]~0_combout\)) # (\ROM|memROM~2_combout\))) ) ) ) # ( !\ROM|memROM~18_combout\ & ( 
-- \ROM|memROM~21_combout\ & ( (\RAM|process_0~0_combout\ & ((!\DEM|saidaDecoder[5]~0_combout\) # (\ROM|memROM~2_combout\))) ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~21_combout\ & ( (\RAM|process_0~0_combout\ & ((!\DEM|saidaDecoder[5]~0_combout\) # 
-- (\ROM|memROM~2_combout\))) ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~21_combout\ & ( (\RAM|process_0~0_combout\ & ((!\ROM|memROM~2_combout\) # ((!\ROM|memROM~22_combout\) # (!\DEM|saidaDecoder[5]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010001000101010101000100010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \DEM|ALT_INV_saidaDecoder[5]~0_combout\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|dado_out[0]~4_combout\);

-- Location: LABCELL_X74_Y7_N42
\RAM|dado_out[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~5_combout\ = ( \comb~1_combout\ & ( \RAM|dado_out[0]~4_combout\ & ( (!\ROM|memROM~18_combout\ & !\ROM|memROM~21_combout\) ) ) ) # ( \comb~1_combout\ & ( !\RAM|dado_out[0]~4_combout\ & ( ((!\ROM|memROM~18_combout\ & 
-- !\ROM|memROM~21_combout\)) # (\CPU|DEC|saidaDecoder[10]~2_combout\) ) ) ) # ( !\comb~1_combout\ & ( !\RAM|dado_out[0]~4_combout\ & ( \CPU|DEC|saidaDecoder[10]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110111010101010100000000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder[10]~2_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ALT_INV_comb~1_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~4_combout\,
	combout => \RAM|dado_out[0]~5_combout\);

-- Location: IOIBUF_X89_Y8_N55
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X73_Y8_N9
\FLIP_FLOP_KEY0|saida~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIP_FLOP_KEY0|saida~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \FLIP_FLOP_KEY0|saida~feeder_combout\);

-- Location: LABCELL_X73_Y8_N24
\FLIP_FLOP_KEY0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIP_FLOP_KEY0|Equal0~1_combout\ = ( \ROM|memROM~3_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~11_combout\ & \ROM|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \FLIP_FLOP_KEY0|Equal0~1_combout\);

-- Location: LABCELL_X73_Y8_N48
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( !\CPU|PC|DOUT\(3) & ( (\ROM|memROM~3_combout\ & (\ROM|memROM~4_combout\ & !\CPU|PC|DOUT\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~14_combout\);

-- Location: LABCELL_X73_Y8_N30
\FLIP_FLOP_KEY0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIP_FLOP_KEY0|Equal0~2_combout\ = ( \FLIP_FLOP_KEY0|Equal0~0_combout\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~17_combout\ & (\FLIP_FLOP_KEY0|Equal0~1_combout\ & (\ROM|memROM~14_combout\ & \ROM|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \FLIP_FLOP_KEY0|ALT_INV_Equal0~1_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \FLIP_FLOP_KEY0|ALT_INV_Equal0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \FLIP_FLOP_KEY0|Equal0~2_combout\);

-- Location: FF_X73_Y8_N10
\FLIP_FLOP_KEY0|saida~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FLIP_FLOP_KEY0|saida~feeder_combout\,
	clrn => \FLIP_FLOP_KEY0|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP_KEY0|saida~DUPLICATE_q\);

-- Location: LABCELL_X74_Y7_N6
\RAM|dado_out[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~6_combout\ = ( \RAM|ram~547_combout\ & ( \FLIP_FLOP_KEY0|saida~DUPLICATE_q\ & ( (!\RAM|dado_out[0]~5_combout\) # (\RAM|dado_out[0]~9_combout\) ) ) ) # ( !\RAM|ram~547_combout\ & ( \FLIP_FLOP_KEY0|saida~DUPLICATE_q\ & ( 
-- (!\RAM|dado_out[0]~5_combout\) # ((!\RAM|dado_out[0]~1_combout\ & \RAM|dado_out[0]~9_combout\)) ) ) ) # ( \RAM|ram~547_combout\ & ( !\FLIP_FLOP_KEY0|saida~DUPLICATE_q\ & ( (!\RAM|dado_out[0]~5_combout\) # ((!\DEBUG~0_combout\ & 
-- \RAM|dado_out[0]~9_combout\)) ) ) ) # ( !\RAM|ram~547_combout\ & ( !\FLIP_FLOP_KEY0|saida~DUPLICATE_q\ & ( (!\RAM|dado_out[0]~5_combout\) # ((!\DEBUG~0_combout\ & (!\RAM|dado_out[0]~1_combout\ & \RAM|dado_out[0]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001000111111110000101011111111000011001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEBUG~0_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~1_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~9_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~5_combout\,
	datae => \RAM|ALT_INV_ram~547_combout\,
	dataf => \FLIP_FLOP_KEY0|ALT_INV_saida~DUPLICATE_q\,
	combout => \RAM|dado_out[0]~6_combout\);

-- Location: MLABCELL_X72_Y7_N48
\ROM|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~25_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~25_combout\);

-- Location: MLABCELL_X78_Y7_N0
\CPU|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_sumout\ = SUM(( \CPU|ACU|DOUT\(0) ) + ( (!\CPU|DEC|saidaDecoder[3]~6_combout\ & (((\RAM|dado_out[0]~6_combout\)))) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & (!\CPU|PC|DOUT\(8) & ((\ROM|memROM~25_combout\)))) ) + ( !VCC ))
-- \CPU|ULA|Add0~2\ = CARRY(( \CPU|ACU|DOUT\(0) ) + ( (!\CPU|DEC|saidaDecoder[3]~6_combout\ & (((\RAM|dado_out[0]~6_combout\)))) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & (!\CPU|PC|DOUT\(8) & ((\ROM|memROM~25_combout\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~6_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~6_combout\,
	datad => \CPU|ACU|ALT_INV_DOUT\(0),
	dataf => \ROM|ALT_INV_memROM~25_combout\,
	cin => GND,
	sumout => \CPU|ULA|Add0~1_sumout\,
	cout => \CPU|ULA|Add0~2\);

-- Location: LABCELL_X77_Y7_N18
\CPU|ULA|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Equal0~0_combout\ = (\CPU|DEC|saidaDecoder[10]~1_combout\ & !\CPU|DEC|saidaDecoder~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\,
	datac => \CPU|DEC|ALT_INV_saidaDecoder~5_combout\,
	combout => \CPU|ULA|Equal0~0_combout\);

-- Location: MLABCELL_X78_Y7_N30
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

-- Location: MLABCELL_X78_Y7_N33
\CPU|ULA|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~17_sumout\ = SUM(( \CPU|ACU|DOUT\(0) ) + ( (!\CPU|DEC|saidaDecoder[3]~6_combout\ & (((!\RAM|dado_out[0]~6_combout\)))) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & (((!\ROM|memROM~25_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|ULA|Add1~34_cout\ 
-- ))
-- \CPU|ULA|Add1~18\ = CARRY(( \CPU|ACU|DOUT\(0) ) + ( (!\CPU|DEC|saidaDecoder[3]~6_combout\ & (((!\RAM|dado_out[0]~6_combout\)))) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & (((!\ROM|memROM~25_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|ULA|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~6_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~6_combout\,
	datad => \CPU|ACU|ALT_INV_DOUT\(0),
	dataf => \ROM|ALT_INV_memROM~25_combout\,
	cin => \CPU|ULA|Add1~34_cout\,
	sumout => \CPU|ULA|Add1~17_sumout\,
	cout => \CPU|ULA|Add1~18\);

-- Location: LABCELL_X79_Y7_N51
\CPU|ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[0]~0_combout\ = ( \CPU|ULA|Add1~17_sumout\ & ( ((!\CPU|DEC|saidaDecoder[3]~6_combout\ & (\RAM|dado_out[0]~6_combout\)) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & ((\ROM|memROM~18_combout\)))) # (\CPU|ULA|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA|Add1~17_sumout\ & ( (!\CPU|ULA|Equal0~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~6_combout\ & (\RAM|dado_out[0]~6_combout\)) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & ((\ROM|memROM~18_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000000001010011111111110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[0]~6_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \CPU|DEC|ALT_INV_saidaDecoder[3]~6_combout\,
	datad => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	dataf => \CPU|ULA|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA|saida[0]~0_combout\);

-- Location: LABCELL_X77_Y7_N54
\CPU|ULA|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Equal1~0_combout\ = ( \CPU|DEC|saidaDecoder[10]~1_combout\ ) # ( !\CPU|DEC|saidaDecoder[10]~1_combout\ & ( ((!\ROM|memROM~20_combout\) # (\CPU|DEC|saidaDecoder[10]~0_combout\)) # (\ROM|memROM~19_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[10]~0_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\,
	combout => \CPU|ULA|Equal1~0_combout\);

-- Location: LABCELL_X75_Y9_N36
\CPU|DEC|saidaDecoder[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|saidaDecoder[2]~7_combout\ = ( !\CPU|DEC|saidaDecoder[10]~1_combout\ & ( !\CPU|DEC|Equal10~0_combout\ $ (!\CPU|DEC|saidaDecoder[10]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_Equal10~0_combout\,
	datac => \CPU|DEC|ALT_INV_saidaDecoder[10]~0_combout\,
	dataf => \CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\,
	combout => \CPU|DEC|saidaDecoder[2]~7_combout\);

-- Location: FF_X78_Y7_N2
\CPU|ACU|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~1_sumout\,
	asdata => \CPU|ULA|saida[0]~0_combout\,
	sload => \CPU|ULA|Equal1~0_combout\,
	ena => \CPU|DEC|saidaDecoder[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(0));

-- Location: MLABCELL_X78_Y7_N3
\CPU|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_sumout\ = SUM(( \CPU|ACU|DOUT\(1) ) + ( \CPU|MUX|saida_MUX[1]~0_combout\ ) + ( \CPU|ULA|Add0~2\ ))
-- \CPU|ULA|Add0~6\ = CARRY(( \CPU|ACU|DOUT\(1) ) + ( \CPU|MUX|saida_MUX[1]~0_combout\ ) + ( \CPU|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX|ALT_INV_saida_MUX[1]~0_combout\,
	datad => \CPU|ACU|ALT_INV_DOUT\(1),
	cin => \CPU|ULA|Add0~2\,
	sumout => \CPU|ULA|Add0~5_sumout\,
	cout => \CPU|ULA|Add0~6\);

-- Location: MLABCELL_X78_Y7_N36
\CPU|ULA|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~21_sumout\ = SUM(( !\CPU|MUX|saida_MUX[1]~0_combout\ ) + ( \CPU|ACU|DOUT\(1) ) + ( \CPU|ULA|Add1~18\ ))
-- \CPU|ULA|Add1~22\ = CARRY(( !\CPU|MUX|saida_MUX[1]~0_combout\ ) + ( \CPU|ACU|DOUT\(1) ) + ( \CPU|ULA|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|ALT_INV_DOUT\(1),
	datad => \CPU|MUX|ALT_INV_saida_MUX[1]~0_combout\,
	cin => \CPU|ULA|Add1~18\,
	sumout => \CPU|ULA|Add1~21_sumout\,
	cout => \CPU|ULA|Add1~22\);

-- Location: MLABCELL_X78_Y7_N27
\CPU|ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[1]~1_combout\ = ( \CPU|ULA|Add1~21_sumout\ & ( (\CPU|MUX|saida_MUX[1]~0_combout\) # (\CPU|ULA|Equal0~0_combout\) ) ) # ( !\CPU|ULA|Add1~21_sumout\ & ( (!\CPU|ULA|Equal0~0_combout\ & \CPU|MUX|saida_MUX[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	datac => \CPU|MUX|ALT_INV_saida_MUX[1]~0_combout\,
	dataf => \CPU|ULA|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA|saida[1]~1_combout\);

-- Location: FF_X78_Y7_N5
\CPU|ACU|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~5_sumout\,
	asdata => \CPU|ULA|saida[1]~1_combout\,
	sload => \CPU|ULA|Equal1~0_combout\,
	ena => \CPU|DEC|saidaDecoder[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(1));

-- Location: LABCELL_X73_Y8_N54
\CPU|DEC|saidaDecoder[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|saidaDecoder[4]~3_combout\ = ( \ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\ROM|memROM~7_combout\ & \ROM|memROM~1_combout\)) ) ) # ( !\ROM|memROM~8_combout\ & ( (\ROM|memROM~7_combout\ & \ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DEC|saidaDecoder[4]~3_combout\);

-- Location: MLABCELL_X72_Y7_N12
\RAM|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~1_combout\ = ( \ROM|memROM~19_combout\ & ( !\ROM|memROM~20_combout\ & ( (!\RAM|process_0~0_combout\ & \CPU|DEC|saidaDecoder[4]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \CPU|DEC|ALT_INV_saidaDecoder[4]~3_combout\,
	datae => \ROM|ALT_INV_memROM~19_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM|process_0~1_combout\);

-- Location: LABCELL_X73_Y5_N0
\RAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~566_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~18_combout\ & ( (\ROM|memROM~22_combout\ & (!\ROM|memROM~23_combout\ & (!\ROM|memROM~21_combout\ & \ROM|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~566_combout\);

-- Location: LABCELL_X73_Y5_N54
\RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~567_combout\ = ( \RAM|ram~566_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~566_combout\,
	combout => \RAM|ram~567_combout\);

-- Location: FF_X73_Y5_N31
\RAM|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~336_q\);

-- Location: LABCELL_X74_Y11_N36
\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~23_combout\ & (\ROM|memROM~22_combout\ & (!\ROM|memROM~17_combout\ & !\ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~550_combout\);

-- Location: LABCELL_X74_Y11_N6
\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( \RAM|ram~550_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_process_0~1_combout\,
	datae => \RAM|ALT_INV_ram~550_combout\,
	combout => \RAM|ram~551_combout\);

-- Location: FF_X74_Y11_N55
\RAM|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~272_q\);

-- Location: MLABCELL_X72_Y10_N27
\RAM|ram~288feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~288feeder_combout\ = ( \CPU|ACU|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(1),
	combout => \RAM|ram~288feeder_combout\);

-- Location: LABCELL_X74_Y11_N21
\RAM|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~614_combout\ = ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~17_combout\ & (!\ROM|memROM~2_combout\ & (\ROM|memROM~22_combout\ & !\ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~614_combout\);

-- Location: LABCELL_X74_Y11_N51
\RAM|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~615_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~614_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~614_combout\,
	combout => \RAM|ram~615_combout\);

-- Location: FF_X72_Y10_N29
\RAM|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~288feeder_combout\,
	ena => \RAM|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~288_q\);

-- Location: LABCELL_X74_Y5_N36
\RAM|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~630_combout\ = ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~17_combout\ & ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~22_combout\ & (!\ROM|memROM~23_combout\ & \ROM|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~630_combout\);

-- Location: LABCELL_X75_Y5_N57
\RAM|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~631_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~630_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~630_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~631_combout\);

-- Location: FF_X75_Y5_N49
\RAM|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~352_q\);

-- Location: LABCELL_X75_Y6_N3
\RAM|ram~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~681_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~21_combout\ & ( \RAM|ram~352_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~21_combout\ & ( \RAM|ram~288_q\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~21_combout\ & ( 
-- \RAM|ram~336_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~21_combout\ & ( \RAM|ram~272_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~336_q\,
	datab => \RAM|ALT_INV_ram~272_q\,
	datac => \RAM|ALT_INV_ram~288_q\,
	datad => \RAM|ALT_INV_ram~352_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~681_combout\);

-- Location: LABCELL_X71_Y6_N48
\RAM|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~574_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~23_combout\ & (!\ROM|memROM~18_combout\ & (\ROM|memROM~22_combout\ & \ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~574_combout\);

-- Location: LABCELL_X71_Y6_N30
\RAM|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~575_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~574_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~574_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~575_combout\);

-- Location: FF_X71_Y6_N52
\RAM|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~368_q\);

-- Location: LABCELL_X70_Y6_N48
\RAM|ram~320feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~320feeder_combout\ = ( \CPU|ACU|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(1),
	combout => \RAM|ram~320feeder_combout\);

-- Location: LABCELL_X71_Y7_N9
\RAM|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~622_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~18_combout\ & ( (\ROM|memROM~22_combout\ & (!\ROM|memROM~23_combout\ & (!\ROM|memROM~17_combout\ & \ROM|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~622_combout\);

-- Location: LABCELL_X71_Y7_N48
\RAM|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~623_combout\ = ( \RAM|ram~622_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~622_combout\,
	combout => \RAM|ram~623_combout\);

-- Location: FF_X70_Y6_N49
\RAM|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~320feeder_combout\,
	ena => \RAM|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~320_q\);

-- Location: LABCELL_X71_Y7_N54
\RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~558_combout\ = ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~21_combout\ & ( (\ROM|memROM~2_combout\ & (!\ROM|memROM~18_combout\ & (\ROM|memROM~22_combout\ & !\ROM|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~558_combout\);

-- Location: LABCELL_X71_Y7_N51
\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = (\RAM|ram~558_combout\ & \RAM|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~558_combout\,
	datab => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~559_combout\);

-- Location: FF_X71_Y7_N10
\RAM|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~304_q\);

-- Location: LABCELL_X70_Y8_N27
\RAM|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~638_combout\ = ( !\ROM|memROM~23_combout\ & ( !\ROM|memROM~18_combout\ & ( (\ROM|memROM~22_combout\ & (\ROM|memROM~17_combout\ & (\ROM|memROM~2_combout\ & \ROM|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~638_combout\);

-- Location: LABCELL_X71_Y8_N15
\RAM|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~639_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~638_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~638_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~639_combout\);

-- Location: FF_X78_Y6_N32
\RAM|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~384_q\);

-- Location: MLABCELL_X78_Y6_N30
\RAM|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~683_combout\ = ( \RAM|ram~384_q\ & ( \ROM|memROM~21_combout\ & ( (\ROM|memROM~17_combout\) # (\RAM|ram~320_q\) ) ) ) # ( !\RAM|ram~384_q\ & ( \ROM|memROM~21_combout\ & ( (\RAM|ram~320_q\ & !\ROM|memROM~17_combout\) ) ) ) # ( \RAM|ram~384_q\ & ( 
-- !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~17_combout\ & ((\RAM|ram~304_q\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~368_q\)) ) ) ) # ( !\RAM|ram~384_q\ & ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~17_combout\ & ((\RAM|ram~304_q\))) # 
-- (\ROM|memROM~17_combout\ & (\RAM|ram~368_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~368_q\,
	datab => \RAM|ALT_INV_ram~320_q\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~304_q\,
	datae => \RAM|ALT_INV_ram~384_q\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~683_combout\);

-- Location: LABCELL_X71_Y6_N36
\RAM|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~606_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~23_combout\ & (!\ROM|memROM~21_combout\ & (\ROM|memROM~22_combout\ & \ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~606_combout\);

-- Location: LABCELL_X71_Y6_N42
\RAM|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~607_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~606_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~606_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~607_combout\);

-- Location: FF_X72_Y6_N40
\RAM|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~376_q\);

-- Location: LABCELL_X73_Y10_N30
\RAM|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~590_combout\ = ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~17_combout\ & (\ROM|memROM~2_combout\ & (\ROM|memROM~22_combout\ & !\ROM|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~590_combout\);

-- Location: LABCELL_X74_Y10_N24
\RAM|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~591_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~590_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~590_combout\,
	combout => \RAM|ram~591_combout\);

-- Location: FF_X78_Y6_N7
\RAM|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~312_q\);

-- Location: LABCELL_X74_Y10_N30
\RAM|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~654_combout\ = ( !\ROM|memROM~23_combout\ & ( !\ROM|memROM~17_combout\ & ( (\ROM|memROM~22_combout\ & (\ROM|memROM~2_combout\ & (\ROM|memROM~21_combout\ & \ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~654_combout\);

-- Location: LABCELL_X74_Y10_N0
\RAM|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~655_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~654_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~654_combout\,
	combout => \RAM|ram~655_combout\);

-- Location: FF_X73_Y6_N16
\RAM|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~328_q\);

-- Location: LABCELL_X73_Y6_N6
\RAM|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~658_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~2_combout\ & (\ROM|memROM~17_combout\ & (!\ROM|memROM~23_combout\ & \ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~658_combout\);

-- Location: LABCELL_X73_Y6_N42
\RAM|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~659_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~658_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~658_combout\,
	combout => \RAM|ram~659_combout\);

-- Location: FF_X73_Y6_N40
\RAM|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~392_q\);

-- Location: MLABCELL_X78_Y6_N21
\RAM|ram~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~684_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~21_combout\ & ( \RAM|ram~392_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~21_combout\ & ( \RAM|ram~328_q\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~21_combout\ & ( 
-- \RAM|ram~376_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~21_combout\ & ( \RAM|ram~312_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~376_q\,
	datab => \RAM|ALT_INV_ram~312_q\,
	datac => \RAM|ALT_INV_ram~328_q\,
	datad => \RAM|ALT_INV_ram~392_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~684_combout\);

-- Location: LABCELL_X75_Y5_N24
\RAM|ram~280feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~280feeder_combout\ = ( \CPU|ACU|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(1),
	combout => \RAM|ram~280feeder_combout\);

-- Location: LABCELL_X75_Y5_N21
\RAM|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~582_combout\ = ( !\ROM|memROM~23_combout\ & ( !\ROM|memROM~2_combout\ & ( (\ROM|memROM~22_combout\ & (!\ROM|memROM~17_combout\ & (!\ROM|memROM~21_combout\ & \ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~582_combout\);

-- Location: LABCELL_X75_Y5_N12
\RAM|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~583_combout\ = (\RAM|ram~582_combout\ & \RAM|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~582_combout\,
	datad => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~583_combout\);

-- Location: FF_X75_Y5_N25
\RAM|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~280feeder_combout\,
	ena => \RAM|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~280_q\);

-- Location: LABCELL_X73_Y9_N33
\RAM|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~598_combout\ = ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~23_combout\ & ( (\ROM|memROM~17_combout\ & (\ROM|memROM~18_combout\ & (\ROM|memROM~22_combout\ & !\ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~598_combout\);

-- Location: LABCELL_X74_Y11_N30
\RAM|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~599_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~598_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~598_combout\,
	datae => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~599_combout\);

-- Location: FF_X73_Y9_N7
\RAM|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~344_q\);

-- Location: LABCELL_X71_Y7_N3
\RAM|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~646_combout\ = ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~18_combout\ & ( (\ROM|memROM~21_combout\ & (!\ROM|memROM~23_combout\ & (!\ROM|memROM~17_combout\ & \ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~21_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~646_combout\);

-- Location: LABCELL_X71_Y7_N27
\RAM|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~647_combout\ = ( \RAM|ram~646_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~646_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~647_combout\);

-- Location: FF_X74_Y7_N46
\RAM|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~296_q\);

-- Location: LABCELL_X75_Y9_N57
\RAM|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~650_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~17_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~23_combout\ & (\ROM|memROM~22_combout\ & \ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~650_combout\);

-- Location: LABCELL_X75_Y5_N0
\RAM|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~651_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~650_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~650_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~651_combout\);

-- Location: FF_X75_Y5_N8
\RAM|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~360_q\);

-- Location: LABCELL_X75_Y5_N6
\RAM|ram~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~682_combout\ = ( \RAM|ram~360_q\ & ( \ROM|memROM~17_combout\ & ( (\ROM|memROM~21_combout\) # (\RAM|ram~344_q\) ) ) ) # ( !\RAM|ram~360_q\ & ( \ROM|memROM~17_combout\ & ( (\RAM|ram~344_q\ & !\ROM|memROM~21_combout\) ) ) ) # ( \RAM|ram~360_q\ & ( 
-- !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~280_q\)) # (\ROM|memROM~21_combout\ & ((\RAM|ram~296_q\))) ) ) ) # ( !\RAM|ram~360_q\ & ( !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~280_q\)) # 
-- (\ROM|memROM~21_combout\ & ((\RAM|ram~296_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~280_q\,
	datab => \RAM|ALT_INV_ram~344_q\,
	datac => \RAM|ALT_INV_ram~296_q\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \RAM|ALT_INV_ram~360_q\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~682_combout\);

-- Location: MLABCELL_X78_Y6_N0
\RAM|ram~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~685_combout\ = ( \RAM|ram~684_combout\ & ( \RAM|ram~682_combout\ & ( ((!\ROM|memROM~2_combout\ & (\RAM|ram~681_combout\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~683_combout\)))) # (\ROM|memROM~18_combout\) ) ) ) # ( !\RAM|ram~684_combout\ & ( 
-- \RAM|ram~682_combout\ & ( (!\ROM|memROM~18_combout\ & ((!\ROM|memROM~2_combout\ & (\RAM|ram~681_combout\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~683_combout\))))) # (\ROM|memROM~18_combout\ & (!\ROM|memROM~2_combout\)) ) ) ) # ( \RAM|ram~684_combout\ & ( 
-- !\RAM|ram~682_combout\ & ( (!\ROM|memROM~18_combout\ & ((!\ROM|memROM~2_combout\ & (\RAM|ram~681_combout\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~683_combout\))))) # (\ROM|memROM~18_combout\ & (\ROM|memROM~2_combout\)) ) ) ) # ( !\RAM|ram~684_combout\ & 
-- ( !\RAM|ram~682_combout\ & ( (!\ROM|memROM~18_combout\ & ((!\ROM|memROM~2_combout\ & (\RAM|ram~681_combout\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~683_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~681_combout\,
	datad => \RAM|ALT_INV_ram~683_combout\,
	datae => \RAM|ALT_INV_ram~684_combout\,
	dataf => \RAM|ALT_INV_ram~682_combout\,
	combout => \RAM|ram~685_combout\);

-- Location: LABCELL_X74_Y9_N42
\RAM|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~662_combout\ = ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~2_combout\ & ( (\ROM|memROM~18_combout\ & (\ROM|memROM~23_combout\ & (\ROM|memROM~21_combout\ & \ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~662_combout\);

-- Location: LABCELL_X74_Y9_N9
\RAM|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~663_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~662_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datac => \RAM|ALT_INV_ram~662_combout\,
	combout => \RAM|ram~663_combout\);

-- Location: FF_X75_Y8_N7
\RAM|ram~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~424_q\);

-- Location: LABCELL_X73_Y11_N36
\RAM|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~618_combout\ = ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~17_combout\ & ( (\ROM|memROM~22_combout\ & (!\ROM|memROM~2_combout\ & (\ROM|memROM~23_combout\ & \ROM|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~618_combout\);

-- Location: LABCELL_X73_Y11_N27
\RAM|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~619_combout\ = (\RAM|ram~618_combout\ & \RAM|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~618_combout\,
	datac => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~619_combout\);

-- Location: FF_X73_Y11_N58
\RAM|ram~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~416_q\);

-- Location: MLABCELL_X72_Y6_N54
\RAM|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~626_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~17_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~18_combout\ & \ROM|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~626_combout\);

-- Location: MLABCELL_X72_Y6_N0
\RAM|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~627_combout\ = ( \RAM|ram~626_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~626_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~627_combout\);

-- Location: FF_X73_Y7_N52
\RAM|ram~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~448_q\);

-- Location: LABCELL_X71_Y6_N9
\RAM|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~670_combout\ = ( \ROM|memROM~23_combout\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~17_combout\ & (\ROM|memROM~21_combout\ & (\ROM|memROM~2_combout\ & \ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~670_combout\);

-- Location: LABCELL_X71_Y6_N12
\RAM|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~671_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~670_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~670_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~671_combout\);

-- Location: FF_X74_Y6_N56
\RAM|ram~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~456_q\);

-- Location: LABCELL_X74_Y6_N54
\RAM|ram~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~692_combout\ = ( \RAM|ram~456_q\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~448_q\) ) ) ) # ( !\RAM|ram~456_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~448_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~456_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~416_q\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~424_q\)) ) ) ) # ( !\RAM|ram~456_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~416_q\))) # 
-- (\ROM|memROM~18_combout\ & (\RAM|ram~424_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~424_q\,
	datab => \RAM|ALT_INV_ram~416_q\,
	datac => \RAM|ALT_INV_ram~448_q\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \RAM|ALT_INV_ram~456_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~692_combout\);

-- Location: LABCELL_X75_Y6_N51
\RAM|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~642_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~18_combout\ & ( (\ROM|memROM~22_combout\ & (\ROM|memROM~2_combout\ & (\ROM|memROM~21_combout\ & \ROM|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~642_combout\);

-- Location: LABCELL_X75_Y6_N30
\RAM|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~643_combout\ = ( \RAM|ram~642_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~642_combout\,
	combout => \RAM|ram~643_combout\);

-- Location: FF_X72_Y8_N59
\RAM|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~512_q\);

-- Location: LABCELL_X79_Y7_N39
\RAM|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~634_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~22_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~18_combout\ & \ROM|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~634_combout\);

-- Location: LABCELL_X75_Y7_N42
\RAM|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~635_combout\ = ( \RAM|ram~634_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~634_combout\,
	combout => \RAM|ram~635_combout\);

-- Location: FF_X75_Y7_N35
\RAM|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~480_q\);

-- Location: LABCELL_X74_Y5_N30
\RAM|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~666_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~23_combout\ & (\ROM|memROM~21_combout\ & (!\ROM|memROM~2_combout\ & \ROM|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~666_combout\);

-- Location: LABCELL_X74_Y5_N27
\RAM|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~667_combout\ = ( \RAM|ram~666_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~666_combout\,
	combout => \RAM|ram~667_combout\);

-- Location: FF_X74_Y5_N40
\RAM|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~488_q\);

-- Location: LABCELL_X74_Y6_N33
\RAM|ram~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~674_combout\ = ( \ROM|memROM~23_combout\ & ( \ROM|memROM~17_combout\ & ( (\ROM|memROM~22_combout\ & (\ROM|memROM~21_combout\ & (\ROM|memROM~18_combout\ & \ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~674_combout\);

-- Location: LABCELL_X74_Y6_N48
\RAM|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~675_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~674_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~674_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~675_combout\);

-- Location: FF_X74_Y6_N2
\RAM|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~520_q\);

-- Location: LABCELL_X74_Y6_N0
\RAM|ram~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~694_combout\ = ( \RAM|ram~520_q\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~512_q\) ) ) ) # ( !\RAM|ram~520_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~512_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~520_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~480_q\)) # (\ROM|memROM~18_combout\ & ((\RAM|ram~488_q\))) ) ) ) # ( !\RAM|ram~520_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~480_q\)) # 
-- (\ROM|memROM~18_combout\ & ((\RAM|ram~488_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~512_q\,
	datab => \RAM|ALT_INV_ram~480_q\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \RAM|ALT_INV_ram~488_q\,
	datae => \RAM|ALT_INV_ram~520_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~694_combout\);

-- Location: MLABCELL_X72_Y9_N24
\RAM|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~602_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~23_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~21_combout\ & (\ROM|memROM~18_combout\ & \ROM|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~602_combout\);

-- Location: MLABCELL_X72_Y9_N39
\RAM|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~603_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~602_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~602_combout\,
	datae => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~603_combout\);

-- Location: FF_X73_Y9_N28
\RAM|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~472_q\);

-- Location: LABCELL_X73_Y5_N24
\RAM|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~570_combout\ = ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~18_combout\ & (\ROM|memROM~23_combout\ & (!\ROM|memROM~2_combout\ & \ROM|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~570_combout\);

-- Location: LABCELL_X73_Y5_N12
\RAM|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~571_combout\ = ( \RAM|ram~570_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~570_combout\,
	combout => \RAM|ram~571_combout\);

-- Location: FF_X73_Y5_N4
\RAM|ram~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~464_q\);

-- Location: MLABCELL_X72_Y9_N33
\RAM|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~578_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~23_combout\ & ( (!\ROM|memROM~18_combout\ & (\ROM|memROM~17_combout\ & (!\ROM|memROM~21_combout\ & \ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~578_combout\);

-- Location: MLABCELL_X72_Y9_N51
\RAM|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~579_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~578_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~578_combout\,
	combout => \RAM|ram~579_combout\);

-- Location: FF_X74_Y8_N49
\RAM|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~496_q\);

-- Location: LABCELL_X73_Y6_N48
\RAM|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~610_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~17_combout\ & ( (\ROM|memROM~23_combout\ & (!\ROM|memROM~21_combout\ & (\ROM|memROM~2_combout\ & \ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~610_combout\);

-- Location: MLABCELL_X72_Y6_N36
\RAM|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~611_combout\ = ( \RAM|ram~610_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~610_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~611_combout\);

-- Location: FF_X72_Y6_N8
\RAM|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~504_q\);

-- Location: MLABCELL_X72_Y6_N6
\RAM|ram~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~693_combout\ = ( \RAM|ram~504_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~496_q\) # (\ROM|memROM~18_combout\) ) ) ) # ( !\RAM|ram~504_q\ & ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & \RAM|ram~496_q\) ) ) ) # ( \RAM|ram~504_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~464_q\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~472_q\)) ) ) ) # ( !\RAM|ram~504_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~464_q\))) # 
-- (\ROM|memROM~18_combout\ & (\RAM|ram~472_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~472_q\,
	datab => \RAM|ALT_INV_ram~464_q\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \RAM|ALT_INV_ram~496_q\,
	datae => \RAM|ALT_INV_ram~504_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~693_combout\);

-- Location: LABCELL_X73_Y9_N54
\RAM|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~594_combout\ = ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~18_combout\ & ( (\ROM|memROM~2_combout\ & (\ROM|memROM~22_combout\ & (!\ROM|memROM~17_combout\ & \ROM|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~594_combout\);

-- Location: LABCELL_X73_Y9_N24
\RAM|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~595_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~594_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~594_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~595_combout\);

-- Location: FF_X74_Y9_N50
\RAM|ram~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~440_q\);

-- Location: LABCELL_X73_Y9_N15
\RAM|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~586_combout\ = ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~23_combout\ & (\ROM|memROM~22_combout\ & \ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~586_combout\);

-- Location: LABCELL_X74_Y9_N6
\RAM|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~587_combout\ = ( \RAM|ram~586_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~586_combout\,
	combout => \RAM|ram~587_combout\);

-- Location: FF_X74_Y9_N22
\RAM|ram~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~408_q\);

-- Location: LABCELL_X73_Y10_N15
\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~21_combout\ & ( (\ROM|memROM~23_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~17_combout\ & \ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~554_combout\);

-- Location: LABCELL_X73_Y10_N18
\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( \RAM|ram~554_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~554_combout\,
	combout => \RAM|ram~555_combout\);

-- Location: FF_X73_Y10_N22
\RAM|ram~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~400_q\);

-- Location: MLABCELL_X78_Y9_N57
\RAM|ram~432feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~432feeder_combout\ = ( \CPU|ACU|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(1),
	combout => \RAM|ram~432feeder_combout\);

-- Location: LABCELL_X74_Y9_N36
\RAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~562_combout\ = ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & (\ROM|memROM~23_combout\ & (!\ROM|memROM~21_combout\ & \ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~562_combout\);

-- Location: MLABCELL_X78_Y9_N36
\RAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~563_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~562_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~562_combout\,
	combout => \RAM|ram~563_combout\);

-- Location: FF_X78_Y9_N59
\RAM|ram~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~432feeder_combout\,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~432_q\);

-- Location: LABCELL_X74_Y9_N51
\RAM|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~691_combout\ = ( \RAM|ram~432_q\ & ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\) # (\RAM|ram~440_q\) ) ) ) # ( !\RAM|ram~432_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~440_q\ & \ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~432_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~400_q\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~408_q\)) ) ) ) # ( !\RAM|ram~432_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~400_q\))) # 
-- (\ROM|memROM~18_combout\ & (\RAM|ram~408_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~440_q\,
	datab => \RAM|ALT_INV_ram~408_q\,
	datac => \RAM|ALT_INV_ram~400_q\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \RAM|ALT_INV_ram~432_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~691_combout\);

-- Location: LABCELL_X74_Y6_N6
\RAM|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~695_combout\ = ( \RAM|ram~693_combout\ & ( \RAM|ram~691_combout\ & ( (!\ROM|memROM~21_combout\) # ((!\ROM|memROM~17_combout\ & (\RAM|ram~692_combout\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~694_combout\)))) ) ) ) # ( !\RAM|ram~693_combout\ & ( 
-- \RAM|ram~691_combout\ & ( (!\ROM|memROM~21_combout\ & (((!\ROM|memROM~17_combout\)))) # (\ROM|memROM~21_combout\ & ((!\ROM|memROM~17_combout\ & (\RAM|ram~692_combout\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~694_combout\))))) ) ) ) # ( 
-- \RAM|ram~693_combout\ & ( !\RAM|ram~691_combout\ & ( (!\ROM|memROM~21_combout\ & (((\ROM|memROM~17_combout\)))) # (\ROM|memROM~21_combout\ & ((!\ROM|memROM~17_combout\ & (\RAM|ram~692_combout\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~694_combout\))))) ) 
-- ) ) # ( !\RAM|ram~693_combout\ & ( !\RAM|ram~691_combout\ & ( (\ROM|memROM~21_combout\ & ((!\ROM|memROM~17_combout\ & (\RAM|ram~692_combout\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~694_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~692_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \RAM|ALT_INV_ram~694_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \RAM|ALT_INV_ram~693_combout\,
	dataf => \RAM|ALT_INV_ram~691_combout\,
	combout => \RAM|ram~695_combout\);

-- Location: LABCELL_X70_Y8_N54
\RAM|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~656_combout\ = ( !\ROM|memROM~23_combout\ & ( \ROM|memROM~18_combout\ & ( (!\ROM|memROM~22_combout\ & (\ROM|memROM~2_combout\ & (\ROM|memROM~21_combout\ & \ROM|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~656_combout\);

-- Location: LABCELL_X71_Y8_N18
\RAM|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~657_combout\ = ( \RAM|ram~656_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~656_combout\,
	combout => \RAM|ram~657_combout\);

-- Location: FF_X73_Y6_N52
\RAM|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~136_q\);

-- Location: LABCELL_X79_Y6_N12
\RAM|ram~96feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~96feeder_combout\ = ( \CPU|ACU|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(1),
	combout => \RAM|ram~96feeder_combout\);

-- Location: LABCELL_X75_Y10_N54
\RAM|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~628_combout\ = ( !\ROM|memROM~23_combout\ & ( !\ROM|memROM~18_combout\ & ( (\ROM|memROM~17_combout\ & (!\ROM|memROM~22_combout\ & (\ROM|memROM~21_combout\ & !\ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~628_combout\);

-- Location: LABCELL_X75_Y7_N18
\RAM|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~629_combout\ = ( \RAM|ram~628_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~628_combout\,
	combout => \RAM|ram~629_combout\);

-- Location: FF_X79_Y6_N13
\RAM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~96feeder_combout\,
	ena => \RAM|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~96_q\);

-- Location: LABCELL_X79_Y6_N30
\RAM|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~648_combout\ = ( !\ROM|memROM~23_combout\ & ( !\ROM|memROM~2_combout\ & ( (\ROM|memROM~17_combout\ & (\ROM|memROM~21_combout\ & (\ROM|memROM~18_combout\ & !\ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~648_combout\);

-- Location: LABCELL_X79_Y6_N6
\RAM|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~649_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~648_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~648_combout\,
	combout => \RAM|ram~649_combout\);

-- Location: FF_X78_Y6_N56
\RAM|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~104_q\);

-- Location: LABCELL_X75_Y9_N33
\RAM|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~636_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~17_combout\ & (!\ROM|memROM~23_combout\ & (!\ROM|memROM~22_combout\ & !\ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~636_combout\);

-- Location: LABCELL_X75_Y9_N39
\RAM|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~637_combout\ = ( \RAM|ram~636_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~636_combout\,
	combout => \RAM|ram~637_combout\);

-- Location: FF_X78_Y7_N34
\RAM|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~128_q\);

-- Location: MLABCELL_X78_Y6_N6
\RAM|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~679_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~136_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~128_q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~104_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~96_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~136_q\,
	datab => \RAM|ALT_INV_ram~96_q\,
	datac => \RAM|ALT_INV_ram~104_q\,
	datad => \RAM|ALT_INV_ram~128_q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~679_combout\);

-- Location: LABCELL_X77_Y10_N30
\RAM|ram~80feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~80feeder_combout\ = ( \CPU|ACU|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(1),
	combout => \RAM|ram~80feeder_combout\);

-- Location: LABCELL_X77_Y10_N27
\RAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~564_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~18_combout\ & (!\ROM|memROM~22_combout\ & (\ROM|memROM~17_combout\ & !\ROM|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~564_combout\);

-- Location: LABCELL_X77_Y10_N9
\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( \RAM|ram~564_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~564_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~565_combout\);

-- Location: FF_X77_Y10_N31
\RAM|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~80feeder_combout\,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~80_q\);

-- Location: LABCELL_X70_Y8_N36
\RAM|ram~112feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~112feeder_combout\ = ( \CPU|ACU|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(1),
	combout => \RAM|ram~112feeder_combout\);

-- Location: LABCELL_X71_Y9_N3
\RAM|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~572_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~22_combout\ & (!\ROM|memROM~23_combout\ & (!\ROM|memROM~21_combout\ & \ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~572_combout\);

-- Location: LABCELL_X71_Y9_N45
\RAM|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~573_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~572_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~572_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~573_combout\);

-- Location: FF_X70_Y8_N37
\RAM|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~112feeder_combout\,
	ena => \RAM|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~112_q\);

-- Location: LABCELL_X80_Y8_N33
\RAM|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~596_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~23_combout\ & ( (\ROM|memROM~18_combout\ & (\ROM|memROM~17_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~596_combout\);

-- Location: LABCELL_X79_Y8_N30
\RAM|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~597_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~596_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~596_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~597_combout\);

-- Location: FF_X79_Y8_N11
\RAM|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~88_q\);

-- Location: LABCELL_X70_Y8_N45
\RAM|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~604_combout\ = ( !\ROM|memROM~23_combout\ & ( \ROM|memROM~18_combout\ & ( (!\ROM|memROM~22_combout\ & (\ROM|memROM~2_combout\ & (\ROM|memROM~17_combout\ & !\ROM|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~604_combout\);

-- Location: LABCELL_X71_Y8_N33
\RAM|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~605_combout\ = ( \RAM|ram~604_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~604_combout\,
	combout => \RAM|ram~605_combout\);

-- Location: FF_X79_Y8_N5
\RAM|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~120_q\);

-- Location: LABCELL_X79_Y8_N3
\RAM|ram~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~678_combout\ = ( \RAM|ram~120_q\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~112_q\) ) ) ) # ( !\RAM|ram~120_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~112_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~120_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~80_q\)) # (\ROM|memROM~18_combout\ & ((\RAM|ram~88_q\))) ) ) ) # ( !\RAM|ram~120_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~80_q\)) # (\ROM|memROM~18_combout\ 
-- & ((\RAM|ram~88_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~80_q\,
	datab => \RAM|ALT_INV_ram~112_q\,
	datac => \RAM|ALT_INV_ram~88_q\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \RAM|ALT_INV_ram~120_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~678_combout\);

-- Location: LABCELL_X75_Y10_N12
\RAM|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~580_combout\ = ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~21_combout\ & (!\ROM|memROM~22_combout\ & (\ROM|memROM~18_combout\ & !\ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~21_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~580_combout\);

-- Location: LABCELL_X75_Y10_N6
\RAM|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~581_combout\ = ( \RAM|ram~580_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~580_combout\,
	combout => \RAM|ram~581_combout\);

-- Location: FF_X75_Y10_N7
\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

-- Location: LABCELL_X75_Y10_N42
\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~18_combout\ & (!\ROM|memROM~23_combout\ & (!\ROM|memROM~21_combout\ & \ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~556_combout\);

-- Location: LABCELL_X75_Y10_N30
\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~556_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~556_combout\,
	combout => \RAM|ram~557_combout\);

-- Location: FF_X75_Y10_N19
\RAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~48_q\);

-- Location: LABCELL_X79_Y10_N18
\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~18_combout\ & (!\ROM|memROM~17_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~548_combout\);

-- Location: LABCELL_X79_Y10_N36
\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~548_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~548_combout\,
	combout => \RAM|ram~549_combout\);

-- Location: FF_X74_Y10_N4
\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: LABCELL_X70_Y8_N3
\RAM|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~588_combout\ = ( !\ROM|memROM~23_combout\ & ( \ROM|memROM~18_combout\ & ( (!\ROM|memROM~22_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~17_combout\ & !\ROM|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~588_combout\);

-- Location: LABCELL_X71_Y8_N21
\RAM|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~589_combout\ = ( \RAM|ram~588_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~588_combout\,
	combout => \RAM|ram~589_combout\);

-- Location: FF_X75_Y10_N53
\RAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~56_q\);

-- Location: LABCELL_X75_Y10_N51
\RAM|ram~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~676_combout\ = ( \RAM|ram~56_q\ & ( \ROM|memROM~18_combout\ & ( (\ROM|memROM~2_combout\) # (\RAM|ram~24_q\) ) ) ) # ( !\RAM|ram~56_q\ & ( \ROM|memROM~18_combout\ & ( (\RAM|ram~24_q\ & !\ROM|memROM~2_combout\) ) ) ) # ( \RAM|ram~56_q\ & ( 
-- !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~2_combout\ & ((\RAM|ram~16_q\))) # (\ROM|memROM~2_combout\ & (\RAM|ram~48_q\)) ) ) ) # ( !\RAM|ram~56_q\ & ( !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~2_combout\ & ((\RAM|ram~16_q\))) # (\ROM|memROM~2_combout\ & 
-- (\RAM|ram~48_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~24_q\,
	datab => \RAM|ALT_INV_ram~48_q\,
	datac => \RAM|ALT_INV_ram~16_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~56_q\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~676_combout\);

-- Location: LABCELL_X77_Y10_N36
\RAM|ram~40feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~40feeder_combout\ = ( \CPU|ACU|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(1),
	combout => \RAM|ram~40feeder_combout\);

-- Location: LABCELL_X77_Y10_N12
\RAM|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~644_combout\ = ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~21_combout\ & ( (\ROM|memROM~18_combout\ & (!\ROM|memROM~17_combout\ & (!\ROM|memROM~23_combout\ & !\ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~644_combout\);

-- Location: LABCELL_X77_Y10_N54
\RAM|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~645_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~644_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~644_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~645_combout\);

-- Location: FF_X77_Y10_N37
\RAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~40feeder_combout\,
	ena => \RAM|ram~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~40_q\);

-- Location: LABCELL_X73_Y11_N18
\RAM|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~620_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~23_combout\ & (\ROM|memROM~21_combout\ & (!\ROM|memROM~18_combout\ & \ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~620_combout\);

-- Location: LABCELL_X75_Y11_N48
\RAM|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~621_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~620_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~620_combout\,
	combout => \RAM|ram~621_combout\);

-- Location: FF_X78_Y10_N28
\RAM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~64_q\);

-- Location: LABCELL_X73_Y11_N30
\RAM|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~612_combout\ = ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~18_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~22_combout\ & !\ROM|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~612_combout\);

-- Location: LABCELL_X73_Y11_N3
\RAM|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~613_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~612_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~612_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~613_combout\);

-- Location: FF_X79_Y10_N5
\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

-- Location: MLABCELL_X78_Y10_N21
\RAM|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~652_combout\ = ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~22_combout\ & (!\ROM|memROM~23_combout\ & (\ROM|memROM~21_combout\ & \ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~652_combout\);

-- Location: MLABCELL_X78_Y10_N48
\RAM|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~653_combout\ = ( \RAM|ram~652_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~652_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~653_combout\);

-- Location: FF_X78_Y10_N32
\RAM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~72_q\);

-- Location: MLABCELL_X78_Y10_N54
\RAM|ram~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~677_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~72_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~64_q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~40_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~40_q\,
	datab => \RAM|ALT_INV_ram~64_q\,
	datac => \RAM|ALT_INV_ram~32_q\,
	datad => \RAM|ALT_INV_ram~72_q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~677_combout\);

-- Location: MLABCELL_X78_Y6_N36
\RAM|ram~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~680_combout\ = ( \RAM|ram~676_combout\ & ( \RAM|ram~677_combout\ & ( (!\ROM|memROM~17_combout\) # ((!\ROM|memROM~21_combout\ & ((\RAM|ram~678_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~679_combout\))) ) ) ) # ( !\RAM|ram~676_combout\ & ( 
-- \RAM|ram~677_combout\ & ( (!\ROM|memROM~17_combout\ & (((\ROM|memROM~21_combout\)))) # (\ROM|memROM~17_combout\ & ((!\ROM|memROM~21_combout\ & ((\RAM|ram~678_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~679_combout\)))) ) ) ) # ( 
-- \RAM|ram~676_combout\ & ( !\RAM|ram~677_combout\ & ( (!\ROM|memROM~17_combout\ & (((!\ROM|memROM~21_combout\)))) # (\ROM|memROM~17_combout\ & ((!\ROM|memROM~21_combout\ & ((\RAM|ram~678_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~679_combout\)))) ) 
-- ) ) # ( !\RAM|ram~676_combout\ & ( !\RAM|ram~677_combout\ & ( (\ROM|memROM~17_combout\ & ((!\ROM|memROM~21_combout\ & ((\RAM|ram~678_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~679_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \RAM|ALT_INV_ram~679_combout\,
	datac => \RAM|ALT_INV_ram~678_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \RAM|ALT_INV_ram~676_combout\,
	dataf => \RAM|ALT_INV_ram~677_combout\,
	combout => \RAM|ram~680_combout\);

-- Location: MLABCELL_X78_Y8_N6
\RAM|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~568_combout\ = ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~17_combout\ & (!\ROM|memROM~22_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~568_combout\);

-- Location: MLABCELL_X78_Y8_N48
\RAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~569_combout\ = ( \RAM|ram~568_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~568_combout\,
	combout => \RAM|ram~569_combout\);

-- Location: FF_X78_Y8_N1
\RAM|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~208_q\);

-- Location: LABCELL_X70_Y6_N18
\RAM|ram~240feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~240feeder_combout\ = ( \CPU|ACU|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(1),
	combout => \RAM|ram~240feeder_combout\);

-- Location: LABCELL_X71_Y9_N36
\RAM|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~576_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~18_combout\ & (!\ROM|memROM~21_combout\ & (\ROM|memROM~2_combout\ & \ROM|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~576_combout\);

-- Location: LABCELL_X71_Y9_N33
\RAM|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~577_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~576_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~576_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~577_combout\);

-- Location: FF_X70_Y6_N19
\RAM|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~240feeder_combout\,
	ena => \RAM|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~240_q\);

-- Location: LABCELL_X74_Y10_N12
\RAM|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~600_combout\ = ( \ROM|memROM~23_combout\ & ( \ROM|memROM~18_combout\ & ( (!\ROM|memROM~22_combout\ & (\ROM|memROM~17_combout\ & (!\ROM|memROM~21_combout\ & !\ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~600_combout\);

-- Location: MLABCELL_X78_Y8_N51
\RAM|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~601_combout\ = ( \RAM|ram~600_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~600_combout\,
	combout => \RAM|ram~601_combout\);

-- Location: FF_X78_Y8_N16
\RAM|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~216_q\);

-- Location: LABCELL_X75_Y6_N45
\RAM|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~608_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( (\ROM|memROM~23_combout\ & (!\ROM|memROM~21_combout\ & (\ROM|memROM~18_combout\ & \ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~608_combout\);

-- Location: LABCELL_X75_Y6_N33
\RAM|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~609_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~608_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~608_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~609_combout\);

-- Location: FF_X75_Y6_N38
\RAM|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~248_q\);

-- Location: LABCELL_X75_Y6_N36
\RAM|ram~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~688_combout\ = ( \RAM|ram~248_q\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~240_q\) ) ) ) # ( !\RAM|ram~248_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~240_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~248_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~208_q\)) # (\ROM|memROM~18_combout\ & ((\RAM|ram~216_q\))) ) ) ) # ( !\RAM|ram~248_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~208_q\)) # 
-- (\ROM|memROM~18_combout\ & ((\RAM|ram~216_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~208_q\,
	datab => \RAM|ALT_INV_ram~240_q\,
	datac => \RAM|ALT_INV_ram~216_q\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \RAM|ALT_INV_ram~248_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~688_combout\);

-- Location: LABCELL_X74_Y10_N6
\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & (!\ROM|memROM~17_combout\ & (!\ROM|memROM~21_combout\ & \ROM|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~560_combout\);

-- Location: LABCELL_X75_Y9_N48
\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( \RAM|ram~560_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~560_combout\,
	combout => \RAM|ram~561_combout\);

-- Location: FF_X75_Y9_N55
\RAM|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~176_q\);

-- Location: LABCELL_X73_Y10_N3
\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~17_combout\ & (!\ROM|memROM~21_combout\ & (\ROM|memROM~23_combout\ & !\ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~552_combout\);

-- Location: LABCELL_X73_Y10_N42
\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~552_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~1_combout\,
	datac => \RAM|ALT_INV_ram~552_combout\,
	combout => \RAM|ram~553_combout\);

-- Location: FF_X73_Y10_N55
\RAM|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~144_q\);

-- Location: LABCELL_X80_Y6_N36
\RAM|ram~152feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~152feeder_combout\ = ( \CPU|ACU|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(1),
	combout => \RAM|ram~152feeder_combout\);

-- Location: LABCELL_X80_Y8_N48
\RAM|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~584_combout\ = ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~18_combout\ & ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~23_combout\ & (!\ROM|memROM~21_combout\ & !\ROM|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~584_combout\);

-- Location: LABCELL_X81_Y7_N30
\RAM|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~585_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~584_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~584_combout\,
	combout => \RAM|ram~585_combout\);

-- Location: FF_X80_Y6_N37
\RAM|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~152feeder_combout\,
	ena => \RAM|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~152_q\);

-- Location: LABCELL_X75_Y6_N21
\RAM|ram~184feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~184feeder_combout\ = ( \CPU|ACU|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(1),
	combout => \RAM|ram~184feeder_combout\);

-- Location: LABCELL_X77_Y8_N6
\RAM|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~592_combout\ = ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~18_combout\ & ( (\ROM|memROM~2_combout\ & (!\ROM|memROM~17_combout\ & (\ROM|memROM~23_combout\ & !\ROM|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~592_combout\);

-- Location: LABCELL_X71_Y8_N24
\RAM|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~593_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~592_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~592_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~593_combout\);

-- Location: FF_X75_Y6_N23
\RAM|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~184feeder_combout\,
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~184_q\);

-- Location: LABCELL_X74_Y6_N36
\RAM|ram~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~686_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~184_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~176_q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~152_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~144_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~176_q\,
	datab => \RAM|ALT_INV_ram~144_q\,
	datac => \RAM|ALT_INV_ram~152_q\,
	datad => \RAM|ALT_INV_ram~184_q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~686_combout\);

-- Location: LABCELL_X74_Y5_N3
\RAM|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~664_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~23_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~22_combout\ & (\ROM|memROM~17_combout\ & \ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~664_combout\);

-- Location: LABCELL_X74_Y5_N45
\RAM|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~665_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~664_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~664_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~665_combout\);

-- Location: FF_X77_Y8_N34
\RAM|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~232_q\);

-- Location: LABCELL_X80_Y8_N27
\RAM|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~672_combout\ = ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~21_combout\ & (\ROM|memROM~17_combout\ & (\ROM|memROM~18_combout\ & \ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~21_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~672_combout\);

-- Location: LABCELL_X81_Y8_N39
\RAM|ram~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~673_combout\ = ( \RAM|ram~672_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~672_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~673_combout\);

-- Location: FF_X77_Y9_N8
\RAM|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~264_q\);

-- Location: LABCELL_X73_Y6_N12
\RAM|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~632_combout\ = ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~2_combout\ & ( (\ROM|memROM~23_combout\ & (\ROM|memROM~17_combout\ & (!\ROM|memROM~22_combout\ & !\ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~632_combout\);

-- Location: LABCELL_X75_Y7_N21
\RAM|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~633_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~632_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~632_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~633_combout\);

-- Location: FF_X79_Y9_N37
\RAM|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~224_q\);

-- Location: MLABCELL_X72_Y6_N21
\RAM|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~640_combout\ = ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~22_combout\ & ( (\ROM|memROM~23_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~18_combout\ & \ROM|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~640_combout\);

-- Location: MLABCELL_X72_Y6_N33
\RAM|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~641_combout\ = ( \RAM|ram~640_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~640_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~641_combout\);

-- Location: FF_X77_Y9_N59
\RAM|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~256_q\);

-- Location: LABCELL_X77_Y9_N54
\RAM|ram~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~689_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~264_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~256_q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~232_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~224_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~232_q\,
	datab => \RAM|ALT_INV_ram~264_q\,
	datac => \RAM|ALT_INV_ram~224_q\,
	datad => \RAM|ALT_INV_ram~256_q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~689_combout\);

-- Location: LABCELL_X73_Y10_N51
\RAM|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~668_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~21_combout\ & ( (!\ROM|memROM~22_combout\ & (!\ROM|memROM~17_combout\ & (\ROM|memROM~2_combout\ & \ROM|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~668_combout\);

-- Location: LABCELL_X73_Y10_N39
\RAM|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~669_combout\ = ( \RAM|ram~668_combout\ & ( \RAM|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~668_combout\,
	combout => \RAM|ram~669_combout\);

-- Location: FF_X72_Y9_N2
\RAM|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~200_q\);

-- Location: LABCELL_X73_Y10_N27
\RAM|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~616_combout\ = ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~23_combout\ & ( (!\ROM|memROM~22_combout\ & (!\ROM|memROM~17_combout\ & (!\ROM|memROM~2_combout\ & \ROM|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~616_combout\);

-- Location: LABCELL_X73_Y10_N36
\RAM|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~617_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~616_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~1_combout\,
	datac => \RAM|ALT_INV_ram~616_combout\,
	combout => \RAM|ram~617_combout\);

-- Location: FF_X73_Y11_N13
\RAM|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~160_q\);

-- Location: LABCELL_X74_Y5_N12
\RAM|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~660_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~18_combout\ & (!\ROM|memROM~22_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~660_combout\);

-- Location: LABCELL_X74_Y5_N6
\RAM|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~661_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~660_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~660_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~661_combout\);

-- Location: FF_X77_Y8_N5
\RAM|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~168_q\);

-- Location: LABCELL_X75_Y9_N12
\RAM|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~624_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~2_combout\ & (!\ROM|memROM~18_combout\ & (!\ROM|memROM~17_combout\ & !\ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~624_combout\);

-- Location: LABCELL_X75_Y9_N6
\RAM|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~625_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~624_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~1_combout\,
	dataf => \RAM|ALT_INV_ram~624_combout\,
	combout => \RAM|ram~625_combout\);

-- Location: FF_X80_Y9_N53
\RAM|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~192_q\);

-- Location: MLABCELL_X72_Y9_N3
\RAM|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~687_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~200_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~192_q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~168_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~160_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~200_q\,
	datab => \RAM|ALT_INV_ram~160_q\,
	datac => \RAM|ALT_INV_ram~168_q\,
	datad => \RAM|ALT_INV_ram~192_q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~687_combout\);

-- Location: MLABCELL_X78_Y6_N42
\RAM|ram~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~690_combout\ = ( \RAM|ram~689_combout\ & ( \RAM|ram~687_combout\ & ( ((!\ROM|memROM~17_combout\ & ((\RAM|ram~686_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~688_combout\))) # (\ROM|memROM~21_combout\) ) ) ) # ( !\RAM|ram~689_combout\ & ( 
-- \RAM|ram~687_combout\ & ( (!\ROM|memROM~17_combout\ & (((\RAM|ram~686_combout\) # (\ROM|memROM~21_combout\)))) # (\ROM|memROM~17_combout\ & (\RAM|ram~688_combout\ & (!\ROM|memROM~21_combout\))) ) ) ) # ( \RAM|ram~689_combout\ & ( !\RAM|ram~687_combout\ & 
-- ( (!\ROM|memROM~17_combout\ & (((!\ROM|memROM~21_combout\ & \RAM|ram~686_combout\)))) # (\ROM|memROM~17_combout\ & (((\ROM|memROM~21_combout\)) # (\RAM|ram~688_combout\))) ) ) ) # ( !\RAM|ram~689_combout\ & ( !\RAM|ram~687_combout\ & ( 
-- (!\ROM|memROM~21_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~686_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~688_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \RAM|ALT_INV_ram~688_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \RAM|ALT_INV_ram~686_combout\,
	datae => \RAM|ALT_INV_ram~689_combout\,
	dataf => \RAM|ALT_INV_ram~687_combout\,
	combout => \RAM|ram~690_combout\);

-- Location: MLABCELL_X78_Y6_N24
\RAM|ram~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~696_combout\ = ( \RAM|ram~680_combout\ & ( \RAM|ram~690_combout\ & ( (!\ROM|memROM~22_combout\) # ((!\ROM|memROM~23_combout\ & (\RAM|ram~685_combout\)) # (\ROM|memROM~23_combout\ & ((\RAM|ram~695_combout\)))) ) ) ) # ( !\RAM|ram~680_combout\ & ( 
-- \RAM|ram~690_combout\ & ( (!\ROM|memROM~22_combout\ & (\ROM|memROM~23_combout\)) # (\ROM|memROM~22_combout\ & ((!\ROM|memROM~23_combout\ & (\RAM|ram~685_combout\)) # (\ROM|memROM~23_combout\ & ((\RAM|ram~695_combout\))))) ) ) ) # ( \RAM|ram~680_combout\ & 
-- ( !\RAM|ram~690_combout\ & ( (!\ROM|memROM~22_combout\ & (!\ROM|memROM~23_combout\)) # (\ROM|memROM~22_combout\ & ((!\ROM|memROM~23_combout\ & (\RAM|ram~685_combout\)) # (\ROM|memROM~23_combout\ & ((\RAM|ram~695_combout\))))) ) ) ) # ( 
-- !\RAM|ram~680_combout\ & ( !\RAM|ram~690_combout\ & ( (\ROM|memROM~22_combout\ & ((!\ROM|memROM~23_combout\ & (\RAM|ram~685_combout\)) # (\ROM|memROM~23_combout\ & ((\RAM|ram~695_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \RAM|ALT_INV_ram~685_combout\,
	datad => \RAM|ALT_INV_ram~695_combout\,
	datae => \RAM|ALT_INV_ram~680_combout\,
	dataf => \RAM|ALT_INV_ram~690_combout\,
	combout => \RAM|ram~696_combout\);

-- Location: MLABCELL_X78_Y6_N54
\CPU|MUX|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX|saida_MUX[1]~0_combout\ = ( \comb~14_combout\ & ( \RAM|ram~696_combout\ & ( (!\CPU|DEC|saidaDecoder[3]~6_combout\ & (\SW[1]~input_o\)) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & ((\ROM|memROM~21_combout\))) ) ) ) # ( !\comb~14_combout\ & ( 
-- \RAM|ram~696_combout\ & ( (!\CPU|DEC|saidaDecoder[3]~6_combout\) # (\ROM|memROM~21_combout\) ) ) ) # ( \comb~14_combout\ & ( !\RAM|ram~696_combout\ & ( (!\CPU|DEC|saidaDecoder[3]~6_combout\ & (\SW[1]~input_o\)) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & 
-- ((\ROM|memROM~21_combout\))) ) ) ) # ( !\comb~14_combout\ & ( !\RAM|ram~696_combout\ & ( (\CPU|DEC|saidaDecoder[3]~6_combout\ & \ROM|memROM~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100000101111111110000111111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \CPU|DEC|ALT_INV_saidaDecoder[3]~6_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ALT_INV_comb~14_combout\,
	dataf => \RAM|ALT_INV_ram~696_combout\,
	combout => \CPU|MUX|saida_MUX[1]~0_combout\);

-- Location: MLABCELL_X78_Y7_N6
\CPU|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_sumout\ = SUM(( \CPU|ACU|DOUT\(2) ) + ( \CPU|MUX|saida_MUX[2]~1_combout\ ) + ( \CPU|ULA|Add0~6\ ))
-- \CPU|ULA|Add0~10\ = CARRY(( \CPU|ACU|DOUT\(2) ) + ( \CPU|MUX|saida_MUX[2]~1_combout\ ) + ( \CPU|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX|ALT_INV_saida_MUX[2]~1_combout\,
	datad => \CPU|ACU|ALT_INV_DOUT\(2),
	cin => \CPU|ULA|Add0~6\,
	sumout => \CPU|ULA|Add0~9_sumout\,
	cout => \CPU|ULA|Add0~10\);

-- Location: MLABCELL_X78_Y7_N39
\CPU|ULA|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~25_sumout\ = SUM(( !\CPU|MUX|saida_MUX[2]~1_combout\ ) + ( \CPU|ACU|DOUT\(2) ) + ( \CPU|ULA|Add1~22\ ))
-- \CPU|ULA|Add1~26\ = CARRY(( !\CPU|MUX|saida_MUX[2]~1_combout\ ) + ( \CPU|ACU|DOUT\(2) ) + ( \CPU|ULA|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|ALT_INV_DOUT\(2),
	datad => \CPU|MUX|ALT_INV_saida_MUX[2]~1_combout\,
	cin => \CPU|ULA|Add1~22\,
	sumout => \CPU|ULA|Add1~25_sumout\,
	cout => \CPU|ULA|Add1~26\);

-- Location: MLABCELL_X78_Y7_N24
\CPU|ULA|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[2]~2_combout\ = ( \CPU|ULA|Add1~25_sumout\ & ( (\CPU|MUX|saida_MUX[2]~1_combout\) # (\CPU|ULA|Equal0~0_combout\) ) ) # ( !\CPU|ULA|Add1~25_sumout\ & ( (!\CPU|ULA|Equal0~0_combout\ & \CPU|MUX|saida_MUX[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	datac => \CPU|MUX|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \CPU|ULA|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA|saida[2]~2_combout\);

-- Location: FF_X78_Y7_N8
\CPU|ACU|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~9_sumout\,
	asdata => \CPU|ULA|saida[2]~2_combout\,
	sload => \CPU|ULA|Equal1~0_combout\,
	ena => \CPU|DEC|saidaDecoder[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(2));

-- Location: FF_X78_Y9_N56
\RAM|ram~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~433_q\);

-- Location: FF_X75_Y9_N8
\RAM|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~193_q\);

-- Location: FF_X75_Y9_N59
\RAM|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~177_q\);

-- Location: FF_X75_Y9_N2
\RAM|ram~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~449_q\);

-- Location: LABCELL_X75_Y9_N3
\RAM|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~703_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~449_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~433_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~22_combout\ & ( 
-- \RAM|ram~193_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~177_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~433_q\,
	datab => \RAM|ALT_INV_ram~193_q\,
	datac => \RAM|ALT_INV_ram~177_q\,
	datad => \RAM|ALT_INV_ram~449_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~703_combout\);

-- Location: FF_X72_Y8_N25
\RAM|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~513_q\);

-- Location: FF_X72_Y9_N49
\RAM|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~497_q\);

-- Location: FF_X71_Y9_N26
\RAM|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~241_q\);

-- Location: FF_X73_Y8_N37
\RAM|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~257_q\);

-- Location: LABCELL_X75_Y6_N24
\RAM|ram~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~705_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~513_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~497_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~22_combout\ & ( 
-- \RAM|ram~257_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~241_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~513_q\,
	datab => \RAM|ALT_INV_ram~497_q\,
	datac => \RAM|ALT_INV_ram~241_q\,
	datad => \RAM|ALT_INV_ram~257_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~705_combout\);

-- Location: FF_X71_Y6_N16
\RAM|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~369_q\);

-- Location: FF_X72_Y8_N11
\RAM|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~385_q\);

-- Location: FF_X72_Y8_N46
\RAM|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~129_q\);

-- Location: FF_X70_Y7_N25
\RAM|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~113_q\);

-- Location: MLABCELL_X72_Y7_N45
\RAM|ram~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~704_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~385_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~369_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~22_combout\ & ( 
-- \RAM|ram~129_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~113_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~369_q\,
	datab => \RAM|ALT_INV_ram~385_q\,
	datac => \RAM|ALT_INV_ram~129_q\,
	datad => \RAM|ALT_INV_ram~113_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~704_combout\);

-- Location: FF_X71_Y7_N50
\RAM|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~305_q\);

-- Location: FF_X72_Y11_N55
\RAM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~65_q\);

-- Location: LABCELL_X75_Y10_N3
\RAM|ram~49feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~49feeder_combout\ = ( \CPU|ACU|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(2),
	combout => \RAM|ram~49feeder_combout\);

-- Location: FF_X75_Y10_N4
\RAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~49feeder_combout\,
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~49_q\);

-- Location: FF_X71_Y7_N44
\RAM|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~321_q\);

-- Location: LABCELL_X71_Y7_N42
\RAM|ram~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~702_combout\ = ( \RAM|ram~321_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~21_combout\) # (\RAM|ram~305_q\) ) ) ) # ( !\RAM|ram~321_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM|ram~305_q\ & !\ROM|memROM~21_combout\) ) ) ) # ( \RAM|ram~321_q\ & ( 
-- !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~21_combout\ & ((\RAM|ram~49_q\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~65_q\)) ) ) ) # ( !\RAM|ram~321_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~21_combout\ & ((\RAM|ram~49_q\))) # 
-- (\ROM|memROM~21_combout\ & (\RAM|ram~65_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~305_q\,
	datab => \RAM|ALT_INV_ram~65_q\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \RAM|ALT_INV_ram~49_q\,
	datae => \RAM|ALT_INV_ram~321_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~702_combout\);

-- Location: LABCELL_X75_Y7_N6
\RAM|ram~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~706_combout\ = ( \RAM|ram~704_combout\ & ( \RAM|ram~702_combout\ & ( (!\ROM|memROM~23_combout\) # ((!\ROM|memROM~17_combout\ & (\RAM|ram~703_combout\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~705_combout\)))) ) ) ) # ( !\RAM|ram~704_combout\ & ( 
-- \RAM|ram~702_combout\ & ( (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~23_combout\) # ((\RAM|ram~703_combout\)))) # (\ROM|memROM~17_combout\ & (\ROM|memROM~23_combout\ & ((\RAM|ram~705_combout\)))) ) ) ) # ( \RAM|ram~704_combout\ & ( !\RAM|ram~702_combout\ 
-- & ( (!\ROM|memROM~17_combout\ & (\ROM|memROM~23_combout\ & (\RAM|ram~703_combout\))) # (\ROM|memROM~17_combout\ & ((!\ROM|memROM~23_combout\) # ((\RAM|ram~705_combout\)))) ) ) ) # ( !\RAM|ram~704_combout\ & ( !\RAM|ram~702_combout\ & ( 
-- (\ROM|memROM~23_combout\ & ((!\ROM|memROM~17_combout\ & (\RAM|ram~703_combout\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~705_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \RAM|ALT_INV_ram~703_combout\,
	datad => \RAM|ALT_INV_ram~705_combout\,
	datae => \RAM|ALT_INV_ram~704_combout\,
	dataf => \RAM|ALT_INV_ram~702_combout\,
	combout => \RAM|ram~706_combout\);

-- Location: FF_X74_Y10_N37
\RAM|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~329_q\);

-- Location: FF_X74_Y10_N28
\RAM|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~313_q\);

-- Location: FF_X78_Y10_N52
\RAM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~73_q\);

-- Location: FF_X75_Y10_N26
\RAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~57_q\);

-- Location: LABCELL_X75_Y10_N24
\RAM|ram~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~712_combout\ = ( \RAM|ram~57_q\ & ( \ROM|memROM~21_combout\ & ( (!\ROM|memROM~22_combout\ & ((\RAM|ram~73_q\))) # (\ROM|memROM~22_combout\ & (\RAM|ram~329_q\)) ) ) ) # ( !\RAM|ram~57_q\ & ( \ROM|memROM~21_combout\ & ( (!\ROM|memROM~22_combout\ & 
-- ((\RAM|ram~73_q\))) # (\ROM|memROM~22_combout\ & (\RAM|ram~329_q\)) ) ) ) # ( \RAM|ram~57_q\ & ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~22_combout\) # (\RAM|ram~313_q\) ) ) ) # ( !\RAM|ram~57_q\ & ( !\ROM|memROM~21_combout\ & ( (\RAM|ram~313_q\ & 
-- \ROM|memROM~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~329_q\,
	datab => \RAM|ALT_INV_ram~313_q\,
	datac => \RAM|ALT_INV_ram~73_q\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \RAM|ALT_INV_ram~57_q\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~712_combout\);

-- Location: FF_X75_Y6_N40
\RAM|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~249_q\);

-- Location: FF_X77_Y9_N41
\RAM|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~265_q\);

-- Location: FF_X72_Y6_N52
\RAM|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~505_q\);

-- Location: FF_X71_Y8_N2
\RAM|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~521_q\);

-- Location: LABCELL_X71_Y8_N0
\RAM|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~715_combout\ = ( \RAM|ram~521_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM|ram~505_q\) # (\ROM|memROM~21_combout\) ) ) ) # ( !\RAM|ram~521_q\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~21_combout\ & \RAM|ram~505_q\) ) ) ) # ( \RAM|ram~521_q\ & ( 
-- !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~249_q\)) # (\ROM|memROM~21_combout\ & ((\RAM|ram~265_q\))) ) ) ) # ( !\RAM|ram~521_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~249_q\)) # 
-- (\ROM|memROM~21_combout\ & ((\RAM|ram~265_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~249_q\,
	datab => \RAM|ALT_INV_ram~265_q\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \RAM|ALT_INV_ram~505_q\,
	datae => \RAM|ALT_INV_ram~521_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~715_combout\);

-- Location: FF_X77_Y6_N29
\RAM|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~137_q\);

-- Location: FF_X72_Y6_N58
\RAM|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~377_q\);

-- Location: FF_X73_Y6_N20
\RAM|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~393_q\);

-- Location: FF_X75_Y6_N59
\RAM|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~121_q\);

-- Location: LABCELL_X75_Y6_N57
\RAM|ram~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~713_combout\ = ( \RAM|ram~121_q\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~377_q\)) # (\ROM|memROM~21_combout\ & ((\RAM|ram~393_q\))) ) ) ) # ( !\RAM|ram~121_q\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~21_combout\ 
-- & (\RAM|ram~377_q\)) # (\ROM|memROM~21_combout\ & ((\RAM|ram~393_q\))) ) ) ) # ( \RAM|ram~121_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~21_combout\) # (\RAM|ram~137_q\) ) ) ) # ( !\RAM|ram~121_q\ & ( !\ROM|memROM~22_combout\ & ( (\RAM|ram~137_q\ & 
-- \ROM|memROM~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~137_q\,
	datab => \RAM|ALT_INV_ram~377_q\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \RAM|ALT_INV_ram~393_q\,
	datae => \RAM|ALT_INV_ram~121_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~713_combout\);

-- Location: FF_X73_Y8_N29
\RAM|ram~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~441_q\);

-- Location: FF_X71_Y8_N25
\RAM|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~185_q\);

-- Location: FF_X72_Y9_N58
\RAM|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~201_q\);

-- Location: FF_X71_Y8_N8
\RAM|ram~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~457_q\);

-- Location: LABCELL_X71_Y8_N6
\RAM|ram~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~714_combout\ = ( \RAM|ram~457_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~21_combout\) # (\RAM|ram~441_q\) ) ) ) # ( !\RAM|ram~457_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM|ram~441_q\ & !\ROM|memROM~21_combout\) ) ) ) # ( \RAM|ram~457_q\ & ( 
-- !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~185_q\)) # (\ROM|memROM~21_combout\ & ((\RAM|ram~201_q\))) ) ) ) # ( !\RAM|ram~457_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~185_q\)) # 
-- (\ROM|memROM~21_combout\ & ((\RAM|ram~201_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~441_q\,
	datab => \RAM|ALT_INV_ram~185_q\,
	datac => \RAM|ALT_INV_ram~201_q\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \RAM|ALT_INV_ram~457_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~714_combout\);

-- Location: LABCELL_X75_Y7_N0
\RAM|ram~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~716_combout\ = ( \RAM|ram~713_combout\ & ( \RAM|ram~714_combout\ & ( (!\ROM|memROM~17_combout\ & (((\RAM|ram~712_combout\)) # (\ROM|memROM~23_combout\))) # (\ROM|memROM~17_combout\ & ((!\ROM|memROM~23_combout\) # ((\RAM|ram~715_combout\)))) ) ) ) 
-- # ( !\RAM|ram~713_combout\ & ( \RAM|ram~714_combout\ & ( (!\ROM|memROM~17_combout\ & (((\RAM|ram~712_combout\)) # (\ROM|memROM~23_combout\))) # (\ROM|memROM~17_combout\ & (\ROM|memROM~23_combout\ & ((\RAM|ram~715_combout\)))) ) ) ) # ( 
-- \RAM|ram~713_combout\ & ( !\RAM|ram~714_combout\ & ( (!\ROM|memROM~17_combout\ & (!\ROM|memROM~23_combout\ & (\RAM|ram~712_combout\))) # (\ROM|memROM~17_combout\ & ((!\ROM|memROM~23_combout\) # ((\RAM|ram~715_combout\)))) ) ) ) # ( !\RAM|ram~713_combout\ 
-- & ( !\RAM|ram~714_combout\ & ( (!\ROM|memROM~17_combout\ & (!\ROM|memROM~23_combout\ & (\RAM|ram~712_combout\))) # (\ROM|memROM~17_combout\ & (\ROM|memROM~23_combout\ & ((\RAM|ram~715_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \RAM|ALT_INV_ram~712_combout\,
	datad => \RAM|ALT_INV_ram~715_combout\,
	datae => \RAM|ALT_INV_ram~713_combout\,
	dataf => \RAM|ALT_INV_ram~714_combout\,
	combout => \RAM|ram~716_combout\);

-- Location: FF_X74_Y5_N26
\RAM|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~169_q\);

-- Location: FF_X74_Y7_N28
\RAM|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~297_q\);

-- Location: FF_X77_Y10_N53
\RAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~41_q\);

-- Location: FF_X74_Y9_N14
\RAM|ram~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~425_q\);

-- Location: LABCELL_X74_Y9_N12
\RAM|ram~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~708_combout\ = ( \RAM|ram~425_q\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM|ram~169_q\) ) ) ) # ( !\RAM|ram~425_q\ & ( \ROM|memROM~23_combout\ & ( (\RAM|ram~169_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( \RAM|ram~425_q\ & ( 
-- !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~22_combout\ & ((\RAM|ram~41_q\))) # (\ROM|memROM~22_combout\ & (\RAM|ram~297_q\)) ) ) ) # ( !\RAM|ram~425_q\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~22_combout\ & ((\RAM|ram~41_q\))) # 
-- (\ROM|memROM~22_combout\ & (\RAM|ram~297_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~169_q\,
	datab => \RAM|ALT_INV_ram~297_q\,
	datac => \RAM|ALT_INV_ram~41_q\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \RAM|ALT_INV_ram~425_q\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~708_combout\);

-- Location: FF_X80_Y6_N10
\RAM|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~153_q\);

-- Location: LABCELL_X75_Y5_N42
\RAM|ram~281feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~281feeder_combout\ = ( \CPU|ACU|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(2),
	combout => \RAM|ram~281feeder_combout\);

-- Location: FF_X75_Y5_N43
\RAM|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~281feeder_combout\,
	ena => \RAM|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~281_q\);

-- Location: FF_X75_Y10_N58
\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

-- Location: FF_X74_Y9_N20
\RAM|ram~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~409_q\);

-- Location: LABCELL_X74_Y9_N18
\RAM|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~707_combout\ = ( \RAM|ram~409_q\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM|ram~153_q\) ) ) ) # ( !\RAM|ram~409_q\ & ( \ROM|memROM~23_combout\ & ( (\RAM|ram~153_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( \RAM|ram~409_q\ & ( 
-- !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~22_combout\ & ((\RAM|ram~25_q\))) # (\ROM|memROM~22_combout\ & (\RAM|ram~281_q\)) ) ) ) # ( !\RAM|ram~409_q\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~22_combout\ & ((\RAM|ram~25_q\))) # 
-- (\ROM|memROM~22_combout\ & (\RAM|ram~281_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~153_q\,
	datab => \RAM|ALT_INV_ram~281_q\,
	datac => \RAM|ALT_INV_ram~25_q\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \RAM|ALT_INV_ram~409_q\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~707_combout\);

-- Location: FF_X73_Y9_N16
\RAM|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~89_q\);

-- Location: FF_X73_Y9_N4
\RAM|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~473_q\);

-- Location: FF_X78_Y8_N59
\RAM|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~217_q\);

-- Location: FF_X73_Y9_N10
\RAM|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~345_q\);

-- Location: LABCELL_X74_Y9_N24
\RAM|ram~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~709_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~473_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~217_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~345_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~89_q\,
	datab => \RAM|ALT_INV_ram~473_q\,
	datac => \RAM|ALT_INV_ram~217_q\,
	datad => \RAM|ALT_INV_ram~345_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~709_combout\);

-- Location: FF_X78_Y6_N16
\RAM|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~105_q\);

-- Location: FF_X74_Y5_N47
\RAM|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~233_q\);

-- Location: FF_X75_Y5_N17
\RAM|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~361_q\);

-- Location: FF_X74_Y5_N20
\RAM|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~489_q\);

-- Location: LABCELL_X74_Y5_N18
\RAM|ram~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~710_combout\ = ( \RAM|ram~489_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~23_combout\) # (\RAM|ram~361_q\) ) ) ) # ( !\RAM|ram~489_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM|ram~361_q\ & !\ROM|memROM~23_combout\) ) ) ) # ( \RAM|ram~489_q\ & ( 
-- !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~23_combout\ & (\RAM|ram~105_q\)) # (\ROM|memROM~23_combout\ & ((\RAM|ram~233_q\))) ) ) ) # ( !\RAM|ram~489_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~23_combout\ & (\RAM|ram~105_q\)) # 
-- (\ROM|memROM~23_combout\ & ((\RAM|ram~233_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~105_q\,
	datab => \RAM|ALT_INV_ram~233_q\,
	datac => \RAM|ALT_INV_ram~361_q\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	datae => \RAM|ALT_INV_ram~489_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~710_combout\);

-- Location: LABCELL_X75_Y7_N36
\RAM|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~711_combout\ = ( \RAM|ram~709_combout\ & ( \RAM|ram~710_combout\ & ( ((!\ROM|memROM~21_combout\ & ((\RAM|ram~707_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~708_combout\))) # (\ROM|memROM~17_combout\) ) ) ) # ( !\RAM|ram~709_combout\ & ( 
-- \RAM|ram~710_combout\ & ( (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~21_combout\ & ((\RAM|ram~707_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~708_combout\)))) # (\ROM|memROM~17_combout\ & (\ROM|memROM~21_combout\)) ) ) ) # ( \RAM|ram~709_combout\ & 
-- ( !\RAM|ram~710_combout\ & ( (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~21_combout\ & ((\RAM|ram~707_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~708_combout\)))) # (\ROM|memROM~17_combout\ & (!\ROM|memROM~21_combout\)) ) ) ) # ( 
-- !\RAM|ram~709_combout\ & ( !\RAM|ram~710_combout\ & ( (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~21_combout\ & ((\RAM|ram~707_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~708_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \RAM|ALT_INV_ram~708_combout\,
	datad => \RAM|ALT_INV_ram~707_combout\,
	datae => \RAM|ALT_INV_ram~709_combout\,
	dataf => \RAM|ALT_INV_ram~710_combout\,
	combout => \RAM|ram~711_combout\);

-- Location: FF_X78_Y8_N52
\RAM|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~209_q\);

-- Location: FF_X75_Y7_N11
\RAM|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~225_q\);

-- Location: FF_X73_Y5_N44
\RAM|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~465_q\);

-- Location: FF_X75_Y7_N59
\RAM|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~481_q\);

-- Location: LABCELL_X75_Y7_N57
\RAM|ram~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~700_combout\ = ( \RAM|ram~481_q\ & ( \ROM|memROM~21_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM|ram~225_q\) ) ) ) # ( !\RAM|ram~481_q\ & ( \ROM|memROM~21_combout\ & ( (\RAM|ram~225_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( \RAM|ram~481_q\ & ( 
-- !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~22_combout\ & (\RAM|ram~209_q\)) # (\ROM|memROM~22_combout\ & ((\RAM|ram~465_q\))) ) ) ) # ( !\RAM|ram~481_q\ & ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~22_combout\ & (\RAM|ram~209_q\)) # 
-- (\ROM|memROM~22_combout\ & ((\RAM|ram~465_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~209_q\,
	datab => \RAM|ALT_INV_ram~225_q\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \RAM|ALT_INV_ram~465_q\,
	datae => \RAM|ALT_INV_ram~481_q\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~700_combout\);

-- Location: FF_X73_Y11_N40
\RAM|ram~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~417_q\);

-- Location: FF_X73_Y10_N20
\RAM|ram~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~401_q\);

-- Location: FF_X73_Y10_N46
\RAM|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~145_q\);

-- Location: FF_X75_Y11_N44
\RAM|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~161_q\);

-- Location: LABCELL_X74_Y11_N24
\RAM|ram~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~698_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~417_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~401_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~22_combout\ & ( 
-- \RAM|ram~161_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~145_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~417_q\,
	datab => \RAM|ALT_INV_ram~401_q\,
	datac => \RAM|ALT_INV_ram~145_q\,
	datad => \RAM|ALT_INV_ram~161_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~698_combout\);

-- Location: FF_X75_Y5_N22
\RAM|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~353_q\);

-- Location: FF_X73_Y5_N49
\RAM|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~337_q\);

-- Location: LABCELL_X77_Y5_N36
\RAM|ram~81feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~81feeder_combout\ = ( \CPU|ACU|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(2),
	combout => \RAM|ram~81feeder_combout\);

-- Location: FF_X77_Y5_N38
\RAM|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~81feeder_combout\,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~81_q\);

-- Location: LABCELL_X77_Y5_N45
\RAM|ram~97feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~97feeder_combout\ = ( \CPU|ACU|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(2),
	combout => \RAM|ram~97feeder_combout\);

-- Location: FF_X77_Y5_N47
\RAM|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~97feeder_combout\,
	ena => \RAM|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~97_q\);

-- Location: LABCELL_X74_Y5_N51
\RAM|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~699_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~353_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~337_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~22_combout\ & ( 
-- \RAM|ram~97_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~353_q\,
	datab => \RAM|ALT_INV_ram~337_q\,
	datac => \RAM|ALT_INV_ram~81_q\,
	datad => \RAM|ALT_INV_ram~97_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~699_combout\);

-- Location: FF_X73_Y11_N1
\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

-- Location: FF_X74_Y11_N59
\RAM|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~273_q\);

-- Location: FF_X74_Y10_N56
\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: FF_X74_Y11_N5
\RAM|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~289_q\);

-- Location: LABCELL_X74_Y11_N3
\RAM|ram~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~697_combout\ = ( \RAM|ram~289_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~21_combout\) # (\RAM|ram~273_q\) ) ) ) # ( !\RAM|ram~289_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM|ram~273_q\ & !\ROM|memROM~21_combout\) ) ) ) # ( \RAM|ram~289_q\ & ( 
-- !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~21_combout\ & ((\RAM|ram~17_q\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~33_q\)) ) ) ) # ( !\RAM|ram~289_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~21_combout\ & ((\RAM|ram~17_q\))) # 
-- (\ROM|memROM~21_combout\ & (\RAM|ram~33_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~33_q\,
	datab => \RAM|ALT_INV_ram~273_q\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \RAM|ALT_INV_ram~17_q\,
	datae => \RAM|ALT_INV_ram~289_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~697_combout\);

-- Location: LABCELL_X75_Y7_N51
\RAM|ram~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~701_combout\ = ( \RAM|ram~699_combout\ & ( \RAM|ram~697_combout\ & ( (!\ROM|memROM~23_combout\) # ((!\ROM|memROM~17_combout\ & ((\RAM|ram~698_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~700_combout\))) ) ) ) # ( !\RAM|ram~699_combout\ & ( 
-- \RAM|ram~697_combout\ & ( (!\ROM|memROM~23_combout\ & (((!\ROM|memROM~17_combout\)))) # (\ROM|memROM~23_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~698_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~700_combout\)))) ) ) ) # ( 
-- \RAM|ram~699_combout\ & ( !\RAM|ram~697_combout\ & ( (!\ROM|memROM~23_combout\ & (((\ROM|memROM~17_combout\)))) # (\ROM|memROM~23_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~698_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~700_combout\)))) ) 
-- ) ) # ( !\RAM|ram~699_combout\ & ( !\RAM|ram~697_combout\ & ( (\ROM|memROM~23_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~698_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~700_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \RAM|ALT_INV_ram~700_combout\,
	datac => \RAM|ALT_INV_ram~698_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \RAM|ALT_INV_ram~699_combout\,
	dataf => \RAM|ALT_INV_ram~697_combout\,
	combout => \RAM|ram~701_combout\);

-- Location: LABCELL_X75_Y7_N15
\RAM|ram~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~717_combout\ = ( \RAM|ram~711_combout\ & ( \RAM|ram~701_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\ROM|memROM~18_combout\ & (\RAM|ram~706_combout\)) # (\ROM|memROM~18_combout\ & ((\RAM|ram~716_combout\)))) ) ) ) # ( !\RAM|ram~711_combout\ & ( 
-- \RAM|ram~701_combout\ & ( (!\ROM|memROM~18_combout\ & ((!\ROM|memROM~2_combout\) # ((\RAM|ram~706_combout\)))) # (\ROM|memROM~18_combout\ & (\ROM|memROM~2_combout\ & ((\RAM|ram~716_combout\)))) ) ) ) # ( \RAM|ram~711_combout\ & ( !\RAM|ram~701_combout\ & 
-- ( (!\ROM|memROM~18_combout\ & (\ROM|memROM~2_combout\ & (\RAM|ram~706_combout\))) # (\ROM|memROM~18_combout\ & ((!\ROM|memROM~2_combout\) # ((\RAM|ram~716_combout\)))) ) ) ) # ( !\RAM|ram~711_combout\ & ( !\RAM|ram~701_combout\ & ( (\ROM|memROM~2_combout\ 
-- & ((!\ROM|memROM~18_combout\ & (\RAM|ram~706_combout\)) # (\ROM|memROM~18_combout\ & ((\RAM|ram~716_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~706_combout\,
	datad => \RAM|ALT_INV_ram~716_combout\,
	datae => \RAM|ALT_INV_ram~711_combout\,
	dataf => \RAM|ALT_INV_ram~701_combout\,
	combout => \RAM|ram~717_combout\);

-- Location: LABCELL_X75_Y7_N30
\CPU|MUX|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX|saida_MUX[2]~1_combout\ = ( \CPU|DEC|saidaDecoder[3]~6_combout\ & ( \RAM|ram~717_combout\ & ( \ROM|memROM~2_combout\ ) ) ) # ( !\CPU|DEC|saidaDecoder[3]~6_combout\ & ( \RAM|ram~717_combout\ & ( (!\comb~14_combout\) # (\SW[2]~input_o\) ) ) ) # ( 
-- \CPU|DEC|saidaDecoder[3]~6_combout\ & ( !\RAM|ram~717_combout\ & ( \ROM|memROM~2_combout\ ) ) ) # ( !\CPU|DEC|saidaDecoder[3]~6_combout\ & ( !\RAM|ram~717_combout\ & ( (\SW[2]~input_o\ & \comb~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100110011001111110101111101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ALT_INV_comb~14_combout\,
	datae => \CPU|DEC|ALT_INV_saidaDecoder[3]~6_combout\,
	dataf => \RAM|ALT_INV_ram~717_combout\,
	combout => \CPU|MUX|saida_MUX[2]~1_combout\);

-- Location: MLABCELL_X78_Y7_N9
\CPU|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~13_sumout\ = SUM(( \CPU|ACU|DOUT\(3) ) + ( (!\CPU|DEC|saidaDecoder[3]~6_combout\ & (((\CPU|MUX|saida_MUX[3]~2_combout\)))) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & (!\CPU|PC|DOUT\(8) & ((\ROM|memROM~26_combout\)))) ) + ( \CPU|ULA|Add0~10\ ))
-- \CPU|ULA|Add0~14\ = CARRY(( \CPU|ACU|DOUT\(3) ) + ( (!\CPU|DEC|saidaDecoder[3]~6_combout\ & (((\CPU|MUX|saida_MUX[3]~2_combout\)))) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & (!\CPU|PC|DOUT\(8) & ((\ROM|memROM~26_combout\)))) ) + ( \CPU|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~6_combout\,
	datac => \CPU|MUX|ALT_INV_saida_MUX[3]~2_combout\,
	datad => \CPU|ACU|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	cin => \CPU|ULA|Add0~10\,
	sumout => \CPU|ULA|Add0~13_sumout\,
	cout => \CPU|ULA|Add0~14\);

-- Location: MLABCELL_X78_Y7_N42
\CPU|ULA|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~29_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder[3]~8_combout\ & ((!\CPU|DEC|Equal10~1_combout\ & ((!\CPU|MUX|saida_MUX[3]~2_combout\))) # (\CPU|DEC|Equal10~1_combout\ & (!\ROM|memROM~17_combout\)))) # (\CPU|DEC|saidaDecoder[3]~8_combout\ & 
-- (((!\ROM|memROM~17_combout\)))) ) + ( \CPU|ACU|DOUT\(3) ) + ( \CPU|ULA|Add1~26\ ))
-- \CPU|ULA|Add1~30\ = CARRY(( (!\CPU|DEC|saidaDecoder[3]~8_combout\ & ((!\CPU|DEC|Equal10~1_combout\ & ((!\CPU|MUX|saida_MUX[3]~2_combout\))) # (\CPU|DEC|Equal10~1_combout\ & (!\ROM|memROM~17_combout\)))) # (\CPU|DEC|saidaDecoder[3]~8_combout\ & 
-- (((!\ROM|memROM~17_combout\)))) ) + ( \CPU|ACU|DOUT\(3) ) + ( \CPU|ULA|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111100001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder[3]~8_combout\,
	datab => \CPU|DEC|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \CPU|MUX|ALT_INV_saida_MUX[3]~2_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	cin => \CPU|ULA|Add1~26\,
	sumout => \CPU|ULA|Add1~29_sumout\,
	cout => \CPU|ULA|Add1~30\);

-- Location: LABCELL_X79_Y7_N0
\CPU|ULA|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[3]~3_combout\ = ( \CPU|ULA|Add1~29_sumout\ & ( ((!\CPU|DEC|saidaDecoder[3]~6_combout\ & ((\CPU|MUX|saida_MUX[3]~2_combout\))) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & (\ROM|memROM~17_combout\))) # (\CPU|ULA|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA|Add1~29_sumout\ & ( (!\CPU|ULA|Equal0~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~6_combout\ & ((\CPU|MUX|saida_MUX[3]~2_combout\))) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & (\ROM|memROM~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~6_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \CPU|MUX|ALT_INV_saida_MUX[3]~2_combout\,
	dataf => \CPU|ULA|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA|saida[3]~3_combout\);

-- Location: FF_X78_Y7_N11
\CPU|ACU|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~13_sumout\,
	asdata => \CPU|ULA|saida[3]~3_combout\,
	sload => \CPU|ULA|Equal1~0_combout\,
	ena => \CPU|DEC|saidaDecoder[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(3));

-- Location: FF_X79_Y9_N35
\RAM|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~202_q\);

-- Location: FF_X77_Y10_N7
\RAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~42_q\);

-- Location: LABCELL_X80_Y9_N21
\RAM|ram~74feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~74feeder_combout\ = ( \CPU|ACU|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	combout => \RAM|ram~74feeder_combout\);

-- Location: FF_X80_Y9_N22
\RAM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~74feeder_combout\,
	ena => \RAM|ram~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~74_q\);

-- Location: FF_X78_Y9_N50
\RAM|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~170_q\);

-- Location: MLABCELL_X78_Y9_N48
\RAM|ram~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~729_combout\ = ( \RAM|ram~170_q\ & ( \ROM|memROM~23_combout\ & ( (!\ROM|memROM~2_combout\) # (\RAM|ram~202_q\) ) ) ) # ( !\RAM|ram~170_q\ & ( \ROM|memROM~23_combout\ & ( (\RAM|ram~202_q\ & \ROM|memROM~2_combout\) ) ) ) # ( \RAM|ram~170_q\ & ( 
-- !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~42_q\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~74_q\))) ) ) ) # ( !\RAM|ram~170_q\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~42_q\)) # (\ROM|memROM~2_combout\ & 
-- ((\RAM|ram~74_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~202_q\,
	datab => \RAM|ALT_INV_ram~42_q\,
	datac => \RAM|ALT_INV_ram~74_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~170_q\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~729_combout\);

-- Location: LABCELL_X75_Y11_N30
\RAM|ram~66feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~66feeder_combout\ = ( \CPU|ACU|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	combout => \RAM|ram~66feeder_combout\);

-- Location: FF_X75_Y11_N31
\RAM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~66feeder_combout\,
	ena => \RAM|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~66_q\);

-- Location: LABCELL_X75_Y11_N39
\RAM|ram~34feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~34feeder_combout\ = ( \CPU|ACU|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	combout => \RAM|ram~34feeder_combout\);

-- Location: FF_X75_Y11_N40
\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~34feeder_combout\,
	ena => \RAM|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

-- Location: FF_X73_Y11_N52
\RAM|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~162_q\);

-- Location: FF_X75_Y9_N26
\RAM|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~194_q\);

-- Location: LABCELL_X75_Y9_N24
\RAM|ram~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~728_combout\ = ( \RAM|ram~194_q\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~23_combout\) # (\RAM|ram~66_q\) ) ) ) # ( !\RAM|ram~194_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~66_q\ & !\ROM|memROM~23_combout\) ) ) ) # ( \RAM|ram~194_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~23_combout\ & (\RAM|ram~34_q\)) # (\ROM|memROM~23_combout\ & ((\RAM|ram~162_q\))) ) ) ) # ( !\RAM|ram~194_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~23_combout\ & (\RAM|ram~34_q\)) # (\ROM|memROM~23_combout\ 
-- & ((\RAM|ram~162_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~66_q\,
	datab => \RAM|ALT_INV_ram~34_q\,
	datac => \RAM|ALT_INV_ram~162_q\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	datae => \RAM|ALT_INV_ram~194_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~728_combout\);

-- Location: FF_X79_Y6_N34
\RAM|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~106_q\);

-- Location: FF_X77_Y7_N49
\RAM|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~138_q\);

-- Location: FF_X77_Y8_N16
\RAM|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~234_q\);

-- Location: FF_X77_Y9_N17
\RAM|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~266_q\);

-- Location: MLABCELL_X78_Y9_N15
\RAM|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~731_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~266_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~234_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~138_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~106_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~106_q\,
	datab => \RAM|ALT_INV_ram~138_q\,
	datac => \RAM|ALT_INV_ram~234_q\,
	datad => \RAM|ALT_INV_ram~266_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~731_combout\);

-- Location: FF_X80_Y8_N52
\RAM|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~130_q\);

-- Location: FF_X79_Y6_N41
\RAM|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~98_q\);

-- Location: LABCELL_X80_Y9_N15
\RAM|ram~258feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~258feeder_combout\ = ( \CPU|ACU|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	combout => \RAM|ram~258feeder_combout\);

-- Location: FF_X80_Y9_N16
\RAM|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~258feeder_combout\,
	ena => \RAM|ram~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~258_q\);

-- Location: FF_X79_Y9_N17
\RAM|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~226_q\);

-- Location: MLABCELL_X78_Y9_N45
\RAM|ram~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~730_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~258_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~226_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~130_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~98_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~130_q\,
	datab => \RAM|ALT_INV_ram~98_q\,
	datac => \RAM|ALT_INV_ram~258_q\,
	datad => \RAM|ALT_INV_ram~226_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~730_combout\);

-- Location: LABCELL_X77_Y9_N51
\RAM|ram~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~732_combout\ = ( \RAM|ram~731_combout\ & ( \RAM|ram~730_combout\ & ( ((!\ROM|memROM~18_combout\ & ((\RAM|ram~728_combout\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~729_combout\))) # (\ROM|memROM~17_combout\) ) ) ) # ( !\RAM|ram~731_combout\ & ( 
-- \RAM|ram~730_combout\ & ( (!\ROM|memROM~18_combout\ & (((\RAM|ram~728_combout\)) # (\ROM|memROM~17_combout\))) # (\ROM|memROM~18_combout\ & (!\ROM|memROM~17_combout\ & (\RAM|ram~729_combout\))) ) ) ) # ( \RAM|ram~731_combout\ & ( !\RAM|ram~730_combout\ & 
-- ( (!\ROM|memROM~18_combout\ & (!\ROM|memROM~17_combout\ & ((\RAM|ram~728_combout\)))) # (\ROM|memROM~18_combout\ & (((\RAM|ram~729_combout\)) # (\ROM|memROM~17_combout\))) ) ) ) # ( !\RAM|ram~731_combout\ & ( !\RAM|ram~730_combout\ & ( 
-- (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~18_combout\ & ((\RAM|ram~728_combout\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~729_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \RAM|ALT_INV_ram~729_combout\,
	datad => \RAM|ALT_INV_ram~728_combout\,
	datae => \RAM|ALT_INV_ram~731_combout\,
	dataf => \RAM|ALT_INV_ram~730_combout\,
	combout => \RAM|ram~732_combout\);

-- Location: FF_X73_Y10_N34
\RAM|ram~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~402_q\);

-- Location: FF_X75_Y5_N26
\RAM|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~282_q\);

-- Location: FF_X74_Y9_N46
\RAM|ram~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~410_q\);

-- Location: FF_X74_Y11_N10
\RAM|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~274_q\);

-- Location: LABCELL_X77_Y9_N36
\RAM|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~723_combout\ = ( \ROM|memROM~23_combout\ & ( \ROM|memROM~18_combout\ & ( \RAM|ram~410_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( \ROM|memROM~18_combout\ & ( \RAM|ram~282_q\ ) ) ) # ( \ROM|memROM~23_combout\ & ( !\ROM|memROM~18_combout\ & ( 
-- \RAM|ram~402_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( !\ROM|memROM~18_combout\ & ( \RAM|ram~274_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~402_q\,
	datab => \RAM|ALT_INV_ram~282_q\,
	datac => \RAM|ALT_INV_ram~410_q\,
	datad => \RAM|ALT_INV_ram~274_q\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~723_combout\);

-- Location: MLABCELL_X78_Y9_N6
\RAM|ram~434feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~434feeder_combout\ = ( \CPU|ACU|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	combout => \RAM|ram~434feeder_combout\);

-- Location: FF_X78_Y9_N7
\RAM|ram~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~434feeder_combout\,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~434_q\);

-- Location: FF_X74_Y10_N10
\RAM|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~314_q\);

-- Location: FF_X74_Y9_N38
\RAM|ram~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~442_q\);

-- Location: FF_X71_Y7_N55
\RAM|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~306_q\);

-- Location: LABCELL_X74_Y9_N54
\RAM|ram~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~724_combout\ = ( \ROM|memROM~23_combout\ & ( \ROM|memROM~18_combout\ & ( \RAM|ram~442_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( \ROM|memROM~18_combout\ & ( \RAM|ram~314_q\ ) ) ) # ( \ROM|memROM~23_combout\ & ( !\ROM|memROM~18_combout\ & ( 
-- \RAM|ram~434_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( !\ROM|memROM~18_combout\ & ( \RAM|ram~306_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~434_q\,
	datab => \RAM|ALT_INV_ram~314_q\,
	datac => \RAM|ALT_INV_ram~442_q\,
	datad => \RAM|ALT_INV_ram~306_q\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~724_combout\);

-- Location: FF_X72_Y9_N7
\RAM|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~506_q\);

-- Location: FF_X72_Y9_N19
\RAM|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~498_q\);

-- Location: FF_X71_Y6_N32
\RAM|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~370_q\);

-- Location: FF_X71_Y6_N44
\RAM|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~378_q\);

-- Location: LABCELL_X73_Y9_N39
\RAM|ram~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~726_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~506_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~498_q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~378_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~370_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~506_q\,
	datab => \RAM|ALT_INV_ram~498_q\,
	datac => \RAM|ALT_INV_ram~370_q\,
	datad => \RAM|ALT_INV_ram~378_q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~726_combout\);

-- Location: FF_X73_Y9_N53
\RAM|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~346_q\);

-- Location: FF_X73_Y5_N40
\RAM|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~466_q\);

-- Location: FF_X73_Y5_N11
\RAM|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~338_q\);

-- Location: FF_X73_Y9_N47
\RAM|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~474_q\);

-- Location: LABCELL_X73_Y9_N45
\RAM|ram~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~725_combout\ = ( \RAM|ram~474_q\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~466_q\) ) ) ) # ( !\RAM|ram~474_q\ & ( \ROM|memROM~23_combout\ & ( (\RAM|ram~466_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~474_q\ & ( 
-- !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~338_q\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~346_q\)) ) ) ) # ( !\RAM|ram~474_q\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~338_q\))) # 
-- (\ROM|memROM~18_combout\ & (\RAM|ram~346_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~346_q\,
	datab => \RAM|ALT_INV_ram~466_q\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \RAM|ALT_INV_ram~338_q\,
	datae => \RAM|ALT_INV_ram~474_q\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~725_combout\);

-- Location: LABCELL_X77_Y9_N45
\RAM|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~727_combout\ = ( \RAM|ram~726_combout\ & ( \RAM|ram~725_combout\ & ( ((!\ROM|memROM~2_combout\ & (\RAM|ram~723_combout\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~724_combout\)))) # (\ROM|memROM~17_combout\) ) ) ) # ( !\RAM|ram~726_combout\ & ( 
-- \RAM|ram~725_combout\ & ( (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~2_combout\ & (\RAM|ram~723_combout\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~724_combout\))))) # (\ROM|memROM~17_combout\ & (((!\ROM|memROM~2_combout\)))) ) ) ) # ( \RAM|ram~726_combout\ 
-- & ( !\RAM|ram~725_combout\ & ( (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~2_combout\ & (\RAM|ram~723_combout\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~724_combout\))))) # (\ROM|memROM~17_combout\ & (((\ROM|memROM~2_combout\)))) ) ) ) # ( 
-- !\RAM|ram~726_combout\ & ( !\RAM|ram~725_combout\ & ( (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~2_combout\ & (\RAM|ram~723_combout\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~724_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~723_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~724_combout\,
	datae => \RAM|ALT_INV_ram~726_combout\,
	dataf => \RAM|ALT_INV_ram~725_combout\,
	combout => \RAM|ram~727_combout\);

-- Location: LABCELL_X79_Y10_N15
\RAM|ram~18feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~18feeder_combout\ = ( \CPU|ACU|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	combout => \RAM|ram~18feeder_combout\);

-- Location: FF_X79_Y10_N16
\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~18feeder_combout\,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: FF_X77_Y10_N19
\RAM|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~82_q\);

-- Location: FF_X73_Y10_N59
\RAM|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~146_q\);

-- Location: FF_X78_Y8_N41
\RAM|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~210_q\);

-- Location: MLABCELL_X78_Y8_N39
\RAM|ram~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~718_combout\ = ( \RAM|ram~210_q\ & ( \ROM|memROM~23_combout\ & ( (\RAM|ram~146_q\) # (\ROM|memROM~17_combout\) ) ) ) # ( !\RAM|ram~210_q\ & ( \ROM|memROM~23_combout\ & ( (!\ROM|memROM~17_combout\ & \RAM|ram~146_q\) ) ) ) # ( \RAM|ram~210_q\ & ( 
-- !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~17_combout\ & (\RAM|ram~18_q\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~82_q\))) ) ) ) # ( !\RAM|ram~210_q\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~17_combout\ & (\RAM|ram~18_q\)) # 
-- (\ROM|memROM~17_combout\ & ((\RAM|ram~82_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datab => \RAM|ALT_INV_ram~82_q\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~146_q\,
	datae => \RAM|ALT_INV_ram~210_q\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~718_combout\);

-- Location: FF_X79_Y8_N14
\RAM|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~122_q\);

-- Location: FF_X75_Y10_N50
\RAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~58_q\);

-- Location: FF_X71_Y8_N28
\RAM|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~186_q\);

-- Location: FF_X78_Y9_N26
\RAM|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~250_q\);

-- Location: MLABCELL_X78_Y9_N24
\RAM|ram~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~721_combout\ = ( \RAM|ram~250_q\ & ( \ROM|memROM~17_combout\ & ( (\ROM|memROM~23_combout\) # (\RAM|ram~122_q\) ) ) ) # ( !\RAM|ram~250_q\ & ( \ROM|memROM~17_combout\ & ( (\RAM|ram~122_q\ & !\ROM|memROM~23_combout\) ) ) ) # ( \RAM|ram~250_q\ & ( 
-- !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~23_combout\ & (\RAM|ram~58_q\)) # (\ROM|memROM~23_combout\ & ((\RAM|ram~186_q\))) ) ) ) # ( !\RAM|ram~250_q\ & ( !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~23_combout\ & (\RAM|ram~58_q\)) # 
-- (\ROM|memROM~23_combout\ & ((\RAM|ram~186_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~122_q\,
	datab => \RAM|ALT_INV_ram~58_q\,
	datac => \RAM|ALT_INV_ram~186_q\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	datae => \RAM|ALT_INV_ram~250_q\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~721_combout\);

-- Location: FF_X75_Y9_N47
\RAM|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~178_q\);

-- Location: FF_X71_Y9_N34
\RAM|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~242_q\);

-- Location: FF_X71_Y9_N46
\RAM|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~114_q\);

-- Location: FF_X75_Y10_N1
\RAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~50_q\);

-- Location: LABCELL_X74_Y9_N30
\RAM|ram~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~720_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~242_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~178_q\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~114_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~178_q\,
	datab => \RAM|ALT_INV_ram~242_q\,
	datac => \RAM|ALT_INV_ram~114_q\,
	datad => \RAM|ALT_INV_ram~50_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~720_combout\);

-- Location: FF_X81_Y8_N16
\RAM|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~154_q\);

-- Location: FF_X75_Y10_N34
\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

-- Location: FF_X79_Y8_N32
\RAM|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~90_q\);

-- Location: FF_X78_Y8_N35
\RAM|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~218_q\);

-- Location: MLABCELL_X78_Y8_N33
\RAM|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~719_combout\ = ( \RAM|ram~218_q\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~17_combout\) # (\RAM|ram~154_q\) ) ) ) # ( !\RAM|ram~218_q\ & ( \ROM|memROM~23_combout\ & ( (\RAM|ram~154_q\ & !\ROM|memROM~17_combout\) ) ) ) # ( \RAM|ram~218_q\ & ( 
-- !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~17_combout\ & (\RAM|ram~26_q\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~90_q\))) ) ) ) # ( !\RAM|ram~218_q\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~17_combout\ & (\RAM|ram~26_q\)) # 
-- (\ROM|memROM~17_combout\ & ((\RAM|ram~90_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~154_q\,
	datab => \RAM|ALT_INV_ram~26_q\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~90_q\,
	datae => \RAM|ALT_INV_ram~218_q\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~719_combout\);

-- Location: LABCELL_X77_Y9_N0
\RAM|ram~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~722_combout\ = ( \RAM|ram~720_combout\ & ( \RAM|ram~719_combout\ & ( (!\ROM|memROM~18_combout\ & (((\RAM|ram~718_combout\)) # (\ROM|memROM~2_combout\))) # (\ROM|memROM~18_combout\ & ((!\ROM|memROM~2_combout\) # ((\RAM|ram~721_combout\)))) ) ) ) # 
-- ( !\RAM|ram~720_combout\ & ( \RAM|ram~719_combout\ & ( (!\ROM|memROM~18_combout\ & (!\ROM|memROM~2_combout\ & (\RAM|ram~718_combout\))) # (\ROM|memROM~18_combout\ & ((!\ROM|memROM~2_combout\) # ((\RAM|ram~721_combout\)))) ) ) ) # ( \RAM|ram~720_combout\ & 
-- ( !\RAM|ram~719_combout\ & ( (!\ROM|memROM~18_combout\ & (((\RAM|ram~718_combout\)) # (\ROM|memROM~2_combout\))) # (\ROM|memROM~18_combout\ & (\ROM|memROM~2_combout\ & ((\RAM|ram~721_combout\)))) ) ) ) # ( !\RAM|ram~720_combout\ & ( !\RAM|ram~719_combout\ 
-- & ( (!\ROM|memROM~18_combout\ & (!\ROM|memROM~2_combout\ & (\RAM|ram~718_combout\))) # (\ROM|memROM~18_combout\ & (\ROM|memROM~2_combout\ & ((\RAM|ram~721_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~718_combout\,
	datad => \RAM|ALT_INV_ram~721_combout\,
	datae => \RAM|ALT_INV_ram~720_combout\,
	dataf => \RAM|ALT_INV_ram~719_combout\,
	combout => \RAM|ram~722_combout\);

-- Location: FF_X74_Y9_N16
\RAM|ram~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~426_q\);

-- Location: FF_X74_Y5_N16
\RAM|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~490_q\);

-- Location: FF_X74_Y7_N16
\RAM|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~298_q\);

-- Location: FF_X75_Y5_N4
\RAM|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~362_q\);

-- Location: LABCELL_X73_Y9_N48
\RAM|ram~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~734_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~490_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~426_q\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~362_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~298_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~426_q\,
	datab => \RAM|ALT_INV_ram~490_q\,
	datac => \RAM|ALT_INV_ram~298_q\,
	datad => \RAM|ALT_INV_ram~362_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~734_combout\);

-- Location: FF_X72_Y8_N53
\RAM|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~386_q\);

-- Location: FF_X72_Y8_N55
\RAM|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~514_q\);

-- Location: LABCELL_X73_Y7_N21
\RAM|ram~450feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~450feeder_combout\ = ( \CPU|ACU|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	combout => \RAM|ram~450feeder_combout\);

-- Location: FF_X73_Y7_N22
\RAM|ram~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~450feeder_combout\,
	ena => \RAM|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~450_q\);

-- Location: LABCELL_X71_Y7_N12
\RAM|ram~322feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~322feeder_combout\ = ( \CPU|ACU|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	combout => \RAM|ram~322feeder_combout\);

-- Location: FF_X71_Y7_N13
\RAM|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~322feeder_combout\,
	ena => \RAM|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~322_q\);

-- Location: MLABCELL_X72_Y8_N18
\RAM|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~735_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~514_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~450_q\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~386_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~322_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~386_q\,
	datab => \RAM|ALT_INV_ram~514_q\,
	datac => \RAM|ALT_INV_ram~450_q\,
	datad => \RAM|ALT_INV_ram~322_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~735_combout\);

-- Location: FF_X73_Y6_N56
\RAM|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~330_q\);

-- Location: FF_X74_Y6_N44
\RAM|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~522_q\);

-- Location: FF_X74_Y6_N34
\RAM|ram~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~458_q\);

-- Location: FF_X73_Y6_N28
\RAM|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~394_q\);

-- Location: LABCELL_X74_Y6_N45
\RAM|ram~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~736_combout\ = ( \ROM|memROM~23_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~522_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~394_q\ ) ) ) # ( \ROM|memROM~23_combout\ & ( !\ROM|memROM~17_combout\ & ( 
-- \RAM|ram~458_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( !\ROM|memROM~17_combout\ & ( \RAM|ram~330_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~330_q\,
	datab => \RAM|ALT_INV_ram~522_q\,
	datac => \RAM|ALT_INV_ram~458_q\,
	datad => \RAM|ALT_INV_ram~394_q\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~736_combout\);

-- Location: FF_X73_Y11_N28
\RAM|ram~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~418_q\);

-- Location: LABCELL_X74_Y11_N12
\RAM|ram~290feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~290feeder_combout\ = ( \CPU|ACU|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	combout => \RAM|ram~290feeder_combout\);

-- Location: FF_X74_Y11_N14
\RAM|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~290feeder_combout\,
	ena => \RAM|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~290_q\);

-- Location: FF_X75_Y5_N55
\RAM|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~354_q\);

-- Location: FF_X74_Y11_N44
\RAM|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~482_q\);

-- Location: LABCELL_X74_Y11_N42
\RAM|ram~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~733_combout\ = ( \RAM|ram~482_q\ & ( \ROM|memROM~17_combout\ & ( (\RAM|ram~354_q\) # (\ROM|memROM~23_combout\) ) ) ) # ( !\RAM|ram~482_q\ & ( \ROM|memROM~17_combout\ & ( (!\ROM|memROM~23_combout\ & \RAM|ram~354_q\) ) ) ) # ( \RAM|ram~482_q\ & ( 
-- !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~23_combout\ & ((\RAM|ram~290_q\))) # (\ROM|memROM~23_combout\ & (\RAM|ram~418_q\)) ) ) ) # ( !\RAM|ram~482_q\ & ( !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~23_combout\ & ((\RAM|ram~290_q\))) # 
-- (\ROM|memROM~23_combout\ & (\RAM|ram~418_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~418_q\,
	datab => \RAM|ALT_INV_ram~290_q\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \RAM|ALT_INV_ram~354_q\,
	datae => \RAM|ALT_INV_ram~482_q\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~733_combout\);

-- Location: LABCELL_X77_Y9_N30
\RAM|ram~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~737_combout\ = ( \RAM|ram~736_combout\ & ( \RAM|ram~733_combout\ & ( (!\ROM|memROM~2_combout\ & (((!\ROM|memROM~18_combout\)) # (\RAM|ram~734_combout\))) # (\ROM|memROM~2_combout\ & (((\RAM|ram~735_combout\) # (\ROM|memROM~18_combout\)))) ) ) ) # 
-- ( !\RAM|ram~736_combout\ & ( \RAM|ram~733_combout\ & ( (!\ROM|memROM~2_combout\ & (((!\ROM|memROM~18_combout\)) # (\RAM|ram~734_combout\))) # (\ROM|memROM~2_combout\ & (((!\ROM|memROM~18_combout\ & \RAM|ram~735_combout\)))) ) ) ) # ( \RAM|ram~736_combout\ 
-- & ( !\RAM|ram~733_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~734_combout\ & (\ROM|memROM~18_combout\))) # (\ROM|memROM~2_combout\ & (((\RAM|ram~735_combout\) # (\ROM|memROM~18_combout\)))) ) ) ) # ( !\RAM|ram~736_combout\ & ( !\RAM|ram~733_combout\ 
-- & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~734_combout\ & (\ROM|memROM~18_combout\))) # (\ROM|memROM~2_combout\ & (((!\ROM|memROM~18_combout\ & \RAM|ram~735_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~734_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \RAM|ALT_INV_ram~735_combout\,
	datae => \RAM|ALT_INV_ram~736_combout\,
	dataf => \RAM|ALT_INV_ram~733_combout\,
	combout => \RAM|ram~737_combout\);

-- Location: LABCELL_X77_Y9_N18
\RAM|ram~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~738_combout\ = ( \RAM|ram~722_combout\ & ( \RAM|ram~737_combout\ & ( (!\ROM|memROM~21_combout\ & ((!\ROM|memROM~22_combout\) # ((\RAM|ram~727_combout\)))) # (\ROM|memROM~21_combout\ & (((\RAM|ram~732_combout\)) # (\ROM|memROM~22_combout\))) ) ) ) 
-- # ( !\RAM|ram~722_combout\ & ( \RAM|ram~737_combout\ & ( (!\ROM|memROM~21_combout\ & (\ROM|memROM~22_combout\ & ((\RAM|ram~727_combout\)))) # (\ROM|memROM~21_combout\ & (((\RAM|ram~732_combout\)) # (\ROM|memROM~22_combout\))) ) ) ) # ( 
-- \RAM|ram~722_combout\ & ( !\RAM|ram~737_combout\ & ( (!\ROM|memROM~21_combout\ & ((!\ROM|memROM~22_combout\) # ((\RAM|ram~727_combout\)))) # (\ROM|memROM~21_combout\ & (!\ROM|memROM~22_combout\ & (\RAM|ram~732_combout\))) ) ) ) # ( !\RAM|ram~722_combout\ 
-- & ( !\RAM|ram~737_combout\ & ( (!\ROM|memROM~21_combout\ & (\ROM|memROM~22_combout\ & ((\RAM|ram~727_combout\)))) # (\ROM|memROM~21_combout\ & (!\ROM|memROM~22_combout\ & (\RAM|ram~732_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~21_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \RAM|ALT_INV_ram~732_combout\,
	datad => \RAM|ALT_INV_ram~727_combout\,
	datae => \RAM|ALT_INV_ram~722_combout\,
	dataf => \RAM|ALT_INV_ram~737_combout\,
	combout => \RAM|ram~738_combout\);

-- Location: LABCELL_X77_Y9_N12
\CPU|MUX|saida_MUX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX|saida_MUX[3]~2_combout\ = ( \comb~14_combout\ & ( \RAM|ram~738_combout\ & ( \SW[3]~input_o\ ) ) ) # ( !\comb~14_combout\ & ( \RAM|ram~738_combout\ ) ) # ( \comb~14_combout\ & ( !\RAM|ram~738_combout\ & ( \SW[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_comb~14_combout\,
	dataf => \RAM|ALT_INV_ram~738_combout\,
	combout => \CPU|MUX|saida_MUX[3]~2_combout\);

-- Location: MLABCELL_X78_Y7_N12
\CPU|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_sumout\ = SUM(( \CPU|ACU|DOUT\(4) ) + ( (!\CPU|DEC|saidaDecoder[3]~8_combout\ & ((!\CPU|DEC|Equal10~1_combout\ & ((\CPU|MUX|saida_MUX[4]~3_combout\))) # (\CPU|DEC|Equal10~1_combout\ & (\ROM|memROM~23_combout\)))) # 
-- (\CPU|DEC|saidaDecoder[3]~8_combout\ & (((\ROM|memROM~23_combout\)))) ) + ( \CPU|ULA|Add0~14\ ))
-- \CPU|ULA|Add0~18\ = CARRY(( \CPU|ACU|DOUT\(4) ) + ( (!\CPU|DEC|saidaDecoder[3]~8_combout\ & ((!\CPU|DEC|Equal10~1_combout\ & ((\CPU|MUX|saida_MUX[4]~3_combout\))) # (\CPU|DEC|Equal10~1_combout\ & (\ROM|memROM~23_combout\)))) # 
-- (\CPU|DEC|saidaDecoder[3]~8_combout\ & (((\ROM|memROM~23_combout\)))) ) + ( \CPU|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder[3]~8_combout\,
	datab => \CPU|DEC|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \CPU|ACU|ALT_INV_DOUT\(4),
	dataf => \CPU|MUX|ALT_INV_saida_MUX[4]~3_combout\,
	cin => \CPU|ULA|Add0~14\,
	sumout => \CPU|ULA|Add0~17_sumout\,
	cout => \CPU|ULA|Add0~18\);

-- Location: LABCELL_X79_Y7_N30
\CPU|ULA|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[4]~4_combout\ = ( \CPU|ULA|Equal0~0_combout\ & ( \CPU|ULA|Add1~1_sumout\ ) ) # ( !\CPU|ULA|Equal0~0_combout\ & ( \CPU|ULA|Add1~1_sumout\ & ( (!\CPU|DEC|saidaDecoder[3]~6_combout\ & (\CPU|MUX|saida_MUX[4]~3_combout\)) # 
-- (\CPU|DEC|saidaDecoder[3]~6_combout\ & ((\ROM|memROM~23_combout\))) ) ) ) # ( !\CPU|ULA|Equal0~0_combout\ & ( !\CPU|ULA|Add1~1_sumout\ & ( (!\CPU|DEC|saidaDecoder[3]~6_combout\ & (\CPU|MUX|saida_MUX[4]~3_combout\)) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & 
-- ((\ROM|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000000000000110011000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MUX|ALT_INV_saida_MUX[4]~3_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \CPU|DEC|ALT_INV_saidaDecoder[3]~6_combout\,
	datae => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	dataf => \CPU|ULA|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA|saida[4]~4_combout\);

-- Location: FF_X78_Y7_N14
\CPU|ACU|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~17_sumout\,
	asdata => \CPU|ULA|saida[4]~4_combout\,
	sload => \CPU|ULA|Equal1~0_combout\,
	ena => \CPU|DEC|saidaDecoder[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(4));

-- Location: FF_X75_Y10_N46
\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

-- Location: LABCELL_X77_Y6_N42
\RAM|ram~43feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~43feeder_combout\ = ( \CPU|ACU|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(4),
	combout => \RAM|ram~43feeder_combout\);

-- Location: FF_X77_Y6_N44
\RAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~43feeder_combout\,
	ena => \RAM|ram~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~43_q\);

-- Location: LABCELL_X79_Y10_N57
\RAM|ram~35feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~35feeder_combout\ = ( \CPU|ACU|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(4),
	combout => \RAM|ram~35feeder_combout\);

-- Location: FF_X79_Y10_N58
\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~35feeder_combout\,
	ena => \RAM|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

-- Location: LABCELL_X79_Y10_N24
\RAM|ram~19feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~19feeder_combout\ = ( \CPU|ACU|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(4),
	combout => \RAM|ram~19feeder_combout\);

-- Location: FF_X79_Y10_N26
\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~19feeder_combout\,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

-- Location: LABCELL_X77_Y6_N24
\RAM|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~739_combout\ = ( \RAM|ram~19_q\ & ( \ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~27_q\)) # (\ROM|memROM~21_combout\ & ((\RAM|ram~43_q\))) ) ) ) # ( !\RAM|ram~19_q\ & ( \ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & 
-- (\RAM|ram~27_q\)) # (\ROM|memROM~21_combout\ & ((\RAM|ram~43_q\))) ) ) ) # ( \RAM|ram~19_q\ & ( !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\) # (\RAM|ram~35_q\) ) ) ) # ( !\RAM|ram~19_q\ & ( !\ROM|memROM~18_combout\ & ( (\ROM|memROM~21_combout\ 
-- & \RAM|ram~35_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~27_q\,
	datab => \RAM|ALT_INV_ram~43_q\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \RAM|ALT_INV_ram~35_q\,
	datae => \RAM|ALT_INV_ram~19_q\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~739_combout\);

-- Location: FF_X79_Y8_N19
\RAM|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~123_q\);

-- Location: FF_X78_Y7_N58
\RAM|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~131_q\);

-- Location: FF_X71_Y9_N55
\RAM|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~115_q\);

-- Location: FF_X77_Y6_N8
\RAM|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~139_q\);

-- Location: LABCELL_X77_Y6_N6
\RAM|ram~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~742_combout\ = ( \RAM|ram~139_q\ & ( \ROM|memROM~18_combout\ & ( (\ROM|memROM~21_combout\) # (\RAM|ram~123_q\) ) ) ) # ( !\RAM|ram~139_q\ & ( \ROM|memROM~18_combout\ & ( (\RAM|ram~123_q\ & !\ROM|memROM~21_combout\) ) ) ) # ( \RAM|ram~139_q\ & ( 
-- !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & ((\RAM|ram~115_q\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~131_q\)) ) ) ) # ( !\RAM|ram~139_q\ & ( !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & ((\RAM|ram~115_q\))) # 
-- (\ROM|memROM~21_combout\ & (\RAM|ram~131_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~123_q\,
	datab => \RAM|ALT_INV_ram~131_q\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \RAM|ALT_INV_ram~115_q\,
	datae => \RAM|ALT_INV_ram~139_q\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~742_combout\);

-- Location: FF_X79_Y8_N37
\RAM|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~91_q\);

-- Location: FF_X79_Y6_N49
\RAM|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~83_q\);

-- Location: FF_X79_Y6_N44
\RAM|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~99_q\);

-- Location: FF_X78_Y6_N50
\RAM|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~107_q\);

-- Location: MLABCELL_X78_Y6_N48
\RAM|ram~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~741_combout\ = ( \RAM|ram~107_q\ & ( \ROM|memROM~18_combout\ & ( (\ROM|memROM~21_combout\) # (\RAM|ram~91_q\) ) ) ) # ( !\RAM|ram~107_q\ & ( \ROM|memROM~18_combout\ & ( (\RAM|ram~91_q\ & !\ROM|memROM~21_combout\) ) ) ) # ( \RAM|ram~107_q\ & ( 
-- !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~83_q\)) # (\ROM|memROM~21_combout\ & ((\RAM|ram~99_q\))) ) ) ) # ( !\RAM|ram~107_q\ & ( !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~83_q\)) # 
-- (\ROM|memROM~21_combout\ & ((\RAM|ram~99_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~91_q\,
	datab => \RAM|ALT_INV_ram~83_q\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \RAM|ALT_INV_ram~99_q\,
	datae => \RAM|ALT_INV_ram~107_q\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~741_combout\);

-- Location: FF_X75_Y10_N16
\RAM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~59_q\);

-- Location: MLABCELL_X78_Y10_N42
\RAM|ram~51feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~51feeder_combout\ = ( \CPU|ACU|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(4),
	combout => \RAM|ram~51feeder_combout\);

-- Location: FF_X78_Y10_N44
\RAM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~51feeder_combout\,
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~51_q\);

-- Location: FF_X78_Y10_N50
\RAM|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~75_q\);

-- Location: MLABCELL_X78_Y10_N6
\RAM|ram~67feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~67feeder_combout\ = ( \CPU|ACU|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(4),
	combout => \RAM|ram~67feeder_combout\);

-- Location: FF_X78_Y10_N8
\RAM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~67feeder_combout\,
	ena => \RAM|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~67_q\);

-- Location: LABCELL_X77_Y10_N3
\RAM|ram~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~740_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~18_combout\ & ( \RAM|ram~75_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~18_combout\ & ( \RAM|ram~59_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~18_combout\ & ( 
-- \RAM|ram~67_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~18_combout\ & ( \RAM|ram~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~59_q\,
	datab => \RAM|ALT_INV_ram~51_q\,
	datac => \RAM|ALT_INV_ram~75_q\,
	datad => \RAM|ALT_INV_ram~67_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~740_combout\);

-- Location: LABCELL_X77_Y6_N54
\RAM|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~743_combout\ = ( \RAM|ram~741_combout\ & ( \RAM|ram~740_combout\ & ( (!\ROM|memROM~17_combout\ & (((\RAM|ram~739_combout\)) # (\ROM|memROM~2_combout\))) # (\ROM|memROM~17_combout\ & ((!\ROM|memROM~2_combout\) # ((\RAM|ram~742_combout\)))) ) ) ) # 
-- ( !\RAM|ram~741_combout\ & ( \RAM|ram~740_combout\ & ( (!\ROM|memROM~17_combout\ & (((\RAM|ram~739_combout\)) # (\ROM|memROM~2_combout\))) # (\ROM|memROM~17_combout\ & (\ROM|memROM~2_combout\ & ((\RAM|ram~742_combout\)))) ) ) ) # ( \RAM|ram~741_combout\ & 
-- ( !\RAM|ram~740_combout\ & ( (!\ROM|memROM~17_combout\ & (!\ROM|memROM~2_combout\ & (\RAM|ram~739_combout\))) # (\ROM|memROM~17_combout\ & ((!\ROM|memROM~2_combout\) # ((\RAM|ram~742_combout\)))) ) ) ) # ( !\RAM|ram~741_combout\ & ( !\RAM|ram~740_combout\ 
-- & ( (!\ROM|memROM~17_combout\ & (!\ROM|memROM~2_combout\ & (\RAM|ram~739_combout\))) # (\ROM|memROM~17_combout\ & (\ROM|memROM~2_combout\ & ((\RAM|ram~742_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~739_combout\,
	datad => \RAM|ALT_INV_ram~742_combout\,
	datae => \RAM|ALT_INV_ram~741_combout\,
	dataf => \RAM|ALT_INV_ram~740_combout\,
	combout => \RAM|ram~743_combout\);

-- Location: FF_X71_Y8_N31
\RAM|ram~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~459_q\);

-- Location: FF_X71_Y9_N52
\RAM|ram~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~443_q\);

-- Location: FF_X73_Y7_N41
\RAM|ram~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~435_q\);

-- Location: FF_X73_Y7_N10
\RAM|ram~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~451_q\);

-- Location: LABCELL_X73_Y6_N57
\RAM|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~755_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~21_combout\ & ( \RAM|ram~459_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~21_combout\ & ( \RAM|ram~451_q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~21_combout\ & ( 
-- \RAM|ram~443_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~21_combout\ & ( \RAM|ram~435_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~459_q\,
	datab => \RAM|ALT_INV_ram~443_q\,
	datac => \RAM|ALT_INV_ram~435_q\,
	datad => \RAM|ALT_INV_ram~451_q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~755_combout\);

-- Location: FF_X73_Y9_N1
\RAM|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~475_q\);

-- Location: FF_X75_Y7_N55
\RAM|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~483_q\);

-- Location: FF_X73_Y5_N17
\RAM|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~467_q\);

-- Location: FF_X74_Y5_N31
\RAM|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~491_q\);

-- Location: LABCELL_X75_Y6_N12
\RAM|ram~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~756_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~21_combout\ & ( \RAM|ram~491_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~21_combout\ & ( \RAM|ram~483_q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~21_combout\ & ( 
-- \RAM|ram~475_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~21_combout\ & ( \RAM|ram~467_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~475_q\,
	datab => \RAM|ALT_INV_ram~483_q\,
	datac => \RAM|ALT_INV_ram~467_q\,
	datad => \RAM|ALT_INV_ram~491_q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~756_combout\);

-- Location: FF_X72_Y8_N35
\RAM|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~515_q\);

-- Location: FF_X72_Y9_N34
\RAM|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~499_q\);

-- Location: FF_X72_Y6_N10
\RAM|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~507_q\);

-- Location: FF_X71_Y8_N44
\RAM|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~523_q\);

-- Location: LABCELL_X71_Y8_N42
\RAM|ram~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~757_combout\ = ( \RAM|ram~523_q\ & ( \ROM|memROM~21_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~515_q\) ) ) ) # ( !\RAM|ram~523_q\ & ( \ROM|memROM~21_combout\ & ( (\RAM|ram~515_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~523_q\ & ( 
-- !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~499_q\)) # (\ROM|memROM~18_combout\ & ((\RAM|ram~507_q\))) ) ) ) # ( !\RAM|ram~523_q\ & ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~499_q\)) # 
-- (\ROM|memROM~18_combout\ & ((\RAM|ram~507_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~515_q\,
	datab => \RAM|ALT_INV_ram~499_q\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \RAM|ALT_INV_ram~507_q\,
	datae => \RAM|ALT_INV_ram~523_q\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~757_combout\);

-- Location: FF_X73_Y11_N25
\RAM|ram~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~419_q\);

-- Location: FF_X73_Y10_N52
\RAM|ram~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~403_q\);

-- Location: FF_X74_Y9_N59
\RAM|ram~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~411_q\);

-- Location: FF_X74_Y9_N2
\RAM|ram~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~427_q\);

-- Location: LABCELL_X74_Y9_N0
\RAM|ram~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~754_combout\ = ( \RAM|ram~427_q\ & ( \ROM|memROM~21_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~419_q\) ) ) ) # ( !\RAM|ram~427_q\ & ( \ROM|memROM~21_combout\ & ( (\RAM|ram~419_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~427_q\ & ( 
-- !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~403_q\)) # (\ROM|memROM~18_combout\ & ((\RAM|ram~411_q\))) ) ) ) # ( !\RAM|ram~427_q\ & ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~403_q\)) # 
-- (\ROM|memROM~18_combout\ & ((\RAM|ram~411_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~419_q\,
	datab => \RAM|ALT_INV_ram~403_q\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \RAM|ALT_INV_ram~411_q\,
	datae => \RAM|ALT_INV_ram~427_q\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~754_combout\);

-- Location: LABCELL_X77_Y6_N30
\RAM|ram~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~758_combout\ = ( \RAM|ram~757_combout\ & ( \RAM|ram~754_combout\ & ( (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~2_combout\) # ((\RAM|ram~755_combout\)))) # (\ROM|memROM~17_combout\ & (((\RAM|ram~756_combout\)) # (\ROM|memROM~2_combout\))) ) ) ) # 
-- ( !\RAM|ram~757_combout\ & ( \RAM|ram~754_combout\ & ( (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~2_combout\) # ((\RAM|ram~755_combout\)))) # (\ROM|memROM~17_combout\ & (!\ROM|memROM~2_combout\ & ((\RAM|ram~756_combout\)))) ) ) ) # ( \RAM|ram~757_combout\ 
-- & ( !\RAM|ram~754_combout\ & ( (!\ROM|memROM~17_combout\ & (\ROM|memROM~2_combout\ & (\RAM|ram~755_combout\))) # (\ROM|memROM~17_combout\ & (((\RAM|ram~756_combout\)) # (\ROM|memROM~2_combout\))) ) ) ) # ( !\RAM|ram~757_combout\ & ( !\RAM|ram~754_combout\ 
-- & ( (!\ROM|memROM~17_combout\ & (\ROM|memROM~2_combout\ & (\RAM|ram~755_combout\))) # (\ROM|memROM~17_combout\ & (!\ROM|memROM~2_combout\ & ((\RAM|ram~756_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~755_combout\,
	datad => \RAM|ALT_INV_ram~756_combout\,
	datae => \RAM|ALT_INV_ram~757_combout\,
	dataf => \RAM|ALT_INV_ram~754_combout\,
	combout => \RAM|ram~758_combout\);

-- Location: FF_X77_Y8_N38
\RAM|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~171_q\);

-- Location: FF_X77_Y8_N8
\RAM|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~227_q\);

-- Location: FF_X80_Y10_N40
\RAM|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~163_q\);

-- Location: FF_X77_Y8_N32
\RAM|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~235_q\);

-- Location: LABCELL_X77_Y8_N30
\RAM|ram~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~750_combout\ = ( \RAM|ram~235_q\ & ( \ROM|memROM~18_combout\ & ( (\ROM|memROM~17_combout\) # (\RAM|ram~171_q\) ) ) ) # ( !\RAM|ram~235_q\ & ( \ROM|memROM~18_combout\ & ( (\RAM|ram~171_q\ & !\ROM|memROM~17_combout\) ) ) ) # ( \RAM|ram~235_q\ & ( 
-- !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~17_combout\ & ((\RAM|ram~163_q\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~227_q\)) ) ) ) # ( !\RAM|ram~235_q\ & ( !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~17_combout\ & ((\RAM|ram~163_q\))) # 
-- (\ROM|memROM~17_combout\ & (\RAM|ram~227_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~171_q\,
	datab => \RAM|ALT_INV_ram~227_q\,
	datac => \RAM|ALT_INV_ram~163_q\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \RAM|ALT_INV_ram~235_q\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~750_combout\);

-- Location: LABCELL_X75_Y6_N18
\RAM|ram~187feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~187feeder_combout\ = ( \CPU|ACU|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(4),
	combout => \RAM|ram~187feeder_combout\);

-- Location: FF_X75_Y6_N19
\RAM|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~187feeder_combout\,
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~187_q\);

-- Location: FF_X71_Y9_N2
\RAM|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~243_q\);

-- Location: FF_X77_Y6_N50
\RAM|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~251_q\);

-- Location: FF_X75_Y9_N43
\RAM|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~179_q\);

-- Location: LABCELL_X77_Y6_N36
\RAM|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~751_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~18_combout\ & ( \RAM|ram~251_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~18_combout\ & ( \RAM|ram~187_q\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~18_combout\ & ( 
-- \RAM|ram~243_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~18_combout\ & ( \RAM|ram~179_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~187_q\,
	datab => \RAM|ALT_INV_ram~243_q\,
	datac => \RAM|ALT_INV_ram~251_q\,
	datad => \RAM|ALT_INV_ram~179_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~751_combout\);

-- Location: FF_X78_Y8_N5
\RAM|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~211_q\);

-- Location: LABCELL_X81_Y8_N30
\RAM|ram~155feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~155feeder_combout\ = ( \CPU|ACU|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(4),
	combout => \RAM|ram~155feeder_combout\);

-- Location: FF_X81_Y8_N31
\RAM|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~155feeder_combout\,
	ena => \RAM|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~155_q\);

-- Location: MLABCELL_X78_Y8_N12
\RAM|ram~219feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~219feeder_combout\ = ( \CPU|ACU|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(4),
	combout => \RAM|ram~219feeder_combout\);

-- Location: FF_X78_Y8_N14
\RAM|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~219feeder_combout\,
	ena => \RAM|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~219_q\);

-- Location: FF_X73_Y10_N13
\RAM|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~147_q\);

-- Location: MLABCELL_X78_Y8_N45
\RAM|ram~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~749_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~219_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~211_q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~17_combout\ & ( 
-- \RAM|ram~155_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~17_combout\ & ( \RAM|ram~147_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~211_q\,
	datab => \RAM|ALT_INV_ram~155_q\,
	datac => \RAM|ALT_INV_ram~219_q\,
	datad => \RAM|ALT_INV_ram~147_q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~749_combout\);

-- Location: FF_X77_Y9_N56
\RAM|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~259_q\);

-- Location: FF_X75_Y9_N28
\RAM|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~195_q\);

-- Location: FF_X77_Y9_N44
\RAM|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~203_q\);

-- Location: FF_X77_Y9_N26
\RAM|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~267_q\);

-- Location: LABCELL_X77_Y9_N24
\RAM|ram~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~752_combout\ = ( \RAM|ram~267_q\ & ( \ROM|memROM~17_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~259_q\) ) ) ) # ( !\RAM|ram~267_q\ & ( \ROM|memROM~17_combout\ & ( (\RAM|ram~259_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~267_q\ & ( 
-- !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~195_q\)) # (\ROM|memROM~18_combout\ & ((\RAM|ram~203_q\))) ) ) ) # ( !\RAM|ram~267_q\ & ( !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~195_q\)) # 
-- (\ROM|memROM~18_combout\ & ((\RAM|ram~203_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~259_q\,
	datab => \RAM|ALT_INV_ram~195_q\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \RAM|ALT_INV_ram~203_q\,
	datae => \RAM|ALT_INV_ram~267_q\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~752_combout\);

-- Location: LABCELL_X77_Y6_N0
\RAM|ram~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~753_combout\ = ( \RAM|ram~749_combout\ & ( \RAM|ram~752_combout\ & ( (!\ROM|memROM~21_combout\ & (((!\ROM|memROM~2_combout\) # (\RAM|ram~751_combout\)))) # (\ROM|memROM~21_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM|ram~750_combout\))) ) ) ) # 
-- ( !\RAM|ram~749_combout\ & ( \RAM|ram~752_combout\ & ( (!\ROM|memROM~21_combout\ & (((\RAM|ram~751_combout\ & \ROM|memROM~2_combout\)))) # (\ROM|memROM~21_combout\ & (((\ROM|memROM~2_combout\)) # (\RAM|ram~750_combout\))) ) ) ) # ( \RAM|ram~749_combout\ & 
-- ( !\RAM|ram~752_combout\ & ( (!\ROM|memROM~21_combout\ & (((!\ROM|memROM~2_combout\) # (\RAM|ram~751_combout\)))) # (\ROM|memROM~21_combout\ & (\RAM|ram~750_combout\ & ((!\ROM|memROM~2_combout\)))) ) ) ) # ( !\RAM|ram~749_combout\ & ( 
-- !\RAM|ram~752_combout\ & ( (!\ROM|memROM~21_combout\ & (((\RAM|ram~751_combout\ & \ROM|memROM~2_combout\)))) # (\ROM|memROM~21_combout\ & (\RAM|ram~750_combout\ & ((!\ROM|memROM~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~750_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \RAM|ALT_INV_ram~751_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~749_combout\,
	dataf => \RAM|ALT_INV_ram~752_combout\,
	combout => \RAM|ram~753_combout\);

-- Location: FF_X75_Y5_N52
\RAM|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~355_q\);

-- Location: FF_X72_Y8_N17
\RAM|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~387_q\);

-- Location: FF_X75_Y5_N1
\RAM|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~363_q\);

-- Location: FF_X73_Y6_N32
\RAM|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~395_q\);

-- Location: LABCELL_X73_Y6_N30
\RAM|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~747_combout\ = ( \RAM|ram~395_q\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~387_q\) ) ) ) # ( !\RAM|ram~395_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~387_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~395_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~355_q\)) # (\ROM|memROM~18_combout\ & ((\RAM|ram~363_q\))) ) ) ) # ( !\RAM|ram~395_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~355_q\)) # 
-- (\ROM|memROM~18_combout\ & ((\RAM|ram~363_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~355_q\,
	datab => \RAM|ALT_INV_ram~387_q\,
	datac => \RAM|ALT_INV_ram~363_q\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \RAM|ALT_INV_ram~395_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~747_combout\);

-- Location: FF_X71_Y7_N23
\RAM|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~323_q\);

-- Location: FF_X71_Y7_N1
\RAM|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~299_q\);

-- Location: MLABCELL_X72_Y10_N39
\RAM|ram~291feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~291feeder_combout\ = ( \CPU|ACU|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(4),
	combout => \RAM|ram~291feeder_combout\);

-- Location: FF_X72_Y10_N40
\RAM|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~291feeder_combout\,
	ena => \RAM|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~291_q\);

-- Location: FF_X73_Y6_N5
\RAM|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~331_q\);

-- Location: LABCELL_X73_Y6_N3
\RAM|ram~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~745_combout\ = ( \RAM|ram~331_q\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~323_q\) ) ) ) # ( !\RAM|ram~331_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~323_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~331_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~291_q\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~299_q\)) ) ) ) # ( !\RAM|ram~331_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~291_q\))) # 
-- (\ROM|memROM~18_combout\ & (\RAM|ram~299_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~323_q\,
	datab => \RAM|ALT_INV_ram~299_q\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \RAM|ALT_INV_ram~291_q\,
	datae => \RAM|ALT_INV_ram~331_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~745_combout\);

-- Location: FF_X73_Y5_N52
\RAM|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~339_q\);

-- Location: LABCELL_X71_Y6_N18
\RAM|ram~371feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~371feeder_combout\ = ( \CPU|ACU|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(4),
	combout => \RAM|ram~371feeder_combout\);

-- Location: FF_X71_Y6_N19
\RAM|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~371feeder_combout\,
	ena => \RAM|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~371_q\);

-- Location: FF_X73_Y9_N37
\RAM|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~347_q\);

-- Location: FF_X72_Y6_N47
\RAM|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~379_q\);

-- Location: MLABCELL_X72_Y6_N12
\RAM|ram~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~746_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~379_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~371_q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~347_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~339_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~339_q\,
	datab => \RAM|ALT_INV_ram~371_q\,
	datac => \RAM|ALT_INV_ram~347_q\,
	datad => \RAM|ALT_INV_ram~379_q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~746_combout\);

-- Location: MLABCELL_X72_Y10_N57
\RAM|ram~283feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~283feeder_combout\ = ( \CPU|ACU|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(4),
	combout => \RAM|ram~283feeder_combout\);

-- Location: FF_X72_Y10_N58
\RAM|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~283feeder_combout\,
	ena => \RAM|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~283_q\);

-- Location: FF_X74_Y11_N34
\RAM|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~275_q\);

-- Location: FF_X71_Y7_N40
\RAM|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~307_q\);

-- Location: FF_X74_Y10_N50
\RAM|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~315_q\);

-- Location: LABCELL_X74_Y10_N48
\RAM|ram~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~744_combout\ = ( \RAM|ram~315_q\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~307_q\) ) ) ) # ( !\RAM|ram~315_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~307_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~315_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~275_q\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~283_q\)) ) ) ) # ( !\RAM|ram~315_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~275_q\))) # 
-- (\ROM|memROM~18_combout\ & (\RAM|ram~283_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~283_q\,
	datab => \RAM|ALT_INV_ram~275_q\,
	datac => \RAM|ALT_INV_ram~307_q\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \RAM|ALT_INV_ram~315_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~744_combout\);

-- Location: LABCELL_X77_Y6_N12
\RAM|ram~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~748_combout\ = ( \RAM|ram~746_combout\ & ( \RAM|ram~744_combout\ & ( (!\ROM|memROM~21_combout\) # ((!\ROM|memROM~17_combout\ & ((\RAM|ram~745_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~747_combout\))) ) ) ) # ( !\RAM|ram~746_combout\ & ( 
-- \RAM|ram~744_combout\ & ( (!\ROM|memROM~17_combout\ & (((!\ROM|memROM~21_combout\) # (\RAM|ram~745_combout\)))) # (\ROM|memROM~17_combout\ & (\RAM|ram~747_combout\ & (\ROM|memROM~21_combout\))) ) ) ) # ( \RAM|ram~746_combout\ & ( !\RAM|ram~744_combout\ & 
-- ( (!\ROM|memROM~17_combout\ & (((\ROM|memROM~21_combout\ & \RAM|ram~745_combout\)))) # (\ROM|memROM~17_combout\ & (((!\ROM|memROM~21_combout\)) # (\RAM|ram~747_combout\))) ) ) ) # ( !\RAM|ram~746_combout\ & ( !\RAM|ram~744_combout\ & ( 
-- (\ROM|memROM~21_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~745_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~747_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \RAM|ALT_INV_ram~747_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \RAM|ALT_INV_ram~745_combout\,
	datae => \RAM|ALT_INV_ram~746_combout\,
	dataf => \RAM|ALT_INV_ram~744_combout\,
	combout => \RAM|ram~748_combout\);

-- Location: LABCELL_X77_Y6_N18
\RAM|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~759_combout\ = ( \RAM|ram~753_combout\ & ( \RAM|ram~748_combout\ & ( (!\ROM|memROM~23_combout\ & (((\RAM|ram~743_combout\)) # (\ROM|memROM~22_combout\))) # (\ROM|memROM~23_combout\ & ((!\ROM|memROM~22_combout\) # ((\RAM|ram~758_combout\)))) ) ) ) 
-- # ( !\RAM|ram~753_combout\ & ( \RAM|ram~748_combout\ & ( (!\ROM|memROM~23_combout\ & (((\RAM|ram~743_combout\)) # (\ROM|memROM~22_combout\))) # (\ROM|memROM~23_combout\ & (\ROM|memROM~22_combout\ & ((\RAM|ram~758_combout\)))) ) ) ) # ( 
-- \RAM|ram~753_combout\ & ( !\RAM|ram~748_combout\ & ( (!\ROM|memROM~23_combout\ & (!\ROM|memROM~22_combout\ & (\RAM|ram~743_combout\))) # (\ROM|memROM~23_combout\ & ((!\ROM|memROM~22_combout\) # ((\RAM|ram~758_combout\)))) ) ) ) # ( !\RAM|ram~753_combout\ 
-- & ( !\RAM|ram~748_combout\ & ( (!\ROM|memROM~23_combout\ & (!\ROM|memROM~22_combout\ & (\RAM|ram~743_combout\))) # (\ROM|memROM~23_combout\ & (\ROM|memROM~22_combout\ & ((\RAM|ram~758_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \RAM|ALT_INV_ram~743_combout\,
	datad => \RAM|ALT_INV_ram~758_combout\,
	datae => \RAM|ALT_INV_ram~753_combout\,
	dataf => \RAM|ALT_INV_ram~748_combout\,
	combout => \RAM|ram~759_combout\);

-- Location: LABCELL_X77_Y6_N48
\CPU|MUX|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX|saida_MUX[4]~3_combout\ = ( \comb~14_combout\ & ( \RAM|ram~759_combout\ & ( \SW[4]~input_o\ ) ) ) # ( !\comb~14_combout\ & ( \RAM|ram~759_combout\ ) ) # ( \comb~14_combout\ & ( !\RAM|ram~759_combout\ & ( \SW[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_comb~14_combout\,
	dataf => \RAM|ALT_INV_ram~759_combout\,
	combout => \CPU|MUX|saida_MUX[4]~3_combout\);

-- Location: MLABCELL_X78_Y7_N45
\CPU|ULA|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~1_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder[3]~8_combout\ & ((!\CPU|DEC|Equal10~1_combout\ & ((!\CPU|MUX|saida_MUX[4]~3_combout\))) # (\CPU|DEC|Equal10~1_combout\ & (!\ROM|memROM~23_combout\)))) # (\CPU|DEC|saidaDecoder[3]~8_combout\ & 
-- (((!\ROM|memROM~23_combout\)))) ) + ( \CPU|ACU|DOUT\(4) ) + ( \CPU|ULA|Add1~30\ ))
-- \CPU|ULA|Add1~2\ = CARRY(( (!\CPU|DEC|saidaDecoder[3]~8_combout\ & ((!\CPU|DEC|Equal10~1_combout\ & ((!\CPU|MUX|saida_MUX[4]~3_combout\))) # (\CPU|DEC|Equal10~1_combout\ & (!\ROM|memROM~23_combout\)))) # (\CPU|DEC|saidaDecoder[3]~8_combout\ & 
-- (((!\ROM|memROM~23_combout\)))) ) + ( \CPU|ACU|DOUT\(4) ) + ( \CPU|ULA|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111100001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder[3]~8_combout\,
	datab => \CPU|DEC|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \CPU|MUX|ALT_INV_saida_MUX[4]~3_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(4),
	cin => \CPU|ULA|Add1~30\,
	sumout => \CPU|ULA|Add1~1_sumout\,
	cout => \CPU|ULA|Add1~2\);

-- Location: LABCELL_X77_Y7_N12
\CPU|FREG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FREG|DOUT~1_combout\ = ( !\CPU|DEC|saidaDecoder[10]~0_combout\ & ( \CPU|DEC|saidaDecoder[10]~1_combout\ & ( !\CPU|DEC|Equal10~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DEC|ALT_INV_Equal10~0_combout\,
	datae => \CPU|DEC|ALT_INV_saidaDecoder[10]~0_combout\,
	dataf => \CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\,
	combout => \CPU|FREG|DOUT~1_combout\);

-- Location: LABCELL_X74_Y7_N18
\ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~24_combout\ = ( !\CPU|PC|DOUT\(3) & ( (\ROM|memROM~4_combout\ & \ROM|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~24_combout\);

-- Location: IOIBUF_X89_Y6_N55
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: MLABCELL_X78_Y7_N15
\CPU|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~21_sumout\ = SUM(( \CPU|ACU|DOUT\(5) ) + ( \CPU|MUX|saida_MUX[5]~4_combout\ ) + ( \CPU|ULA|Add0~18\ ))
-- \CPU|ULA|Add0~22\ = CARRY(( \CPU|ACU|DOUT\(5) ) + ( \CPU|MUX|saida_MUX[5]~4_combout\ ) + ( \CPU|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX|ALT_INV_saida_MUX[5]~4_combout\,
	datad => \CPU|ACU|ALT_INV_DOUT\(5),
	cin => \CPU|ULA|Add0~18\,
	sumout => \CPU|ULA|Add0~21_sumout\,
	cout => \CPU|ULA|Add0~22\);

-- Location: MLABCELL_X78_Y7_N48
\CPU|ULA|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~5_sumout\ = SUM(( !\CPU|MUX|saida_MUX[5]~4_combout\ ) + ( \CPU|ACU|DOUT\(5) ) + ( \CPU|ULA|Add1~2\ ))
-- \CPU|ULA|Add1~6\ = CARRY(( !\CPU|MUX|saida_MUX[5]~4_combout\ ) + ( \CPU|ACU|DOUT\(5) ) + ( \CPU|ULA|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX|ALT_INV_saida_MUX[5]~4_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(5),
	cin => \CPU|ULA|Add1~2\,
	sumout => \CPU|ULA|Add1~5_sumout\,
	cout => \CPU|ULA|Add1~6\);

-- Location: LABCELL_X79_Y7_N21
\CPU|ULA|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[5]~5_combout\ = ( \CPU|ULA|Add1~5_sumout\ & ( (\CPU|ULA|Equal0~0_combout\) # (\CPU|MUX|saida_MUX[5]~4_combout\) ) ) # ( !\CPU|ULA|Add1~5_sumout\ & ( (\CPU|MUX|saida_MUX[5]~4_combout\ & !\CPU|ULA|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX|ALT_INV_saida_MUX[5]~4_combout\,
	datad => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	dataf => \CPU|ULA|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA|saida[5]~5_combout\);

-- Location: FF_X78_Y7_N17
\CPU|ACU|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~21_sumout\,
	asdata => \CPU|ULA|saida[5]~5_combout\,
	sload => \CPU|ULA|Equal1~0_combout\,
	ena => \CPU|DEC|saidaDecoder[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(5));

-- Location: FF_X77_Y6_N55
\RAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~44_q\);

-- Location: FF_X72_Y7_N11
\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

-- Location: LABCELL_X70_Y8_N30
\RAM|ram~60feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~60feeder_combout\ = ( \CPU|ACU|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(5),
	combout => \RAM|ram~60feeder_combout\);

-- Location: FF_X70_Y8_N31
\RAM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~60feeder_combout\,
	ena => \RAM|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~60_q\);

-- Location: FF_X80_Y7_N8
\RAM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~76_q\);

-- Location: LABCELL_X80_Y7_N6
\RAM|ram~770\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~770_combout\ = ( \RAM|ram~76_q\ & ( \ROM|memROM~21_combout\ & ( (\ROM|memROM~2_combout\) # (\RAM|ram~44_q\) ) ) ) # ( !\RAM|ram~76_q\ & ( \ROM|memROM~21_combout\ & ( (\RAM|ram~44_q\ & !\ROM|memROM~2_combout\) ) ) ) # ( \RAM|ram~76_q\ & ( 
-- !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~28_q\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~60_q\))) ) ) ) # ( !\RAM|ram~76_q\ & ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~28_q\)) # (\ROM|memROM~2_combout\ & 
-- ((\RAM|ram~60_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~44_q\,
	datab => \RAM|ALT_INV_ram~28_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~60_q\,
	datae => \RAM|ALT_INV_ram~76_q\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~770_combout\);

-- Location: FF_X79_Y8_N49
\RAM|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~140_q\);

-- Location: FF_X79_Y8_N7
\RAM|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~92_q\);

-- Location: FF_X79_Y8_N1
\RAM|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~124_q\);

-- Location: FF_X79_Y6_N10
\RAM|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~108_q\);

-- Location: LABCELL_X80_Y7_N0
\RAM|ram~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~772_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~140_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~124_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~108_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~92_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~140_q\,
	datab => \RAM|ALT_INV_ram~92_q\,
	datac => \RAM|ALT_INV_ram~124_q\,
	datad => \RAM|ALT_INV_ram~108_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~772_combout\);

-- Location: FF_X81_Y8_N20
\RAM|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~156_q\);

-- Location: FF_X77_Y8_N46
\RAM|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~172_q\);

-- Location: FF_X71_Y8_N13
\RAM|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~188_q\);

-- Location: FF_X81_Y8_N44
\RAM|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~204_q\);

-- Location: LABCELL_X81_Y8_N42
\RAM|ram~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~771_combout\ = ( \RAM|ram~204_q\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~21_combout\) # (\RAM|ram~188_q\) ) ) ) # ( !\RAM|ram~204_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~188_q\ & !\ROM|memROM~21_combout\) ) ) ) # ( \RAM|ram~204_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~156_q\)) # (\ROM|memROM~21_combout\ & ((\RAM|ram~172_q\))) ) ) ) # ( !\RAM|ram~204_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~156_q\)) # 
-- (\ROM|memROM~21_combout\ & ((\RAM|ram~172_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~156_q\,
	datab => \RAM|ALT_INV_ram~172_q\,
	datac => \RAM|ALT_INV_ram~188_q\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \RAM|ALT_INV_ram~204_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~771_combout\);

-- Location: FF_X77_Y8_N20
\RAM|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~236_q\);

-- Location: FF_X81_Y8_N38
\RAM|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~268_q\);

-- Location: FF_X78_Y8_N28
\RAM|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~220_q\);

-- Location: LABCELL_X80_Y10_N12
\RAM|ram~252feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~252feeder_combout\ = ( \CPU|ACU|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(5),
	combout => \RAM|ram~252feeder_combout\);

-- Location: FF_X80_Y10_N13
\RAM|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~252feeder_combout\,
	ena => \RAM|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~252_q\);

-- Location: LABCELL_X80_Y8_N42
\RAM|ram~773\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~773_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~268_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~252_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~236_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~220_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~236_q\,
	datab => \RAM|ALT_INV_ram~268_q\,
	datac => \RAM|ALT_INV_ram~220_q\,
	datad => \RAM|ALT_INV_ram~252_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~773_combout\);

-- Location: LABCELL_X80_Y7_N15
\RAM|ram~774\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~774_combout\ = ( \RAM|ram~771_combout\ & ( \RAM|ram~773_combout\ & ( ((!\ROM|memROM~17_combout\ & (\RAM|ram~770_combout\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~772_combout\)))) # (\ROM|memROM~23_combout\) ) ) ) # ( !\RAM|ram~771_combout\ & ( 
-- \RAM|ram~773_combout\ & ( (!\ROM|memROM~17_combout\ & (!\ROM|memROM~23_combout\ & (\RAM|ram~770_combout\))) # (\ROM|memROM~17_combout\ & (((\RAM|ram~772_combout\)) # (\ROM|memROM~23_combout\))) ) ) ) # ( \RAM|ram~771_combout\ & ( !\RAM|ram~773_combout\ & 
-- ( (!\ROM|memROM~17_combout\ & (((\RAM|ram~770_combout\)) # (\ROM|memROM~23_combout\))) # (\ROM|memROM~17_combout\ & (!\ROM|memROM~23_combout\ & ((\RAM|ram~772_combout\)))) ) ) ) # ( !\RAM|ram~771_combout\ & ( !\RAM|ram~773_combout\ & ( 
-- (!\ROM|memROM~23_combout\ & ((!\ROM|memROM~17_combout\ & (\RAM|ram~770_combout\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~772_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \RAM|ALT_INV_ram~770_combout\,
	datad => \RAM|ALT_INV_ram~772_combout\,
	datae => \RAM|ALT_INV_ram~771_combout\,
	dataf => \RAM|ALT_INV_ram~773_combout\,
	combout => \RAM|ram~774_combout\);

-- Location: FF_X75_Y7_N1
\RAM|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~484_q\);

-- Location: FF_X75_Y5_N40
\RAM|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~356_q\);

-- Location: FF_X79_Y7_N47
\RAM|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~388_q\);

-- Location: FF_X79_Y7_N26
\RAM|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~516_q\);

-- Location: LABCELL_X79_Y7_N24
\RAM|ram~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~768_combout\ = ( \RAM|ram~516_q\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~2_combout\) # (\RAM|ram~484_q\) ) ) ) # ( !\RAM|ram~516_q\ & ( \ROM|memROM~23_combout\ & ( (\RAM|ram~484_q\ & !\ROM|memROM~2_combout\) ) ) ) # ( \RAM|ram~516_q\ & ( 
-- !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~356_q\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~388_q\))) ) ) ) # ( !\RAM|ram~516_q\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~356_q\)) # (\ROM|memROM~2_combout\ 
-- & ((\RAM|ram~388_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~484_q\,
	datab => \RAM|ALT_INV_ram~356_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~388_q\,
	datae => \RAM|ALT_INV_ram~516_q\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~768_combout\);

-- Location: FF_X74_Y11_N19
\RAM|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~292_q\);

-- Location: LABCELL_X73_Y11_N54
\RAM|ram~420feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~420feeder_combout\ = ( \CPU|ACU|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(5),
	combout => \RAM|ram~420feeder_combout\);

-- Location: FF_X73_Y11_N55
\RAM|ram~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~420feeder_combout\,
	ena => \RAM|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~420_q\);

-- Location: FF_X71_Y7_N16
\RAM|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~324_q\);

-- Location: FF_X79_Y7_N8
\RAM|ram~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~452_q\);

-- Location: LABCELL_X79_Y7_N6
\RAM|ram~766\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~766_combout\ = ( \RAM|ram~452_q\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~2_combout\) # (\RAM|ram~420_q\) ) ) ) # ( !\RAM|ram~452_q\ & ( \ROM|memROM~23_combout\ & ( (\RAM|ram~420_q\ & !\ROM|memROM~2_combout\) ) ) ) # ( \RAM|ram~452_q\ & ( 
-- !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~292_q\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~324_q\))) ) ) ) # ( !\RAM|ram~452_q\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~292_q\)) # (\ROM|memROM~2_combout\ 
-- & ((\RAM|ram~324_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~292_q\,
	datab => \RAM|ALT_INV_ram~420_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~324_q\,
	datae => \RAM|ALT_INV_ram~452_q\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~766_combout\);

-- Location: FF_X73_Y5_N7
\RAM|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~340_q\);

-- Location: FF_X71_Y6_N35
\RAM|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~372_q\);

-- Location: FF_X73_Y5_N19
\RAM|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~468_q\);

-- Location: FF_X80_Y7_N38
\RAM|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~500_q\);

-- Location: LABCELL_X80_Y7_N36
\RAM|ram~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~767_combout\ = ( \RAM|ram~500_q\ & ( \ROM|memROM~23_combout\ & ( (\RAM|ram~468_q\) # (\ROM|memROM~2_combout\) ) ) ) # ( !\RAM|ram~500_q\ & ( \ROM|memROM~23_combout\ & ( (!\ROM|memROM~2_combout\ & \RAM|ram~468_q\) ) ) ) # ( \RAM|ram~500_q\ & ( 
-- !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~340_q\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~372_q\))) ) ) ) # ( !\RAM|ram~500_q\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~340_q\)) # (\ROM|memROM~2_combout\ 
-- & ((\RAM|ram~372_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~340_q\,
	datab => \RAM|ALT_INV_ram~372_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~468_q\,
	datae => \RAM|ALT_INV_ram~500_q\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~767_combout\);

-- Location: FF_X74_Y11_N40
\RAM|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~276_q\);

-- Location: FF_X73_Y10_N4
\RAM|ram~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~404_q\);

-- Location: FF_X71_Y7_N59
\RAM|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~308_q\);

-- Location: FF_X78_Y9_N32
\RAM|ram~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~436_q\);

-- Location: MLABCELL_X78_Y9_N30
\RAM|ram~765\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~765_combout\ = ( \RAM|ram~436_q\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~2_combout\) # (\RAM|ram~404_q\) ) ) ) # ( !\RAM|ram~436_q\ & ( \ROM|memROM~23_combout\ & ( (\RAM|ram~404_q\ & !\ROM|memROM~2_combout\) ) ) ) # ( \RAM|ram~436_q\ & ( 
-- !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~276_q\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~308_q\))) ) ) ) # ( !\RAM|ram~436_q\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~276_q\)) # (\ROM|memROM~2_combout\ 
-- & ((\RAM|ram~308_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~276_q\,
	datab => \RAM|ALT_INV_ram~404_q\,
	datac => \RAM|ALT_INV_ram~308_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~436_q\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~765_combout\);

-- Location: LABCELL_X79_Y7_N42
\RAM|ram~769\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~769_combout\ = ( \RAM|ram~767_combout\ & ( \RAM|ram~765_combout\ & ( (!\ROM|memROM~21_combout\) # ((!\ROM|memROM~17_combout\ & ((\RAM|ram~766_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~768_combout\))) ) ) ) # ( !\RAM|ram~767_combout\ & ( 
-- \RAM|ram~765_combout\ & ( (!\ROM|memROM~21_combout\ & (((!\ROM|memROM~17_combout\)))) # (\ROM|memROM~21_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~766_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~768_combout\)))) ) ) ) # ( 
-- \RAM|ram~767_combout\ & ( !\RAM|ram~765_combout\ & ( (!\ROM|memROM~21_combout\ & (((\ROM|memROM~17_combout\)))) # (\ROM|memROM~21_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~766_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~768_combout\)))) ) 
-- ) ) # ( !\RAM|ram~767_combout\ & ( !\RAM|ram~765_combout\ & ( (\ROM|memROM~21_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~766_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~768_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~768_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~766_combout\,
	datae => \RAM|ALT_INV_ram~767_combout\,
	dataf => \RAM|ALT_INV_ram~765_combout\,
	combout => \RAM|ram~769_combout\);

-- Location: FF_X74_Y6_N40
\RAM|ram~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~460_q\);

-- Location: FF_X78_Y7_N28
\RAM|ram~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~428_q\);

-- Location: FF_X74_Y5_N23
\RAM|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~492_q\);

-- Location: FF_X74_Y6_N8
\RAM|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~524_q\);

-- Location: LABCELL_X75_Y6_N9
\RAM|ram~778\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~778_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~524_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~460_q\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~492_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~428_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~460_q\,
	datab => \RAM|ALT_INV_ram~428_q\,
	datac => \RAM|ALT_INV_ram~492_q\,
	datad => \RAM|ALT_INV_ram~524_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~778_combout\);

-- Location: FF_X74_Y9_N44
\RAM|ram~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~412_q\);

-- Location: FF_X74_Y9_N40
\RAM|ram~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~444_q\);

-- Location: FF_X73_Y9_N20
\RAM|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~476_q\);

-- Location: FF_X79_Y9_N7
\RAM|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~508_q\);

-- Location: MLABCELL_X78_Y9_N0
\RAM|ram~777\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~777_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~508_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~476_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~17_combout\ & ( 
-- \RAM|ram~444_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~17_combout\ & ( \RAM|ram~412_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~412_q\,
	datab => \RAM|ALT_INV_ram~444_q\,
	datac => \RAM|ALT_INV_ram~476_q\,
	datad => \RAM|ALT_INV_ram~508_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~777_combout\);

-- Location: FF_X74_Y7_N59
\RAM|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~300_q\);

-- Location: FF_X73_Y6_N2
\RAM|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~332_q\);

-- Location: FF_X73_Y6_N22
\RAM|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~396_q\);

-- Location: FF_X74_Y6_N28
\RAM|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~364_q\);

-- Location: LABCELL_X74_Y6_N18
\RAM|ram~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~776_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~396_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~364_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~17_combout\ & ( 
-- \RAM|ram~332_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~17_combout\ & ( \RAM|ram~300_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~300_q\,
	datab => \RAM|ALT_INV_ram~332_q\,
	datac => \RAM|ALT_INV_ram~396_q\,
	datad => \RAM|ALT_INV_ram~364_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~776_combout\);

-- Location: FF_X75_Y5_N47
\RAM|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~284_q\);

-- Location: FF_X73_Y9_N55
\RAM|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~348_q\);

-- Location: LABCELL_X70_Y6_N39
\RAM|ram~316feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~316feeder_combout\ = ( \CPU|ACU|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(5),
	combout => \RAM|ram~316feeder_combout\);

-- Location: FF_X70_Y6_N40
\RAM|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~316feeder_combout\,
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~316_q\);

-- Location: FF_X72_Y6_N44
\RAM|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~380_q\);

-- Location: MLABCELL_X72_Y6_N42
\RAM|ram~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~775_combout\ = ( \RAM|ram~380_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~316_q\) # (\ROM|memROM~17_combout\) ) ) ) # ( !\RAM|ram~380_q\ & ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~17_combout\ & \RAM|ram~316_q\) ) ) ) # ( \RAM|ram~380_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~17_combout\ & (\RAM|ram~284_q\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~348_q\))) ) ) ) # ( !\RAM|ram~380_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~17_combout\ & (\RAM|ram~284_q\)) # 
-- (\ROM|memROM~17_combout\ & ((\RAM|ram~348_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~284_q\,
	datab => \RAM|ALT_INV_ram~348_q\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~316_q\,
	datae => \RAM|ALT_INV_ram~380_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~775_combout\);

-- Location: LABCELL_X79_Y7_N54
\RAM|ram~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~779_combout\ = ( \RAM|ram~776_combout\ & ( \RAM|ram~775_combout\ & ( (!\ROM|memROM~23_combout\) # ((!\ROM|memROM~21_combout\ & ((\RAM|ram~777_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~778_combout\))) ) ) ) # ( !\RAM|ram~776_combout\ & ( 
-- \RAM|ram~775_combout\ & ( (!\ROM|memROM~23_combout\ & (!\ROM|memROM~21_combout\)) # (\ROM|memROM~23_combout\ & ((!\ROM|memROM~21_combout\ & ((\RAM|ram~777_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~778_combout\)))) ) ) ) # ( \RAM|ram~776_combout\ 
-- & ( !\RAM|ram~775_combout\ & ( (!\ROM|memROM~23_combout\ & (\ROM|memROM~21_combout\)) # (\ROM|memROM~23_combout\ & ((!\ROM|memROM~21_combout\ & ((\RAM|ram~777_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~778_combout\)))) ) ) ) # ( 
-- !\RAM|ram~776_combout\ & ( !\RAM|ram~775_combout\ & ( (\ROM|memROM~23_combout\ & ((!\ROM|memROM~21_combout\ & ((\RAM|ram~777_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~778_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \RAM|ALT_INV_ram~778_combout\,
	datad => \RAM|ALT_INV_ram~777_combout\,
	datae => \RAM|ALT_INV_ram~776_combout\,
	dataf => \RAM|ALT_INV_ram~775_combout\,
	combout => \RAM|ram~779_combout\);

-- Location: FF_X78_Y8_N43
\RAM|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~212_q\);

-- Location: FF_X80_Y8_N37
\RAM|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~260_q\);

-- Location: FF_X77_Y8_N10
\RAM|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~228_q\);

-- Location: FF_X70_Y7_N35
\RAM|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~244_q\);

-- Location: LABCELL_X80_Y7_N42
\RAM|ram~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~763_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~260_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~244_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~228_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~212_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~212_q\,
	datab => \RAM|ALT_INV_ram~260_q\,
	datac => \RAM|ALT_INV_ram~228_q\,
	datad => \RAM|ALT_INV_ram~244_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~763_combout\);

-- Location: LABCELL_X80_Y10_N54
\RAM|ram~164feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~164feeder_combout\ = ( \CPU|ACU|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(5),
	combout => \RAM|ram~164feeder_combout\);

-- Location: FF_X80_Y10_N55
\RAM|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~164feeder_combout\,
	ena => \RAM|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~164_q\);

-- Location: FF_X75_Y9_N19
\RAM|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~180_q\);

-- Location: FF_X73_Y10_N17
\RAM|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~148_q\);

-- Location: FF_X80_Y8_N55
\RAM|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~196_q\);

-- Location: LABCELL_X80_Y7_N24
\RAM|ram~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~761_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~196_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~180_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~164_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~148_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~164_q\,
	datab => \RAM|ALT_INV_ram~180_q\,
	datac => \RAM|ALT_INV_ram~148_q\,
	datad => \RAM|ALT_INV_ram~196_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~761_combout\);

-- Location: FF_X79_Y6_N55
\RAM|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~84_q\);

-- Location: FF_X80_Y8_N31
\RAM|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~132_q\);

-- Location: FF_X68_Y7_N40
\RAM|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~116_q\);

-- Location: FF_X75_Y7_N13
\RAM|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~100_q\);

-- Location: LABCELL_X80_Y7_N57
\RAM|ram~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~762_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~132_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~116_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~100_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~84_q\,
	datab => \RAM|ALT_INV_ram~132_q\,
	datac => \RAM|ALT_INV_ram~116_q\,
	datad => \RAM|ALT_INV_ram~100_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~762_combout\);

-- Location: MLABCELL_X78_Y10_N15
\RAM|ram~52feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~52feeder_combout\ = ( \CPU|ACU|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(5),
	combout => \RAM|ram~52feeder_combout\);

-- Location: FF_X78_Y10_N16
\RAM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~52feeder_combout\,
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~52_q\);

-- Location: FF_X79_Y10_N8
\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

-- Location: FF_X79_Y10_N23
\RAM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~68_q\);

-- Location: FF_X79_Y10_N50
\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

-- Location: LABCELL_X79_Y10_N48
\RAM|ram~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~760_combout\ = ( \RAM|ram~20_q\ & ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~52_q\)) # (\ROM|memROM~21_combout\ & ((\RAM|ram~68_q\))) ) ) ) # ( !\RAM|ram~20_q\ & ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~21_combout\ & 
-- (\RAM|ram~52_q\)) # (\ROM|memROM~21_combout\ & ((\RAM|ram~68_q\))) ) ) ) # ( \RAM|ram~20_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~21_combout\) # (\RAM|ram~36_q\) ) ) ) # ( !\RAM|ram~20_q\ & ( !\ROM|memROM~2_combout\ & ( (\RAM|ram~36_q\ & 
-- \ROM|memROM~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~52_q\,
	datab => \RAM|ALT_INV_ram~36_q\,
	datac => \RAM|ALT_INV_ram~68_q\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \RAM|ALT_INV_ram~20_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~760_combout\);

-- Location: LABCELL_X80_Y7_N51
\RAM|ram~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~764_combout\ = ( \RAM|ram~762_combout\ & ( \RAM|ram~760_combout\ & ( (!\ROM|memROM~23_combout\) # ((!\ROM|memROM~17_combout\ & ((\RAM|ram~761_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~763_combout\))) ) ) ) # ( !\RAM|ram~762_combout\ & ( 
-- \RAM|ram~760_combout\ & ( (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~23_combout\) # ((\RAM|ram~761_combout\)))) # (\ROM|memROM~17_combout\ & (\ROM|memROM~23_combout\ & (\RAM|ram~763_combout\))) ) ) ) # ( \RAM|ram~762_combout\ & ( !\RAM|ram~760_combout\ & 
-- ( (!\ROM|memROM~17_combout\ & (\ROM|memROM~23_combout\ & ((\RAM|ram~761_combout\)))) # (\ROM|memROM~17_combout\ & ((!\ROM|memROM~23_combout\) # ((\RAM|ram~763_combout\)))) ) ) ) # ( !\RAM|ram~762_combout\ & ( !\RAM|ram~760_combout\ & ( 
-- (\ROM|memROM~23_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~761_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~763_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \RAM|ALT_INV_ram~763_combout\,
	datad => \RAM|ALT_INV_ram~761_combout\,
	datae => \RAM|ALT_INV_ram~762_combout\,
	dataf => \RAM|ALT_INV_ram~760_combout\,
	combout => \RAM|ram~764_combout\);

-- Location: LABCELL_X79_Y7_N12
\RAM|ram~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~780_combout\ = ( \RAM|ram~779_combout\ & ( \RAM|ram~764_combout\ & ( (!\ROM|memROM~22_combout\ & ((!\ROM|memROM~18_combout\) # ((\RAM|ram~774_combout\)))) # (\ROM|memROM~22_combout\ & (((\RAM|ram~769_combout\)) # (\ROM|memROM~18_combout\))) ) ) ) 
-- # ( !\RAM|ram~779_combout\ & ( \RAM|ram~764_combout\ & ( (!\ROM|memROM~22_combout\ & ((!\ROM|memROM~18_combout\) # ((\RAM|ram~774_combout\)))) # (\ROM|memROM~22_combout\ & (!\ROM|memROM~18_combout\ & ((\RAM|ram~769_combout\)))) ) ) ) # ( 
-- \RAM|ram~779_combout\ & ( !\RAM|ram~764_combout\ & ( (!\ROM|memROM~22_combout\ & (\ROM|memROM~18_combout\ & (\RAM|ram~774_combout\))) # (\ROM|memROM~22_combout\ & (((\RAM|ram~769_combout\)) # (\ROM|memROM~18_combout\))) ) ) ) # ( !\RAM|ram~779_combout\ & 
-- ( !\RAM|ram~764_combout\ & ( (!\ROM|memROM~22_combout\ & (\ROM|memROM~18_combout\ & (\RAM|ram~774_combout\))) # (\ROM|memROM~22_combout\ & (!\ROM|memROM~18_combout\ & ((\RAM|ram~769_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \RAM|ALT_INV_ram~774_combout\,
	datad => \RAM|ALT_INV_ram~769_combout\,
	datae => \RAM|ALT_INV_ram~779_combout\,
	dataf => \RAM|ALT_INV_ram~764_combout\,
	combout => \RAM|ram~780_combout\);

-- Location: LABCELL_X79_Y7_N18
\CPU|MUX|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX|saida_MUX[5]~4_combout\ = ( \RAM|ram~780_combout\ & ( (!\CPU|DEC|saidaDecoder[3]~6_combout\ & (((!\comb~14_combout\) # (\SW[5]~input_o\)))) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & (\ROM|memROM~22_combout\)) ) ) # ( !\RAM|ram~780_combout\ & ( 
-- (!\CPU|DEC|saidaDecoder[3]~6_combout\ & (((\SW[5]~input_o\ & \comb~14_combout\)))) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & (\ROM|memROM~22_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110111011101000111011101110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~6_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_comb~14_combout\,
	dataf => \RAM|ALT_INV_ram~780_combout\,
	combout => \CPU|MUX|saida_MUX[5]~4_combout\);

-- Location: MLABCELL_X78_Y7_N18
\CPU|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~25_sumout\ = SUM(( \CPU|ACU|DOUT\(6) ) + ( (!\CPU|DEC|saidaDecoder[3]~8_combout\ & ((!\CPU|DEC|Equal10~1_combout\ & ((\CPU|MUX|saida_MUX[6]~5_combout\))) # (\CPU|DEC|Equal10~1_combout\ & (\ROM|memROM~14_combout\)))) # 
-- (\CPU|DEC|saidaDecoder[3]~8_combout\ & (((\ROM|memROM~14_combout\)))) ) + ( \CPU|ULA|Add0~22\ ))
-- \CPU|ULA|Add0~26\ = CARRY(( \CPU|ACU|DOUT\(6) ) + ( (!\CPU|DEC|saidaDecoder[3]~8_combout\ & ((!\CPU|DEC|Equal10~1_combout\ & ((\CPU|MUX|saida_MUX[6]~5_combout\))) # (\CPU|DEC|Equal10~1_combout\ & (\ROM|memROM~14_combout\)))) # 
-- (\CPU|DEC|saidaDecoder[3]~8_combout\ & (((\ROM|memROM~14_combout\)))) ) + ( \CPU|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder[3]~8_combout\,
	datab => \CPU|DEC|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \CPU|ACU|ALT_INV_DOUT\(6),
	dataf => \CPU|MUX|ALT_INV_saida_MUX[6]~5_combout\,
	cin => \CPU|ULA|Add0~22\,
	sumout => \CPU|ULA|Add0~25_sumout\,
	cout => \CPU|ULA|Add0~26\);

-- Location: LABCELL_X77_Y7_N45
\CPU|ULA|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[6]~6_combout\ = ( \ROM|memROM~14_combout\ & ( \CPU|ULA|Add1~9_sumout\ & ( ((\CPU|DEC|saidaDecoder[3]~6_combout\) # (\CPU|ULA|Equal0~0_combout\)) # (\CPU|MUX|saida_MUX[6]~5_combout\) ) ) ) # ( !\ROM|memROM~14_combout\ & ( 
-- \CPU|ULA|Add1~9_sumout\ & ( ((\CPU|MUX|saida_MUX[6]~5_combout\ & !\CPU|DEC|saidaDecoder[3]~6_combout\)) # (\CPU|ULA|Equal0~0_combout\) ) ) ) # ( \ROM|memROM~14_combout\ & ( !\CPU|ULA|Add1~9_sumout\ & ( (!\CPU|ULA|Equal0~0_combout\ & 
-- ((\CPU|DEC|saidaDecoder[3]~6_combout\) # (\CPU|MUX|saida_MUX[6]~5_combout\))) ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\CPU|ULA|Add1~9_sumout\ & ( (\CPU|MUX|saida_MUX[6]~5_combout\ & (!\CPU|ULA|Equal0~0_combout\ & !\CPU|DEC|saidaDecoder[3]~6_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100001111000000111111000011110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MUX|ALT_INV_saida_MUX[6]~5_combout\,
	datac => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	datad => \CPU|DEC|ALT_INV_saidaDecoder[3]~6_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \CPU|ULA|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA|saida[6]~6_combout\);

-- Location: FF_X78_Y7_N20
\CPU|ACU|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~25_sumout\,
	asdata => \CPU|ULA|saida[6]~6_combout\,
	sload => \CPU|ULA|Equal1~0_combout\,
	ena => \CPU|DEC|saidaDecoder[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(6));

-- Location: FF_X73_Y10_N1
\RAM|ram~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~405_q\);

-- Location: LABCELL_X73_Y5_N21
\RAM|ram~469feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~469feeder_combout\ = ( \CPU|ACU|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(6),
	combout => \RAM|ram~469feeder_combout\);

-- Location: FF_X73_Y5_N22
\RAM|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~469feeder_combout\,
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~469_q\);

-- Location: FF_X74_Y11_N29
\RAM|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~485_q\);

-- Location: FF_X73_Y11_N43
\RAM|ram~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~421_q\);

-- Location: LABCELL_X74_Y10_N42
\RAM|ram~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~788_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~485_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~469_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~17_combout\ & ( 
-- \RAM|ram~421_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~17_combout\ & ( \RAM|ram~405_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~405_q\,
	datab => \RAM|ALT_INV_ram~469_q\,
	datac => \RAM|ALT_INV_ram~485_q\,
	datad => \RAM|ALT_INV_ram~421_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~788_combout\);

-- Location: LABCELL_X73_Y5_N33
\RAM|ram~341feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~341feeder_combout\ = ( \CPU|ACU|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(6),
	combout => \RAM|ram~341feeder_combout\);

-- Location: FF_X73_Y5_N34
\RAM|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~341feeder_combout\,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~341_q\);

-- Location: FF_X74_Y11_N16
\RAM|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~293_q\);

-- Location: FF_X74_Y11_N7
\RAM|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~277_q\);

-- Location: FF_X75_Y5_N38
\RAM|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~357_q\);

-- Location: LABCELL_X75_Y5_N36
\RAM|ram~786\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~786_combout\ = ( \RAM|ram~357_q\ & ( \ROM|memROM~21_combout\ & ( (\ROM|memROM~17_combout\) # (\RAM|ram~293_q\) ) ) ) # ( !\RAM|ram~357_q\ & ( \ROM|memROM~21_combout\ & ( (\RAM|ram~293_q\ & !\ROM|memROM~17_combout\) ) ) ) # ( \RAM|ram~357_q\ & ( 
-- !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~17_combout\ & ((\RAM|ram~277_q\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~341_q\)) ) ) ) # ( !\RAM|ram~357_q\ & ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~17_combout\ & ((\RAM|ram~277_q\))) # 
-- (\ROM|memROM~17_combout\ & (\RAM|ram~341_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~341_q\,
	datab => \RAM|ALT_INV_ram~293_q\,
	datac => \RAM|ALT_INV_ram~277_q\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \RAM|ALT_INV_ram~357_q\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~786_combout\);

-- Location: FF_X74_Y5_N7
\RAM|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~493_q\);

-- Location: FF_X74_Y9_N10
\RAM|ram~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~413_q\);

-- Location: FF_X74_Y9_N4
\RAM|ram~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~429_q\);

-- Location: FF_X73_Y9_N44
\RAM|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~477_q\);

-- Location: LABCELL_X75_Y9_N21
\RAM|ram~789\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~789_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~493_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~477_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~17_combout\ & ( 
-- \RAM|ram~429_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~17_combout\ & ( \RAM|ram~413_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~493_q\,
	datab => \RAM|ALT_INV_ram~413_q\,
	datac => \RAM|ALT_INV_ram~429_q\,
	datad => \RAM|ALT_INV_ram~477_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~789_combout\);

-- Location: FF_X74_Y7_N13
\RAM|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~301_q\);

-- Location: FF_X73_Y9_N31
\RAM|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~349_q\);

-- Location: LABCELL_X75_Y5_N27
\RAM|ram~285feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~285feeder_combout\ = \CPU|ACU|DOUT\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ACU|ALT_INV_DOUT\(6),
	combout => \RAM|ram~285feeder_combout\);

-- Location: FF_X75_Y5_N29
\RAM|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~285feeder_combout\,
	ena => \RAM|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~285_q\);

-- Location: FF_X75_Y5_N14
\RAM|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~365_q\);

-- Location: LABCELL_X75_Y5_N48
\RAM|ram~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~787_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~365_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~349_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~17_combout\ & ( 
-- \RAM|ram~301_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~17_combout\ & ( \RAM|ram~285_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~301_q\,
	datab => \RAM|ALT_INV_ram~349_q\,
	datac => \RAM|ALT_INV_ram~285_q\,
	datad => \RAM|ALT_INV_ram~365_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~787_combout\);

-- Location: LABCELL_X77_Y8_N0
\RAM|ram~790\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~790_combout\ = ( \RAM|ram~789_combout\ & ( \RAM|ram~787_combout\ & ( ((!\ROM|memROM~23_combout\ & ((\RAM|ram~786_combout\))) # (\ROM|memROM~23_combout\ & (\RAM|ram~788_combout\))) # (\ROM|memROM~18_combout\) ) ) ) # ( !\RAM|ram~789_combout\ & ( 
-- \RAM|ram~787_combout\ & ( (!\ROM|memROM~23_combout\ & (((\RAM|ram~786_combout\)) # (\ROM|memROM~18_combout\))) # (\ROM|memROM~23_combout\ & (!\ROM|memROM~18_combout\ & (\RAM|ram~788_combout\))) ) ) ) # ( \RAM|ram~789_combout\ & ( !\RAM|ram~787_combout\ & 
-- ( (!\ROM|memROM~23_combout\ & (!\ROM|memROM~18_combout\ & ((\RAM|ram~786_combout\)))) # (\ROM|memROM~23_combout\ & (((\RAM|ram~788_combout\)) # (\ROM|memROM~18_combout\))) ) ) ) # ( !\RAM|ram~789_combout\ & ( !\RAM|ram~787_combout\ & ( 
-- (!\ROM|memROM~18_combout\ & ((!\ROM|memROM~23_combout\ & ((\RAM|ram~786_combout\))) # (\ROM|memROM~23_combout\ & (\RAM|ram~788_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \RAM|ALT_INV_ram~788_combout\,
	datad => \RAM|ALT_INV_ram~786_combout\,
	datae => \RAM|ALT_INV_ram~789_combout\,
	dataf => \RAM|ALT_INV_ram~787_combout\,
	combout => \RAM|ram~790_combout\);

-- Location: FF_X73_Y7_N58
\RAM|ram~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~453_q\);

-- Location: FF_X74_Y8_N47
\RAM|ram~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~445_q\);

-- Location: FF_X73_Y7_N17
\RAM|ram~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~437_q\);

-- Location: FF_X71_Y8_N50
\RAM|ram~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~461_q\);

-- Location: LABCELL_X71_Y8_N48
\RAM|ram~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~797_combout\ = ( \RAM|ram~461_q\ & ( \ROM|memROM~21_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~453_q\) ) ) ) # ( !\RAM|ram~461_q\ & ( \ROM|memROM~21_combout\ & ( (\RAM|ram~453_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~461_q\ & ( 
-- !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~437_q\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~445_q\)) ) ) ) # ( !\RAM|ram~461_q\ & ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~437_q\))) # 
-- (\ROM|memROM~18_combout\ & (\RAM|ram~445_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~453_q\,
	datab => \RAM|ALT_INV_ram~445_q\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \RAM|ALT_INV_ram~437_q\,
	datae => \RAM|ALT_INV_ram~461_q\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~797_combout\);

-- Location: FF_X71_Y7_N52
\RAM|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~309_q\);

-- Location: FF_X74_Y10_N52
\RAM|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~317_q\);

-- Location: FF_X71_Y7_N46
\RAM|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~325_q\);

-- Location: FF_X74_Y10_N20
\RAM|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~333_q\);

-- Location: LABCELL_X74_Y10_N18
\RAM|ram~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~796_combout\ = ( \RAM|ram~333_q\ & ( \ROM|memROM~18_combout\ & ( (\ROM|memROM~21_combout\) # (\RAM|ram~317_q\) ) ) ) # ( !\RAM|ram~333_q\ & ( \ROM|memROM~18_combout\ & ( (\RAM|ram~317_q\ & !\ROM|memROM~21_combout\) ) ) ) # ( \RAM|ram~333_q\ & ( 
-- !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~309_q\)) # (\ROM|memROM~21_combout\ & ((\RAM|ram~325_q\))) ) ) ) # ( !\RAM|ram~333_q\ & ( !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~309_q\)) # 
-- (\ROM|memROM~21_combout\ & ((\RAM|ram~325_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~309_q\,
	datab => \RAM|ALT_INV_ram~317_q\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \RAM|ALT_INV_ram~325_q\,
	datae => \RAM|ALT_INV_ram~333_q\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~796_combout\);

-- Location: FF_X72_Y8_N23
\RAM|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~517_q\);

-- Location: FF_X72_Y9_N37
\RAM|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~509_q\);

-- Location: FF_X74_Y8_N23
\RAM|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~501_q\);

-- Location: FF_X71_Y8_N56
\RAM|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~525_q\);

-- Location: LABCELL_X71_Y8_N54
\RAM|ram~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~799_combout\ = ( \RAM|ram~525_q\ & ( \ROM|memROM~21_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~517_q\) ) ) ) # ( !\RAM|ram~525_q\ & ( \ROM|memROM~21_combout\ & ( (\RAM|ram~517_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~525_q\ & ( 
-- !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~501_q\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~509_q\)) ) ) ) # ( !\RAM|ram~525_q\ & ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~501_q\))) # 
-- (\ROM|memROM~18_combout\ & (\RAM|ram~509_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~517_q\,
	datab => \RAM|ALT_INV_ram~509_q\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \RAM|ALT_INV_ram~501_q\,
	datae => \RAM|ALT_INV_ram~525_q\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~799_combout\);

-- Location: FF_X72_Y8_N2
\RAM|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~389_q\);

-- Location: FF_X71_Y6_N7
\RAM|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~397_q\);

-- Location: FF_X71_Y6_N38
\RAM|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~381_q\);

-- Location: LABCELL_X71_Y6_N21
\RAM|ram~373feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~373feeder_combout\ = ( \CPU|ACU|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(6),
	combout => \RAM|ram~373feeder_combout\);

-- Location: FF_X71_Y6_N22
\RAM|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~373feeder_combout\,
	ena => \RAM|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~373_q\);

-- Location: MLABCELL_X72_Y6_N27
\RAM|ram~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~798_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~18_combout\ & ( \RAM|ram~397_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~18_combout\ & ( \RAM|ram~381_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~18_combout\ & ( 
-- \RAM|ram~389_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~18_combout\ & ( \RAM|ram~373_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~389_q\,
	datab => \RAM|ALT_INV_ram~397_q\,
	datac => \RAM|ALT_INV_ram~381_q\,
	datad => \RAM|ALT_INV_ram~373_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~798_combout\);

-- Location: LABCELL_X77_Y8_N42
\RAM|ram~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~800_combout\ = ( \RAM|ram~799_combout\ & ( \RAM|ram~798_combout\ & ( ((!\ROM|memROM~23_combout\ & ((\RAM|ram~796_combout\))) # (\ROM|memROM~23_combout\ & (\RAM|ram~797_combout\))) # (\ROM|memROM~17_combout\) ) ) ) # ( !\RAM|ram~799_combout\ & ( 
-- \RAM|ram~798_combout\ & ( (!\ROM|memROM~23_combout\ & (((\RAM|ram~796_combout\)) # (\ROM|memROM~17_combout\))) # (\ROM|memROM~23_combout\ & (!\ROM|memROM~17_combout\ & (\RAM|ram~797_combout\))) ) ) ) # ( \RAM|ram~799_combout\ & ( !\RAM|ram~798_combout\ & 
-- ( (!\ROM|memROM~23_combout\ & (!\ROM|memROM~17_combout\ & ((\RAM|ram~796_combout\)))) # (\ROM|memROM~23_combout\ & (((\RAM|ram~797_combout\)) # (\ROM|memROM~17_combout\))) ) ) ) # ( !\RAM|ram~799_combout\ & ( !\RAM|ram~798_combout\ & ( 
-- (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~23_combout\ & ((\RAM|ram~796_combout\))) # (\ROM|memROM~23_combout\ & (\RAM|ram~797_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \RAM|ALT_INV_ram~797_combout\,
	datad => \RAM|ALT_INV_ram~796_combout\,
	datae => \RAM|ALT_INV_ram~799_combout\,
	dataf => \RAM|ALT_INV_ram~798_combout\,
	combout => \RAM|ram~800_combout\);

-- Location: MLABCELL_X78_Y11_N48
\RAM|ram~69feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~69feeder_combout\ = ( \CPU|ACU|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(6),
	combout => \RAM|ram~69feeder_combout\);

-- Location: FF_X78_Y11_N49
\RAM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~69feeder_combout\,
	ena => \RAM|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~69_q\);

-- Location: FF_X75_Y9_N37
\RAM|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~181_q\);

-- Location: FF_X80_Y8_N13
\RAM|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~197_q\);

-- Location: FF_X78_Y10_N37
\RAM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~53_q\);

-- Location: MLABCELL_X78_Y8_N21
\RAM|ram~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~791_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~197_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~181_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~69_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~69_q\,
	datab => \RAM|ALT_INV_ram~181_q\,
	datac => \RAM|ALT_INV_ram~197_q\,
	datad => \RAM|ALT_INV_ram~53_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~791_combout\);

-- Location: FF_X79_Y8_N29
\RAM|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~141_q\);

-- Location: FF_X79_Y8_N47
\RAM|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~125_q\);

-- Location: FF_X77_Y6_N22
\RAM|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~253_q\);

-- Location: FF_X81_Y8_N40
\RAM|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~269_q\);

-- Location: LABCELL_X79_Y8_N42
\RAM|ram~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~794_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~269_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~253_q\ ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~141_q\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~125_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~141_q\,
	datab => \RAM|ALT_INV_ram~125_q\,
	datac => \RAM|ALT_INV_ram~253_q\,
	datad => \RAM|ALT_INV_ram~269_q\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~794_combout\);

-- Location: FF_X80_Y8_N20
\RAM|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~133_q\);

-- Location: LABCELL_X70_Y8_N15
\RAM|ram~117feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~117feeder_combout\ = ( \CPU|ACU|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(6),
	combout => \RAM|ram~117feeder_combout\);

-- Location: FF_X70_Y8_N16
\RAM|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~117feeder_combout\,
	ena => \RAM|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~117_q\);

-- Location: LABCELL_X71_Y9_N18
\RAM|ram~245feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~245feeder_combout\ = ( \CPU|ACU|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(6),
	combout => \RAM|ram~245feeder_combout\);

-- Location: FF_X71_Y9_N19
\RAM|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~245feeder_combout\,
	ena => \RAM|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~245_q\);

-- Location: FF_X80_Y8_N2
\RAM|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~261_q\);

-- Location: LABCELL_X80_Y8_N0
\RAM|ram~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~793_combout\ = ( \RAM|ram~261_q\ & ( \ROM|memROM~21_combout\ & ( (\ROM|memROM~23_combout\) # (\RAM|ram~133_q\) ) ) ) # ( !\RAM|ram~261_q\ & ( \ROM|memROM~21_combout\ & ( (\RAM|ram~133_q\ & !\ROM|memROM~23_combout\) ) ) ) # ( \RAM|ram~261_q\ & ( 
-- !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~23_combout\ & (\RAM|ram~117_q\)) # (\ROM|memROM~23_combout\ & ((\RAM|ram~245_q\))) ) ) ) # ( !\RAM|ram~261_q\ & ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~23_combout\ & (\RAM|ram~117_q\)) # 
-- (\ROM|memROM~23_combout\ & ((\RAM|ram~245_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~133_q\,
	datab => \RAM|ALT_INV_ram~117_q\,
	datac => \RAM|ALT_INV_ram~245_q\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	datae => \RAM|ALT_INV_ram~261_q\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~793_combout\);

-- Location: LABCELL_X75_Y10_N36
\RAM|ram~61feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~61feeder_combout\ = ( \CPU|ACU|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(6),
	combout => \RAM|ram~61feeder_combout\);

-- Location: FF_X75_Y10_N37
\RAM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~61feeder_combout\,
	ena => \RAM|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~61_q\);

-- Location: FF_X71_Y8_N40
\RAM|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~189_q\);

-- Location: FF_X78_Y10_N19
\RAM|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~77_q\);

-- Location: FF_X81_Y8_N26
\RAM|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~205_q\);

-- Location: LABCELL_X81_Y8_N24
\RAM|ram~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~792_combout\ = ( \RAM|ram~205_q\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~21_combout\) # (\RAM|ram~189_q\) ) ) ) # ( !\RAM|ram~205_q\ & ( \ROM|memROM~23_combout\ & ( (\RAM|ram~189_q\ & !\ROM|memROM~21_combout\) ) ) ) # ( \RAM|ram~205_q\ & ( 
-- !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~61_q\)) # (\ROM|memROM~21_combout\ & ((\RAM|ram~77_q\))) ) ) ) # ( !\RAM|ram~205_q\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~61_q\)) # 
-- (\ROM|memROM~21_combout\ & ((\RAM|ram~77_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~61_q\,
	datab => \RAM|ALT_INV_ram~189_q\,
	datac => \RAM|ALT_INV_ram~77_q\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \RAM|ALT_INV_ram~205_q\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~792_combout\);

-- Location: LABCELL_X77_Y8_N54
\RAM|ram~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~795_combout\ = ( \RAM|ram~793_combout\ & ( \RAM|ram~792_combout\ & ( (!\ROM|memROM~17_combout\ & (((\RAM|ram~791_combout\)) # (\ROM|memROM~18_combout\))) # (\ROM|memROM~17_combout\ & ((!\ROM|memROM~18_combout\) # ((\RAM|ram~794_combout\)))) ) ) ) 
-- # ( !\RAM|ram~793_combout\ & ( \RAM|ram~792_combout\ & ( (!\ROM|memROM~17_combout\ & (((\RAM|ram~791_combout\)) # (\ROM|memROM~18_combout\))) # (\ROM|memROM~17_combout\ & (\ROM|memROM~18_combout\ & ((\RAM|ram~794_combout\)))) ) ) ) # ( 
-- \RAM|ram~793_combout\ & ( !\RAM|ram~792_combout\ & ( (!\ROM|memROM~17_combout\ & (!\ROM|memROM~18_combout\ & (\RAM|ram~791_combout\))) # (\ROM|memROM~17_combout\ & ((!\ROM|memROM~18_combout\) # ((\RAM|ram~794_combout\)))) ) ) ) # ( !\RAM|ram~793_combout\ 
-- & ( !\RAM|ram~792_combout\ & ( (!\ROM|memROM~17_combout\ & (!\ROM|memROM~18_combout\ & (\RAM|ram~791_combout\))) # (\ROM|memROM~17_combout\ & (\ROM|memROM~18_combout\ & ((\RAM|ram~794_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \RAM|ALT_INV_ram~791_combout\,
	datad => \RAM|ALT_INV_ram~794_combout\,
	datae => \RAM|ALT_INV_ram~793_combout\,
	dataf => \RAM|ALT_INV_ram~792_combout\,
	combout => \RAM|ram~795_combout\);

-- Location: FF_X77_Y8_N53
\RAM|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~229_q\);

-- Location: FF_X78_Y8_N38
\RAM|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~213_q\);

-- Location: FF_X78_Y8_N32
\RAM|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~221_q\);

-- Location: FF_X77_Y8_N23
\RAM|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~237_q\);

-- Location: LABCELL_X77_Y8_N21
\RAM|ram~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~784_combout\ = ( \RAM|ram~237_q\ & ( \ROM|memROM~18_combout\ & ( (\RAM|ram~221_q\) # (\ROM|memROM~21_combout\) ) ) ) # ( !\RAM|ram~237_q\ & ( \ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & \RAM|ram~221_q\) ) ) ) # ( \RAM|ram~237_q\ & ( 
-- !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & ((\RAM|ram~213_q\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~229_q\)) ) ) ) # ( !\RAM|ram~237_q\ & ( !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & ((\RAM|ram~213_q\))) # 
-- (\ROM|memROM~21_combout\ & (\RAM|ram~229_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~229_q\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \RAM|ALT_INV_ram~213_q\,
	datad => \RAM|ALT_INV_ram~221_q\,
	datae => \RAM|ALT_INV_ram~237_q\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~784_combout\);

-- Location: FF_X73_Y11_N22
\RAM|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~165_q\);

-- Location: FF_X73_Y10_N10
\RAM|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~149_q\);

-- Location: LABCELL_X81_Y8_N9
\RAM|ram~157feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~157feeder_combout\ = ( \CPU|ACU|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(6),
	combout => \RAM|ram~157feeder_combout\);

-- Location: FF_X81_Y8_N10
\RAM|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~157feeder_combout\,
	ena => \RAM|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~157_q\);

-- Location: FF_X77_Y8_N26
\RAM|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~173_q\);

-- Location: LABCELL_X77_Y8_N24
\RAM|ram~782\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~782_combout\ = ( \RAM|ram~173_q\ & ( \ROM|memROM~18_combout\ & ( (\ROM|memROM~21_combout\) # (\RAM|ram~157_q\) ) ) ) # ( !\RAM|ram~173_q\ & ( \ROM|memROM~18_combout\ & ( (\RAM|ram~157_q\ & !\ROM|memROM~21_combout\) ) ) ) # ( \RAM|ram~173_q\ & ( 
-- !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & ((\RAM|ram~149_q\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~165_q\)) ) ) ) # ( !\RAM|ram~173_q\ & ( !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & ((\RAM|ram~149_q\))) # 
-- (\ROM|memROM~21_combout\ & (\RAM|ram~165_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~165_q\,
	datab => \RAM|ALT_INV_ram~149_q\,
	datac => \RAM|ALT_INV_ram~157_q\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \RAM|ALT_INV_ram~173_q\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~782_combout\);

-- Location: FF_X75_Y10_N43
\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

-- Location: FF_X79_Y10_N53
\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

-- Location: FF_X79_Y10_N43
\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

-- Location: FF_X77_Y10_N47
\RAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~45_q\);

-- Location: LABCELL_X77_Y10_N45
\RAM|ram~781\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~781_combout\ = ( \RAM|ram~45_q\ & ( \ROM|memROM~21_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~37_q\) ) ) ) # ( !\RAM|ram~45_q\ & ( \ROM|memROM~21_combout\ & ( (\RAM|ram~37_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~45_q\ & ( 
-- !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~21_q\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~29_q\)) ) ) ) # ( !\RAM|ram~45_q\ & ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~21_q\))) # 
-- (\ROM|memROM~18_combout\ & (\RAM|ram~29_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~29_q\,
	datab => \RAM|ALT_INV_ram~21_q\,
	datac => \RAM|ALT_INV_ram~37_q\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \RAM|ALT_INV_ram~45_q\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~781_combout\);

-- Location: FF_X79_Y8_N41
\RAM|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~93_q\);

-- Location: LABCELL_X79_Y6_N51
\RAM|ram~85feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~85feeder_combout\ = ( \CPU|ACU|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(6),
	combout => \RAM|ram~85feeder_combout\);

-- Location: FF_X79_Y6_N52
\RAM|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~85feeder_combout\,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~85_q\);

-- Location: LABCELL_X79_Y6_N27
\RAM|ram~101feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~101feeder_combout\ = ( \CPU|ACU|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(6),
	combout => \RAM|ram~101feeder_combout\);

-- Location: FF_X79_Y6_N29
\RAM|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~101feeder_combout\,
	ena => \RAM|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~101_q\);

-- Location: FF_X79_Y6_N20
\RAM|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~109_q\);

-- Location: LABCELL_X79_Y6_N18
\RAM|ram~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~783_combout\ = ( \RAM|ram~109_q\ & ( \ROM|memROM~18_combout\ & ( (\ROM|memROM~21_combout\) # (\RAM|ram~93_q\) ) ) ) # ( !\RAM|ram~109_q\ & ( \ROM|memROM~18_combout\ & ( (\RAM|ram~93_q\ & !\ROM|memROM~21_combout\) ) ) ) # ( \RAM|ram~109_q\ & ( 
-- !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~85_q\)) # (\ROM|memROM~21_combout\ & ((\RAM|ram~101_q\))) ) ) ) # ( !\RAM|ram~109_q\ & ( !\ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & (\RAM|ram~85_q\)) # 
-- (\ROM|memROM~21_combout\ & ((\RAM|ram~101_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~93_q\,
	datab => \RAM|ALT_INV_ram~85_q\,
	datac => \RAM|ALT_INV_ram~101_q\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \RAM|ALT_INV_ram~109_q\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|ram~783_combout\);

-- Location: LABCELL_X77_Y8_N39
\RAM|ram~785\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~785_combout\ = ( \RAM|ram~781_combout\ & ( \RAM|ram~783_combout\ & ( (!\ROM|memROM~23_combout\) # ((!\ROM|memROM~17_combout\ & ((\RAM|ram~782_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~784_combout\))) ) ) ) # ( !\RAM|ram~781_combout\ & ( 
-- \RAM|ram~783_combout\ & ( (!\ROM|memROM~23_combout\ & (((\ROM|memROM~17_combout\)))) # (\ROM|memROM~23_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~782_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~784_combout\)))) ) ) ) # ( 
-- \RAM|ram~781_combout\ & ( !\RAM|ram~783_combout\ & ( (!\ROM|memROM~23_combout\ & (((!\ROM|memROM~17_combout\)))) # (\ROM|memROM~23_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~782_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~784_combout\)))) ) 
-- ) ) # ( !\RAM|ram~781_combout\ & ( !\RAM|ram~783_combout\ & ( (\ROM|memROM~23_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~782_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~784_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~784_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~782_combout\,
	datae => \RAM|ALT_INV_ram~781_combout\,
	dataf => \RAM|ALT_INV_ram~783_combout\,
	combout => \RAM|ram~785_combout\);

-- Location: LABCELL_X77_Y8_N48
\RAM|ram~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~801_combout\ = ( \RAM|ram~795_combout\ & ( \RAM|ram~785_combout\ & ( (!\ROM|memROM~22_combout\) # ((!\ROM|memROM~2_combout\ & (\RAM|ram~790_combout\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~800_combout\)))) ) ) ) # ( !\RAM|ram~795_combout\ & ( 
-- \RAM|ram~785_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~22_combout\) # ((\RAM|ram~790_combout\)))) # (\ROM|memROM~2_combout\ & (\ROM|memROM~22_combout\ & ((\RAM|ram~800_combout\)))) ) ) ) # ( \RAM|ram~795_combout\ & ( !\RAM|ram~785_combout\ & 
-- ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~22_combout\ & (\RAM|ram~790_combout\))) # (\ROM|memROM~2_combout\ & ((!\ROM|memROM~22_combout\) # ((\RAM|ram~800_combout\)))) ) ) ) # ( !\RAM|ram~795_combout\ & ( !\RAM|ram~785_combout\ & ( 
-- (\ROM|memROM~22_combout\ & ((!\ROM|memROM~2_combout\ & (\RAM|ram~790_combout\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~800_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \RAM|ALT_INV_ram~790_combout\,
	datad => \RAM|ALT_INV_ram~800_combout\,
	datae => \RAM|ALT_INV_ram~795_combout\,
	dataf => \RAM|ALT_INV_ram~785_combout\,
	combout => \RAM|ram~801_combout\);

-- Location: LABCELL_X77_Y8_N12
\CPU|MUX|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX|saida_MUX[6]~5_combout\ = ( \comb~14_combout\ & ( \RAM|ram~801_combout\ & ( \SW[6]~input_o\ ) ) ) # ( !\comb~14_combout\ & ( \RAM|ram~801_combout\ ) ) # ( \comb~14_combout\ & ( !\RAM|ram~801_combout\ & ( \SW[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_comb~14_combout\,
	dataf => \RAM|ALT_INV_ram~801_combout\,
	combout => \CPU|MUX|saida_MUX[6]~5_combout\);

-- Location: MLABCELL_X78_Y7_N51
\CPU|ULA|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~9_sumout\ = SUM(( (!\CPU|DEC|saidaDecoder[3]~6_combout\ & (((!\CPU|MUX|saida_MUX[6]~5_combout\)))) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & (((!\ROM|memROM~24_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|ACU|DOUT\(6) ) + ( \CPU|ULA|Add1~6\ 
-- ))
-- \CPU|ULA|Add1~10\ = CARRY(( (!\CPU|DEC|saidaDecoder[3]~6_combout\ & (((!\CPU|MUX|saida_MUX[6]~5_combout\)))) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & (((!\ROM|memROM~24_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|ACU|DOUT\(6) ) + ( \CPU|ULA|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~24_combout\,
	datac => \CPU|DEC|ALT_INV_saidaDecoder[3]~6_combout\,
	datad => \CPU|MUX|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(6),
	cin => \CPU|ULA|Add1~6\,
	sumout => \CPU|ULA|Add1~9_sumout\,
	cout => \CPU|ULA|Add1~10\);

-- Location: IOIBUF_X52_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: MLABCELL_X78_Y7_N21
\CPU|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~29_sumout\ = SUM(( \CPU|ACU|DOUT\(7) ) + ( (!\CPU|DEC|saidaDecoder[3]~8_combout\ & ((!\CPU|DEC|Equal10~1_combout\ & ((\CPU|MUX|saida_MUX[7]~6_combout\))) # (\CPU|DEC|Equal10~1_combout\ & (\ROM|memROM~23_combout\)))) # 
-- (\CPU|DEC|saidaDecoder[3]~8_combout\ & (((\ROM|memROM~23_combout\)))) ) + ( \CPU|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder[3]~8_combout\,
	datab => \CPU|DEC|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \CPU|ACU|ALT_INV_DOUT\(7),
	dataf => \CPU|MUX|ALT_INV_saida_MUX[7]~6_combout\,
	cin => \CPU|ULA|Add0~26\,
	sumout => \CPU|ULA|Add0~29_sumout\);

-- Location: LABCELL_X79_Y7_N3
\CPU|ULA|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[7]~7_combout\ = ( \CPU|ULA|Add1~13_sumout\ & ( ((!\CPU|DEC|saidaDecoder[3]~6_combout\ & ((\CPU|MUX|saida_MUX[7]~6_combout\))) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & (\ROM|memROM~23_combout\))) # (\CPU|ULA|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA|Add1~13_sumout\ & ( (!\CPU|ULA|Equal0~0_combout\ & ((!\CPU|DEC|saidaDecoder[3]~6_combout\ & ((\CPU|MUX|saida_MUX[7]~6_combout\))) # (\CPU|DEC|saidaDecoder[3]~6_combout\ & (\ROM|memROM~23_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[3]~6_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \CPU|MUX|ALT_INV_saida_MUX[7]~6_combout\,
	dataf => \CPU|ULA|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA|saida[7]~7_combout\);

-- Location: FF_X78_Y7_N23
\CPU|ACU|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~29_sumout\,
	asdata => \CPU|ULA|saida[7]~7_combout\,
	sload => \CPU|ULA|Equal1~0_combout\,
	ena => \CPU|DEC|saidaDecoder[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(7));

-- Location: FF_X79_Y6_N23
\RAM|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~110_q\);

-- Location: FF_X77_Y10_N49
\RAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~46_q\);

-- Location: FF_X79_Y8_N56
\RAM|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~142_q\);

-- Location: MLABCELL_X78_Y10_N3
\RAM|ram~78feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~78feeder_combout\ = ( \CPU|ACU|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(7),
	combout => \RAM|ram~78feeder_combout\);

-- Location: FF_X78_Y10_N4
\RAM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~78feeder_combout\,
	ena => \RAM|ram~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~78_q\);

-- Location: LABCELL_X79_Y8_N24
\RAM|ram~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~808_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~142_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~78_q\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~110_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~110_q\,
	datab => \RAM|ALT_INV_ram~46_q\,
	datac => \RAM|ALT_INV_ram~142_q\,
	datad => \RAM|ALT_INV_ram~78_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~808_combout\);

-- Location: FF_X80_Y8_N25
\RAM|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~134_q\);

-- Location: FF_X79_Y6_N1
\RAM|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~102_q\);

-- Location: FF_X79_Y10_N41
\RAM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~70_q\);

-- Location: FF_X79_Y10_N35
\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

-- Location: LABCELL_X79_Y8_N57
\RAM|ram~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~807_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~134_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~70_q\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~102_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~134_q\,
	datab => \RAM|ALT_INV_ram~102_q\,
	datac => \RAM|ALT_INV_ram~70_q\,
	datad => \RAM|ALT_INV_ram~38_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~807_combout\);

-- Location: FF_X77_Y8_N49
\RAM|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~230_q\);

-- Location: FF_X80_Y8_N47
\RAM|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~198_q\);

-- Location: LABCELL_X80_Y10_N30
\RAM|ram~166feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~166feeder_combout\ = ( \CPU|ACU|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(7),
	combout => \RAM|ram~166feeder_combout\);

-- Location: FF_X80_Y10_N31
\RAM|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~166feeder_combout\,
	ena => \RAM|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~166_q\);

-- Location: FF_X80_Y8_N8
\RAM|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~262_q\);

-- Location: LABCELL_X80_Y8_N6
\RAM|ram~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~809_combout\ = ( \RAM|ram~262_q\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~17_combout\) # (\RAM|ram~198_q\) ) ) ) # ( !\RAM|ram~262_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~198_q\ & !\ROM|memROM~17_combout\) ) ) ) # ( \RAM|ram~262_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~17_combout\ & ((\RAM|ram~166_q\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~230_q\)) ) ) ) # ( !\RAM|ram~262_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~17_combout\ & ((\RAM|ram~166_q\))) # 
-- (\ROM|memROM~17_combout\ & (\RAM|ram~230_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~230_q\,
	datab => \RAM|ALT_INV_ram~198_q\,
	datac => \RAM|ALT_INV_ram~166_q\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \RAM|ALT_INV_ram~262_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~809_combout\);

-- Location: LABCELL_X81_Y8_N51
\RAM|ram~206feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~206feeder_combout\ = ( \CPU|ACU|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(7),
	combout => \RAM|ram~206feeder_combout\);

-- Location: FF_X81_Y8_N52
\RAM|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~206feeder_combout\,
	ena => \RAM|ram~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~206_q\);

-- Location: FF_X77_Y8_N28
\RAM|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~174_q\);

-- Location: FF_X78_Y8_N19
\RAM|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~270_q\);

-- Location: FF_X77_Y8_N59
\RAM|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~238_q\);

-- Location: LABCELL_X79_Y8_N51
\RAM|ram~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~810_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~270_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~206_q\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~238_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~174_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~206_q\,
	datab => \RAM|ALT_INV_ram~174_q\,
	datac => \RAM|ALT_INV_ram~270_q\,
	datad => \RAM|ALT_INV_ram~238_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~810_combout\);

-- Location: LABCELL_X79_Y8_N15
\RAM|ram~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~811_combout\ = ( \RAM|ram~809_combout\ & ( \RAM|ram~810_combout\ & ( ((!\ROM|memROM~18_combout\ & ((\RAM|ram~807_combout\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~808_combout\))) # (\ROM|memROM~23_combout\) ) ) ) # ( !\RAM|ram~809_combout\ & ( 
-- \RAM|ram~810_combout\ & ( (!\ROM|memROM~23_combout\ & ((!\ROM|memROM~18_combout\ & ((\RAM|ram~807_combout\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~808_combout\)))) # (\ROM|memROM~23_combout\ & (((\ROM|memROM~18_combout\)))) ) ) ) # ( 
-- \RAM|ram~809_combout\ & ( !\RAM|ram~810_combout\ & ( (!\ROM|memROM~23_combout\ & ((!\ROM|memROM~18_combout\ & ((\RAM|ram~807_combout\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~808_combout\)))) # (\ROM|memROM~23_combout\ & (((!\ROM|memROM~18_combout\)))) ) 
-- ) ) # ( !\RAM|ram~809_combout\ & ( !\RAM|ram~810_combout\ & ( (!\ROM|memROM~23_combout\ & ((!\ROM|memROM~18_combout\ & ((\RAM|ram~807_combout\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~808_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~808_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \RAM|ALT_INV_ram~807_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \RAM|ALT_INV_ram~809_combout\,
	dataf => \RAM|ALT_INV_ram~810_combout\,
	combout => \RAM|ram~811_combout\);

-- Location: FF_X70_Y8_N22
\RAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~62_q\);

-- Location: FF_X71_Y8_N16
\RAM|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~190_q\);

-- Location: FF_X75_Y9_N16
\RAM|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~182_q\);

-- Location: FF_X75_Y10_N22
\RAM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~54_q\);

-- Location: MLABCELL_X72_Y8_N27
\RAM|ram~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~803_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~190_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~182_q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~62_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~62_q\,
	datab => \RAM|ALT_INV_ram~190_q\,
	datac => \RAM|ALT_INV_ram~182_q\,
	datad => \RAM|ALT_INV_ram~54_q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~803_combout\);

-- Location: FF_X79_Y8_N35
\RAM|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~94_q\);

-- Location: FF_X78_Y8_N47
\RAM|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~214_q\);

-- Location: FF_X77_Y10_N22
\RAM|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~86_q\);

-- Location: FF_X78_Y8_N26
\RAM|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~222_q\);

-- Location: MLABCELL_X78_Y8_N24
\RAM|ram~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~804_combout\ = ( \RAM|ram~222_q\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~214_q\) ) ) ) # ( !\RAM|ram~222_q\ & ( \ROM|memROM~23_combout\ & ( (\RAM|ram~214_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~222_q\ & ( 
-- !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~86_q\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~94_q\)) ) ) ) # ( !\RAM|ram~222_q\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~86_q\))) # 
-- (\ROM|memROM~18_combout\ & (\RAM|ram~94_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~94_q\,
	datab => \RAM|ALT_INV_ram~214_q\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \RAM|ALT_INV_ram~86_q\,
	datae => \RAM|ALT_INV_ram~222_q\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~804_combout\);

-- Location: FF_X75_Y10_N10
\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

-- Location: LABCELL_X81_Y8_N54
\RAM|ram~158feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~158feeder_combout\ = ( \CPU|ACU|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(7),
	combout => \RAM|ram~158feeder_combout\);

-- Location: FF_X81_Y8_N55
\RAM|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~158feeder_combout\,
	ena => \RAM|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~158_q\);

-- Location: FF_X73_Y10_N7
\RAM|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~150_q\);

-- Location: FF_X79_Y10_N14
\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

-- Location: LABCELL_X79_Y8_N21
\RAM|ram~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~802_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~158_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~150_q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~30_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~30_q\,
	datab => \RAM|ALT_INV_ram~158_q\,
	datac => \RAM|ALT_INV_ram~150_q\,
	datad => \RAM|ALT_INV_ram~22_q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~802_combout\);

-- Location: FF_X71_Y9_N22
\RAM|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~246_q\);

-- Location: FF_X77_Y10_N55
\RAM|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~126_q\);

-- Location: FF_X71_Y9_N16
\RAM|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~118_q\);

-- Location: FF_X78_Y9_N20
\RAM|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~254_q\);

-- Location: MLABCELL_X78_Y9_N18
\RAM|ram~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~805_combout\ = ( \RAM|ram~254_q\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~246_q\) ) ) ) # ( !\RAM|ram~254_q\ & ( \ROM|memROM~23_combout\ & ( (\RAM|ram~246_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~254_q\ & ( 
-- !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~118_q\))) # (\ROM|memROM~18_combout\ & (\RAM|ram~126_q\)) ) ) ) # ( !\RAM|ram~254_q\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~18_combout\ & ((\RAM|ram~118_q\))) # 
-- (\ROM|memROM~18_combout\ & (\RAM|ram~126_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~246_q\,
	datab => \RAM|ALT_INV_ram~126_q\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \RAM|ALT_INV_ram~118_q\,
	datae => \RAM|ALT_INV_ram~254_q\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~805_combout\);

-- Location: MLABCELL_X78_Y8_N54
\RAM|ram~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~806_combout\ = ( \RAM|ram~802_combout\ & ( \RAM|ram~805_combout\ & ( (!\ROM|memROM~2_combout\ & (((!\ROM|memROM~17_combout\) # (\RAM|ram~804_combout\)))) # (\ROM|memROM~2_combout\ & (((\ROM|memROM~17_combout\)) # (\RAM|ram~803_combout\))) ) ) ) # 
-- ( !\RAM|ram~802_combout\ & ( \RAM|ram~805_combout\ & ( (!\ROM|memROM~2_combout\ & (((\RAM|ram~804_combout\ & \ROM|memROM~17_combout\)))) # (\ROM|memROM~2_combout\ & (((\ROM|memROM~17_combout\)) # (\RAM|ram~803_combout\))) ) ) ) # ( \RAM|ram~802_combout\ & 
-- ( !\RAM|ram~805_combout\ & ( (!\ROM|memROM~2_combout\ & (((!\ROM|memROM~17_combout\) # (\RAM|ram~804_combout\)))) # (\ROM|memROM~2_combout\ & (\RAM|ram~803_combout\ & ((!\ROM|memROM~17_combout\)))) ) ) ) # ( !\RAM|ram~802_combout\ & ( 
-- !\RAM|ram~805_combout\ & ( (!\ROM|memROM~2_combout\ & (((\RAM|ram~804_combout\ & \ROM|memROM~17_combout\)))) # (\ROM|memROM~2_combout\ & (\RAM|ram~803_combout\ & ((!\ROM|memROM~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \RAM|ALT_INV_ram~803_combout\,
	datac => \RAM|ALT_INV_ram~804_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \RAM|ALT_INV_ram~802_combout\,
	dataf => \RAM|ALT_INV_ram~805_combout\,
	combout => \RAM|ram~806_combout\);

-- Location: FF_X71_Y6_N14
\RAM|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~374_q\);

-- Location: FF_X72_Y9_N16
\RAM|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~502_q\);

-- Location: FF_X71_Y6_N41
\RAM|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~382_q\);

-- Location: FF_X72_Y9_N44
\RAM|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~510_q\);

-- Location: MLABCELL_X72_Y9_N42
\RAM|ram~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~815_combout\ = ( \RAM|ram~510_q\ & ( \ROM|memROM~23_combout\ & ( (\ROM|memROM~18_combout\) # (\RAM|ram~502_q\) ) ) ) # ( !\RAM|ram~510_q\ & ( \ROM|memROM~23_combout\ & ( (\RAM|ram~502_q\ & !\ROM|memROM~18_combout\) ) ) ) # ( \RAM|ram~510_q\ & ( 
-- !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~374_q\)) # (\ROM|memROM~18_combout\ & ((\RAM|ram~382_q\))) ) ) ) # ( !\RAM|ram~510_q\ & ( !\ROM|memROM~23_combout\ & ( (!\ROM|memROM~18_combout\ & (\RAM|ram~374_q\)) # 
-- (\ROM|memROM~18_combout\ & ((\RAM|ram~382_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~374_q\,
	datab => \RAM|ALT_INV_ram~502_q\,
	datac => \RAM|ALT_INV_ram~382_q\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \RAM|ALT_INV_ram~510_q\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~815_combout\);

-- Location: FF_X71_Y7_N7
\RAM|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~310_q\);

-- Location: FF_X74_Y9_N34
\RAM|ram~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~446_q\);

-- Location: FF_X78_Y9_N40
\RAM|ram~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~438_q\);

-- Location: FF_X74_Y10_N34
\RAM|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~318_q\);

-- Location: MLABCELL_X72_Y9_N54
\RAM|ram~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~813_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~446_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~438_q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~318_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~310_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~310_q\,
	datab => \RAM|ALT_INV_ram~446_q\,
	datac => \RAM|ALT_INV_ram~438_q\,
	datad => \RAM|ALT_INV_ram~318_q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~813_combout\);

-- Location: FF_X75_Y5_N32
\RAM|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~286_q\);

-- Location: FF_X73_Y10_N40
\RAM|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~278_q\);

-- Location: FF_X73_Y10_N32
\RAM|ram~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~406_q\);

-- Location: FF_X74_Y9_N8
\RAM|ram~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~414_q\);

-- Location: MLABCELL_X72_Y9_N21
\RAM|ram~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~812_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~414_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~406_q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~286_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~278_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~286_q\,
	datab => \RAM|ALT_INV_ram~278_q\,
	datac => \RAM|ALT_INV_ram~406_q\,
	datad => \RAM|ALT_INV_ram~414_q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~812_combout\);

-- Location: FF_X73_Y9_N23
\RAM|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~478_q\);

-- Location: FF_X73_Y5_N56
\RAM|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~342_q\);

-- Location: LABCELL_X73_Y5_N36
\RAM|ram~470feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~470feeder_combout\ = ( \CPU|ACU|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(7),
	combout => \RAM|ram~470feeder_combout\);

-- Location: FF_X73_Y5_N37
\RAM|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~470feeder_combout\,
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~470_q\);

-- Location: FF_X73_Y9_N35
\RAM|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~350_q\);

-- Location: MLABCELL_X72_Y9_N15
\RAM|ram~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~814_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~478_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~470_q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~350_q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~342_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~478_q\,
	datab => \RAM|ALT_INV_ram~342_q\,
	datac => \RAM|ALT_INV_ram~470_q\,
	datad => \RAM|ALT_INV_ram~350_q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~814_combout\);

-- Location: MLABCELL_X72_Y9_N9
\RAM|ram~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~816_combout\ = ( \RAM|ram~812_combout\ & ( \RAM|ram~814_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\ROM|memROM~17_combout\ & ((\RAM|ram~813_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~815_combout\))) ) ) ) # ( !\RAM|ram~812_combout\ & ( 
-- \RAM|ram~814_combout\ & ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~17_combout\)) # (\ROM|memROM~2_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~813_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~815_combout\)))) ) ) ) # ( \RAM|ram~812_combout\ & ( 
-- !\RAM|ram~814_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~17_combout\)) # (\ROM|memROM~2_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~813_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~815_combout\)))) ) ) ) # ( !\RAM|ram~812_combout\ 
-- & ( !\RAM|ram~814_combout\ & ( (\ROM|memROM~2_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~813_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~815_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \RAM|ALT_INV_ram~815_combout\,
	datad => \RAM|ALT_INV_ram~813_combout\,
	datae => \RAM|ALT_INV_ram~812_combout\,
	dataf => \RAM|ALT_INV_ram~814_combout\,
	combout => \RAM|ram~816_combout\);

-- Location: FF_X71_Y7_N31
\RAM|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~326_q\);

-- Location: FF_X75_Y5_N58
\RAM|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~358_q\);

-- Location: FF_X74_Y11_N49
\RAM|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~294_q\);

-- Location: FF_X72_Y8_N14
\RAM|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~390_q\);

-- Location: MLABCELL_X72_Y8_N12
\RAM|ram~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~817_combout\ = ( \RAM|ram~390_q\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~17_combout\) # (\RAM|ram~326_q\) ) ) ) # ( !\RAM|ram~390_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~326_q\ & !\ROM|memROM~17_combout\) ) ) ) # ( \RAM|ram~390_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~17_combout\ & ((\RAM|ram~294_q\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~358_q\)) ) ) ) # ( !\RAM|ram~390_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~17_combout\ & ((\RAM|ram~294_q\))) # 
-- (\ROM|memROM~17_combout\ & (\RAM|ram~358_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~326_q\,
	datab => \RAM|ALT_INV_ram~358_q\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~294_q\,
	datae => \RAM|ALT_INV_ram~390_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~817_combout\);

-- Location: FF_X74_Y6_N31
\RAM|ram~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~462_q\);

-- Location: FF_X74_Y5_N10
\RAM|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~494_q\);

-- Location: FF_X75_Y8_N16
\RAM|ram~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~430_q\);

-- Location: FF_X74_Y6_N50
\RAM|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~526_q\);

-- Location: MLABCELL_X72_Y8_N54
\RAM|ram~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~820_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~526_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~462_q\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~494_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~430_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~462_q\,
	datab => \RAM|ALT_INV_ram~494_q\,
	datac => \RAM|ALT_INV_ram~430_q\,
	datad => \RAM|ALT_INV_ram~526_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~820_combout\);

-- Location: FF_X75_Y7_N40
\RAM|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~486_q\);

-- Location: FF_X73_Y7_N26
\RAM|ram~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~454_q\);

-- Location: FF_X73_Y11_N46
\RAM|ram~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~422_q\);

-- Location: FF_X72_Y8_N38
\RAM|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~518_q\);

-- Location: MLABCELL_X72_Y8_N36
\RAM|ram~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~819_combout\ = ( \RAM|ram~518_q\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~17_combout\) # (\RAM|ram~454_q\) ) ) ) # ( !\RAM|ram~518_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~454_q\ & !\ROM|memROM~17_combout\) ) ) ) # ( \RAM|ram~518_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~17_combout\ & ((\RAM|ram~422_q\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~486_q\)) ) ) ) # ( !\RAM|ram~518_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~17_combout\ & ((\RAM|ram~422_q\))) # 
-- (\ROM|memROM~17_combout\ & (\RAM|ram~486_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~486_q\,
	datab => \RAM|ALT_INV_ram~454_q\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~422_q\,
	datae => \RAM|ALT_INV_ram~518_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~819_combout\);

-- Location: FF_X74_Y6_N23
\RAM|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~366_q\);

-- Location: FF_X73_Y6_N44
\RAM|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~334_q\);

-- Location: FF_X74_Y7_N5
\RAM|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~302_q\);

-- Location: FF_X73_Y6_N26
\RAM|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~398_q\);

-- Location: LABCELL_X73_Y6_N24
\RAM|ram~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~818_combout\ = ( \RAM|ram~398_q\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~17_combout\) # (\RAM|ram~334_q\) ) ) ) # ( !\RAM|ram~398_q\ & ( \ROM|memROM~2_combout\ & ( (\RAM|ram~334_q\ & !\ROM|memROM~17_combout\) ) ) ) # ( \RAM|ram~398_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~17_combout\ & ((\RAM|ram~302_q\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~366_q\)) ) ) ) # ( !\RAM|ram~398_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~17_combout\ & ((\RAM|ram~302_q\))) # 
-- (\ROM|memROM~17_combout\ & (\RAM|ram~366_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~366_q\,
	datab => \RAM|ALT_INV_ram~334_q\,
	datac => \RAM|ALT_INV_ram~302_q\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \RAM|ALT_INV_ram~398_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~818_combout\);

-- Location: MLABCELL_X72_Y8_N3
\RAM|ram~821\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~821_combout\ = ( \RAM|ram~819_combout\ & ( \RAM|ram~818_combout\ & ( (!\ROM|memROM~18_combout\ & (((\RAM|ram~817_combout\)) # (\ROM|memROM~23_combout\))) # (\ROM|memROM~18_combout\ & ((!\ROM|memROM~23_combout\) # ((\RAM|ram~820_combout\)))) ) ) ) 
-- # ( !\RAM|ram~819_combout\ & ( \RAM|ram~818_combout\ & ( (!\ROM|memROM~18_combout\ & (!\ROM|memROM~23_combout\ & (\RAM|ram~817_combout\))) # (\ROM|memROM~18_combout\ & ((!\ROM|memROM~23_combout\) # ((\RAM|ram~820_combout\)))) ) ) ) # ( 
-- \RAM|ram~819_combout\ & ( !\RAM|ram~818_combout\ & ( (!\ROM|memROM~18_combout\ & (((\RAM|ram~817_combout\)) # (\ROM|memROM~23_combout\))) # (\ROM|memROM~18_combout\ & (\ROM|memROM~23_combout\ & ((\RAM|ram~820_combout\)))) ) ) ) # ( !\RAM|ram~819_combout\ 
-- & ( !\RAM|ram~818_combout\ & ( (!\ROM|memROM~18_combout\ & (!\ROM|memROM~23_combout\ & (\RAM|ram~817_combout\))) # (\ROM|memROM~18_combout\ & (\ROM|memROM~23_combout\ & ((\RAM|ram~820_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \RAM|ALT_INV_ram~817_combout\,
	datad => \RAM|ALT_INV_ram~820_combout\,
	datae => \RAM|ALT_INV_ram~819_combout\,
	dataf => \RAM|ALT_INV_ram~818_combout\,
	combout => \RAM|ram~821_combout\);

-- Location: MLABCELL_X78_Y8_N3
\RAM|ram~822\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~822_combout\ = ( \RAM|ram~816_combout\ & ( \RAM|ram~821_combout\ & ( ((!\ROM|memROM~21_combout\ & ((\RAM|ram~806_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~811_combout\))) # (\ROM|memROM~22_combout\) ) ) ) # ( !\RAM|ram~816_combout\ & ( 
-- \RAM|ram~821_combout\ & ( (!\ROM|memROM~22_combout\ & ((!\ROM|memROM~21_combout\ & ((\RAM|ram~806_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~811_combout\)))) # (\ROM|memROM~22_combout\ & (((\ROM|memROM~21_combout\)))) ) ) ) # ( 
-- \RAM|ram~816_combout\ & ( !\RAM|ram~821_combout\ & ( (!\ROM|memROM~22_combout\ & ((!\ROM|memROM~21_combout\ & ((\RAM|ram~806_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~811_combout\)))) # (\ROM|memROM~22_combout\ & (((!\ROM|memROM~21_combout\)))) ) 
-- ) ) # ( !\RAM|ram~816_combout\ & ( !\RAM|ram~821_combout\ & ( (!\ROM|memROM~22_combout\ & ((!\ROM|memROM~21_combout\ & ((\RAM|ram~806_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~811_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000111110001110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~811_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \RAM|ALT_INV_ram~806_combout\,
	datae => \RAM|ALT_INV_ram~816_combout\,
	dataf => \RAM|ALT_INV_ram~821_combout\,
	combout => \RAM|ram~822_combout\);

-- Location: LABCELL_X79_Y7_N48
\CPU|MUX|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX|saida_MUX[7]~6_combout\ = ( \RAM|ram~822_combout\ & ( (!\comb~14_combout\) # (\SW[7]~input_o\) ) ) # ( !\RAM|ram~822_combout\ & ( (\SW[7]~input_o\ & \comb~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_comb~14_combout\,
	dataf => \RAM|ALT_INV_ram~822_combout\,
	combout => \CPU|MUX|saida_MUX[7]~6_combout\);

-- Location: MLABCELL_X78_Y7_N54
\CPU|ULA|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add1~13_sumout\ = SUM(( (!\CPU|DEC|Equal10~1_combout\ & ((!\CPU|DEC|saidaDecoder[3]~8_combout\ & ((!\CPU|MUX|saida_MUX[7]~6_combout\))) # (\CPU|DEC|saidaDecoder[3]~8_combout\ & (!\ROM|memROM~23_combout\)))) # (\CPU|DEC|Equal10~1_combout\ & 
-- (!\ROM|memROM~23_combout\)) ) + ( \CPU|ACU|DOUT\(7) ) + ( \CPU|ULA|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datab => \CPU|DEC|ALT_INV_Equal10~1_combout\,
	datac => \CPU|DEC|ALT_INV_saidaDecoder[3]~8_combout\,
	datad => \CPU|MUX|ALT_INV_saida_MUX[7]~6_combout\,
	dataf => \CPU|ACU|ALT_INV_DOUT\(7),
	cin => \CPU|ULA|Add1~10\,
	sumout => \CPU|ULA|Add1~13_sumout\);

-- Location: LABCELL_X77_Y7_N24
\CPU|FREG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FREG|DOUT~2_combout\ = ( \CPU|ULA|Add1~29_sumout\ & ( \CPU|ULA|Add1~25_sumout\ & ( (\CPU|FREG|DOUT~q\ & !\CPU|FREG|DOUT~1_combout\) ) ) ) # ( !\CPU|ULA|Add1~29_sumout\ & ( \CPU|ULA|Add1~25_sumout\ & ( (\CPU|FREG|DOUT~q\ & !\CPU|FREG|DOUT~1_combout\) 
-- ) ) ) # ( \CPU|ULA|Add1~29_sumout\ & ( !\CPU|ULA|Add1~25_sumout\ & ( (\CPU|FREG|DOUT~q\ & !\CPU|FREG|DOUT~1_combout\) ) ) ) # ( !\CPU|ULA|Add1~29_sumout\ & ( !\CPU|ULA|Add1~25_sumout\ & ( (!\CPU|FREG|DOUT~1_combout\ & (\CPU|FREG|DOUT~q\)) # 
-- (\CPU|FREG|DOUT~1_combout\ & (((!\CPU|ULA|Add1~17_sumout\ & !\CPU|ULA|Add1~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FREG|ALT_INV_DOUT~q\,
	datab => \CPU|FREG|ALT_INV_DOUT~1_combout\,
	datac => \CPU|ULA|ALT_INV_Add1~17_sumout\,
	datad => \CPU|ULA|ALT_INV_Add1~21_sumout\,
	datae => \CPU|ULA|ALT_INV_Add1~29_sumout\,
	dataf => \CPU|ULA|ALT_INV_Add1~25_sumout\,
	combout => \CPU|FREG|DOUT~2_combout\);

-- Location: LABCELL_X77_Y7_N0
\CPU|FREG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FREG|DOUT~0_combout\ = ( \CPU|ULA|Add1~13_sumout\ & ( \CPU|FREG|DOUT~2_combout\ & ( !\CPU|FREG|DOUT~1_combout\ ) ) ) # ( !\CPU|ULA|Add1~13_sumout\ & ( \CPU|FREG|DOUT~2_combout\ & ( (!\CPU|FREG|DOUT~1_combout\) # ((!\CPU|ULA|Add1~1_sumout\ & 
-- (!\CPU|ULA|Add1~9_sumout\ & !\CPU|ULA|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Add1~1_sumout\,
	datab => \CPU|FREG|ALT_INV_DOUT~1_combout\,
	datac => \CPU|ULA|ALT_INV_Add1~9_sumout\,
	datad => \CPU|ULA|ALT_INV_Add1~5_sumout\,
	datae => \CPU|ULA|ALT_INV_Add1~13_sumout\,
	dataf => \CPU|FREG|ALT_INV_DOUT~2_combout\,
	combout => \CPU|FREG|DOUT~0_combout\);

-- Location: FF_X77_Y7_N2
\CPU|FREG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FREG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FREG|DOUT~q\);

-- Location: LABCELL_X77_Y7_N57
\CPU|MUX4|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4|Equal2~0_combout\ = ( \CPU|DEC|saidaDecoder[10]~1_combout\ & ( (!\CPU|DEC|saidaDecoder[10]~0_combout\ & (!\ROM|memROM~19_combout\ $ (!\ROM|memROM~20_combout\))) ) ) # ( !\CPU|DEC|saidaDecoder[10]~1_combout\ & ( 
-- (\CPU|DEC|saidaDecoder[10]~0_combout\ & (\ROM|memROM~20_combout\ & ((!\ROM|memROM~19_combout\) # (\CPU|FREG|DOUT~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000011000000100000001101001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[10]~0_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \CPU|FREG|ALT_INV_DOUT~q\,
	dataf => \CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\,
	combout => \CPU|MUX4|Equal2~0_combout\);

-- Location: FF_X75_Y8_N31
\CPU|RREG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOM|Add0~1_sumout\,
	ena => \CPU|DEC|saidaDecoder~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RREG|DOUT\(0));

-- Location: LABCELL_X74_Y8_N15
\CPU|MUX4|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4|saida_MUX[0]~0_combout\ = ( \CPU|SOM|Add0~1_sumout\ & ( (!\CPU|MUX4|Equal2~0_combout\) # ((!\CPU|LOG|saidaLogica[0]~0_combout\ & ((\CPU|RREG|DOUT\(0)))) # (\CPU|LOG|saidaLogica[0]~0_combout\ & (\ROM|memROM~18_combout\))) ) ) # ( 
-- !\CPU|SOM|Add0~1_sumout\ & ( (\CPU|MUX4|Equal2~0_combout\ & ((!\CPU|LOG|saidaLogica[0]~0_combout\ & ((\CPU|RREG|DOUT\(0)))) # (\CPU|LOG|saidaLogica[0]~0_combout\ & (\ROM|memROM~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LOG|ALT_INV_saidaLogica[0]~0_combout\,
	datab => \CPU|MUX4|ALT_INV_Equal2~0_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \CPU|RREG|ALT_INV_DOUT\(0),
	dataf => \CPU|SOM|ALT_INV_Add0~1_sumout\,
	combout => \CPU|MUX4|saida_MUX[0]~0_combout\);

-- Location: FF_X74_Y8_N17
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y8_N3
\CPU|DEC|saidaDecoder[10]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC|saidaDecoder[10]~1_combout\ = ( \ROM|memROM~1_combout\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & \ROM|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \CPU|DEC|saidaDecoder[10]~1_combout\);

-- Location: LABCELL_X77_Y7_N6
\CPU|LOG|saidaLogica[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|LOG|saidaLogica[0]~0_combout\ = ( \ROM|memROM~20_combout\ & ( (!\CPU|DEC|saidaDecoder[10]~1_combout\ & (\CPU|DEC|saidaDecoder[10]~0_combout\ & ((!\ROM|memROM~19_combout\) # (\CPU|FREG|DOUT~q\)))) ) ) # ( !\ROM|memROM~20_combout\ & ( 
-- (\CPU|DEC|saidaDecoder[10]~1_combout\ & (!\CPU|DEC|saidaDecoder[10]~0_combout\ & \ROM|memROM~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000100000001000100010000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC|ALT_INV_saidaDecoder[10]~1_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[10]~0_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \CPU|FREG|ALT_INV_DOUT~q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \CPU|LOG|saidaLogica[0]~0_combout\);

-- Location: FF_X75_Y8_N50
\CPU|RREG|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOM|Add0~29_sumout\,
	ena => \CPU|DEC|saidaDecoder~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RREG|DOUT\(6));

-- Location: LABCELL_X75_Y8_N18
\CPU|MUX4|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4|saida_MUX[6]~7_combout\ = ( \CPU|SOM|Add0~29_sumout\ & ( (!\CPU|MUX4|Equal2~0_combout\) # ((!\CPU|LOG|saidaLogica[0]~0_combout\ & (\CPU|RREG|DOUT\(6))) # (\CPU|LOG|saidaLogica[0]~0_combout\ & ((\ROM|memROM~14_combout\)))) ) ) # ( 
-- !\CPU|SOM|Add0~29_sumout\ & ( (\CPU|MUX4|Equal2~0_combout\ & ((!\CPU|LOG|saidaLogica[0]~0_combout\ & (\CPU|RREG|DOUT\(6))) # (\CPU|LOG|saidaLogica[0]~0_combout\ & ((\ROM|memROM~14_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LOG|ALT_INV_saidaLogica[0]~0_combout\,
	datab => \CPU|MUX4|ALT_INV_Equal2~0_combout\,
	datac => \CPU|RREG|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \CPU|SOM|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX4|saida_MUX[6]~7_combout\);

-- Location: FF_X75_Y8_N20
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX4|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y8_N9
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X74_Y8_N0
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(5))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X75_Y8_N6
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~1_combout\ & !\CPU|PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~2_combout\);

-- Location: FF_X73_Y8_N35
\RAM|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~255_q\);

-- Location: FF_X72_Y8_N31
\RAM|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~511_q\);

-- Location: FF_X72_Y8_N7
\RAM|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~383_q\);

-- Location: FF_X72_Y8_N43
\RAM|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~127_q\);

-- Location: LABCELL_X73_Y8_N21
\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( \RAM|ram~127_q\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~23_combout\ & ((\RAM|ram~383_q\))) # (\ROM|memROM~23_combout\ & (\RAM|ram~511_q\)) ) ) ) # ( !\RAM|ram~127_q\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~23_combout\ 
-- & ((\RAM|ram~383_q\))) # (\ROM|memROM~23_combout\ & (\RAM|ram~511_q\)) ) ) ) # ( \RAM|ram~127_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~23_combout\) # (\RAM|ram~255_q\) ) ) ) # ( !\RAM|ram~127_q\ & ( !\ROM|memROM~22_combout\ & ( (\RAM|ram~255_q\ & 
-- \ROM|memROM~23_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~255_q\,
	datab => \RAM|ALT_INV_ram~511_q\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \RAM|ALT_INV_ram~383_q\,
	datae => \RAM|ALT_INV_ram~127_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~540_combout\);

-- Location: FF_X72_Y11_N52
\RAM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~63_q\);

-- Location: FF_X75_Y9_N10
\RAM|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~191_q\);

-- Location: FF_X73_Y7_N20
\RAM|ram~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~447_q\);

-- Location: LABCELL_X71_Y7_N18
\RAM|ram~319feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~319feeder_combout\ = ( \CPU|ACU|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(0),
	combout => \RAM|ram~319feeder_combout\);

-- Location: FF_X71_Y7_N19
\RAM|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~319feeder_combout\,
	ena => \RAM|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~319_q\);

-- Location: LABCELL_X73_Y7_N6
\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( \ROM|memROM~23_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~447_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~319_q\ ) ) ) # ( \ROM|memROM~23_combout\ & ( !\ROM|memROM~22_combout\ & ( 
-- \RAM|ram~191_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~63_q\,
	datab => \RAM|ALT_INV_ram~191_q\,
	datac => \RAM|ALT_INV_ram~447_q\,
	datad => \RAM|ALT_INV_ram~319_q\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~538_combout\);

-- Location: FF_X75_Y7_N26
\RAM|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~479_q\);

-- Location: FF_X75_Y7_N47
\RAM|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~223_q\);

-- Location: FF_X75_Y5_N19
\RAM|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~351_q\);

-- Location: FF_X75_Y7_N50
\RAM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~95_q\);

-- Location: LABCELL_X75_Y7_N27
\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~479_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~223_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~351_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~479_q\,
	datab => \RAM|ALT_INV_ram~223_q\,
	datac => \RAM|ALT_INV_ram~351_q\,
	datad => \RAM|ALT_INV_ram~95_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~539_combout\);

-- Location: FF_X73_Y11_N5
\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

-- Location: FF_X73_Y11_N7
\RAM|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~159_q\);

-- Location: FF_X73_Y11_N38
\RAM|ram~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~415_q\);

-- Location: MLABCELL_X72_Y10_N6
\RAM|ram~287feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~287feeder_combout\ = ( \CPU|ACU|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(0),
	combout => \RAM|ram~287feeder_combout\);

-- Location: FF_X72_Y10_N7
\RAM|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~287feeder_combout\,
	ena => \RAM|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~287_q\);

-- Location: LABCELL_X73_Y9_N3
\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \RAM|ram~287_q\ & ( \ROM|memROM~23_combout\ & ( (!\ROM|memROM~22_combout\ & (\RAM|ram~159_q\)) # (\ROM|memROM~22_combout\ & ((\RAM|ram~415_q\))) ) ) ) # ( !\RAM|ram~287_q\ & ( \ROM|memROM~23_combout\ & ( (!\ROM|memROM~22_combout\ 
-- & (\RAM|ram~159_q\)) # (\ROM|memROM~22_combout\ & ((\RAM|ram~415_q\))) ) ) ) # ( \RAM|ram~287_q\ & ( !\ROM|memROM~23_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM|ram~31_q\) ) ) ) # ( !\RAM|ram~287_q\ & ( !\ROM|memROM~23_combout\ & ( (\RAM|ram~31_q\ & 
-- !\ROM|memROM~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~31_q\,
	datab => \RAM|ALT_INV_ram~159_q\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \RAM|ALT_INV_ram~415_q\,
	datae => \RAM|ALT_INV_ram~287_q\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~537_combout\);

-- Location: LABCELL_X73_Y7_N36
\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \RAM|ram~539_combout\ & ( \RAM|ram~537_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\ROM|memROM~17_combout\ & ((\RAM|ram~538_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~540_combout\))) ) ) ) # ( !\RAM|ram~539_combout\ & ( 
-- \RAM|ram~537_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~17_combout\)) # (\ROM|memROM~2_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~538_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~540_combout\)))) ) ) ) # ( \RAM|ram~539_combout\ & 
-- ( !\RAM|ram~537_combout\ & ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~17_combout\)) # (\ROM|memROM~2_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~538_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~540_combout\)))) ) ) ) # ( !\RAM|ram~539_combout\ 
-- & ( !\RAM|ram~537_combout\ & ( (\ROM|memROM~2_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~538_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~540_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \RAM|ALT_INV_ram~540_combout\,
	datad => \RAM|ALT_INV_ram~538_combout\,
	datae => \RAM|ALT_INV_ram~539_combout\,
	dataf => \RAM|ALT_INV_ram~537_combout\,
	combout => \RAM|ram~541_combout\);

-- Location: LABCELL_X71_Y6_N24
\RAM|ram~367feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~367feeder_combout\ = ( \CPU|ACU|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(0),
	combout => \RAM|ram~367feeder_combout\);

-- Location: FF_X71_Y6_N25
\RAM|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~367feeder_combout\,
	ena => \RAM|ram~575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~367_q\);

-- Location: FF_X73_Y7_N44
\RAM|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~579_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~495_q\);

-- Location: LABCELL_X70_Y7_N12
\RAM|ram~111feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~111feeder_combout\ = ( \CPU|ACU|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(0),
	combout => \RAM|ram~111feeder_combout\);

-- Location: FF_X70_Y7_N13
\RAM|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~111feeder_combout\,
	ena => \RAM|ram~573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~111_q\);

-- Location: LABCELL_X70_Y7_N18
\RAM|ram~239feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~239feeder_combout\ = ( \CPU|ACU|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(0),
	combout => \RAM|ram~239feeder_combout\);

-- Location: FF_X70_Y7_N20
\RAM|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~239feeder_combout\,
	ena => \RAM|ram~577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~239_q\);

-- Location: LABCELL_X73_Y7_N45
\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( \ROM|memROM~23_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~495_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~367_q\ ) ) ) # ( \ROM|memROM~23_combout\ & ( !\ROM|memROM~22_combout\ & ( 
-- \RAM|ram~239_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~111_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~367_q\,
	datab => \RAM|ALT_INV_ram~495_q\,
	datac => \RAM|ALT_INV_ram~111_q\,
	datad => \RAM|ALT_INV_ram~239_q\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~530_combout\);

-- Location: FF_X71_Y7_N25
\RAM|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~303_q\);

-- Location: FF_X73_Y7_N32
\RAM|ram~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~431_q\);

-- Location: FF_X74_Y7_N52
\RAM|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~175_q\);

-- Location: LABCELL_X75_Y10_N18
\RAM|ram~47feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~47feeder_combout\ = \CPU|ACU|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|ALT_INV_DOUT\(0),
	combout => \RAM|ram~47feeder_combout\);

-- Location: FF_X75_Y10_N20
\RAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~47feeder_combout\,
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~47_q\);

-- Location: LABCELL_X73_Y7_N54
\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \ROM|memROM~23_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~431_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~303_q\ ) ) ) # ( \ROM|memROM~23_combout\ & ( !\ROM|memROM~22_combout\ & ( 
-- \RAM|ram~175_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~303_q\,
	datab => \RAM|ALT_INV_ram~431_q\,
	datac => \RAM|ALT_INV_ram~175_q\,
	datad => \RAM|ALT_INV_ram~47_q\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~528_combout\);

-- Location: FF_X73_Y5_N2
\RAM|ram~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~463_q\);

-- Location: FF_X73_Y5_N59
\RAM|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~335_q\);

-- Location: FF_X78_Y8_N49
\RAM|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~207_q\);

-- Location: FF_X73_Y5_N29
\RAM|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~79_q\);

-- Location: LABCELL_X73_Y5_N45
\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~463_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~207_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~335_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~79_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~463_q\,
	datab => \RAM|ALT_INV_ram~335_q\,
	datac => \RAM|ALT_INV_ram~207_q\,
	datad => \RAM|ALT_INV_ram~79_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~529_combout\);

-- Location: FF_X73_Y10_N50
\RAM|ram~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~399_q\);

-- Location: FF_X73_Y10_N25
\RAM|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~271_q\);

-- Location: MLABCELL_X72_Y10_N12
\RAM|ram~15feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~15feeder_combout\ = ( \CPU|ACU|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(0),
	combout => \RAM|ram~15feeder_combout\);

-- Location: FF_X72_Y10_N13
\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~15feeder_combout\,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

-- Location: FF_X73_Y10_N43
\RAM|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~143_q\);

-- Location: LABCELL_X73_Y10_N6
\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~399_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~143_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~271_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~399_q\,
	datab => \RAM|ALT_INV_ram~271_q\,
	datac => \RAM|ALT_INV_ram~15_q\,
	datad => \RAM|ALT_INV_ram~143_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~527_combout\);

-- Location: LABCELL_X73_Y7_N27
\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \RAM|ram~529_combout\ & ( \RAM|ram~527_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\ROM|memROM~17_combout\ & ((\RAM|ram~528_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~530_combout\))) ) ) ) # ( !\RAM|ram~529_combout\ & ( 
-- \RAM|ram~527_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~17_combout\)) # (\ROM|memROM~2_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~528_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~530_combout\)))) ) ) ) # ( \RAM|ram~529_combout\ & 
-- ( !\RAM|ram~527_combout\ & ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~17_combout\)) # (\ROM|memROM~2_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~528_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~530_combout\)))) ) ) ) # ( !\RAM|ram~529_combout\ 
-- & ( !\RAM|ram~527_combout\ & ( (\ROM|memROM~2_combout\ & ((!\ROM|memROM~17_combout\ & ((\RAM|ram~528_combout\))) # (\ROM|memROM~17_combout\ & (\RAM|ram~530_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \RAM|ALT_INV_ram~530_combout\,
	datad => \RAM|ALT_INV_ram~528_combout\,
	datae => \RAM|ALT_INV_ram~529_combout\,
	dataf => \RAM|ALT_INV_ram~527_combout\,
	combout => \RAM|ram~531_combout\);

-- Location: FF_X71_Y8_N37
\RAM|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~183_q\);

-- Location: LABCELL_X70_Y8_N48
\RAM|ram~55feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~55feeder_combout\ = ( \CPU|ACU|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(0),
	combout => \RAM|ram~55feeder_combout\);

-- Location: FF_X70_Y8_N49
\RAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~55feeder_combout\,
	ena => \RAM|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~55_q\);

-- Location: LABCELL_X70_Y8_N6
\RAM|ram~311feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~311feeder_combout\ = ( \CPU|ACU|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(0),
	combout => \RAM|ram~311feeder_combout\);

-- Location: FF_X70_Y8_N7
\RAM|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~311feeder_combout\,
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~311_q\);

-- Location: FF_X73_Y8_N20
\RAM|ram~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~439_q\);

-- Location: MLABCELL_X72_Y8_N48
\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~439_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~23_combout\ & ( \RAM|ram~183_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~23_combout\ & ( 
-- \RAM|ram~311_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~23_combout\ & ( \RAM|ram~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~183_q\,
	datab => \RAM|ALT_INV_ram~55_q\,
	datac => \RAM|ALT_INV_ram~311_q\,
	datad => \RAM|ALT_INV_ram~439_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~533_combout\);

-- Location: FF_X75_Y6_N49
\RAM|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~247_q\);

-- Location: FF_X72_Y6_N49
\RAM|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~503_q\);

-- Location: FF_X72_Y6_N31
\RAM|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~375_q\);

-- Location: FF_X72_Y6_N5
\RAM|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~119_q\);

-- Location: LABCELL_X73_Y6_N36
\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \ROM|memROM~23_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~503_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~375_q\ ) ) ) # ( \ROM|memROM~23_combout\ & ( !\ROM|memROM~22_combout\ & ( 
-- \RAM|ram~247_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~119_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~247_q\,
	datab => \RAM|ALT_INV_ram~503_q\,
	datac => \RAM|ALT_INV_ram~375_q\,
	datad => \RAM|ALT_INV_ram~119_q\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~535_combout\);

-- Location: FF_X78_Y8_N10
\RAM|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~215_q\);

-- Location: FF_X73_Y9_N14
\RAM|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~87_q\);

-- Location: FF_X73_Y9_N59
\RAM|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~343_q\);

-- Location: FF_X73_Y9_N26
\RAM|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~471_q\);

-- Location: LABCELL_X73_Y9_N9
\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \ROM|memROM~23_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~471_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~343_q\ ) ) ) # ( \ROM|memROM~23_combout\ & ( !\ROM|memROM~22_combout\ & ( 
-- \RAM|ram~215_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~215_q\,
	datab => \RAM|ALT_INV_ram~87_q\,
	datac => \RAM|ALT_INV_ram~343_q\,
	datad => \RAM|ALT_INV_ram~471_q\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~534_combout\);

-- Location: FF_X72_Y7_N31
\RAM|ram~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~407_q\);

-- Location: FF_X81_Y7_N40
\RAM|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~585_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~151_q\);

-- Location: FF_X72_Y7_N38
\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

-- Location: FF_X75_Y5_N28
\RAM|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~279_q\);

-- Location: MLABCELL_X72_Y7_N24
\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \ROM|memROM~23_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~407_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~279_q\ ) ) ) # ( \ROM|memROM~23_combout\ & ( !\ROM|memROM~22_combout\ & ( 
-- \RAM|ram~151_q\ ) ) ) # ( !\ROM|memROM~23_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~407_q\,
	datab => \RAM|ALT_INV_ram~151_q\,
	datac => \RAM|ALT_INV_ram~23_q\,
	datad => \RAM|ALT_INV_ram~279_q\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~532_combout\);

-- Location: LABCELL_X73_Y7_N0
\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( \RAM|ram~534_combout\ & ( \RAM|ram~532_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\ROM|memROM~17_combout\ & (\RAM|ram~533_combout\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~535_combout\)))) ) ) ) # ( !\RAM|ram~534_combout\ & ( 
-- \RAM|ram~532_combout\ & ( (!\ROM|memROM~2_combout\ & (((!\ROM|memROM~17_combout\)))) # (\ROM|memROM~2_combout\ & ((!\ROM|memROM~17_combout\ & (\RAM|ram~533_combout\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~535_combout\))))) ) ) ) # ( 
-- \RAM|ram~534_combout\ & ( !\RAM|ram~532_combout\ & ( (!\ROM|memROM~2_combout\ & (((\ROM|memROM~17_combout\)))) # (\ROM|memROM~2_combout\ & ((!\ROM|memROM~17_combout\ & (\RAM|ram~533_combout\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~535_combout\))))) ) ) 
-- ) # ( !\RAM|ram~534_combout\ & ( !\RAM|ram~532_combout\ & ( (\ROM|memROM~2_combout\ & ((!\ROM|memROM~17_combout\ & (\RAM|ram~533_combout\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~535_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \RAM|ALT_INV_ram~533_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~535_combout\,
	datae => \RAM|ALT_INV_ram~534_combout\,
	dataf => \RAM|ALT_INV_ram~532_combout\,
	combout => \RAM|ram~536_combout\);

-- Location: FF_X74_Y5_N38
\RAM|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~487_q\);

-- Location: FF_X74_Y5_N44
\RAM|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~231_q\);

-- Location: FF_X74_Y5_N28
\RAM|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~167_q\);

-- Location: FF_X78_Y7_N25
\RAM|ram~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~423_q\);

-- Location: LABCELL_X74_Y5_N54
\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~487_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~423_q\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( 
-- \RAM|ram~231_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~167_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~487_q\,
	datab => \RAM|ALT_INV_ram~231_q\,
	datac => \RAM|ALT_INV_ram~167_q\,
	datad => \RAM|ALT_INV_ram~423_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~544_combout\);

-- Location: FF_X78_Y10_N1
\RAM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~71_q\);

-- Location: FF_X73_Y6_N47
\RAM|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~327_q\);

-- Location: FF_X73_Y6_N11
\RAM|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~135_q\);

-- Location: FF_X73_Y6_N35
\RAM|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~391_q\);

-- Location: LABCELL_X73_Y6_N21
\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~391_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~135_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~17_combout\ & ( 
-- \RAM|ram~327_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~17_combout\ & ( \RAM|ram~71_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~71_q\,
	datab => \RAM|ALT_INV_ram~327_q\,
	datac => \RAM|ALT_INV_ram~135_q\,
	datad => \RAM|ALT_INV_ram~391_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~543_combout\);

-- Location: FF_X74_Y6_N58
\RAM|ram~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~455_q\);

-- Location: FF_X74_Y6_N14
\RAM|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~519_q\);

-- Location: FF_X77_Y9_N49
\RAM|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~199_q\);

-- Location: FF_X77_Y9_N11
\RAM|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~263_q\);

-- Location: LABCELL_X74_Y6_N15
\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( \RAM|ram~263_q\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~17_combout\ & (\RAM|ram~455_q\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~519_q\))) ) ) ) # ( !\RAM|ram~263_q\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~17_combout\ 
-- & (\RAM|ram~455_q\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~519_q\))) ) ) ) # ( \RAM|ram~263_q\ & ( !\ROM|memROM~22_combout\ & ( (\RAM|ram~199_q\) # (\ROM|memROM~17_combout\) ) ) ) # ( !\RAM|ram~263_q\ & ( !\ROM|memROM~22_combout\ & ( 
-- (!\ROM|memROM~17_combout\ & \RAM|ram~199_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~455_q\,
	datab => \RAM|ALT_INV_ram~519_q\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~199_q\,
	datae => \RAM|ALT_INV_ram~263_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~545_combout\);

-- Location: LABCELL_X77_Y6_N45
\RAM|ram~39feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~39feeder_combout\ = ( \CPU|ACU|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(0),
	combout => \RAM|ram~39feeder_combout\);

-- Location: FF_X77_Y6_N47
\RAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~39feeder_combout\,
	ena => \RAM|ram~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~39_q\);

-- Location: FF_X74_Y6_N26
\RAM|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~359_q\);

-- Location: FF_X79_Y6_N7
\RAM|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~103_q\);

-- Location: FF_X74_Y7_N34
\RAM|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~295_q\);

-- Location: LABCELL_X74_Y6_N27
\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \RAM|ram~295_q\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~17_combout\) # (\RAM|ram~359_q\) ) ) ) # ( !\RAM|ram~295_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM|ram~359_q\ & \ROM|memROM~17_combout\) ) ) ) # ( \RAM|ram~295_q\ & ( 
-- !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~17_combout\ & (\RAM|ram~39_q\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~103_q\))) ) ) ) # ( !\RAM|ram~295_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~17_combout\ & (\RAM|ram~39_q\)) # 
-- (\ROM|memROM~17_combout\ & ((\RAM|ram~103_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~39_q\,
	datab => \RAM|ALT_INV_ram~359_q\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~103_q\,
	datae => \RAM|ALT_INV_ram~295_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~542_combout\);

-- Location: LABCELL_X73_Y7_N12
\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( \RAM|ram~545_combout\ & ( \RAM|ram~542_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~23_combout\) # ((\RAM|ram~544_combout\)))) # (\ROM|memROM~2_combout\ & (((\RAM|ram~543_combout\)) # (\ROM|memROM~23_combout\))) ) ) ) # 
-- ( !\RAM|ram~545_combout\ & ( \RAM|ram~542_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~23_combout\) # ((\RAM|ram~544_combout\)))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~23_combout\ & ((\RAM|ram~543_combout\)))) ) ) ) # ( \RAM|ram~545_combout\ 
-- & ( !\RAM|ram~542_combout\ & ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~23_combout\ & (\RAM|ram~544_combout\))) # (\ROM|memROM~2_combout\ & (((\RAM|ram~543_combout\)) # (\ROM|memROM~23_combout\))) ) ) ) # ( !\RAM|ram~545_combout\ & ( !\RAM|ram~542_combout\ 
-- & ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~23_combout\ & (\RAM|ram~544_combout\))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~23_combout\ & ((\RAM|ram~543_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \RAM|ALT_INV_ram~544_combout\,
	datad => \RAM|ALT_INV_ram~543_combout\,
	datae => \RAM|ALT_INV_ram~545_combout\,
	dataf => \RAM|ALT_INV_ram~542_combout\,
	combout => \RAM|ram~546_combout\);

-- Location: LABCELL_X73_Y7_N48
\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( \RAM|ram~536_combout\ & ( \RAM|ram~546_combout\ & ( ((!\ROM|memROM~21_combout\ & ((\RAM|ram~531_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~541_combout\))) # (\ROM|memROM~18_combout\) ) ) ) # ( !\RAM|ram~536_combout\ & ( 
-- \RAM|ram~546_combout\ & ( (!\ROM|memROM~21_combout\ & (((\RAM|ram~531_combout\ & !\ROM|memROM~18_combout\)))) # (\ROM|memROM~21_combout\ & (((\ROM|memROM~18_combout\)) # (\RAM|ram~541_combout\))) ) ) ) # ( \RAM|ram~536_combout\ & ( !\RAM|ram~546_combout\ 
-- & ( (!\ROM|memROM~21_combout\ & (((\ROM|memROM~18_combout\) # (\RAM|ram~531_combout\)))) # (\ROM|memROM~21_combout\ & (\RAM|ram~541_combout\ & ((!\ROM|memROM~18_combout\)))) ) ) ) # ( !\RAM|ram~536_combout\ & ( !\RAM|ram~546_combout\ & ( 
-- (!\ROM|memROM~18_combout\ & ((!\ROM|memROM~21_combout\ & ((\RAM|ram~531_combout\))) # (\ROM|memROM~21_combout\ & (\RAM|ram~541_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011100110000011101001100110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~541_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \RAM|ALT_INV_ram~531_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \RAM|ALT_INV_ram~536_combout\,
	dataf => \RAM|ALT_INV_ram~546_combout\,
	combout => \RAM|ram~547_combout\);

-- Location: FF_X73_Y8_N11
\FLIP_FLOP_KEY0|saida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FLIP_FLOP_KEY0|saida~feeder_combout\,
	clrn => \FLIP_FLOP_KEY0|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP_KEY0|saida~q\);

-- Location: LABCELL_X71_Y7_N36
\RAM|dado_out[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~3_combout\ = ( \RAM|dado_out[0]~9_combout\ & ( \FLIP_FLOP_KEY0|saida~q\ & ( (!\RAM|dado_out[0]~1_combout\) # (\RAM|ram~547_combout\) ) ) ) # ( \RAM|dado_out[0]~9_combout\ & ( !\FLIP_FLOP_KEY0|saida~q\ & ( (!\DEBUG~0_combout\ & 
-- ((!\RAM|dado_out[0]~1_combout\) # (\RAM|ram~547_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100001101000000000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~547_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~1_combout\,
	datac => \ALT_INV_DEBUG~0_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~9_combout\,
	dataf => \FLIP_FLOP_KEY0|ALT_INV_saida~q\,
	combout => \RAM|dado_out[0]~3_combout\);

-- Location: MLABCELL_X72_Y7_N39
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \ROM|memROM~3_combout\ & ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(3) & (\ROM|memROM~5_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \comb~3_combout\);

-- Location: MLABCELL_X72_Y7_N3
\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( !\ROM|memROM~20_combout\ & ( (\ROM|memROM~19_combout\ & (\comb~3_combout\ & (\CPU|DEC|saidaDecoder[4]~3_combout\ & !\ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \ALT_INV_comb~3_combout\,
	datac => \CPU|DEC|ALT_INV_saidaDecoder[4]~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \comb~4_combout\);

-- Location: MLABCELL_X72_Y7_N0
\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( !\comb~2_combout\ & ( (!\ROM|memROM~22_combout\ & \comb~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ALT_INV_comb~4_combout\,
	dataf => \ALT_INV_comb~2_combout\,
	combout => \comb~5_combout\);

-- Location: FF_X77_Y7_N25
\REG7|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(0));

-- Location: FF_X77_Y7_N17
\REG7|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(1));

-- Location: FF_X77_Y7_N31
\REG7|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(2));

-- Location: FF_X77_Y7_N28
\REG7|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(3));

-- Location: FF_X80_Y7_N1
\REG7|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(4),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(4));

-- Location: LABCELL_X80_Y7_N18
\REG7|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG7|DOUT[5]~feeder_combout\ = ( \CPU|ACU|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(5),
	combout => \REG7|DOUT[5]~feeder_combout\);

-- Location: FF_X80_Y7_N19
\REG7|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG7|DOUT[5]~feeder_combout\,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(5));

-- Location: FF_X80_Y7_N31
\REG7|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(6),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(6));

-- Location: FF_X77_Y7_N43
\REG7|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(7),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG7|DOUT\(7));

-- Location: MLABCELL_X72_Y7_N30
\REG8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG8|DOUT~0_combout\ = ( \CPU|ACU|DOUT\(0) & ( \ROM|memROM~21_combout\ & ( \REG8|DOUT~q\ ) ) ) # ( !\CPU|ACU|DOUT\(0) & ( \ROM|memROM~21_combout\ & ( \REG8|DOUT~q\ ) ) ) # ( \CPU|ACU|DOUT\(0) & ( !\ROM|memROM~21_combout\ & ( ((\comb~4_combout\ & 
-- (\ROM|memROM~18_combout\ & !\ROM|memROM~22_combout\))) # (\REG8|DOUT~q\) ) ) ) # ( !\CPU|ACU|DOUT\(0) & ( !\ROM|memROM~21_combout\ & ( (\REG8|DOUT~q\ & ((!\comb~4_combout\) # ((!\ROM|memROM~18_combout\) # (\ROM|memROM~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000111110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~4_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \REG8|ALT_INV_DOUT~q\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \CPU|ACU|ALT_INV_DOUT\(0),
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \REG8|DOUT~0_combout\);

-- Location: FF_X72_Y7_N26
\REG8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \REG8|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG8|DOUT~q\);

-- Location: MLABCELL_X72_Y7_N18
\REG9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG9|DOUT~0_combout\ = ( \REG9|DOUT~q\ & ( \ROM|memROM~21_combout\ & ( (((!\comb~4_combout\) # (\ROM|memROM~22_combout\)) # (\ROM|memROM~18_combout\)) # (\CPU|ACU|DOUT\(0)) ) ) ) # ( !\REG9|DOUT~q\ & ( \ROM|memROM~21_combout\ & ( (\CPU|ACU|DOUT\(0) & 
-- (!\ROM|memROM~18_combout\ & (\comb~4_combout\ & !\ROM|memROM~22_combout\))) ) ) ) # ( \REG9|DOUT~q\ & ( !\ROM|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000100000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ACU|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \ALT_INV_comb~4_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \REG9|ALT_INV_DOUT~q\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \REG9|DOUT~0_combout\);

-- Location: FF_X72_Y7_N19
\REG9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG9|DOUT~q\);

-- Location: MLABCELL_X72_Y7_N57
\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( !\ROM|memROM~2_combout\ & ( \comb~0_combout\ & ( (!\ROM|memROM~20_combout\ & (\CPU|DEC|saidaDecoder[4]~3_combout\ & (\comb~3_combout\ & \ROM|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[4]~3_combout\,
	datac => \ALT_INV_comb~3_combout\,
	datad => \ROM|ALT_INV_memROM~19_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \comb~6_combout\);

-- Location: FF_X67_Y4_N2
\L7Ga|REGD|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Ga|REGD|DOUT\(1));

-- Location: FF_X67_Y4_N11
\L7Ga|REGD|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Ga|REGD|DOUT\(2));

-- Location: FF_X67_Y4_N26
\L7Ga|REGD|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Ga|REGD|DOUT\(0));

-- Location: LABCELL_X67_Y4_N6
\L7Ga|REGD|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ga|REGD|DOUT[3]~feeder_combout\ = ( \CPU|ACU|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	combout => \L7Ga|REGD|DOUT[3]~feeder_combout\);

-- Location: FF_X67_Y4_N8
\L7Ga|REGD|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7Ga|REGD|DOUT[3]~feeder_combout\,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Ga|REGD|DOUT\(3));

-- Location: LABCELL_X67_Y4_N30
\L7Ga|CON|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ga|CON|rascSaida7seg[0]~0_combout\ = ( \L7Ga|REGD|DOUT\(3) & ( (\L7Ga|REGD|DOUT\(0) & (!\L7Ga|REGD|DOUT\(1) $ (!\L7Ga|REGD|DOUT\(2)))) ) ) # ( !\L7Ga|REGD|DOUT\(3) & ( (!\L7Ga|REGD|DOUT\(1) & (!\L7Ga|REGD|DOUT\(2) $ (!\L7Ga|REGD|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Ga|REGD|ALT_INV_DOUT\(1),
	datab => \L7Ga|REGD|ALT_INV_DOUT\(2),
	datac => \L7Ga|REGD|ALT_INV_DOUT\(0),
	dataf => \L7Ga|REGD|ALT_INV_DOUT\(3),
	combout => \L7Ga|CON|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X67_Y4_N33
\L7Ga|CON|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ga|CON|rascSaida7seg[1]~1_combout\ = ( \L7Ga|REGD|DOUT\(0) & ( (!\L7Ga|REGD|DOUT\(1) & (\L7Ga|REGD|DOUT\(2) & !\L7Ga|REGD|DOUT\(3))) # (\L7Ga|REGD|DOUT\(1) & ((\L7Ga|REGD|DOUT\(3)))) ) ) # ( !\L7Ga|REGD|DOUT\(0) & ( (\L7Ga|REGD|DOUT\(2) & 
-- ((\L7Ga|REGD|DOUT\(3)) # (\L7Ga|REGD|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Ga|REGD|ALT_INV_DOUT\(1),
	datab => \L7Ga|REGD|ALT_INV_DOUT\(2),
	datac => \L7Ga|REGD|ALT_INV_DOUT\(3),
	dataf => \L7Ga|REGD|ALT_INV_DOUT\(0),
	combout => \L7Ga|CON|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X67_Y4_N15
\L7Ga|CON|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ga|CON|rascSaida7seg[2]~2_combout\ = ( \L7Ga|REGD|DOUT\(0) & ( (\L7Ga|REGD|DOUT\(1) & (\L7Ga|REGD|DOUT\(3) & \L7Ga|REGD|DOUT\(2))) ) ) # ( !\L7Ga|REGD|DOUT\(0) & ( (!\L7Ga|REGD|DOUT\(3) & (\L7Ga|REGD|DOUT\(1) & !\L7Ga|REGD|DOUT\(2))) # 
-- (\L7Ga|REGD|DOUT\(3) & ((\L7Ga|REGD|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Ga|REGD|ALT_INV_DOUT\(1),
	datab => \L7Ga|REGD|ALT_INV_DOUT\(3),
	datac => \L7Ga|REGD|ALT_INV_DOUT\(2),
	dataf => \L7Ga|REGD|ALT_INV_DOUT\(0),
	combout => \L7Ga|CON|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X67_Y4_N12
\L7Ga|CON|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ga|CON|rascSaida7seg[3]~3_combout\ = ( \L7Ga|REGD|DOUT\(2) & ( (!\L7Ga|REGD|DOUT\(1) & (!\L7Ga|REGD|DOUT\(3) & !\L7Ga|REGD|DOUT\(0))) # (\L7Ga|REGD|DOUT\(1) & ((\L7Ga|REGD|DOUT\(0)))) ) ) # ( !\L7Ga|REGD|DOUT\(2) & ( (!\L7Ga|REGD|DOUT\(1) & 
-- (!\L7Ga|REGD|DOUT\(3) & \L7Ga|REGD|DOUT\(0))) # (\L7Ga|REGD|DOUT\(1) & (\L7Ga|REGD|DOUT\(3) & !\L7Ga|REGD|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Ga|REGD|ALT_INV_DOUT\(1),
	datab => \L7Ga|REGD|ALT_INV_DOUT\(3),
	datac => \L7Ga|REGD|ALT_INV_DOUT\(0),
	dataf => \L7Ga|REGD|ALT_INV_DOUT\(2),
	combout => \L7Ga|CON|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X67_Y4_N45
\L7Ga|CON|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ga|CON|rascSaida7seg[4]~4_combout\ = ( \L7Ga|REGD|DOUT\(0) & ( (!\L7Ga|REGD|DOUT\(3)) # ((!\L7Ga|REGD|DOUT\(1) & !\L7Ga|REGD|DOUT\(2))) ) ) # ( !\L7Ga|REGD|DOUT\(0) & ( (!\L7Ga|REGD|DOUT\(1) & (!\L7Ga|REGD|DOUT\(3) & \L7Ga|REGD|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011101100111011001110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Ga|REGD|ALT_INV_DOUT\(1),
	datab => \L7Ga|REGD|ALT_INV_DOUT\(3),
	datac => \L7Ga|REGD|ALT_INV_DOUT\(2),
	dataf => \L7Ga|REGD|ALT_INV_DOUT\(0),
	combout => \L7Ga|CON|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X67_Y4_N42
\L7Ga|CON|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ga|CON|rascSaida7seg[5]~5_combout\ = ( \L7Ga|REGD|DOUT\(2) & ( (\L7Ga|REGD|DOUT\(0) & (!\L7Ga|REGD|DOUT\(1) $ (!\L7Ga|REGD|DOUT\(3)))) ) ) # ( !\L7Ga|REGD|DOUT\(2) & ( (!\L7Ga|REGD|DOUT\(3) & ((\L7Ga|REGD|DOUT\(0)) # (\L7Ga|REGD|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Ga|REGD|ALT_INV_DOUT\(1),
	datab => \L7Ga|REGD|ALT_INV_DOUT\(3),
	datac => \L7Ga|REGD|ALT_INV_DOUT\(0),
	dataf => \L7Ga|REGD|ALT_INV_DOUT\(2),
	combout => \L7Ga|CON|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X67_Y4_N48
\L7Ga|CON|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ga|CON|rascSaida7seg[6]~6_combout\ = ( \L7Ga|REGD|DOUT\(2) & ( (!\L7Ga|REGD|DOUT\(3) & (\L7Ga|REGD|DOUT\(0) & \L7Ga|REGD|DOUT\(1))) # (\L7Ga|REGD|DOUT\(3) & (!\L7Ga|REGD|DOUT\(0) & !\L7Ga|REGD|DOUT\(1))) ) ) # ( !\L7Ga|REGD|DOUT\(2) & ( 
-- (!\L7Ga|REGD|DOUT\(3) & !\L7Ga|REGD|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000110000000011000011000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7Ga|REGD|ALT_INV_DOUT\(3),
	datac => \L7Ga|REGD|ALT_INV_DOUT\(0),
	datad => \L7Ga|REGD|ALT_INV_DOUT\(1),
	dataf => \L7Ga|REGD|ALT_INV_DOUT\(2),
	combout => \L7Ga|CON|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X71_Y6_N45
\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = ( \comb~4_combout\ & ( (\ROM|memROM~22_combout\ & (\ROM|memROM~18_combout\ & !\ROM|memROM~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ALT_INV_comb~4_combout\,
	combout => \comb~7_combout\);

-- Location: FF_X71_Y4_N20
\L7Gb|REGD|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gb|REGD|DOUT\(2));

-- Location: FF_X71_Y4_N44
\L7Gb|REGD|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gb|REGD|DOUT\(3));

-- Location: FF_X71_Y4_N14
\L7Gb|REGD|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gb|REGD|DOUT\(1));

-- Location: FF_X71_Y4_N50
\L7Gb|REGD|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gb|REGD|DOUT\(0));

-- Location: LABCELL_X71_Y4_N15
\L7Gb|CON|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gb|CON|rascSaida7seg[0]~0_combout\ = ( \L7Gb|REGD|DOUT\(0) & ( (!\L7Gb|REGD|DOUT\(2) & (!\L7Gb|REGD|DOUT\(3) $ (\L7Gb|REGD|DOUT\(1)))) # (\L7Gb|REGD|DOUT\(2) & (\L7Gb|REGD|DOUT\(3) & !\L7Gb|REGD|DOUT\(1))) ) ) # ( !\L7Gb|REGD|DOUT\(0) & ( 
-- (\L7Gb|REGD|DOUT\(2) & (!\L7Gb|REGD|DOUT\(3) & !\L7Gb|REGD|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010010010100100101001001010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gb|REGD|ALT_INV_DOUT\(2),
	datab => \L7Gb|REGD|ALT_INV_DOUT\(3),
	datac => \L7Gb|REGD|ALT_INV_DOUT\(1),
	dataf => \L7Gb|REGD|ALT_INV_DOUT\(0),
	combout => \L7Gb|CON|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X71_Y4_N0
\L7Gb|CON|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gb|CON|rascSaida7seg[1]~1_combout\ = ( \L7Gb|REGD|DOUT\(1) & ( (!\L7Gb|REGD|DOUT\(0) & ((\L7Gb|REGD|DOUT\(2)))) # (\L7Gb|REGD|DOUT\(0) & (\L7Gb|REGD|DOUT\(3))) ) ) # ( !\L7Gb|REGD|DOUT\(1) & ( (\L7Gb|REGD|DOUT\(2) & (!\L7Gb|REGD|DOUT\(0) $ 
-- (!\L7Gb|REGD|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gb|REGD|ALT_INV_DOUT\(0),
	datab => \L7Gb|REGD|ALT_INV_DOUT\(3),
	datac => \L7Gb|REGD|ALT_INV_DOUT\(2),
	dataf => \L7Gb|REGD|ALT_INV_DOUT\(1),
	combout => \L7Gb|CON|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X71_Y4_N3
\L7Gb|CON|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gb|CON|rascSaida7seg[2]~2_combout\ = ( \L7Gb|REGD|DOUT\(2) & ( (\L7Gb|REGD|DOUT\(3) & ((!\L7Gb|REGD|DOUT\(0)) # (\L7Gb|REGD|DOUT\(1)))) ) ) # ( !\L7Gb|REGD|DOUT\(2) & ( (!\L7Gb|REGD|DOUT\(0) & (!\L7Gb|REGD|DOUT\(3) & \L7Gb|REGD|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gb|REGD|ALT_INV_DOUT\(0),
	datab => \L7Gb|REGD|ALT_INV_DOUT\(3),
	datac => \L7Gb|REGD|ALT_INV_DOUT\(1),
	dataf => \L7Gb|REGD|ALT_INV_DOUT\(2),
	combout => \L7Gb|CON|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X71_Y4_N54
\L7Gb|CON|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gb|CON|rascSaida7seg[3]~3_combout\ = ( \L7Gb|REGD|DOUT\(1) & ( (!\L7Gb|REGD|DOUT\(0) & (\L7Gb|REGD|DOUT\(3) & !\L7Gb|REGD|DOUT\(2))) # (\L7Gb|REGD|DOUT\(0) & ((\L7Gb|REGD|DOUT\(2)))) ) ) # ( !\L7Gb|REGD|DOUT\(1) & ( (!\L7Gb|REGD|DOUT\(3) & 
-- (!\L7Gb|REGD|DOUT\(0) $ (!\L7Gb|REGD|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100000100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gb|REGD|ALT_INV_DOUT\(0),
	datab => \L7Gb|REGD|ALT_INV_DOUT\(3),
	datac => \L7Gb|REGD|ALT_INV_DOUT\(2),
	dataf => \L7Gb|REGD|ALT_INV_DOUT\(1),
	combout => \L7Gb|CON|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X71_Y4_N24
\L7Gb|CON|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gb|CON|rascSaida7seg[4]~4_combout\ = ( \L7Gb|REGD|DOUT\(1) & ( (\L7Gb|REGD|DOUT\(0) & !\L7Gb|REGD|DOUT\(3)) ) ) # ( !\L7Gb|REGD|DOUT\(1) & ( (!\L7Gb|REGD|DOUT\(2) & (\L7Gb|REGD|DOUT\(0))) # (\L7Gb|REGD|DOUT\(2) & ((!\L7Gb|REGD|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001011100010111000101110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gb|REGD|ALT_INV_DOUT\(0),
	datab => \L7Gb|REGD|ALT_INV_DOUT\(3),
	datac => \L7Gb|REGD|ALT_INV_DOUT\(2),
	dataf => \L7Gb|REGD|ALT_INV_DOUT\(1),
	combout => \L7Gb|CON|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X71_Y4_N27
\L7Gb|CON|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gb|CON|rascSaida7seg[5]~5_combout\ = ( \L7Gb|REGD|DOUT\(2) & ( (\L7Gb|REGD|DOUT\(0) & (!\L7Gb|REGD|DOUT\(3) $ (!\L7Gb|REGD|DOUT\(1)))) ) ) # ( !\L7Gb|REGD|DOUT\(2) & ( (!\L7Gb|REGD|DOUT\(3) & ((\L7Gb|REGD|DOUT\(1)) # (\L7Gb|REGD|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gb|REGD|ALT_INV_DOUT\(0),
	datab => \L7Gb|REGD|ALT_INV_DOUT\(3),
	datac => \L7Gb|REGD|ALT_INV_DOUT\(1),
	dataf => \L7Gb|REGD|ALT_INV_DOUT\(2),
	combout => \L7Gb|CON|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X71_Y4_N57
\L7Gb|CON|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gb|CON|rascSaida7seg[6]~6_combout\ = ( \L7Gb|REGD|DOUT\(2) & ( (!\L7Gb|REGD|DOUT\(0) & (\L7Gb|REGD|DOUT\(3) & !\L7Gb|REGD|DOUT\(1))) # (\L7Gb|REGD|DOUT\(0) & (!\L7Gb|REGD|DOUT\(3) & \L7Gb|REGD|DOUT\(1))) ) ) # ( !\L7Gb|REGD|DOUT\(2) & ( 
-- (!\L7Gb|REGD|DOUT\(3) & !\L7Gb|REGD|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000100100001001000010010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gb|REGD|ALT_INV_DOUT\(0),
	datab => \L7Gb|REGD|ALT_INV_DOUT\(3),
	datac => \L7Gb|REGD|ALT_INV_DOUT\(1),
	dataf => \L7Gb|REGD|ALT_INV_DOUT\(2),
	combout => \L7Gb|CON|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X67_Y4_N18
\L7Gc|REGD|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gc|REGD|DOUT[0]~feeder_combout\ = ( \CPU|ACU|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(0),
	combout => \L7Gc|REGD|DOUT[0]~feeder_combout\);

-- Location: LABCELL_X71_Y6_N3
\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = ( \comb~4_combout\ & ( (\ROM|memROM~22_combout\ & (\ROM|memROM~21_combout\ & !\ROM|memROM~18_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ALT_INV_comb~4_combout\,
	combout => \comb~8_combout\);

-- Location: FF_X67_Y4_N20
\L7Gc|REGD|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7Gc|REGD|DOUT[0]~feeder_combout\,
	ena => \comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gc|REGD|DOUT\(0));

-- Location: LABCELL_X67_Y4_N21
\L7Gc|REGD|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gc|REGD|DOUT[3]~feeder_combout\ = ( \CPU|ACU|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	combout => \L7Gc|REGD|DOUT[3]~feeder_combout\);

-- Location: FF_X67_Y4_N22
\L7Gc|REGD|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7Gc|REGD|DOUT[3]~feeder_combout\,
	ena => \comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gc|REGD|DOUT\(3));

-- Location: FF_X67_Y4_N38
\L7Gc|REGD|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gc|REGD|DOUT\(1));

-- Location: FF_X67_Y4_N41
\L7Gc|REGD|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gc|REGD|DOUT\(2));

-- Location: LABCELL_X67_Y4_N51
\L7Gc|CON|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gc|CON|rascSaida7seg[0]~0_combout\ = ( \L7Gc|REGD|DOUT\(2) & ( (!\L7Gc|REGD|DOUT\(1) & (!\L7Gc|REGD|DOUT\(0) $ (\L7Gc|REGD|DOUT\(3)))) ) ) # ( !\L7Gc|REGD|DOUT\(2) & ( (\L7Gc|REGD|DOUT\(0) & (!\L7Gc|REGD|DOUT\(3) $ (\L7Gc|REGD|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010110100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gc|REGD|ALT_INV_DOUT\(0),
	datac => \L7Gc|REGD|ALT_INV_DOUT\(3),
	datad => \L7Gc|REGD|ALT_INV_DOUT\(1),
	dataf => \L7Gc|REGD|ALT_INV_DOUT\(2),
	combout => \L7Gc|CON|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X67_Y4_N54
\L7Gc|CON|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gc|CON|rascSaida7seg[1]~1_combout\ = ( \L7Gc|REGD|DOUT\(2) & ( (!\L7Gc|REGD|DOUT\(1) & (!\L7Gc|REGD|DOUT\(3) $ (!\L7Gc|REGD|DOUT\(0)))) # (\L7Gc|REGD|DOUT\(1) & ((!\L7Gc|REGD|DOUT\(0)) # (\L7Gc|REGD|DOUT\(3)))) ) ) # ( !\L7Gc|REGD|DOUT\(2) & ( 
-- (\L7Gc|REGD|DOUT\(1) & (\L7Gc|REGD|DOUT\(3) & \L7Gc|REGD|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101111001011110010111100101111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gc|REGD|ALT_INV_DOUT\(1),
	datab => \L7Gc|REGD|ALT_INV_DOUT\(3),
	datac => \L7Gc|REGD|ALT_INV_DOUT\(0),
	dataf => \L7Gc|REGD|ALT_INV_DOUT\(2),
	combout => \L7Gc|CON|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X67_Y4_N57
\L7Gc|CON|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gc|CON|rascSaida7seg[2]~2_combout\ = ( \L7Gc|REGD|DOUT\(0) & ( (\L7Gc|REGD|DOUT\(1) & (\L7Gc|REGD|DOUT\(3) & \L7Gc|REGD|DOUT\(2))) ) ) # ( !\L7Gc|REGD|DOUT\(0) & ( (!\L7Gc|REGD|DOUT\(3) & (\L7Gc|REGD|DOUT\(1) & !\L7Gc|REGD|DOUT\(2))) # 
-- (\L7Gc|REGD|DOUT\(3) & ((\L7Gc|REGD|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gc|REGD|ALT_INV_DOUT\(1),
	datab => \L7Gc|REGD|ALT_INV_DOUT\(3),
	datac => \L7Gc|REGD|ALT_INV_DOUT\(2),
	dataf => \L7Gc|REGD|ALT_INV_DOUT\(0),
	combout => \L7Gc|CON|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X67_Y4_N27
\L7Gc|CON|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gc|CON|rascSaida7seg[3]~3_combout\ = ( \L7Gc|REGD|DOUT\(1) & ( (!\L7Gc|REGD|DOUT\(0) & (!\L7Gc|REGD|DOUT\(2) & \L7Gc|REGD|DOUT\(3))) # (\L7Gc|REGD|DOUT\(0) & (\L7Gc|REGD|DOUT\(2))) ) ) # ( !\L7Gc|REGD|DOUT\(1) & ( (!\L7Gc|REGD|DOUT\(3) & 
-- (!\L7Gc|REGD|DOUT\(0) $ (!\L7Gc|REGD|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000000110010001100101100000011000000001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gc|REGD|ALT_INV_DOUT\(0),
	datab => \L7Gc|REGD|ALT_INV_DOUT\(2),
	datac => \L7Gc|REGD|ALT_INV_DOUT\(3),
	datae => \L7Gc|REGD|ALT_INV_DOUT\(1),
	combout => \L7Gc|CON|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X67_Y4_N3
\L7Gc|CON|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gc|CON|rascSaida7seg[4]~4_combout\ = ( \L7Gc|REGD|DOUT\(1) & ( (\L7Gc|REGD|DOUT\(0) & !\L7Gc|REGD|DOUT\(3)) ) ) # ( !\L7Gc|REGD|DOUT\(1) & ( (!\L7Gc|REGD|DOUT\(2) & (\L7Gc|REGD|DOUT\(0))) # (\L7Gc|REGD|DOUT\(2) & ((!\L7Gc|REGD|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110100010100000101000001110100011101000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gc|REGD|ALT_INV_DOUT\(0),
	datab => \L7Gc|REGD|ALT_INV_DOUT\(2),
	datac => \L7Gc|REGD|ALT_INV_DOUT\(3),
	datae => \L7Gc|REGD|ALT_INV_DOUT\(1),
	combout => \L7Gc|CON|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X67_Y4_N36
\L7Gc|CON|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gc|CON|rascSaida7seg[5]~5_combout\ = ( \L7Gc|REGD|DOUT\(2) & ( (\L7Gc|REGD|DOUT\(0) & (!\L7Gc|REGD|DOUT\(3) $ (!\L7Gc|REGD|DOUT\(1)))) ) ) # ( !\L7Gc|REGD|DOUT\(2) & ( (!\L7Gc|REGD|DOUT\(3) & ((\L7Gc|REGD|DOUT\(1)) # (\L7Gc|REGD|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7Gc|REGD|ALT_INV_DOUT\(3),
	datac => \L7Gc|REGD|ALT_INV_DOUT\(0),
	datad => \L7Gc|REGD|ALT_INV_DOUT\(1),
	dataf => \L7Gc|REGD|ALT_INV_DOUT\(2),
	combout => \L7Gc|CON|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X67_Y4_N39
\L7Gc|CON|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gc|CON|rascSaida7seg[6]~6_combout\ = ( \L7Gc|REGD|DOUT\(1) & ( (\L7Gc|REGD|DOUT\(0) & (!\L7Gc|REGD|DOUT\(3) & \L7Gc|REGD|DOUT\(2))) ) ) # ( !\L7Gc|REGD|DOUT\(1) & ( (!\L7Gc|REGD|DOUT\(3) & ((!\L7Gc|REGD|DOUT\(2)))) # (\L7Gc|REGD|DOUT\(3) & 
-- (!\L7Gc|REGD|DOUT\(0) & \L7Gc|REGD|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000100010110011000010001000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gc|REGD|ALT_INV_DOUT\(0),
	datab => \L7Gc|REGD|ALT_INV_DOUT\(3),
	datad => \L7Gc|REGD|ALT_INV_DOUT\(2),
	dataf => \L7Gc|REGD|ALT_INV_DOUT\(1),
	combout => \L7Gc|CON|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X71_Y6_N54
\comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = ( \comb~4_combout\ & ( (\ROM|memROM~18_combout\ & (\ROM|memROM~21_combout\ & \ROM|memROM~22_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ALT_INV_comb~4_combout\,
	combout => \comb~9_combout\);

-- Location: FF_X66_Y4_N26
\L7Gd|REGD|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \comb~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gd|REGD|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X66_Y4_N29
\L7Gd|REGD|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \comb~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gd|REGD|DOUT\(1));

-- Location: FF_X66_Y4_N14
\L7Gd|REGD|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \comb~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gd|REGD|DOUT\(2));

-- Location: FF_X66_Y4_N44
\L7Gd|REGD|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \comb~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gd|REGD|DOUT\(3));

-- Location: LABCELL_X66_Y4_N12
\L7Gd|CON|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gd|CON|rascSaida7seg[0]~0_combout\ = ( \L7Gd|REGD|DOUT\(3) & ( (\L7Gd|REGD|DOUT[0]~DUPLICATE_q\ & (!\L7Gd|REGD|DOUT\(1) $ (!\L7Gd|REGD|DOUT\(2)))) ) ) # ( !\L7Gd|REGD|DOUT\(3) & ( (!\L7Gd|REGD|DOUT\(1) & (!\L7Gd|REGD|DOUT[0]~DUPLICATE_q\ $ 
-- (!\L7Gd|REGD|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gd|REGD|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \L7Gd|REGD|ALT_INV_DOUT\(1),
	datad => \L7Gd|REGD|ALT_INV_DOUT\(2),
	dataf => \L7Gd|REGD|ALT_INV_DOUT\(3),
	combout => \L7Gd|CON|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X66_Y4_N15
\L7Gd|CON|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gd|CON|rascSaida7seg[1]~1_combout\ = ( \L7Gd|REGD|DOUT\(2) & ( (!\L7Gd|REGD|DOUT[0]~DUPLICATE_q\ & ((\L7Gd|REGD|DOUT\(1)) # (\L7Gd|REGD|DOUT\(3)))) # (\L7Gd|REGD|DOUT[0]~DUPLICATE_q\ & (!\L7Gd|REGD|DOUT\(3) $ (\L7Gd|REGD|DOUT\(1)))) ) ) # ( 
-- !\L7Gd|REGD|DOUT\(2) & ( (\L7Gd|REGD|DOUT[0]~DUPLICATE_q\ & (\L7Gd|REGD|DOUT\(3) & \L7Gd|REGD|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011010101011110101101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gd|REGD|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \L7Gd|REGD|ALT_INV_DOUT\(3),
	datad => \L7Gd|REGD|ALT_INV_DOUT\(1),
	dataf => \L7Gd|REGD|ALT_INV_DOUT\(2),
	combout => \L7Gd|CON|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X66_Y4_N54
\L7Gd|CON|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gd|CON|rascSaida7seg[2]~2_combout\ = ( \L7Gd|REGD|DOUT\(2) & ( (\L7Gd|REGD|DOUT\(3) & ((!\L7Gd|REGD|DOUT[0]~DUPLICATE_q\) # (\L7Gd|REGD|DOUT\(1)))) ) ) # ( !\L7Gd|REGD|DOUT\(2) & ( (!\L7Gd|REGD|DOUT\(3) & (!\L7Gd|REGD|DOUT[0]~DUPLICATE_q\ & 
-- \L7Gd|REGD|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7Gd|REGD|ALT_INV_DOUT\(3),
	datac => \L7Gd|REGD|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \L7Gd|REGD|ALT_INV_DOUT\(1),
	dataf => \L7Gd|REGD|ALT_INV_DOUT\(2),
	combout => \L7Gd|CON|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X66_Y4_N36
\L7Gd|CON|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gd|CON|rascSaida7seg[3]~3_combout\ = ( \L7Gd|REGD|DOUT\(2) & ( (!\L7Gd|REGD|DOUT[0]~DUPLICATE_q\ & (!\L7Gd|REGD|DOUT\(3) & !\L7Gd|REGD|DOUT\(1))) # (\L7Gd|REGD|DOUT[0]~DUPLICATE_q\ & ((\L7Gd|REGD|DOUT\(1)))) ) ) # ( !\L7Gd|REGD|DOUT\(2) & ( 
-- (!\L7Gd|REGD|DOUT\(3) & (\L7Gd|REGD|DOUT[0]~DUPLICATE_q\ & !\L7Gd|REGD|DOUT\(1))) # (\L7Gd|REGD|DOUT\(3) & (!\L7Gd|REGD|DOUT[0]~DUPLICATE_q\ & \L7Gd|REGD|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7Gd|REGD|ALT_INV_DOUT\(3),
	datac => \L7Gd|REGD|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \L7Gd|REGD|ALT_INV_DOUT\(1),
	dataf => \L7Gd|REGD|ALT_INV_DOUT\(2),
	combout => \L7Gd|CON|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X66_Y4_N45
\L7Gd|CON|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gd|CON|rascSaida7seg[4]~4_combout\ = ( \L7Gd|REGD|DOUT\(1) & ( (\L7Gd|REGD|DOUT[0]~DUPLICATE_q\ & !\L7Gd|REGD|DOUT\(3)) ) ) # ( !\L7Gd|REGD|DOUT\(1) & ( (!\L7Gd|REGD|DOUT\(2) & (\L7Gd|REGD|DOUT[0]~DUPLICATE_q\)) # (\L7Gd|REGD|DOUT\(2) & 
-- ((!\L7Gd|REGD|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110100010100000101000001110100011101000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gd|REGD|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \L7Gd|REGD|ALT_INV_DOUT\(2),
	datac => \L7Gd|REGD|ALT_INV_DOUT\(3),
	datae => \L7Gd|REGD|ALT_INV_DOUT\(1),
	combout => \L7Gd|CON|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X66_Y4_N6
\L7Gd|CON|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gd|CON|rascSaida7seg[5]~5_combout\ = ( \L7Gd|REGD|DOUT\(2) & ( (\L7Gd|REGD|DOUT[0]~DUPLICATE_q\ & (!\L7Gd|REGD|DOUT\(3) $ (!\L7Gd|REGD|DOUT\(1)))) ) ) # ( !\L7Gd|REGD|DOUT\(2) & ( (!\L7Gd|REGD|DOUT\(3) & ((\L7Gd|REGD|DOUT\(1)) # 
-- (\L7Gd|REGD|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7Gd|REGD|ALT_INV_DOUT\(3),
	datac => \L7Gd|REGD|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \L7Gd|REGD|ALT_INV_DOUT\(1),
	dataf => \L7Gd|REGD|ALT_INV_DOUT\(2),
	combout => \L7Gd|CON|rascSaida7seg[5]~5_combout\);

-- Location: FF_X66_Y4_N25
\L7Gd|REGD|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \comb~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gd|REGD|DOUT\(0));

-- Location: LABCELL_X66_Y4_N3
\L7Gd|CON|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gd|CON|rascSaida7seg[6]~6_combout\ = ( \L7Gd|REGD|DOUT\(3) & ( (!\L7Gd|REGD|DOUT\(0) & (\L7Gd|REGD|DOUT\(2) & !\L7Gd|REGD|DOUT\(1))) ) ) # ( !\L7Gd|REGD|DOUT\(3) & ( (!\L7Gd|REGD|DOUT\(2) & ((!\L7Gd|REGD|DOUT\(1)))) # (\L7Gd|REGD|DOUT\(2) & 
-- (\L7Gd|REGD|DOUT\(0) & \L7Gd|REGD|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000011111100000000001100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7Gd|REGD|ALT_INV_DOUT\(0),
	datac => \L7Gd|REGD|ALT_INV_DOUT\(2),
	datad => \L7Gd|REGD|ALT_INV_DOUT\(1),
	dataf => \L7Gd|REGD|ALT_INV_DOUT\(3),
	combout => \L7Gd|CON|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X73_Y8_N36
\comb~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = ( !\CPU|PC|DOUT\(2) & ( (\ROM|memROM~1_combout\ & (\ROM|memROM~12_combout\ & \ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \comb~10_combout\);

-- Location: MLABCELL_X72_Y7_N54
\comb~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = ( !\comb~2_combout\ & ( \comb~10_combout\ & ( (!\ROM|memROM~20_combout\ & (\CPU|DEC|saidaDecoder[4]~3_combout\ & (\ROM|memROM~19_combout\ & \comb~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[4]~3_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \ALT_INV_comb~3_combout\,
	datae => \ALT_INV_comb~2_combout\,
	dataf => \ALT_INV_comb~10_combout\,
	combout => \comb~11_combout\);

-- Location: FF_X71_Y4_N41
\L7Ge|REGD|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Ge|REGD|DOUT\(2));

-- Location: FF_X71_Y4_N8
\L7Ge|REGD|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Ge|REGD|DOUT\(0));

-- Location: FF_X71_Y4_N38
\L7Ge|REGD|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Ge|REGD|DOUT\(1));

-- Location: LABCELL_X71_Y4_N9
\L7Ge|REGD|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ge|REGD|DOUT[3]~feeder_combout\ = ( \CPU|ACU|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	combout => \L7Ge|REGD|DOUT[3]~feeder_combout\);

-- Location: FF_X71_Y4_N11
\L7Ge|REGD|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7Ge|REGD|DOUT[3]~feeder_combout\,
	ena => \comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Ge|REGD|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X71_Y4_N21
\L7Ge|CON|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ge|CON|rascSaida7seg[0]~0_combout\ = ( \L7Ge|REGD|DOUT\(1) & ( \L7Ge|REGD|DOUT[3]~DUPLICATE_q\ & ( (!\L7Ge|REGD|DOUT\(2) & \L7Ge|REGD|DOUT\(0)) ) ) ) # ( !\L7Ge|REGD|DOUT\(1) & ( \L7Ge|REGD|DOUT[3]~DUPLICATE_q\ & ( (\L7Ge|REGD|DOUT\(2) & 
-- \L7Ge|REGD|DOUT\(0)) ) ) ) # ( !\L7Ge|REGD|DOUT\(1) & ( !\L7Ge|REGD|DOUT[3]~DUPLICATE_q\ & ( !\L7Ge|REGD|DOUT\(2) $ (!\L7Ge|REGD|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000000000000000000011000000110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7Ge|REGD|ALT_INV_DOUT\(2),
	datac => \L7Ge|REGD|ALT_INV_DOUT\(0),
	datae => \L7Ge|REGD|ALT_INV_DOUT\(1),
	dataf => \L7Ge|REGD|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \L7Ge|CON|rascSaida7seg[0]~0_combout\);

-- Location: FF_X71_Y4_N10
\L7Ge|REGD|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7Ge|REGD|DOUT[3]~feeder_combout\,
	ena => \comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Ge|REGD|DOUT\(3));

-- Location: LABCELL_X71_Y4_N30
\L7Ge|CON|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ge|CON|rascSaida7seg[1]~1_combout\ = ( \L7Ge|REGD|DOUT\(0) & ( (!\L7Ge|REGD|DOUT\(1) & (\L7Ge|REGD|DOUT\(2) & !\L7Ge|REGD|DOUT\(3))) # (\L7Ge|REGD|DOUT\(1) & ((\L7Ge|REGD|DOUT\(3)))) ) ) # ( !\L7Ge|REGD|DOUT\(0) & ( (\L7Ge|REGD|DOUT\(2) & 
-- ((\L7Ge|REGD|DOUT\(3)) # (\L7Ge|REGD|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7Ge|REGD|ALT_INV_DOUT\(2),
	datac => \L7Ge|REGD|ALT_INV_DOUT\(1),
	datad => \L7Ge|REGD|ALT_INV_DOUT\(3),
	dataf => \L7Ge|REGD|ALT_INV_DOUT\(0),
	combout => \L7Ge|CON|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X71_Y4_N33
\L7Ge|CON|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ge|CON|rascSaida7seg[2]~2_combout\ = ( \L7Ge|REGD|DOUT\(0) & ( (\L7Ge|REGD|DOUT\(1) & (\L7Ge|REGD|DOUT\(2) & \L7Ge|REGD|DOUT\(3))) ) ) # ( !\L7Ge|REGD|DOUT\(0) & ( (!\L7Ge|REGD|DOUT\(2) & (\L7Ge|REGD|DOUT\(1) & !\L7Ge|REGD|DOUT\(3))) # 
-- (\L7Ge|REGD|DOUT\(2) & ((\L7Ge|REGD|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Ge|REGD|ALT_INV_DOUT\(1),
	datac => \L7Ge|REGD|ALT_INV_DOUT\(2),
	datad => \L7Ge|REGD|ALT_INV_DOUT\(3),
	dataf => \L7Ge|REGD|ALT_INV_DOUT\(0),
	combout => \L7Ge|CON|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X71_Y4_N51
\L7Ge|CON|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ge|CON|rascSaida7seg[3]~3_combout\ = ( \L7Ge|REGD|DOUT\(1) & ( \L7Ge|REGD|DOUT\(2) & ( \L7Ge|REGD|DOUT\(0) ) ) ) # ( !\L7Ge|REGD|DOUT\(1) & ( \L7Ge|REGD|DOUT\(2) & ( (!\L7Ge|REGD|DOUT\(0) & !\L7Ge|REGD|DOUT[3]~DUPLICATE_q\) ) ) ) # ( 
-- \L7Ge|REGD|DOUT\(1) & ( !\L7Ge|REGD|DOUT\(2) & ( (!\L7Ge|REGD|DOUT\(0) & \L7Ge|REGD|DOUT[3]~DUPLICATE_q\) ) ) ) # ( !\L7Ge|REGD|DOUT\(1) & ( !\L7Ge|REGD|DOUT\(2) & ( (\L7Ge|REGD|DOUT\(0) & !\L7Ge|REGD|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000011000000110011000000110000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7Ge|REGD|ALT_INV_DOUT\(0),
	datac => \L7Ge|REGD|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \L7Ge|REGD|ALT_INV_DOUT\(1),
	dataf => \L7Ge|REGD|ALT_INV_DOUT\(2),
	combout => \L7Ge|CON|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X71_Y4_N45
\L7Ge|CON|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ge|CON|rascSaida7seg[4]~4_combout\ = ( \L7Ge|REGD|DOUT\(1) & ( (!\L7Ge|REGD|DOUT\(3) & \L7Ge|REGD|DOUT\(0)) ) ) # ( !\L7Ge|REGD|DOUT\(1) & ( (!\L7Ge|REGD|DOUT\(2) & ((\L7Ge|REGD|DOUT\(0)))) # (\L7Ge|REGD|DOUT\(2) & (!\L7Ge|REGD|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000101110000010100000101000101110001011100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Ge|REGD|ALT_INV_DOUT\(3),
	datab => \L7Ge|REGD|ALT_INV_DOUT\(2),
	datac => \L7Ge|REGD|ALT_INV_DOUT\(0),
	datae => \L7Ge|REGD|ALT_INV_DOUT\(1),
	combout => \L7Ge|CON|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X71_Y4_N36
\L7Ge|CON|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ge|CON|rascSaida7seg[5]~5_combout\ = ( \L7Ge|REGD|DOUT\(2) & ( (\L7Ge|REGD|DOUT\(0) & (!\L7Ge|REGD|DOUT\(3) $ (!\L7Ge|REGD|DOUT\(1)))) ) ) # ( !\L7Ge|REGD|DOUT\(2) & ( (!\L7Ge|REGD|DOUT\(3) & ((\L7Ge|REGD|DOUT\(1)) # (\L7Ge|REGD|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7Ge|REGD|ALT_INV_DOUT\(0),
	datac => \L7Ge|REGD|ALT_INV_DOUT\(3),
	datad => \L7Ge|REGD|ALT_INV_DOUT\(1),
	dataf => \L7Ge|REGD|ALT_INV_DOUT\(2),
	combout => \L7Ge|CON|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X71_Y4_N39
\L7Ge|CON|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Ge|CON|rascSaida7seg[6]~6_combout\ = ( \L7Ge|REGD|DOUT[3]~DUPLICATE_q\ & ( (!\L7Ge|REGD|DOUT\(1) & (!\L7Ge|REGD|DOUT\(0) & \L7Ge|REGD|DOUT\(2))) ) ) # ( !\L7Ge|REGD|DOUT[3]~DUPLICATE_q\ & ( (!\L7Ge|REGD|DOUT\(1) & ((!\L7Ge|REGD|DOUT\(2)))) # 
-- (\L7Ge|REGD|DOUT\(1) & (\L7Ge|REGD|DOUT\(0) & \L7Ge|REGD|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000010001101010100001000100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Ge|REGD|ALT_INV_DOUT\(1),
	datab => \L7Ge|REGD|ALT_INV_DOUT\(0),
	datad => \L7Ge|REGD|ALT_INV_DOUT\(2),
	dataf => \L7Ge|REGD|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \L7Ge|CON|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X72_Y7_N51
\comb~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~12_combout\ = ( !\CPU|PC|DOUT\(8) & ( (\ROM|memROM~3_combout\ & (\ROM|memROM~11_combout\ & ((!\ROM|memROM~13_combout\) # (\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010001000100000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \comb~12_combout\);

-- Location: MLABCELL_X72_Y7_N6
\comb~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~13_combout\ = ( \ROM|memROM~19_combout\ & ( \comb~3_combout\ & ( (\comb~12_combout\ & (\CPU|DEC|saidaDecoder[4]~3_combout\ & (!\ROM|memROM~20_combout\ & \comb~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~12_combout\,
	datab => \CPU|DEC|ALT_INV_saidaDecoder[4]~3_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ALT_INV_comb~10_combout\,
	datae => \ROM|ALT_INV_memROM~19_combout\,
	dataf => \ALT_INV_comb~3_combout\,
	combout => \comb~13_combout\);

-- Location: FF_X66_Y4_N53
\L7Gf|REGD|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \comb~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gf|REGD|DOUT\(2));

-- Location: LABCELL_X66_Y4_N30
\L7Gf|REGD|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gf|REGD|DOUT[0]~feeder_combout\ = ( \CPU|ACU|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(0),
	combout => \L7Gf|REGD|DOUT[0]~feeder_combout\);

-- Location: FF_X66_Y4_N32
\L7Gf|REGD|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7Gf|REGD|DOUT[0]~feeder_combout\,
	ena => \comb~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gf|REGD|DOUT\(0));

-- Location: LABCELL_X66_Y4_N33
\L7Gf|REGD|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gf|REGD|DOUT[3]~feeder_combout\ = ( \CPU|ACU|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(3),
	combout => \L7Gf|REGD|DOUT[3]~feeder_combout\);

-- Location: FF_X66_Y4_N34
\L7Gf|REGD|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7Gf|REGD|DOUT[3]~feeder_combout\,
	ena => \comb~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gf|REGD|DOUT\(3));

-- Location: LABCELL_X66_Y4_N48
\L7Gf|REGD|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gf|REGD|DOUT[1]~feeder_combout\ = ( \CPU|ACU|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ACU|ALT_INV_DOUT\(1),
	combout => \L7Gf|REGD|DOUT[1]~feeder_combout\);

-- Location: FF_X66_Y4_N50
\L7Gf|REGD|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7Gf|REGD|DOUT[1]~feeder_combout\,
	ena => \comb~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7Gf|REGD|DOUT\(1));

-- Location: LABCELL_X66_Y4_N57
\L7Gf|CON|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gf|CON|rascSaida7seg[0]~0_combout\ = ( \L7Gf|REGD|DOUT\(1) & ( (!\L7Gf|REGD|DOUT\(2) & (\L7Gf|REGD|DOUT\(0) & \L7Gf|REGD|DOUT\(3))) ) ) # ( !\L7Gf|REGD|DOUT\(1) & ( (!\L7Gf|REGD|DOUT\(2) & (\L7Gf|REGD|DOUT\(0) & !\L7Gf|REGD|DOUT\(3))) # 
-- (\L7Gf|REGD|DOUT\(2) & (!\L7Gf|REGD|DOUT\(0) $ (\L7Gf|REGD|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gf|REGD|ALT_INV_DOUT\(2),
	datac => \L7Gf|REGD|ALT_INV_DOUT\(0),
	datad => \L7Gf|REGD|ALT_INV_DOUT\(3),
	dataf => \L7Gf|REGD|ALT_INV_DOUT\(1),
	combout => \L7Gf|CON|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X66_Y4_N39
\L7Gf|CON|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gf|CON|rascSaida7seg[1]~1_combout\ = ( \L7Gf|REGD|DOUT\(1) & ( (!\L7Gf|REGD|DOUT\(0) & (\L7Gf|REGD|DOUT\(2))) # (\L7Gf|REGD|DOUT\(0) & ((\L7Gf|REGD|DOUT\(3)))) ) ) # ( !\L7Gf|REGD|DOUT\(1) & ( (\L7Gf|REGD|DOUT\(2) & (!\L7Gf|REGD|DOUT\(0) $ 
-- (!\L7Gf|REGD|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gf|REGD|ALT_INV_DOUT\(2),
	datac => \L7Gf|REGD|ALT_INV_DOUT\(0),
	datad => \L7Gf|REGD|ALT_INV_DOUT\(3),
	dataf => \L7Gf|REGD|ALT_INV_DOUT\(1),
	combout => \L7Gf|CON|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X66_Y4_N0
\L7Gf|CON|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gf|CON|rascSaida7seg[2]~2_combout\ = ( \L7Gf|REGD|DOUT\(0) & ( (\L7Gf|REGD|DOUT\(2) & (\L7Gf|REGD|DOUT\(1) & \L7Gf|REGD|DOUT\(3))) ) ) # ( !\L7Gf|REGD|DOUT\(0) & ( (!\L7Gf|REGD|DOUT\(2) & (\L7Gf|REGD|DOUT\(1) & !\L7Gf|REGD|DOUT\(3))) # 
-- (\L7Gf|REGD|DOUT\(2) & ((\L7Gf|REGD|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010101000010100101010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gf|REGD|ALT_INV_DOUT\(2),
	datac => \L7Gf|REGD|ALT_INV_DOUT\(1),
	datad => \L7Gf|REGD|ALT_INV_DOUT\(3),
	dataf => \L7Gf|REGD|ALT_INV_DOUT\(0),
	combout => \L7Gf|CON|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X66_Y4_N27
\L7Gf|CON|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gf|CON|rascSaida7seg[3]~3_combout\ = ( \L7Gf|REGD|DOUT\(3) & ( (\L7Gf|REGD|DOUT\(1) & (!\L7Gf|REGD|DOUT\(2) $ (\L7Gf|REGD|DOUT\(0)))) ) ) # ( !\L7Gf|REGD|DOUT\(3) & ( (!\L7Gf|REGD|DOUT\(2) & (\L7Gf|REGD|DOUT\(0) & !\L7Gf|REGD|DOUT\(1))) # 
-- (\L7Gf|REGD|DOUT\(2) & (!\L7Gf|REGD|DOUT\(0) $ (\L7Gf|REGD|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000010001000000001001100101100110000100010000000010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gf|REGD|ALT_INV_DOUT\(2),
	datab => \L7Gf|REGD|ALT_INV_DOUT\(0),
	datad => \L7Gf|REGD|ALT_INV_DOUT\(1),
	datae => \L7Gf|REGD|ALT_INV_DOUT\(3),
	combout => \L7Gf|CON|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X66_Y4_N21
\L7Gf|CON|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gf|CON|rascSaida7seg[4]~4_combout\ = ( \L7Gf|REGD|DOUT\(1) & ( (\L7Gf|REGD|DOUT\(0) & !\L7Gf|REGD|DOUT\(3)) ) ) # ( !\L7Gf|REGD|DOUT\(1) & ( (!\L7Gf|REGD|DOUT\(2) & (\L7Gf|REGD|DOUT\(0))) # (\L7Gf|REGD|DOUT\(2) & ((!\L7Gf|REGD|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001010010111110000101000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gf|REGD|ALT_INV_DOUT\(2),
	datac => \L7Gf|REGD|ALT_INV_DOUT\(0),
	datad => \L7Gf|REGD|ALT_INV_DOUT\(3),
	dataf => \L7Gf|REGD|ALT_INV_DOUT\(1),
	combout => \L7Gf|CON|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X66_Y4_N18
\L7Gf|CON|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gf|CON|rascSaida7seg[5]~5_combout\ = ( \L7Gf|REGD|DOUT\(0) & ( !\L7Gf|REGD|DOUT\(3) $ (((\L7Gf|REGD|DOUT\(2) & !\L7Gf|REGD|DOUT\(1)))) ) ) # ( !\L7Gf|REGD|DOUT\(0) & ( (!\L7Gf|REGD|DOUT\(2) & (\L7Gf|REGD|DOUT\(1) & !\L7Gf|REGD|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010101111010100001010111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gf|REGD|ALT_INV_DOUT\(2),
	datac => \L7Gf|REGD|ALT_INV_DOUT\(1),
	datad => \L7Gf|REGD|ALT_INV_DOUT\(3),
	dataf => \L7Gf|REGD|ALT_INV_DOUT\(0),
	combout => \L7Gf|CON|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X66_Y4_N9
\L7Gf|CON|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7Gf|CON|rascSaida7seg[6]~6_combout\ = ( \L7Gf|REGD|DOUT\(1) & ( (\L7Gf|REGD|DOUT\(2) & (\L7Gf|REGD|DOUT\(0) & !\L7Gf|REGD|DOUT\(3))) ) ) # ( !\L7Gf|REGD|DOUT\(1) & ( (!\L7Gf|REGD|DOUT\(2) & ((!\L7Gf|REGD|DOUT\(3)))) # (\L7Gf|REGD|DOUT\(2) & 
-- (!\L7Gf|REGD|DOUT\(0) & \L7Gf|REGD|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010000101010100101000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L7Gf|REGD|ALT_INV_DOUT\(2),
	datac => \L7Gf|REGD|ALT_INV_DOUT\(0),
	datad => \L7Gf|REGD|ALT_INV_DOUT\(3),
	dataf => \L7Gf|REGD|ALT_INV_DOUT\(1),
	combout => \L7Gf|CON|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X72_Y71_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


