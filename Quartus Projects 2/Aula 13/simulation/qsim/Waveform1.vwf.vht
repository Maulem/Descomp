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
-- Generated on "11/02/2021 13:26:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula13
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula13_vhd_vec_tst IS
END Aula13_vhd_vec_tst;
ARCHITECTURE Aula13_arch OF Aula13_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL debug : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL funct_out : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL opcode_out : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL rd_wr : STD_LOGIC;
SIGNAL ula_op : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ULA_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT Aula13
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	debug : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	funct_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	opcode_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	rd_wr : IN STD_LOGIC;
	ula_op : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	ULA_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula13
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	debug => debug,
	debug2 => debug2,
	funct_out => funct_out,
	opcode_out => opcode_out,
	rd_wr => rd_wr,
	ula_op => ula_op,
	ULA_out => ULA_out
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 5000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 200000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;

-- rd_wr
t_prcs_rd_wr: PROCESS
BEGIN
	rd_wr <= '0';
WAIT;
END PROCESS t_prcs_rd_wr;
-- ula_op[2]
t_prcs_ula_op_2: PROCESS
BEGIN
	ula_op(2) <= '0';
WAIT;
END PROCESS t_prcs_ula_op_2;
-- ula_op[1]
t_prcs_ula_op_1: PROCESS
BEGIN
	ula_op(1) <= '0';
WAIT;
END PROCESS t_prcs_ula_op_1;
-- ula_op[0]
t_prcs_ula_op_0: PROCESS
BEGIN
	ula_op(0) <= '0';
WAIT;
END PROCESS t_prcs_ula_op_0;
END Aula13_arch;
