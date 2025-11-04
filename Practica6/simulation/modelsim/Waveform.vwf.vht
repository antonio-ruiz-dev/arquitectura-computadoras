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
-- Generated on "11/03/2025 04:36:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Practica6
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Practica6_vhd_vec_tst IS
END Practica6_vhd_vec_tst;
ARCHITECTURE Practica6_arch OF Practica6_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Addr_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL addres : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL constAdrr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dipA : STD_LOGIC;
SIGNAL dipB : STD_LOGIC;
SIGNAL dipC : STD_LOGIC;
SIGNAL e_presente : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL flags : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IRQ : STD_LOGIC;
SIGNAL mem : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL mem_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL noname : STD_LOGIC;
SIGNAL PC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RW : STD_LOGIC;
SIGNAL X_high : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL X_low : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL XIRQ : STD_LOGIC;
SIGNAL Y_low : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Practica6
	PORT (
	A : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Addr_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	addres : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	B : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	constAdrr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	DataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	dipA : IN STD_LOGIC;
	dipB : IN STD_LOGIC;
	dipC : IN STD_LOGIC;
	e_presente : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	flags : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	IRQ : IN STD_LOGIC;
	mem : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	mem_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	noname : IN STD_LOGIC;
	PC : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RW : OUT STD_LOGIC;
	X_high : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	X_low : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	XIRQ : IN STD_LOGIC;
	Y_low : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Practica6
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	Addr_out => Addr_out,
	addres => addres,
	B => B,
	constAdrr => constAdrr,
	DataOut => DataOut,
	dipA => dipA,
	dipB => dipB,
	dipC => dipC,
	e_presente => e_presente,
	flags => flags,
	IRQ => IRQ,
	mem => mem,
	mem_out => mem_out,
	noname => noname,
	PC => PC,
	RW => RW,
	X_high => X_high,
	X_low => X_low,
	XIRQ => XIRQ,
	Y_low => Y_low
	);
-- addres[15]
t_prcs_addres_15: PROCESS
BEGIN
	addres(15) <= '0';
WAIT;
END PROCESS t_prcs_addres_15;
-- addres[14]
t_prcs_addres_14: PROCESS
BEGIN
	addres(14) <= '0';
WAIT;
END PROCESS t_prcs_addres_14;
-- addres[13]
t_prcs_addres_13: PROCESS
BEGIN
	addres(13) <= '0';
WAIT;
END PROCESS t_prcs_addres_13;
-- addres[12]
t_prcs_addres_12: PROCESS
BEGIN
	addres(12) <= '0';
WAIT;
END PROCESS t_prcs_addres_12;
-- addres[11]
t_prcs_addres_11: PROCESS
BEGIN
	addres(11) <= '0';
WAIT;
END PROCESS t_prcs_addres_11;
-- addres[10]
t_prcs_addres_10: PROCESS
BEGIN
	addres(10) <= '0';
WAIT;
END PROCESS t_prcs_addres_10;
-- addres[9]
t_prcs_addres_9: PROCESS
BEGIN
	addres(9) <= '0';
WAIT;
END PROCESS t_prcs_addres_9;
-- addres[8]
t_prcs_addres_8: PROCESS
BEGIN
	addres(8) <= '0';
WAIT;
END PROCESS t_prcs_addres_8;
-- addres[7]
t_prcs_addres_7: PROCESS
BEGIN
	addres(7) <= '0';
WAIT;
END PROCESS t_prcs_addres_7;
-- addres[6]
t_prcs_addres_6: PROCESS
BEGIN
	addres(6) <= '0';
WAIT;
END PROCESS t_prcs_addres_6;
-- addres[5]
t_prcs_addres_5: PROCESS
BEGIN
	addres(5) <= '0';
WAIT;
END PROCESS t_prcs_addres_5;
-- addres[4]
t_prcs_addres_4: PROCESS
BEGIN
	addres(4) <= '1';
WAIT;
END PROCESS t_prcs_addres_4;
-- addres[3]
t_prcs_addres_3: PROCESS
BEGIN
	addres(3) <= '0';
WAIT;
END PROCESS t_prcs_addres_3;
-- addres[2]
t_prcs_addres_2: PROCESS
BEGIN
	addres(2) <= '0';
WAIT;
END PROCESS t_prcs_addres_2;
-- addres[1]
t_prcs_addres_1: PROCESS
BEGIN
	addres(1) <= '0';
WAIT;
END PROCESS t_prcs_addres_1;
-- addres[0]
t_prcs_addres_0: PROCESS
BEGIN
	addres(0) <= '0';
WAIT;
END PROCESS t_prcs_addres_0;

-- noname
t_prcs_noname: PROCESS
BEGIN
LOOP
	noname <= '0';
	WAIT FOR 5000 ps;
	noname <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_noname;

-- dipA
t_prcs_dipA: PROCESS
BEGIN
	dipA <= '0';
WAIT;
END PROCESS t_prcs_dipA;

-- dipB
t_prcs_dipB: PROCESS
BEGIN
	dipB <= '0';
WAIT;
END PROCESS t_prcs_dipB;

-- dipC
t_prcs_dipC: PROCESS
BEGIN
	dipC <= '0';
WAIT;
END PROCESS t_prcs_dipC;

-- IRQ
t_prcs_IRQ: PROCESS
BEGIN
	IRQ <= '0';
WAIT;
END PROCESS t_prcs_IRQ;

-- XIRQ
t_prcs_XIRQ: PROCESS
BEGIN
	XIRQ <= '0';
	WAIT FOR 960000 ps;
	XIRQ <= '1';
WAIT;
END PROCESS t_prcs_XIRQ;
END Practica6_arch;
