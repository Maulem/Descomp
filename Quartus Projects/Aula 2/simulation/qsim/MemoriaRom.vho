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

-- DATE "08/21/2021 20:46:00"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	MemoriaROM IS
    PORT (
	Endereco : IN std_logic_vector(9 DOWNTO 0);
	Dado : OUT std_logic_vector(7 DOWNTO 0)
	);
END MemoriaROM;

ARCHITECTURE structure OF MemoriaROM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Endereco : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Dado : std_logic_vector(7 DOWNTO 0);
SIGNAL \Dado[0]~output_o\ : std_logic;
SIGNAL \Dado[1]~output_o\ : std_logic;
SIGNAL \Dado[2]~output_o\ : std_logic;
SIGNAL \Dado[3]~output_o\ : std_logic;
SIGNAL \Dado[4]~output_o\ : std_logic;
SIGNAL \Dado[5]~output_o\ : std_logic;
SIGNAL \Dado[6]~output_o\ : std_logic;
SIGNAL \Dado[7]~output_o\ : std_logic;
SIGNAL \Endereco[0]~input_o\ : std_logic;
SIGNAL \Endereco[1]~input_o\ : std_logic;
SIGNAL \Endereco[2]~input_o\ : std_logic;
SIGNAL \Endereco[3]~input_o\ : std_logic;
SIGNAL \memROM~0_combout\ : std_logic;
SIGNAL \Endereco[8]~input_o\ : std_logic;
SIGNAL \Endereco[9]~input_o\ : std_logic;
SIGNAL \Endereco[4]~input_o\ : std_logic;
SIGNAL \Endereco[5]~input_o\ : std_logic;
SIGNAL \Endereco[6]~input_o\ : std_logic;
SIGNAL \Endereco[7]~input_o\ : std_logic;
SIGNAL \memROM~1_combout\ : std_logic;
SIGNAL \memROM~2_combout\ : std_logic;
SIGNAL \memROM~3_combout\ : std_logic;
SIGNAL \memROM~4_combout\ : std_logic;
SIGNAL \memROM~5_combout\ : std_logic;
SIGNAL \memROM~6_combout\ : std_logic;
SIGNAL \memROM~7_combout\ : std_logic;
SIGNAL \memROM~8_combout\ : std_logic;
SIGNAL \memROM~9_combout\ : std_logic;
SIGNAL \memROM~10_combout\ : std_logic;
SIGNAL \memROM~11_combout\ : std_logic;
SIGNAL \memROM~12_combout\ : std_logic;
SIGNAL \memROM~13_combout\ : std_logic;
SIGNAL \memROM~14_combout\ : std_logic;
SIGNAL \memROM~15_combout\ : std_logic;
SIGNAL \memROM~16_combout\ : std_logic;
SIGNAL \memROM~17_combout\ : std_logic;
SIGNAL \ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ALT_INV_Endereco[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ALT_INV_memROM~9_combout\ : std_logic;

BEGIN

ww_Endereco <= Endereco;
Dado <= ww_Dado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_memROM~5_combout\ <= NOT \memROM~5_combout\;
\ALT_INV_memROM~7_combout\ <= NOT \memROM~7_combout\;
\ALT_INV_memROM~0_combout\ <= NOT \memROM~0_combout\;
\ALT_INV_memROM~1_combout\ <= NOT \memROM~1_combout\;
\ALT_INV_memROM~2_combout\ <= NOT \memROM~2_combout\;
\ALT_INV_memROM~3_combout\ <= NOT \memROM~3_combout\;
\ALT_INV_Endereco[7]~input_o\ <= NOT \Endereco[7]~input_o\;
\ALT_INV_Endereco[6]~input_o\ <= NOT \Endereco[6]~input_o\;
\ALT_INV_Endereco[5]~input_o\ <= NOT \Endereco[5]~input_o\;
\ALT_INV_Endereco[4]~input_o\ <= NOT \Endereco[4]~input_o\;
\ALT_INV_Endereco[9]~input_o\ <= NOT \Endereco[9]~input_o\;
\ALT_INV_Endereco[8]~input_o\ <= NOT \Endereco[8]~input_o\;
\ALT_INV_Endereco[3]~input_o\ <= NOT \Endereco[3]~input_o\;
\ALT_INV_Endereco[2]~input_o\ <= NOT \Endereco[2]~input_o\;
\ALT_INV_Endereco[1]~input_o\ <= NOT \Endereco[1]~input_o\;
\ALT_INV_Endereco[0]~input_o\ <= NOT \Endereco[0]~input_o\;
\ALT_INV_memROM~16_combout\ <= NOT \memROM~16_combout\;
\ALT_INV_memROM~14_combout\ <= NOT \memROM~14_combout\;
\ALT_INV_memROM~12_combout\ <= NOT \memROM~12_combout\;
\ALT_INV_memROM~11_combout\ <= NOT \memROM~11_combout\;
\ALT_INV_memROM~9_combout\ <= NOT \memROM~9_combout\;

\Dado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~4_combout\,
	devoe => ww_devoe,
	o => \Dado[0]~output_o\);

