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
-- Generated on "11/05/2021 02:38:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula15
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula15_vhd_vec_tst IS
END Aula15_vhd_vec_tst;
ARCHITECTURE Aula15_arch OF Aula15_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL entradaBGRW : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL funct_out : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL opcode_out : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL PC_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida2BGR : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULA_A : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULA_B : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULA_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT Aula15
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	entradaBGRW : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	funct_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	opcode_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	PC_OUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida2BGR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULA_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULA_B : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULA_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula15
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	entradaBGRW => entradaBGRW,
	funct_out => funct_out,
	opcode_out => opcode_out,
	PC_OUT => PC_OUT,
	saida2BGR => saida2BGR,
	ULA_A => ULA_A,
	ULA_B => ULA_B,
	ULA_out => ULA_out
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;
END Aula15_arch;
