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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/20/2021 21:36:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula8_vhd_vec_tst IS
END Aula8_vhd_vec_tst;
ARCHITECTURE Aula8_arch OF Aula8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL DEBUG : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL FPGA_RESET : STD_LOGIC;
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LED7a : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL LED7b : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL LED7c : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL LED7d : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL LED7e : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL LED7f : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT Aula8
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	DEBUG : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	FPGA_RESET : IN STD_LOGIC;
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LED7a : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	LED7b : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	LED7c : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	LED7d : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	LED7e : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	LED7f : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	LEDR : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula8
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	DEBUG => DEBUG,
	FPGA_RESET => FPGA_RESET,
	KEY => KEY,
	LED7a => LED7a,
	LED7b => LED7b,
	LED7c => LED7c,
	LED7d => LED7d,
	LED7e => LED7e,
	LED7f => LED7f,
	LEDR => LEDR,
	SW => SW
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;

-- SW[7]
t_prcs_SW_7: PROCESS
BEGIN
	SW(7) <= '0';
WAIT;
END PROCESS t_prcs_SW_7;

-- SW[6]
t_prcs_SW_6: PROCESS
BEGIN
	SW(6) <= '0';
WAIT;
END PROCESS t_prcs_SW_6;

-- SW[5]
t_prcs_SW_5: PROCESS
BEGIN
	SW(5) <= '0';
WAIT;
END PROCESS t_prcs_SW_5;

-- SW[4]
t_prcs_SW_4: PROCESS
BEGIN
	SW(4) <= '0';
WAIT;
END PROCESS t_prcs_SW_4;

-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '0';
WAIT;
END PROCESS t_prcs_SW_3;

-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;

-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;

-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '0';
WAIT;
END PROCESS t_prcs_SW_0;

-- SW[8]
t_prcs_SW_8: PROCESS
BEGIN
	SW(8) <= '0';
WAIT;
END PROCESS t_prcs_SW_8;

-- SW[9]
t_prcs_SW_9: PROCESS
BEGIN
	SW(9) <= '0';
WAIT;
END PROCESS t_prcs_SW_9;
-- KEY[3]
t_prcs_KEY_3: PROCESS
BEGIN
	KEY(3) <= '0';
WAIT;
END PROCESS t_prcs_KEY_3;
-- KEY[2]
t_prcs_KEY_2: PROCESS
BEGIN
	KEY(2) <= '0';
WAIT;
END PROCESS t_prcs_KEY_2;
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '0';
WAIT;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '0';
	WAIT FOR 110000 ps;
	KEY(0) <= '1';
	WAIT FOR 40000 ps;
	KEY(0) <= '0';
	WAIT FOR 210000 ps;
	KEY(0) <= '1';
	WAIT FOR 50000 ps;
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;

-- FPGA_RESET
t_prcs_FPGA_RESET: PROCESS
BEGIN
	FPGA_RESET <= '0';
WAIT;
END PROCESS t_prcs_FPGA_RESET;
END Aula8_arch;