\Dado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~6_combout\,
	devoe => ww_devoe,
	o => \Dado[1]~output_o\);

\Dado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~8_combout\,
	devoe => ww_devoe,
	o => \Dado[2]~output_o\);

\Dado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~10_combout\,
	devoe => ww_devoe,
	o => \Dado[3]~output_o\);

\Dado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~13_combout\,
	devoe => ww_devoe,
	o => \Dado[4]~output_o\);

\Dado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~15_combout\,
	devoe => ww_devoe,
	o => \Dado[5]~output_o\);

\Dado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~17_combout\,
	devoe => ww_devoe,
	o => \Dado[6]~output_o\);

\Dado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~6_combout\,
	devoe => ww_devoe,
	o => \Dado[7]~output_o\);

\Endereco[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(0),
	o => \Endereco[0]~input_o\);

\Endereco[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(1),
	o => \Endereco[1]~input_o\);

\Endereco[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(2),
	o => \Endereco[2]~input_o\);

\Endereco[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(3),
	o => \Endereco[3]~input_o\);

\memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~0_combout\ = (!\Endereco[3]~input_o\ & ((!\Endereco[1]~input_o\) # ((!\Endereco[0]~input_o\ & !\Endereco[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000000000111011000000000011101100000000001110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	combout => \memROM~0_combout\);

\Endereco[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(8),
	o => \Endereco[8]~input_o\);

\Endereco[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(9),
	o => \Endereco[9]~input_o\);

\Endereco[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(4),
	o => \Endereco[4]~input_o\);

\Endereco[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(5),
	o => \Endereco[5]~input_o\);

\Endereco[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(6),
	o => \Endereco[6]~input_o\);

\Endereco[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(7),
	o => \Endereco[7]~input_o\);

\memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~1_combout\ = ( !\Endereco[6]~input_o\ & ( !\Endereco[7]~input_o\ & ( (!\Endereco[8]~input_o\ & (!\Endereco[9]~input_o\ & (!\Endereco[4]~input_o\ & !\Endereco[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[8]~input_o\,
	datab => \ALT_INV_Endereco[9]~input_o\,
	datac => \ALT_INV_Endereco[4]~input_o\,
	datad => \ALT_INV_Endereco[5]~input_o\,
	datae => \ALT_INV_Endereco[6]~input_o\,
	dataf => \ALT_INV_Endereco[7]~input_o\,
	combout => \memROM~1_combout\);

\memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~2_combout\ = ( \Endereco[4]~input_o\ & ( \Endereco[5]~input_o\ & ( (\Endereco[0]~input_o\ & (\Endereco[1]~input_o\ & (\Endereco[2]~input_o\ & \Endereco[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_Endereco[4]~input_o\,
	dataf => \ALT_INV_Endereco[5]~input_o\,
	combout => \memROM~2_combout\);

\memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~3_combout\ = (\Endereco[6]~input_o\ & \Endereco[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[6]~input_o\,
	datab => \ALT_INV_Endereco[7]~input_o\,
	combout => \memROM~3_combout\);

\memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~4_combout\ = ( \memROM~2_combout\ & ( \memROM~3_combout\ & ( (!\memROM~0_combout\ & (\Endereco[8]~input_o\ & (\Endereco[9]~input_o\))) # (\memROM~0_combout\ & (((\Endereco[8]~input_o\ & \Endereco[9]~input_o\)) # (\memROM~1_combout\))) ) ) ) # ( 
-- !\memROM~2_combout\ & ( \memROM~3_combout\ & ( (\memROM~0_combout\ & \memROM~1_combout\) ) ) ) # ( \memROM~2_combout\ & ( !\memROM~3_combout\ & ( (\memROM~0_combout\ & \memROM~1_combout\) ) ) ) # ( !\memROM~2_combout\ & ( !\memROM~3_combout\ & ( 
-- (\memROM~0_combout\ & \memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_memROM~0_combout\,
	datab => \ALT_INV_Endereco[8]~input_o\,
	datac => \ALT_INV_Endereco[9]~input_o\,
	datad => \ALT_INV_memROM~1_combout\,
	datae => \ALT_INV_memROM~2_combout\,
	dataf => \ALT_INV_memROM~3_combout\,
	combout => \memROM~4_combout\);

\memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~5_combout\ = (\Endereco[9]~input_o\ & (\Endereco[6]~input_o\ & \Endereco[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[9]~input_o\,
	datab => \ALT_INV_Endereco[6]~input_o\,
	datac => \ALT_INV_Endereco[7]~input_o\,
	combout => \memROM~5_combout\);

\memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~6_combout\ = (\Endereco[8]~input_o\ & (\memROM~2_combout\ & \memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[8]~input_o\,
	datab => \ALT_INV_memROM~2_combout\,
	datac => \ALT_INV_memROM~5_combout\,
	combout => \memROM~6_combout\);

\memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~7_combout\ = (!\Endereco[3]~input_o\ & ((!\Endereco[1]~input_o\ & ((!\Endereco[0]~input_o\) # (\Endereco[2]~input_o\))) # (\Endereco[1]~input_o\ & ((!\Endereco[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011110000000000101111000000000010111100000000001011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	combout => \memROM~7_combout\);

\memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~8_combout\ = ( \memROM~3_combout\ & ( \memROM~7_combout\ & ( ((\Endereco[8]~input_o\ & (\Endereco[9]~input_o\ & \memROM~2_combout\))) # (\memROM~1_combout\) ) ) ) # ( !\memROM~3_combout\ & ( \memROM~7_combout\ & ( \memROM~1_combout\ ) ) ) # ( 
-- \memROM~3_combout\ & ( !\memROM~7_combout\ & ( (\Endereco[8]~input_o\ & (\Endereco[9]~input_o\ & \memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100001111000011110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[8]~input_o\,
	datab => \ALT_INV_Endereco[9]~input_o\,
	datac => \ALT_INV_memROM~1_combout\,
	datad => \ALT_INV_memROM~2_combout\,
	datae => \ALT_INV_memROM~3_combout\,
	dataf => \ALT_INV_memROM~7_combout\,
	combout => \memROM~8_combout\);

\memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~9_combout\ = (!\Endereco[3]~input_o\ & ((!\Endereco[0]~input_o\ & (!\Endereco[1]~input_o\ & !\Endereco[2]~input_o\)) # (\Endereco[0]~input_o\ & (!\Endereco[1]~input_o\ $ (!\Endereco[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010000000000100101000000000010010100000000001001010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	combout => \memROM~9_combout\);

\memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~10_combout\ = ( \memROM~3_combout\ & ( \memROM~9_combout\ & ( ((\Endereco[8]~input_o\ & (\Endereco[9]~input_o\ & \memROM~2_combout\))) # (\memROM~1_combout\) ) ) ) # ( !\memROM~3_combout\ & ( \memROM~9_combout\ & ( \memROM~1_combout\ ) ) ) # ( 
-- \memROM~3_combout\ & ( !\memROM~9_combout\ & ( (\Endereco[8]~input_o\ & (\Endereco[9]~input_o\ & \memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100001111000011110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[8]~input_o\,
	datab => \ALT_INV_Endereco[9]~input_o\,
	datac => \ALT_INV_memROM~1_combout\,
	datad => \ALT_INV_memROM~2_combout\,
	datae => \ALT_INV_memROM~3_combout\,
	dataf => \ALT_INV_memROM~9_combout\,
	combout => \memROM~10_combout\);

\memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~11_combout\ = (!\Endereco[9]~input_o\ & (!\Endereco[5]~input_o\ & (!\Endereco[6]~input_o\ & !\Endereco[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[9]~input_o\,
	datab => \ALT_INV_Endereco[5]~input_o\,
	datac => \ALT_INV_Endereco[6]~input_o\,
	datad => \ALT_INV_Endereco[7]~input_o\,
	combout => \memROM~11_combout\);

\memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~12_combout\ = (!\Endereco[0]~input_o\ & (\Endereco[1]~input_o\ & (!\Endereco[2]~input_o\ & !\Endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	combout => \memROM~12_combout\);

\memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~13_combout\ = ( \memROM~5_combout\ & ( \memROM~12_combout\ & ( (!\Endereco[8]~input_o\ & (!\Endereco[4]~input_o\ & (\memROM~11_combout\))) # (\Endereco[8]~input_o\ & (((\memROM~2_combout\)))) ) ) ) # ( !\memROM~5_combout\ & ( \memROM~12_combout\ & 
-- ( (!\Endereco[8]~input_o\ & (!\Endereco[4]~input_o\ & \memROM~11_combout\)) ) ) ) # ( \memROM~5_combout\ & ( !\memROM~12_combout\ & ( (\Endereco[8]~input_o\ & \memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100001000000010000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[8]~input_o\,
	datab => \ALT_INV_Endereco[4]~input_o\,
	datac => \ALT_INV_memROM~11_combout\,
	datad => \ALT_INV_memROM~2_combout\,
	datae => \ALT_INV_memROM~5_combout\,
	dataf => \ALT_INV_memROM~12_combout\,
	combout => \memROM~13_combout\);

\memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~14_combout\ = (!\Endereco[3]~input_o\ & (((\Endereco[2]~input_o\) # (\Endereco[1]~input_o\)) # (\Endereco[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000000011111110000000001111111000000000111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	combout => \memROM~14_combout\);

\memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~15_combout\ = ( \memROM~3_combout\ & ( \memROM~14_combout\ & ( ((\Endereco[8]~input_o\ & (\Endereco[9]~input_o\ & \memROM~2_combout\))) # (\memROM~1_combout\) ) ) ) # ( !\memROM~3_combout\ & ( \memROM~14_combout\ & ( \memROM~1_combout\ ) ) ) # ( 
-- \memROM~3_combout\ & ( !\memROM~14_combout\ & ( (\Endereco[8]~input_o\ & (\Endereco[9]~input_o\ & \memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100001111000011110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[8]~input_o\,
	datab => \ALT_INV_Endereco[9]~input_o\,
	datac => \ALT_INV_memROM~1_combout\,
	datad => \ALT_INV_memROM~2_combout\,
	datae => \ALT_INV_memROM~3_combout\,
	dataf => \ALT_INV_memROM~14_combout\,
	combout => \memROM~15_combout\);

\memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~16_combout\ = (!\Endereco[3]~input_o\ & (!\Endereco[4]~input_o\ & ((!\Endereco[1]~input_o\) # (!\Endereco[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[1]~input_o\,
	datab => \ALT_INV_Endereco[2]~input_o\,
	datac => \ALT_INV_Endereco[3]~input_o\,
	datad => \ALT_INV_Endereco[4]~input_o\,
	combout => \memROM~16_combout\);

\memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~17_combout\ = ( \memROM~3_combout\ & ( \memROM~16_combout\ & ( (!\Endereco[8]~input_o\ & (!\Endereco[9]~input_o\ & (\memROM~11_combout\))) # (\Endereco[8]~input_o\ & (\Endereco[9]~input_o\ & ((\memROM~2_combout\) # (\memROM~11_combout\)))) ) ) ) # 
-- ( !\memROM~3_combout\ & ( \memROM~16_combout\ & ( (\memROM~11_combout\ & (!\Endereco[8]~input_o\ $ (\Endereco[9]~input_o\))) ) ) ) # ( \memROM~3_combout\ & ( !\memROM~16_combout\ & ( (\Endereco[8]~input_o\ & (\Endereco[9]~input_o\ & \memROM~2_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100001001000010010000100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[8]~input_o\,
	datab => \ALT_INV_Endereco[9]~input_o\,
	datac => \ALT_INV_memROM~11_combout\,
	datad => \ALT_INV_memROM~2_combout\,
	datae => \ALT_INV_memROM~3_combout\,
	dataf => \ALT_INV_memROM~16_combout\,
	combout => \memROM~17_combout\);

ww_Dado(0) <= \Dado[0]~output_o\;

ww_Dado(1) <= \Dado[1]~output_o\;

ww_Dado(2) <= \Dado[2]~output_o\;

ww_Dado(3) <= \Dado[3]~output_o\;

ww_Dado(4) <= \Dado[4]~output_o\;

ww_Dado(5) <= \Dado[5]~output_o\;

ww_Dado(6) <= \Dado[6]~output_o\;

ww_Dado(7) <= \Dado[7]~output_o\;
END structure;


