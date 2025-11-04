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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Standard Edition"

-- DATE "11/02/2025 23:46:20"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Practica6 IS
    PORT (
	RW : OUT std_logic;
	clk : IN std_logic;
	A : OUT std_logic_vector(7 DOWNTO 0);
	B : OUT std_logic_vector(7 DOWNTO 0);
	DataOut : OUT std_logic_vector(7 DOWNTO 0);
	e_presente : OUT std_logic_vector(7 DOWNTO 0);
	flags : OUT std_logic_vector(7 DOWNTO 0);
	mem : OUT std_logic_vector(7 DOWNTO 0);
	PC : OUT std_logic_vector(7 DOWNTO 0);
	X_high : OUT std_logic_vector(7 DOWNTO 0);
	X_low : OUT std_logic_vector(7 DOWNTO 0);
	Y_low : OUT std_logic_vector(7 DOWNTO 0)
	);
END Practica6;

-- Design Ports Information
-- RW	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[6]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[5]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[1]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_presente[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_presente[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_presente[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_presente[4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_presente[3]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_presente[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_presente[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_presente[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags[7]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flags[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[5]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[3]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[0]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_high[7]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_high[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_high[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_high[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_high[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_high[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_high[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_high[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_low[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_low[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_low[5]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_low[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_low[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_low[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_low[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_low[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_low[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_low[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_low[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_low[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_low[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_low[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_low[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_low[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Practica6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RW : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_e_presente : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_flags : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mem : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_X_high : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_X_low : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Y_low : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a55_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a55_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a55_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a47_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a47_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a39_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a63_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a63_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a63_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a54_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a54_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a46_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a38_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a62_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a62_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a62_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a53_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a53_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a53_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a45_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a45_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a37_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a61_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a61_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a61_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a52_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a52_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a52_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a44_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a60_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a60_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a60_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a51_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a51_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a43_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a43_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a35_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a59_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a59_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a50_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a50_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a42_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a34_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a58_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a58_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a58_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a49_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a49_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a49_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a41_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a33_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a57_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a57_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a57_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a56_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a56_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a56_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a40_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a48_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a48_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a48_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \micro|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \micro|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \micro|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \micro|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \RW~output_o\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \B[7]~output_o\ : std_logic;
SIGNAL \B[6]~output_o\ : std_logic;
SIGNAL \B[5]~output_o\ : std_logic;
SIGNAL \B[4]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \DataOut[7]~output_o\ : std_logic;
SIGNAL \DataOut[6]~output_o\ : std_logic;
SIGNAL \DataOut[5]~output_o\ : std_logic;
SIGNAL \DataOut[4]~output_o\ : std_logic;
SIGNAL \DataOut[3]~output_o\ : std_logic;
SIGNAL \DataOut[2]~output_o\ : std_logic;
SIGNAL \DataOut[1]~output_o\ : std_logic;
SIGNAL \DataOut[0]~output_o\ : std_logic;
SIGNAL \e_presente[7]~output_o\ : std_logic;
SIGNAL \e_presente[6]~output_o\ : std_logic;
SIGNAL \e_presente[5]~output_o\ : std_logic;
SIGNAL \e_presente[4]~output_o\ : std_logic;
SIGNAL \e_presente[3]~output_o\ : std_logic;
SIGNAL \e_presente[2]~output_o\ : std_logic;
SIGNAL \e_presente[1]~output_o\ : std_logic;
SIGNAL \e_presente[0]~output_o\ : std_logic;
SIGNAL \flags[7]~output_o\ : std_logic;
SIGNAL \flags[6]~output_o\ : std_logic;
SIGNAL \flags[5]~output_o\ : std_logic;
SIGNAL \flags[4]~output_o\ : std_logic;
SIGNAL \flags[3]~output_o\ : std_logic;
SIGNAL \flags[2]~output_o\ : std_logic;
SIGNAL \flags[1]~output_o\ : std_logic;
SIGNAL \flags[0]~output_o\ : std_logic;
SIGNAL \mem[7]~output_o\ : std_logic;
SIGNAL \mem[6]~output_o\ : std_logic;
SIGNAL \mem[5]~output_o\ : std_logic;
SIGNAL \mem[4]~output_o\ : std_logic;
SIGNAL \mem[3]~output_o\ : std_logic;
SIGNAL \mem[2]~output_o\ : std_logic;
SIGNAL \mem[1]~output_o\ : std_logic;
SIGNAL \mem[0]~output_o\ : std_logic;
SIGNAL \PC[7]~output_o\ : std_logic;
SIGNAL \PC[6]~output_o\ : std_logic;
SIGNAL \PC[5]~output_o\ : std_logic;
SIGNAL \PC[4]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \X_high[7]~output_o\ : std_logic;
SIGNAL \X_high[6]~output_o\ : std_logic;
SIGNAL \X_high[5]~output_o\ : std_logic;
SIGNAL \X_high[4]~output_o\ : std_logic;
SIGNAL \X_high[3]~output_o\ : std_logic;
SIGNAL \X_high[2]~output_o\ : std_logic;
SIGNAL \X_high[1]~output_o\ : std_logic;
SIGNAL \X_high[0]~output_o\ : std_logic;
SIGNAL \X_low[7]~output_o\ : std_logic;
SIGNAL \X_low[6]~output_o\ : std_logic;
SIGNAL \X_low[5]~output_o\ : std_logic;
SIGNAL \X_low[4]~output_o\ : std_logic;
SIGNAL \X_low[3]~output_o\ : std_logic;
SIGNAL \X_low[2]~output_o\ : std_logic;
SIGNAL \X_low[1]~output_o\ : std_logic;
SIGNAL \X_low[0]~output_o\ : std_logic;
SIGNAL \Y_low[7]~output_o\ : std_logic;
SIGNAL \Y_low[6]~output_o\ : std_logic;
SIGNAL \Y_low[5]~output_o\ : std_logic;
SIGNAL \Y_low[4]~output_o\ : std_logic;
SIGNAL \Y_low[3]~output_o\ : std_logic;
SIGNAL \Y_low[2]~output_o\ : std_logic;
SIGNAL \Y_low[1]~output_o\ : std_logic;
SIGNAL \Y_low[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \micro|Equal5~1_combout\ : std_logic;
SIGNAL \micro|Equal29~0_combout\ : std_logic;
SIGNAL \micro|Selector17~0_combout\ : std_logic;
SIGNAL \micro|Add0~2_combout\ : std_logic;
SIGNAL \micro|Equal21~1_combout\ : std_logic;
SIGNAL \micro|XH[6]~feeder_combout\ : std_logic;
SIGNAL \micro|Selector1~0_combout\ : std_logic;
SIGNAL \micro|WideOr1~combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|rden_decode|w_anode592w[3]~0_combout\ : std_logic;
SIGNAL \micro|B[5]~feeder_combout\ : std_logic;
SIGNAL \micro|Equal36~2_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|decode3|w_anode448w[3]~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|rden_decode|w_anode537w[3]~0_combout\ : std_logic;
SIGNAL \micro|Selector69~0_combout\ : std_logic;
SIGNAL \micro|WideOr29~combout\ : std_logic;
SIGNAL \micro|Equal16~0_combout\ : std_logic;
SIGNAL \micro|Selector15~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|decode3|w_anode468w[3]~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|rden_decode|w_anode559w[3]~0_combout\ : std_logic;
SIGNAL \micro|B[1]~feeder_combout\ : std_logic;
SIGNAL \micro|Add4~1\ : std_logic;
SIGNAL \micro|Add4~2_combout\ : std_logic;
SIGNAL \micro|Equal23~2_combout\ : std_logic;
SIGNAL \micro|A[1]~6_combout\ : std_logic;
SIGNAL \micro|Selector67~0_combout\ : std_logic;
SIGNAL \micro|Selector13~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|decode3|w_anode508w[3]~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|rden_decode|w_anode603w[3]~0_combout\ : std_logic;
SIGNAL \micro|B[3]~feeder_combout\ : std_logic;
SIGNAL \micro|B[4]~feeder_combout\ : std_logic;
SIGNAL \micro|Add4~3\ : std_logic;
SIGNAL \micro|Add4~5\ : std_logic;
SIGNAL \micro|Add4~7\ : std_logic;
SIGNAL \micro|Add4~9\ : std_logic;
SIGNAL \micro|Add4~10_combout\ : std_logic;
SIGNAL \micro|A[5]~2_combout\ : std_logic;
SIGNAL \micro|B[6]~feeder_combout\ : std_logic;
SIGNAL \micro|Selector62~0_combout\ : std_logic;
SIGNAL \micro|Selector11~0_combout\ : std_logic;
SIGNAL \micro|Selector10~0_combout\ : std_logic;
SIGNAL \micro|Selector9~0_combout\ : std_logic;
SIGNAL \micro|Selector8~0_combout\ : std_logic;
SIGNAL \micro|XH[0]~feeder_combout\ : std_logic;
SIGNAL \micro|Selector7~0_combout\ : std_logic;
SIGNAL \micro|XH[1]~feeder_combout\ : std_logic;
SIGNAL \micro|Selector6~0_combout\ : std_logic;
SIGNAL \micro|XH[2]~feeder_combout\ : std_logic;
SIGNAL \micro|Selector5~0_combout\ : std_logic;
SIGNAL \micro|XH[3]~feeder_combout\ : std_logic;
SIGNAL \micro|Selector4~0_combout\ : std_logic;
SIGNAL \micro|XH[4]~feeder_combout\ : std_logic;
SIGNAL \micro|Selector3~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a55~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a63~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|decode3|w_anode488w[3]~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|rden_decode|w_anode581w[3]~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a47~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|decode3|w_anode478w[3]~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|rden_decode|w_anode570w[3]~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a39~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~2_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~3_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|decode3|w_anode458w[3]~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|rden_decode|w_anode548w[3]~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~1_combout\ : std_logic;
SIGNAL \micro|B[7]~0_combout\ : std_logic;
SIGNAL \micro|B[7]~feeder_combout\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \micro|Equal37~2_combout\ : std_logic;
SIGNAL \micro|WideOr25~9_combout\ : std_logic;
SIGNAL \micro|WideOr25~8_combout\ : std_logic;
SIGNAL \micro|Equal7~0_combout\ : std_logic;
SIGNAL \micro|WideOr28~combout\ : std_logic;
SIGNAL \micro|Add4~11\ : std_logic;
SIGNAL \micro|Add4~13\ : std_logic;
SIGNAL \micro|Add4~14_combout\ : std_logic;
SIGNAL \micro|A[7]~0_combout\ : std_logic;
SIGNAL \micro|Equal10~2_combout\ : std_logic;
SIGNAL \micro|WideOr25~combout\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \micro|Add4~12_combout\ : std_logic;
SIGNAL \micro|A[6]~1_combout\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \micro|Add4~8_combout\ : std_logic;
SIGNAL \micro|A[4]~3_combout\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \micro|Add4~6_combout\ : std_logic;
SIGNAL \micro|A[3]~4_combout\ : std_logic;
SIGNAL \micro|Selector66~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a59~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a51~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a43~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a35~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~18_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~19_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~16_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~17_combout\ : std_logic;
SIGNAL \micro|B[3]~4_combout\ : std_logic;
SIGNAL \micro|XL[3]~feeder_combout\ : std_logic;
SIGNAL \micro|Selector12~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a50~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a58~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a34~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a42~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~22_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~23_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~20_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~21_combout\ : std_logic;
SIGNAL \micro|B[2]~5_combout\ : std_logic;
SIGNAL \micro|B[2]~feeder_combout\ : std_logic;
SIGNAL \micro|Add4~4_combout\ : std_logic;
SIGNAL \micro|A[2]~5_combout\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \micro|Selector68~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~24_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~25_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a57~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a49~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a41~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a33~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~26_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~27_combout\ : std_logic;
SIGNAL \micro|B[1]~6_combout\ : std_logic;
SIGNAL \micro|Selector14~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~28_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~29_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a40~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a48~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~30_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a56~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~31_combout\ : std_logic;
SIGNAL \micro|B[0]~7_combout\ : std_logic;
SIGNAL \micro|B[0]~feeder_combout\ : std_logic;
SIGNAL \micro|Add4~0_combout\ : std_logic;
SIGNAL \micro|A[0]~7_combout\ : std_logic;
SIGNAL \micro|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \micro|Selector64~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a53~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a45~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a37~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~10_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a61~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~11_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~8_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~9_combout\ : std_logic;
SIGNAL \micro|B[5]~2_combout\ : std_logic;
SIGNAL \micro|XH[5]~feeder_combout\ : std_logic;
SIGNAL \micro|Selector2~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|decode3|w_anode498w[3]~0_combout\ : std_logic;
SIGNAL \micro|Selector65~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a52~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a60~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a44~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~14_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~15_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~12_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~13_combout\ : std_logic;
SIGNAL \micro|B[4]~3_combout\ : std_logic;
SIGNAL \micro|Selector19~0_combout\ : std_logic;
SIGNAL \micro|Equal21~0_combout\ : std_logic;
SIGNAL \micro|Equal21~2_combout\ : std_logic;
SIGNAL \micro|WideNor0~10_combout\ : std_logic;
SIGNAL \micro|WideNor0~11_combout\ : std_logic;
SIGNAL \micro|Selector18~8_combout\ : std_logic;
SIGNAL \micro|WideNor0~5_combout\ : std_logic;
SIGNAL \micro|WideNor0~9_combout\ : std_logic;
SIGNAL \micro|Equal14~2_combout\ : std_logic;
SIGNAL \micro|Equal5~4_combout\ : std_logic;
SIGNAL \micro|WideNor0~6_combout\ : std_logic;
SIGNAL \micro|WideNor0~7_combout\ : std_logic;
SIGNAL \micro|Add0~18_combout\ : std_logic;
SIGNAL \micro|Add3~0_combout\ : std_logic;
SIGNAL \micro|Add0~0_combout\ : std_logic;
SIGNAL \micro|Add1~0_combout\ : std_logic;
SIGNAL \micro|Add2~0_combout\ : std_logic;
SIGNAL \micro|Add0~32_combout\ : std_logic;
SIGNAL \micro|Add0~33_combout\ : std_logic;
SIGNAL \micro|Selector22~4_combout\ : std_logic;
SIGNAL \micro|WideOr26~0_combout\ : std_logic;
SIGNAL \micro|Selector52~3_combout\ : std_logic;
SIGNAL \micro|Equal22~2_combout\ : std_logic;
SIGNAL \micro|Selector52~0_combout\ : std_logic;
SIGNAL \micro|Selector52~1_combout\ : std_logic;
SIGNAL \micro|Selector52~2_combout\ : std_logic;
SIGNAL \micro|Selector52~4_combout\ : std_logic;
SIGNAL \micro|Selector52~5_combout\ : std_logic;
SIGNAL \micro|Selector52~6_combout\ : std_logic;
SIGNAL \micro|PC[5]~0_combout\ : std_logic;
SIGNAL \micro|PC[5]~1_combout\ : std_logic;
SIGNAL \micro|Add0~3\ : std_logic;
SIGNAL \micro|Add0~4_combout\ : std_logic;
SIGNAL \micro|Add3~1\ : std_logic;
SIGNAL \micro|Add3~2_combout\ : std_logic;
SIGNAL \micro|Add1~1\ : std_logic;
SIGNAL \micro|Add1~2_combout\ : std_logic;
SIGNAL \micro|Add2~1\ : std_logic;
SIGNAL \micro|Add2~2_combout\ : std_logic;
SIGNAL \micro|Add0~30_combout\ : std_logic;
SIGNAL \micro|Add0~31_combout\ : std_logic;
SIGNAL \micro|Add0~5\ : std_logic;
SIGNAL \micro|Add0~6_combout\ : std_logic;
SIGNAL \micro|Add1~3\ : std_logic;
SIGNAL \micro|Add1~4_combout\ : std_logic;
SIGNAL \micro|Add2~3\ : std_logic;
SIGNAL \micro|Add2~4_combout\ : std_logic;
SIGNAL \micro|Add3~3\ : std_logic;
SIGNAL \micro|Add3~4_combout\ : std_logic;
SIGNAL \micro|Add0~28_combout\ : std_logic;
SIGNAL \micro|Add0~29_combout\ : std_logic;
SIGNAL \micro|Add0~7\ : std_logic;
SIGNAL \micro|Add0~8_combout\ : std_logic;
SIGNAL \micro|Add1~5\ : std_logic;
SIGNAL \micro|Add1~6_combout\ : std_logic;
SIGNAL \micro|Add2~5\ : std_logic;
SIGNAL \micro|Add2~6_combout\ : std_logic;
SIGNAL \micro|Add3~5\ : std_logic;
SIGNAL \micro|Add3~6_combout\ : std_logic;
SIGNAL \micro|Add0~26_combout\ : std_logic;
SIGNAL \micro|Add0~27_combout\ : std_logic;
SIGNAL \micro|Add0~9\ : std_logic;
SIGNAL \micro|Add0~10_combout\ : std_logic;
SIGNAL \micro|Add3~7\ : std_logic;
SIGNAL \micro|Add3~8_combout\ : std_logic;
SIGNAL \micro|Add1~7\ : std_logic;
SIGNAL \micro|Add1~8_combout\ : std_logic;
SIGNAL \micro|Add2~7\ : std_logic;
SIGNAL \micro|Add2~8_combout\ : std_logic;
SIGNAL \micro|Add0~24_combout\ : std_logic;
SIGNAL \micro|Add0~25_combout\ : std_logic;
SIGNAL \micro|Add0~11\ : std_logic;
SIGNAL \micro|Add0~12_combout\ : std_logic;
SIGNAL \micro|Add3~9\ : std_logic;
SIGNAL \micro|Add3~10_combout\ : std_logic;
SIGNAL \micro|Add1~9\ : std_logic;
SIGNAL \micro|Add1~10_combout\ : std_logic;
SIGNAL \micro|Add2~9\ : std_logic;
SIGNAL \micro|Add2~10_combout\ : std_logic;
SIGNAL \micro|Add0~22_combout\ : std_logic;
SIGNAL \micro|Add0~23_combout\ : std_logic;
SIGNAL \micro|Add0~13\ : std_logic;
SIGNAL \micro|Add0~14_combout\ : std_logic;
SIGNAL \micro|Add3~11\ : std_logic;
SIGNAL \micro|Add3~12_combout\ : std_logic;
SIGNAL \micro|Add1~11\ : std_logic;
SIGNAL \micro|Add1~12_combout\ : std_logic;
SIGNAL \micro|Add2~11\ : std_logic;
SIGNAL \micro|Add2~12_combout\ : std_logic;
SIGNAL \micro|Add0~20_combout\ : std_logic;
SIGNAL \micro|Add0~21_combout\ : std_logic;
SIGNAL \micro|Add0~15\ : std_logic;
SIGNAL \micro|Add0~16_combout\ : std_logic;
SIGNAL \micro|Add3~13\ : std_logic;
SIGNAL \micro|Add3~14_combout\ : std_logic;
SIGNAL \micro|Add1~13\ : std_logic;
SIGNAL \micro|Add1~14_combout\ : std_logic;
SIGNAL \micro|Add2~13\ : std_logic;
SIGNAL \micro|Add2~14_combout\ : std_logic;
SIGNAL \micro|Add0~1_combout\ : std_logic;
SIGNAL \micro|Add0~19_combout\ : std_logic;
SIGNAL \micro|Add0~17\ : std_logic;
SIGNAL \micro|Add0~35_combout\ : std_logic;
SIGNAL \micro|Add3~15\ : std_logic;
SIGNAL \micro|Add3~16_combout\ : std_logic;
SIGNAL \micro|Add2~15\ : std_logic;
SIGNAL \micro|Add2~16_combout\ : std_logic;
SIGNAL \micro|Add0~56_combout\ : std_logic;
SIGNAL \micro|Add0~57_combout\ : std_logic;
SIGNAL \micro|Add0~36\ : std_logic;
SIGNAL \micro|Add0~37_combout\ : std_logic;
SIGNAL \micro|Add3~17\ : std_logic;
SIGNAL \micro|Add3~18_combout\ : std_logic;
SIGNAL \micro|Add2~17\ : std_logic;
SIGNAL \micro|Add2~18_combout\ : std_logic;
SIGNAL \micro|Add0~58_combout\ : std_logic;
SIGNAL \micro|Add0~59_combout\ : std_logic;
SIGNAL \micro|Add0~38\ : std_logic;
SIGNAL \micro|Add0~39_combout\ : std_logic;
SIGNAL \micro|Add3~19\ : std_logic;
SIGNAL \micro|Add3~20_combout\ : std_logic;
SIGNAL \micro|Add2~19\ : std_logic;
SIGNAL \micro|Add2~20_combout\ : std_logic;
SIGNAL \micro|Add0~60_combout\ : std_logic;
SIGNAL \micro|Add0~61_combout\ : std_logic;
SIGNAL \micro|Add0~40\ : std_logic;
SIGNAL \micro|Add0~41_combout\ : std_logic;
SIGNAL \micro|Add3~21\ : std_logic;
SIGNAL \micro|Add3~22_combout\ : std_logic;
SIGNAL \micro|Add2~21\ : std_logic;
SIGNAL \micro|Add2~22_combout\ : std_logic;
SIGNAL \micro|Add0~62_combout\ : std_logic;
SIGNAL \micro|Add0~63_combout\ : std_logic;
SIGNAL \micro|Add0~42\ : std_logic;
SIGNAL \micro|Add0~43_combout\ : std_logic;
SIGNAL \micro|Add3~23\ : std_logic;
SIGNAL \micro|Add3~24_combout\ : std_logic;
SIGNAL \micro|Add2~23\ : std_logic;
SIGNAL \micro|Add2~24_combout\ : std_logic;
SIGNAL \micro|Add0~64_combout\ : std_logic;
SIGNAL \micro|Add0~65_combout\ : std_logic;
SIGNAL \micro|Add0~44\ : std_logic;
SIGNAL \micro|Add0~45_combout\ : std_logic;
SIGNAL \micro|Add3~25\ : std_logic;
SIGNAL \micro|Add3~26_combout\ : std_logic;
SIGNAL \micro|Add2~25\ : std_logic;
SIGNAL \micro|Add2~26_combout\ : std_logic;
SIGNAL \micro|Add0~34_combout\ : std_logic;
SIGNAL \micro|Add0~47_combout\ : std_logic;
SIGNAL \micro|Add0~46\ : std_logic;
SIGNAL \micro|Add0~48_combout\ : std_logic;
SIGNAL \micro|Add3~27\ : std_logic;
SIGNAL \micro|Add3~28_combout\ : std_logic;
SIGNAL \micro|Add2~27\ : std_logic;
SIGNAL \micro|Add2~28_combout\ : std_logic;
SIGNAL \micro|Add0~54_combout\ : std_logic;
SIGNAL \micro|Add0~55_combout\ : std_logic;
SIGNAL \micro|Add0~49\ : std_logic;
SIGNAL \micro|Add0~50_combout\ : std_logic;
SIGNAL \micro|Add3~29\ : std_logic;
SIGNAL \micro|Add3~30_combout\ : std_logic;
SIGNAL \micro|Add2~29\ : std_logic;
SIGNAL \micro|Add2~30_combout\ : std_logic;
SIGNAL \micro|Add0~52_combout\ : std_logic;
SIGNAL \micro|Add0~53_combout\ : std_logic;
SIGNAL \micro|XH[7]~feeder_combout\ : std_logic;
SIGNAL \micro|Selector0~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|address_reg_a[2]~feeder_combout\ : std_logic;
SIGNAL \micro|Selector63~0_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~4_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~5_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a54~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a62~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a46~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a38~portadataout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~6_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|mux2|_~7_combout\ : std_logic;
SIGNAL \micro|B[6]~1_combout\ : std_logic;
SIGNAL \micro|Selector17~3_combout\ : std_logic;
SIGNAL \micro|Selector17~4_combout\ : std_logic;
SIGNAL \micro|Equal8~0_combout\ : std_logic;
SIGNAL \micro|Selector17~1_combout\ : std_logic;
SIGNAL \micro|Selector17~2_combout\ : std_logic;
SIGNAL \micro|Equal15~2_combout\ : std_logic;
SIGNAL \micro|Selector22~9_combout\ : std_logic;
SIGNAL \micro|Selector22~5_combout\ : std_logic;
SIGNAL \micro|Selector16~0_combout\ : std_logic;
SIGNAL \micro|Equal5~0_combout\ : std_logic;
SIGNAL \micro|Equal25~0_combout\ : std_logic;
SIGNAL \micro|Equal25~1_combout\ : std_logic;
SIGNAL \micro|Selector23~9_combout\ : std_logic;
SIGNAL \micro|Selector23~10_combout\ : std_logic;
SIGNAL \micro|Equal2~1_combout\ : std_logic;
SIGNAL \micro|Equal2~0_combout\ : std_logic;
SIGNAL \micro|Equal2~2_combout\ : std_logic;
SIGNAL \micro|Equal4~2_combout\ : std_logic;
SIGNAL \micro|Selector21~2_combout\ : std_logic;
SIGNAL \micro|Equal17~2_combout\ : std_logic;
SIGNAL \micro|Equal17~3_combout\ : std_logic;
SIGNAL \micro|Selector22~6_combout\ : std_logic;
SIGNAL \micro|Selector23~11_combout\ : std_logic;
SIGNAL \micro|Selector22~7_combout\ : std_logic;
SIGNAL \micro|Selector22~8_combout\ : std_logic;
SIGNAL \micro|Equal35~0_combout\ : std_logic;
SIGNAL \micro|Equal35~1_combout\ : std_logic;
SIGNAL \micro|Selector23~8_combout\ : std_logic;
SIGNAL \micro|Selector20~0_combout\ : std_logic;
SIGNAL \micro|Selector20~1_combout\ : std_logic;
SIGNAL \micro|Equal13~2_combout\ : std_logic;
SIGNAL \micro|estados[0]~3_combout\ : std_logic;
SIGNAL \micro|WideOr1~2_combout\ : std_logic;
SIGNAL \micro|WideOr1~3_combout\ : std_logic;
SIGNAL \micro|WideOr21~combout\ : std_logic;
SIGNAL \micro|Selector21~3_combout\ : std_logic;
SIGNAL \micro|Selector18~9_combout\ : std_logic;
SIGNAL \micro|Selector18~12_combout\ : std_logic;
SIGNAL \micro|Selector18~10_combout\ : std_logic;
SIGNAL \micro|Selector18~11_combout\ : std_logic;
SIGNAL \micro|Equal15~0_combout\ : std_logic;
SIGNAL \micro|Equal15~1_combout\ : std_logic;
SIGNAL \micro|Equal14~3_combout\ : std_logic;
SIGNAL \micro|e_siguiente~2_combout\ : std_logic;
SIGNAL \micro|Equal5~2_combout\ : std_logic;
SIGNAL \micro|Equal5~3_combout\ : std_logic;
SIGNAL \micro|WideOr27~0_combout\ : std_logic;
SIGNAL \micro|WideNor0~8_combout\ : std_logic;
SIGNAL \micro|WideOr1~4_combout\ : std_logic;
SIGNAL \micro|WideOr23~combout\ : std_logic;
SIGNAL \micro|WideNor0~4_combout\ : std_logic;
SIGNAL \micro|nRW~feeder_combout\ : std_logic;
SIGNAL \micro|nRW~q\ : std_logic;
SIGNAL \micro|Selector51~0_combout\ : std_logic;
SIGNAL \micro|Selector51~1_combout\ : std_logic;
SIGNAL \micro|Selector53~0_combout\ : std_logic;
SIGNAL \micro|Selector53~1_combout\ : std_logic;
SIGNAL \micro|Add4~15\ : std_logic;
SIGNAL \micro|Add4~16_combout\ : std_logic;
SIGNAL \micro|estados[0]~2_combout\ : std_logic;
SIGNAL \ram|sram|ram_block|auto_generated|rden_decode|w_anode519w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \micro|Dir\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \micro|Aux\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \micro|Data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \micro|D\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \micro|B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \micro|e_siguiente\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \micro|estados\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \micro|A\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \micro|XL\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \micro|PC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|decode3|w_anode431w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \micro|XH\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \micro|ALT_INV_PC\ : std_logic_vector(4 DOWNTO 2);
SIGNAL \micro|ALT_INV_estados\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \micro|ALT_INV_nRW~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

RW <= ww_RW;
ww_clk <= clk;
A <= ww_A;
B <= ww_B;
DataOut <= ww_DataOut;
e_presente <= ww_e_presente;
flags <= ww_flags;
mem <= ww_mem;
PC <= ww_PC;
X_high <= ww_X_high;
X_low <= ww_X_low;
Y_low <= ww_Y_low;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram|sram|ram_block|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \micro|Data_out\(7);

\ram|sram|ram_block|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a15~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \micro|Data_out\(7);

\ram|sram|ram_block|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a23~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \micro|Data_out\(7);

\ram|sram|ram_block|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a7~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \micro|Data_out\(7);

\ram|sram|ram_block|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a31~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a55_PORTADATAIN_bus\(0) <= \micro|Data_out\(7);

\ram|sram|ram_block|auto_generated|ram_block1a55_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a55~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a55_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a47_PORTADATAIN_bus\(0) <= \micro|Data_out\(7);

\ram|sram|ram_block|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a47~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a47_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a39_PORTADATAIN_bus\(0) <= \micro|Data_out\(7);

\ram|sram|ram_block|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a39~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a39_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a63_PORTADATAIN_bus\(0) <= \micro|Data_out\(7);

\ram|sram|ram_block|auto_generated|ram_block1a63_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a63~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a63_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \micro|Data_out\(6);

\ram|sram|ram_block|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a14~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \micro|Data_out\(6);

\ram|sram|ram_block|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a22~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \micro|Data_out\(6);

\ram|sram|ram_block|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a6~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \micro|Data_out\(6);

\ram|sram|ram_block|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a30~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a54_PORTADATAIN_bus\(0) <= \micro|Data_out\(6);

\ram|sram|ram_block|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a54~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a54_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a46_PORTADATAIN_bus\(0) <= \micro|Data_out\(6);

\ram|sram|ram_block|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a46~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a46_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a38_PORTADATAIN_bus\(0) <= \micro|Data_out\(6);

\ram|sram|ram_block|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a38~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a38_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a62_PORTADATAIN_bus\(0) <= \micro|Data_out\(6);

\ram|sram|ram_block|auto_generated|ram_block1a62_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a62~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a62_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \micro|Data_out\(5);

\ram|sram|ram_block|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a13~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \micro|Data_out\(5);

\ram|sram|ram_block|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a21~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \micro|Data_out\(5);

\ram|sram|ram_block|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a5~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \micro|Data_out\(5);

\ram|sram|ram_block|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a29~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a53_PORTADATAIN_bus\(0) <= \micro|Data_out\(5);

\ram|sram|ram_block|auto_generated|ram_block1a53_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a53~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a53_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a45_PORTADATAIN_bus\(0) <= \micro|Data_out\(5);

\ram|sram|ram_block|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a45~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a45_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a37_PORTADATAIN_bus\(0) <= \micro|Data_out\(5);

\ram|sram|ram_block|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a37~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a37_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a61_PORTADATAIN_bus\(0) <= \micro|Data_out\(5);

\ram|sram|ram_block|auto_generated|ram_block1a61_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a61~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a61_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \micro|Data_out\(4);

\ram|sram|ram_block|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a12~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \micro|Data_out\(4);

\ram|sram|ram_block|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a20~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \micro|Data_out\(4);

\ram|sram|ram_block|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a4~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \micro|Data_out\(4);

\ram|sram|ram_block|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a28~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a52_PORTADATAIN_bus\(0) <= \micro|Data_out\(4);

\ram|sram|ram_block|auto_generated|ram_block1a52_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a52~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a52_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a44_PORTADATAIN_bus\(0) <= \micro|Data_out\(4);

\ram|sram|ram_block|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a44~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a44_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \micro|Data_out\(4);

\ram|sram|ram_block|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a36~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a60_PORTADATAIN_bus\(0) <= \micro|Data_out\(4);

\ram|sram|ram_block|auto_generated|ram_block1a60_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a60~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a60_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \micro|Data_out\(3);

\ram|sram|ram_block|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a11~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \micro|Data_out\(3);

\ram|sram|ram_block|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a19~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \micro|Data_out\(3);

\ram|sram|ram_block|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a3~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \micro|Data_out\(3);

\ram|sram|ram_block|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a27~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a51_PORTADATAIN_bus\(0) <= \micro|Data_out\(3);

\ram|sram|ram_block|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a51~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a51_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a43_PORTADATAIN_bus\(0) <= \micro|Data_out\(3);

\ram|sram|ram_block|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a43~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a43_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \micro|Data_out\(3);

\ram|sram|ram_block|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a35~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a35_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a59_PORTADATAIN_bus\(0) <= \micro|Data_out\(3);

\ram|sram|ram_block|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a59~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a59_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \micro|Data_out\(2);

\ram|sram|ram_block|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a10~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \micro|Data_out\(2);

\ram|sram|ram_block|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a18~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \micro|Data_out\(2);

\ram|sram|ram_block|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a2~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \micro|Data_out\(2);

\ram|sram|ram_block|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a26~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a50_PORTADATAIN_bus\(0) <= \micro|Data_out\(2);

\ram|sram|ram_block|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a50~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a50_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a42_PORTADATAIN_bus\(0) <= \micro|Data_out\(2);

\ram|sram|ram_block|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a42~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a42_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \micro|Data_out\(2);

\ram|sram|ram_block|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a34~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a34_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a58_PORTADATAIN_bus\(0) <= \micro|Data_out\(2);

\ram|sram|ram_block|auto_generated|ram_block1a58_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a58~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a58_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \micro|Data_out\(1);

\ram|sram|ram_block|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a9~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \micro|Data_out\(1);

\ram|sram|ram_block|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a17~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \micro|Data_out\(1);

\ram|sram|ram_block|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a1~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \micro|Data_out\(1);

\ram|sram|ram_block|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a25~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a49_PORTADATAIN_bus\(0) <= \micro|Data_out\(1);

\ram|sram|ram_block|auto_generated|ram_block1a49_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a49~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a49_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a41_PORTADATAIN_bus\(0) <= \micro|Data_out\(1);

\ram|sram|ram_block|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a41~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a41_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \micro|Data_out\(1);

\ram|sram|ram_block|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a33~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a33_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a57_PORTADATAIN_bus\(0) <= \micro|Data_out\(1);

\ram|sram|ram_block|auto_generated|ram_block1a57_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a57~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a57_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \micro|Data_out\(0);

\ram|sram|ram_block|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a8~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \micro|Data_out\(0);

\ram|sram|ram_block|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a16~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \micro|Data_out\(0);

\ram|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a0~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \micro|Data_out\(0);

\ram|sram|ram_block|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a24~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a56_PORTADATAIN_bus\(0) <= \micro|Data_out\(0);

\ram|sram|ram_block|auto_generated|ram_block1a56_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a56~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a56_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a40_PORTADATAIN_bus\(0) <= \micro|Data_out\(0);

\ram|sram|ram_block|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a40~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a40_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a48_PORTADATAIN_bus\(0) <= \micro|Data_out\(0);

\ram|sram|ram_block|auto_generated|ram_block1a48_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a48~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a48_PORTADATAOUT_bus\(0);

\ram|sram|ram_block|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \micro|Data_out\(0);

\ram|sram|ram_block|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\micro|Dir\(12) & \micro|Dir\(11) & \micro|Dir\(10) & \micro|Dir\(9) & \micro|Dir\(8) & \micro|Dir\(7) & \micro|Dir\(6) & \micro|Dir\(5) & \micro|Dir\(4) & \micro|Dir\(3)
& \micro|Dir\(2) & \micro|Dir\(1) & \micro|Dir\(0));

\ram|sram|ram_block|auto_generated|ram_block1a32~portadataout\ <= \ram|sram|ram_block|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);

\micro|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\micro|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \micro|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \micro|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \micro|Mult0|auto_generated|mac_mult1~DATAOUT12\
& \micro|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \micro|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \micro|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \micro|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \micro|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\micro|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \micro|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \micro|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \micro|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \micro|Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\micro|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \micro|Mult0|auto_generated|mac_mult1~dataout\ & \micro|Mult0|auto_generated|mac_mult1~1\ & \micro|Mult0|auto_generated|mac_mult1~0\);

\micro|Mult0|auto_generated|mac_out2~0\ <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\micro|Mult0|auto_generated|mac_out2~1\ <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\micro|D\(0) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\micro|D\(1) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\micro|D\(2) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\micro|D\(3) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\micro|D\(4) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\micro|D\(5) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\micro|D\(6) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\micro|D\(7) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\micro|D\(8) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\micro|D\(9) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\micro|D\(10) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\micro|D\(11) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\micro|D\(12) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\micro|D\(13) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\micro|D\(14) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\micro|D\(15) <= \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\micro|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\micro|A\(7) & \micro|A\(6) & \micro|A\(5) & \micro|A\(4) & \micro|A\(3) & \micro|A\(2) & \micro|A\(1) & \micro|A\(0) & gnd);

\micro|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\micro|B\(7) & \micro|B\(6) & \micro|B\(5) & \micro|B\(4) & \micro|B\(3) & \micro|B\(2) & \micro|B\(1) & \micro|B\(0) & gnd);

\micro|Mult0|auto_generated|mac_mult1~0\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\micro|Mult0|auto_generated|mac_mult1~1\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\micro|Mult0|auto_generated|mac_mult1~dataout\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\micro|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\micro|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\micro|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\micro|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\micro|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\micro|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\micro|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\micro|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\micro|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\micro|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\micro|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\micro|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\micro|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\micro|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\micro|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\micro|ALT_INV_PC\(2) <= NOT \micro|PC\(2);
\micro|ALT_INV_PC\(4) <= NOT \micro|PC\(4);
\micro|ALT_INV_estados\(0) <= NOT \micro|estados\(0);
\micro|ALT_INV_estados\(1) <= NOT \micro|estados\(1);
\micro|ALT_INV_estados\(2) <= NOT \micro|estados\(2);
\micro|ALT_INV_estados\(3) <= NOT \micro|estados\(3);
\micro|ALT_INV_nRW~q\ <= NOT \micro|nRW~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y0_N23
\RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|ALT_INV_nRW~q\,
	devoe => ww_devoe,
	o => \RW~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\A[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|A\(7),
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\A[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|A\(6),
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\A[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|A\(5),
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|A\(4),
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|A\(3),
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|A\(2),
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|A\(1),
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|A\(0),
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B\(7),
	devoe => ww_devoe,
	o => \B[7]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B\(6),
	devoe => ww_devoe,
	o => \B[6]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B\(5),
	devoe => ww_devoe,
	o => \B[5]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B\(4),
	devoe => ww_devoe,
	o => \B[4]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B\(3),
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B\(2),
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B\(1),
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B\(0),
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\DataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|Data_out\(7),
	devoe => ww_devoe,
	o => \DataOut[7]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\DataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|Data_out\(6),
	devoe => ww_devoe,
	o => \DataOut[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\DataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|Data_out\(5),
	devoe => ww_devoe,
	o => \DataOut[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\DataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|Data_out\(4),
	devoe => ww_devoe,
	o => \DataOut[4]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\DataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|Data_out\(3),
	devoe => ww_devoe,
	o => \DataOut[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\DataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|Data_out\(2),
	devoe => ww_devoe,
	o => \DataOut[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\DataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|Data_out\(1),
	devoe => ww_devoe,
	o => \DataOut[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\DataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|Data_out\(0),
	devoe => ww_devoe,
	o => \DataOut[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\e_presente[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|e_siguiente\(11),
	devoe => ww_devoe,
	o => \e_presente[7]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\e_presente[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|e_siguiente\(10),
	devoe => ww_devoe,
	o => \e_presente[6]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\e_presente[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|e_siguiente\(9),
	devoe => ww_devoe,
	o => \e_presente[5]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\e_presente[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|e_siguiente\(8),
	devoe => ww_devoe,
	o => \e_presente[4]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\e_presente[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|e_siguiente\(7),
	devoe => ww_devoe,
	o => \e_presente[3]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\e_presente[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|e_siguiente\(6),
	devoe => ww_devoe,
	o => \e_presente[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\e_presente[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|e_siguiente\(5),
	devoe => ww_devoe,
	o => \e_presente[1]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\e_presente[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|e_siguiente\(4),
	devoe => ww_devoe,
	o => \e_presente[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\flags[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \flags[7]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\flags[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \flags[6]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\flags[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \flags[5]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\flags[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \flags[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\flags[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|ALT_INV_estados\(3),
	devoe => ww_devoe,
	o => \flags[3]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\flags[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|ALT_INV_estados\(2),
	devoe => ww_devoe,
	o => \flags[2]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\flags[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|ALT_INV_estados\(1),
	devoe => ww_devoe,
	o => \flags[1]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\flags[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|ALT_INV_estados\(0),
	devoe => ww_devoe,
	o => \flags[0]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\mem[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B[7]~0_combout\,
	devoe => ww_devoe,
	o => \mem[7]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\mem[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B[6]~1_combout\,
	devoe => ww_devoe,
	o => \mem[6]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\mem[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B[5]~2_combout\,
	devoe => ww_devoe,
	o => \mem[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\mem[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B[4]~3_combout\,
	devoe => ww_devoe,
	o => \mem[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\mem[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B[3]~4_combout\,
	devoe => ww_devoe,
	o => \mem[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\mem[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B[2]~5_combout\,
	devoe => ww_devoe,
	o => \mem[2]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\mem[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B[1]~6_combout\,
	devoe => ww_devoe,
	o => \mem[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\mem[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|B[0]~7_combout\,
	devoe => ww_devoe,
	o => \mem[0]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\PC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|PC\(7),
	devoe => ww_devoe,
	o => \PC[7]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\PC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|PC\(6),
	devoe => ww_devoe,
	o => \PC[6]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\PC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|PC\(5),
	devoe => ww_devoe,
	o => \PC[5]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\PC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|ALT_INV_PC\(4),
	devoe => ww_devoe,
	o => \PC[4]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\PC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|PC\(3),
	devoe => ww_devoe,
	o => \PC[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\PC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|ALT_INV_PC\(2),
	devoe => ww_devoe,
	o => \PC[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\PC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|PC\(1),
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\PC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|PC\(0),
	devoe => ww_devoe,
	o => \PC[0]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\X_high[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XH\(7),
	devoe => ww_devoe,
	o => \X_high[7]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\X_high[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XH\(6),
	devoe => ww_devoe,
	o => \X_high[6]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\X_high[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XH\(5),
	devoe => ww_devoe,
	o => \X_high[5]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\X_high[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XH\(4),
	devoe => ww_devoe,
	o => \X_high[4]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\X_high[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XH\(3),
	devoe => ww_devoe,
	o => \X_high[3]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\X_high[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XH\(2),
	devoe => ww_devoe,
	o => \X_high[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\X_high[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XH\(1),
	devoe => ww_devoe,
	o => \X_high[1]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\X_high[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XH\(0),
	devoe => ww_devoe,
	o => \X_high[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\X_low[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XL\(7),
	devoe => ww_devoe,
	o => \X_low[7]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\X_low[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XL\(6),
	devoe => ww_devoe,
	o => \X_low[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\X_low[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XL\(5),
	devoe => ww_devoe,
	o => \X_low[5]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\X_low[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XL\(4),
	devoe => ww_devoe,
	o => \X_low[4]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\X_low[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XL\(3),
	devoe => ww_devoe,
	o => \X_low[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\X_low[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XL\(2),
	devoe => ww_devoe,
	o => \X_low[2]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\X_low[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XL\(1),
	devoe => ww_devoe,
	o => \X_low[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\X_low[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \micro|XL\(0),
	devoe => ww_devoe,
	o => \X_low[0]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\Y_low[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_low[7]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\Y_low[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_low[6]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\Y_low[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_low[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\Y_low[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_low[4]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\Y_low[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_low[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\Y_low[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_low[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\Y_low[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_low[1]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\Y_low[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_low[0]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X21_Y22_N24
\micro|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal5~1_combout\ = (!\micro|e_siguiente\(9) & !\micro|e_siguiente\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \micro|e_siguiente\(9),
	datad => \micro|e_siguiente\(4),
	combout => \micro|Equal5~1_combout\);

-- Location: LCCOMB_X23_Y22_N16
\micro|Equal29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal29~0_combout\ = (!\micro|e_siguiente\(1) & (\micro|e_siguiente\(10) & (\micro|e_siguiente\(0) & \micro|Equal25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(1),
	datab => \micro|e_siguiente\(10),
	datac => \micro|e_siguiente\(0),
	datad => \micro|Equal25~1_combout\,
	combout => \micro|Equal29~0_combout\);

-- Location: LCCOMB_X23_Y22_N20
\micro|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector17~0_combout\ = (\micro|e_siguiente\(1)) # ((!\micro|Equal8~0_combout\) # (!\micro|e_siguiente\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(1),
	datac => \micro|e_siguiente\(0),
	datad => \micro|Equal8~0_combout\,
	combout => \micro|Selector17~0_combout\);

-- Location: LCCOMB_X30_Y18_N0
\micro|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~2_combout\ = \micro|PC\(0) $ (VCC)
-- \micro|Add0~3\ = CARRY(\micro|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(0),
	datad => VCC,
	combout => \micro|Add0~2_combout\,
	cout => \micro|Add0~3\);

-- Location: LCCOMB_X20_Y22_N26
\micro|Equal21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal21~1_combout\ = (\micro|e_siguiente\(5) & (!\micro|e_siguiente\(9) & !\micro|e_siguiente\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|e_siguiente\(5),
	datac => \micro|e_siguiente\(9),
	datad => \micro|e_siguiente\(6),
	combout => \micro|Equal21~1_combout\);

-- Location: LCCOMB_X26_Y20_N6
\micro|XH[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|XH[6]~feeder_combout\ = \micro|B[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[6]~1_combout\,
	combout => \micro|XH[6]~feeder_combout\);

-- Location: FF_X26_Y20_N7
\micro|XH[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|XH[6]~feeder_combout\,
	ena => \micro|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XH\(6));

-- Location: LCCOMB_X26_Y20_N2
\micro|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector1~0_combout\ = (\micro|WideNor0~4_combout\ & (\micro|XH\(6))) # (!\micro|WideNor0~4_combout\ & ((\micro|PC\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|XH\(6),
	datac => \micro|WideNor0~4_combout\,
	datad => \micro|PC\(14),
	combout => \micro|Selector1~0_combout\);

-- Location: LCCOMB_X18_Y22_N6
\micro|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideOr1~combout\ = (\micro|WideOr1~3_combout\ & (\micro|WideOr1~4_combout\ & ((\micro|e_siguiente\(0)) # (!\micro|Equal15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal15~1_combout\,
	datab => \micro|e_siguiente\(0),
	datac => \micro|WideOr1~3_combout\,
	datad => \micro|WideOr1~4_combout\,
	combout => \micro|WideOr1~combout\);

-- Location: FF_X26_Y20_N3
\micro|Dir[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector1~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(14));

-- Location: FF_X32_Y18_N31
\ram|sram|ram_block|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \micro|Dir\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|sram|ram_block|auto_generated|address_reg_a\(1));

-- Location: LCCOMB_X32_Y18_N20
\ram|sram|ram_block|auto_generated|rden_decode|w_anode592w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|rden_decode|w_anode592w[3]~0_combout\ = (!\micro|Dir\(13) & (\micro|Dir\(14) & \micro|Dir\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Dir\(13),
	datac => \micro|Dir\(14),
	datad => \micro|Dir\(15),
	combout => \ram|sram|ram_block|auto_generated|rden_decode|w_anode592w[3]~0_combout\);

-- Location: LCCOMB_X14_Y22_N0
\micro|B[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[5]~feeder_combout\ = \micro|B[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[5]~2_combout\,
	combout => \micro|B[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y22_N24
\micro|Equal36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal36~2_combout\ = (\micro|e_siguiente\(0) & (!\micro|e_siguiente\(1) & \micro|Equal35~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|e_siguiente\(0),
	datac => \micro|e_siguiente\(1),
	datad => \micro|Equal35~1_combout\,
	combout => \micro|Equal36~2_combout\);

-- Location: LCCOMB_X26_Y17_N22
\ram|sram|ram_block|auto_generated|decode3|w_anode448w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|decode3|w_anode448w[3]~0_combout\ = (\micro|nRW~q\ & (!\micro|Dir\(15) & (!\micro|Dir\(14) & \micro|Dir\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|nRW~q\,
	datab => \micro|Dir\(15),
	datac => \micro|Dir\(14),
	datad => \micro|Dir\(13),
	combout => \ram|sram|ram_block|auto_generated|decode3|w_anode448w[3]~0_combout\);

-- Location: LCCOMB_X26_Y20_N0
\ram|sram|ram_block|auto_generated|rden_decode|w_anode537w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|rden_decode|w_anode537w[3]~0_combout\ = (\micro|Dir\(13) & (!\micro|Dir\(15) & !\micro|Dir\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Dir\(13),
	datab => \micro|Dir\(15),
	datac => \micro|Dir\(14),
	combout => \ram|sram|ram_block|auto_generated|rden_decode|w_anode537w[3]~0_combout\);

-- Location: LCCOMB_X12_Y22_N24
\micro|Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector69~0_combout\ = (\micro|Equal29~0_combout\ & ((\micro|B\(0)))) # (!\micro|Equal29~0_combout\ & (\micro|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|A\(0),
	datac => \micro|B\(0),
	datad => \micro|Equal29~0_combout\,
	combout => \micro|Selector69~0_combout\);

-- Location: LCCOMB_X17_Y22_N12
\micro|WideOr29\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideOr29~combout\ = (\micro|WideNor0~4_combout\ & (\micro|WideNor0~8_combout\ & \micro|WideNor0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|WideNor0~4_combout\,
	datac => \micro|WideNor0~8_combout\,
	datad => \micro|WideNor0~7_combout\,
	combout => \micro|WideOr29~combout\);

-- Location: FF_X12_Y22_N25
\micro|Data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector69~0_combout\,
	ena => \micro|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Data_out\(0));

-- Location: LCCOMB_X23_Y22_N22
\micro|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal16~0_combout\ = (\micro|Equal15~1_combout\ & \micro|e_siguiente\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal15~1_combout\,
	datac => \micro|e_siguiente\(0),
	combout => \micro|Equal16~0_combout\);

-- Location: FF_X23_Y18_N31
\micro|XL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|B[0]~7_combout\,
	ena => \micro|Equal16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XL\(0));

-- Location: LCCOMB_X26_Y19_N6
\micro|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector15~0_combout\ = (\micro|WideNor0~4_combout\ & (\micro|XL\(0))) # (!\micro|WideNor0~4_combout\ & ((\micro|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|XL\(0),
	datac => \micro|WideNor0~4_combout\,
	datad => \micro|PC\(0),
	combout => \micro|Selector15~0_combout\);

-- Location: FF_X26_Y19_N7
\micro|Dir[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector15~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(0));

-- Location: LCCOMB_X26_Y17_N26
\ram|sram|ram_block|auto_generated|decode3|w_anode468w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|decode3|w_anode468w[3]~0_combout\ = (\micro|nRW~q\ & (!\micro|Dir\(15) & (\micro|Dir\(14) & \micro|Dir\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|nRW~q\,
	datab => \micro|Dir\(15),
	datac => \micro|Dir\(14),
	datad => \micro|Dir\(13),
	combout => \ram|sram|ram_block|auto_generated|decode3|w_anode468w[3]~0_combout\);

-- Location: LCCOMB_X26_Y17_N24
\ram|sram|ram_block|auto_generated|rden_decode|w_anode559w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|rden_decode|w_anode559w[3]~0_combout\ = (!\micro|Dir\(15) & (\micro|Dir\(14) & \micro|Dir\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Dir\(15),
	datac => \micro|Dir\(14),
	datad => \micro|Dir\(13),
	combout => \ram|sram|ram_block|auto_generated|rden_decode|w_anode559w[3]~0_combout\);

-- Location: LCCOMB_X14_Y22_N8
\micro|B[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[1]~feeder_combout\ = \micro|B[1]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[1]~6_combout\,
	combout => \micro|B[1]~feeder_combout\);

-- Location: LCCOMB_X15_Y22_N4
\micro|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add4~0_combout\ = (\micro|A\(0) & (\micro|B\(0) $ (VCC))) # (!\micro|A\(0) & (\micro|B\(0) & VCC))
-- \micro|Add4~1\ = CARRY((\micro|A\(0) & \micro|B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|A\(0),
	datab => \micro|B\(0),
	datad => VCC,
	combout => \micro|Add4~0_combout\,
	cout => \micro|Add4~1\);

-- Location: LCCOMB_X15_Y22_N6
\micro|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add4~2_combout\ = (\micro|B\(1) & ((\micro|A\(1) & (\micro|Add4~1\ & VCC)) # (!\micro|A\(1) & (!\micro|Add4~1\)))) # (!\micro|B\(1) & ((\micro|A\(1) & (!\micro|Add4~1\)) # (!\micro|A\(1) & ((\micro|Add4~1\) # (GND)))))
-- \micro|Add4~3\ = CARRY((\micro|B\(1) & (!\micro|A\(1) & !\micro|Add4~1\)) # (!\micro|B\(1) & ((!\micro|Add4~1\) # (!\micro|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B\(1),
	datab => \micro|A\(1),
	datad => VCC,
	cin => \micro|Add4~1\,
	combout => \micro|Add4~2_combout\,
	cout => \micro|Add4~3\);

-- Location: LCCOMB_X14_Y22_N28
\micro|Equal23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal23~2_combout\ = (\micro|e_siguiente\(1) & (!\micro|e_siguiente\(0) & \micro|Equal21~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(1),
	datab => \micro|e_siguiente\(0),
	datad => \micro|Equal21~2_combout\,
	combout => \micro|Equal23~2_combout\);

-- Location: LCCOMB_X14_Y22_N24
\micro|A[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|A[1]~6_combout\ = (\micro|Equal23~2_combout\ & (\micro|Add4~2_combout\)) # (!\micro|Equal23~2_combout\ & ((\micro|B[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add4~2_combout\,
	datab => \micro|Equal23~2_combout\,
	datad => \micro|B[1]~6_combout\,
	combout => \micro|A[1]~6_combout\);

-- Location: LCCOMB_X15_Y22_N24
\micro|Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector67~0_combout\ = (\micro|Equal29~0_combout\ & (\micro|B\(2))) # (!\micro|Equal29~0_combout\ & ((\micro|A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|B\(2),
	datac => \micro|Equal29~0_combout\,
	datad => \micro|A\(2),
	combout => \micro|Selector67~0_combout\);

-- Location: FF_X15_Y22_N25
\micro|Data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector67~0_combout\,
	ena => \micro|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Data_out\(2));

-- Location: FF_X25_Y18_N11
\micro|XL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|B[2]~5_combout\,
	ena => \micro|Equal16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XL\(2));

-- Location: LCCOMB_X26_Y19_N18
\micro|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector13~0_combout\ = (\micro|WideNor0~4_combout\ & ((\micro|XL\(2)))) # (!\micro|WideNor0~4_combout\ & (!\micro|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|PC\(2),
	datac => \micro|XL\(2),
	datad => \micro|WideNor0~4_combout\,
	combout => \micro|Selector13~0_combout\);

-- Location: FF_X26_Y19_N19
\micro|Dir[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector13~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(2));

-- Location: LCCOMB_X26_Y17_N30
\ram|sram|ram_block|auto_generated|decode3|w_anode508w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|decode3|w_anode508w[3]~0_combout\ = (\micro|nRW~q\ & (\micro|Dir\(15) & (\micro|Dir\(14) & \micro|Dir\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|nRW~q\,
	datab => \micro|Dir\(15),
	datac => \micro|Dir\(14),
	datad => \micro|Dir\(13),
	combout => \ram|sram|ram_block|auto_generated|decode3|w_anode508w[3]~0_combout\);

-- Location: LCCOMB_X32_Y18_N30
\ram|sram|ram_block|auto_generated|rden_decode|w_anode603w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|rden_decode|w_anode603w[3]~0_combout\ = (\micro|Dir\(13) & (\micro|Dir\(14) & \micro|Dir\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Dir\(13),
	datac => \micro|Dir\(14),
	datad => \micro|Dir\(15),
	combout => \ram|sram|ram_block|auto_generated|rden_decode|w_anode603w[3]~0_combout\);

-- Location: LCCOMB_X14_Y22_N4
\micro|B[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[3]~feeder_combout\ = \micro|B[3]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[3]~4_combout\,
	combout => \micro|B[3]~feeder_combout\);

-- Location: LCCOMB_X14_Y22_N26
\micro|B[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[4]~feeder_combout\ = \micro|B[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[4]~3_combout\,
	combout => \micro|B[4]~feeder_combout\);

-- Location: LCCOMB_X15_Y22_N8
\micro|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add4~4_combout\ = ((\micro|A\(2) $ (\micro|B\(2) $ (!\micro|Add4~3\)))) # (GND)
-- \micro|Add4~5\ = CARRY((\micro|A\(2) & ((\micro|B\(2)) # (!\micro|Add4~3\))) # (!\micro|A\(2) & (\micro|B\(2) & !\micro|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|A\(2),
	datab => \micro|B\(2),
	datad => VCC,
	cin => \micro|Add4~3\,
	combout => \micro|Add4~4_combout\,
	cout => \micro|Add4~5\);

-- Location: LCCOMB_X15_Y22_N10
\micro|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add4~6_combout\ = (\micro|A\(3) & ((\micro|B\(3) & (\micro|Add4~5\ & VCC)) # (!\micro|B\(3) & (!\micro|Add4~5\)))) # (!\micro|A\(3) & ((\micro|B\(3) & (!\micro|Add4~5\)) # (!\micro|B\(3) & ((\micro|Add4~5\) # (GND)))))
-- \micro|Add4~7\ = CARRY((\micro|A\(3) & (!\micro|B\(3) & !\micro|Add4~5\)) # (!\micro|A\(3) & ((!\micro|Add4~5\) # (!\micro|B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|A\(3),
	datab => \micro|B\(3),
	datad => VCC,
	cin => \micro|Add4~5\,
	combout => \micro|Add4~6_combout\,
	cout => \micro|Add4~7\);

-- Location: LCCOMB_X15_Y22_N12
\micro|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add4~8_combout\ = ((\micro|B\(4) $ (\micro|A\(4) $ (!\micro|Add4~7\)))) # (GND)
-- \micro|Add4~9\ = CARRY((\micro|B\(4) & ((\micro|A\(4)) # (!\micro|Add4~7\))) # (!\micro|B\(4) & (\micro|A\(4) & !\micro|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B\(4),
	datab => \micro|A\(4),
	datad => VCC,
	cin => \micro|Add4~7\,
	combout => \micro|Add4~8_combout\,
	cout => \micro|Add4~9\);

-- Location: LCCOMB_X15_Y22_N14
\micro|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add4~10_combout\ = (\micro|B\(5) & ((\micro|A\(5) & (\micro|Add4~9\ & VCC)) # (!\micro|A\(5) & (!\micro|Add4~9\)))) # (!\micro|B\(5) & ((\micro|A\(5) & (!\micro|Add4~9\)) # (!\micro|A\(5) & ((\micro|Add4~9\) # (GND)))))
-- \micro|Add4~11\ = CARRY((\micro|B\(5) & (!\micro|A\(5) & !\micro|Add4~9\)) # (!\micro|B\(5) & ((!\micro|Add4~9\) # (!\micro|A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B\(5),
	datab => \micro|A\(5),
	datad => VCC,
	cin => \micro|Add4~9\,
	combout => \micro|Add4~10_combout\,
	cout => \micro|Add4~11\);

-- Location: LCCOMB_X17_Y22_N14
\micro|A[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|A[5]~2_combout\ = (\micro|Equal23~2_combout\ & ((\micro|Add4~10_combout\))) # (!\micro|Equal23~2_combout\ & (\micro|B[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal23~2_combout\,
	datab => \micro|B[5]~2_combout\,
	datad => \micro|Add4~10_combout\,
	combout => \micro|A[5]~2_combout\);

-- Location: LCCOMB_X14_Y22_N2
\micro|B[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[6]~feeder_combout\ = \micro|B[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[6]~1_combout\,
	combout => \micro|B[6]~feeder_combout\);

-- Location: LCCOMB_X15_Y22_N28
\micro|Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector62~0_combout\ = (\micro|Equal29~0_combout\ & ((\micro|B\(7)))) # (!\micro|Equal29~0_combout\ & (\micro|A\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|A\(7),
	datab => \micro|Equal29~0_combout\,
	datad => \micro|B\(7),
	combout => \micro|Selector62~0_combout\);

-- Location: FF_X15_Y22_N29
\micro|Data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector62~0_combout\,
	ena => \micro|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Data_out\(7));

-- Location: FF_X25_Y18_N5
\micro|XL[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|B[4]~3_combout\,
	ena => \micro|Equal16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XL\(4));

-- Location: LCCOMB_X26_Y19_N30
\micro|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector11~0_combout\ = (\micro|WideNor0~4_combout\ & ((\micro|XL\(4)))) # (!\micro|WideNor0~4_combout\ & (!\micro|PC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|WideNor0~4_combout\,
	datac => \micro|PC\(4),
	datad => \micro|XL\(4),
	combout => \micro|Selector11~0_combout\);

-- Location: FF_X26_Y19_N31
\micro|Dir[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector11~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(4));

-- Location: FF_X25_Y18_N7
\micro|XL[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|B[5]~2_combout\,
	ena => \micro|Equal16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XL\(5));

-- Location: LCCOMB_X26_Y19_N20
\micro|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector10~0_combout\ = (\micro|WideNor0~4_combout\ & (\micro|XL\(5))) # (!\micro|WideNor0~4_combout\ & ((\micro|PC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|XL\(5),
	datac => \micro|WideNor0~4_combout\,
	datad => \micro|PC\(5),
	combout => \micro|Selector10~0_combout\);

-- Location: FF_X26_Y19_N21
\micro|Dir[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector10~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(5));

-- Location: FF_X25_Y18_N9
\micro|XL[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|B[6]~1_combout\,
	ena => \micro|Equal16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XL\(6));

-- Location: LCCOMB_X26_Y19_N22
\micro|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector9~0_combout\ = (\micro|WideNor0~4_combout\ & (\micro|XL\(6))) # (!\micro|WideNor0~4_combout\ & ((\micro|PC\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|XL\(6),
	datac => \micro|WideNor0~4_combout\,
	datad => \micro|PC\(6),
	combout => \micro|Selector9~0_combout\);

-- Location: FF_X26_Y19_N23
\micro|Dir[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector9~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(6));

-- Location: FF_X32_Y18_N25
\micro|XL[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|B[7]~0_combout\,
	ena => \micro|Equal16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XL\(7));

-- Location: LCCOMB_X26_Y19_N0
\micro|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector8~0_combout\ = (\micro|WideNor0~4_combout\ & ((\micro|XL\(7)))) # (!\micro|WideNor0~4_combout\ & (\micro|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(7),
	datac => \micro|WideNor0~4_combout\,
	datad => \micro|XL\(7),
	combout => \micro|Selector8~0_combout\);

-- Location: FF_X26_Y19_N1
\micro|Dir[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector8~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(7));

-- Location: LCCOMB_X23_Y22_N14
\micro|XH[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|XH[0]~feeder_combout\ = \micro|B[0]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[0]~7_combout\,
	combout => \micro|XH[0]~feeder_combout\);

-- Location: FF_X23_Y22_N15
\micro|XH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|XH[0]~feeder_combout\,
	ena => \micro|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XH\(0));

-- Location: LCCOMB_X26_Y19_N2
\micro|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector7~0_combout\ = (\micro|WideNor0~4_combout\ & (\micro|XH\(0))) # (!\micro|WideNor0~4_combout\ & ((\micro|PC\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|XH\(0),
	datac => \micro|WideNor0~4_combout\,
	datad => \micro|PC\(8),
	combout => \micro|Selector7~0_combout\);

-- Location: FF_X26_Y19_N3
\micro|Dir[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector7~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(8));

-- Location: LCCOMB_X26_Y19_N4
\micro|XH[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|XH[1]~feeder_combout\ = \micro|B[1]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \micro|B[1]~6_combout\,
	combout => \micro|XH[1]~feeder_combout\);

-- Location: FF_X26_Y19_N5
\micro|XH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|XH[1]~feeder_combout\,
	ena => \micro|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XH\(1));

-- Location: LCCOMB_X26_Y19_N16
\micro|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector6~0_combout\ = (\micro|WideNor0~4_combout\ & (\micro|XH\(1))) # (!\micro|WideNor0~4_combout\ & ((\micro|PC\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|XH\(1),
	datac => \micro|WideNor0~4_combout\,
	datad => \micro|PC\(9),
	combout => \micro|Selector6~0_combout\);

-- Location: FF_X26_Y19_N17
\micro|Dir[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector6~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(9));

-- Location: LCCOMB_X26_Y19_N26
\micro|XH[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|XH[2]~feeder_combout\ = \micro|B[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[2]~5_combout\,
	combout => \micro|XH[2]~feeder_combout\);

-- Location: FF_X26_Y19_N27
\micro|XH[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|XH[2]~feeder_combout\,
	ena => \micro|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XH\(2));

-- Location: LCCOMB_X26_Y19_N10
\micro|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector5~0_combout\ = (\micro|WideNor0~4_combout\ & (\micro|XH\(2))) # (!\micro|WideNor0~4_combout\ & ((\micro|PC\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|XH\(2),
	datac => \micro|PC\(10),
	datad => \micro|WideNor0~4_combout\,
	combout => \micro|Selector5~0_combout\);

-- Location: FF_X26_Y19_N11
\micro|Dir[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector5~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(10));

-- Location: LCCOMB_X26_Y19_N28
\micro|XH[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|XH[3]~feeder_combout\ = \micro|B[3]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \micro|B[3]~4_combout\,
	combout => \micro|XH[3]~feeder_combout\);

-- Location: FF_X26_Y19_N29
\micro|XH[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|XH[3]~feeder_combout\,
	ena => \micro|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XH\(3));

-- Location: LCCOMB_X26_Y19_N12
\micro|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector4~0_combout\ = (\micro|WideNor0~4_combout\ & (\micro|XH\(3))) # (!\micro|WideNor0~4_combout\ & ((\micro|PC\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|XH\(3),
	datac => \micro|WideNor0~4_combout\,
	datad => \micro|PC\(11),
	combout => \micro|Selector4~0_combout\);

-- Location: FF_X26_Y19_N13
\micro|Dir[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector4~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(11));

-- Location: LCCOMB_X23_Y22_N28
\micro|XH[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|XH[4]~feeder_combout\ = \micro|B[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[4]~3_combout\,
	combout => \micro|XH[4]~feeder_combout\);

-- Location: FF_X23_Y22_N29
\micro|XH[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|XH[4]~feeder_combout\,
	ena => \micro|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XH\(4));

-- Location: LCCOMB_X26_Y19_N14
\micro|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector3~0_combout\ = (\micro|WideNor0~4_combout\ & ((\micro|XH\(4)))) # (!\micro|WideNor0~4_combout\ & (\micro|PC\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|WideNor0~4_combout\,
	datac => \micro|PC\(12),
	datad => \micro|XH\(4),
	combout => \micro|Selector3~0_combout\);

-- Location: FF_X26_Y19_N15
\micro|Dir[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector3~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(12));

-- Location: M9K_X33_Y6_N0
\ram|sram|ram_block|auto_generated|ram_block1a55\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode592w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a55_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a55_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a55_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y25_N0
\ram|sram|ram_block|auto_generated|ram_block1a63\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a63_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a63_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a63_PORTADATAOUT_bus\);

-- Location: FF_X32_Y18_N1
\ram|sram|ram_block|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \micro|Dir\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|sram|ram_block|auto_generated|address_reg_a\(0));

-- Location: LCCOMB_X26_Y17_N8
\ram|sram|ram_block|auto_generated|decode3|w_anode488w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|decode3|w_anode488w[3]~0_combout\ = (\micro|nRW~q\ & (\micro|Dir\(15) & (!\micro|Dir\(14) & \micro|Dir\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|nRW~q\,
	datab => \micro|Dir\(15),
	datac => \micro|Dir\(14),
	datad => \micro|Dir\(13),
	combout => \ram|sram|ram_block|auto_generated|decode3|w_anode488w[3]~0_combout\);

-- Location: LCCOMB_X26_Y17_N14
\ram|sram|ram_block|auto_generated|rden_decode|w_anode581w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|rden_decode|w_anode581w[3]~0_combout\ = (\micro|Dir\(15) & (!\micro|Dir\(14) & \micro|Dir\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Dir\(15),
	datac => \micro|Dir\(14),
	datad => \micro|Dir\(13),
	combout => \ram|sram|ram_block|auto_generated|rden_decode|w_anode581w[3]~0_combout\);

-- Location: M9K_X33_Y8_N0
\ram|sram|ram_block|auto_generated|ram_block1a47\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a47_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a47_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a47_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y17_N12
\ram|sram|ram_block|auto_generated|decode3|w_anode478w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|decode3|w_anode478w[3]~0_combout\ = (\micro|nRW~q\ & (\micro|Dir\(15) & (!\micro|Dir\(14) & !\micro|Dir\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|nRW~q\,
	datab => \micro|Dir\(15),
	datac => \micro|Dir\(14),
	datad => \micro|Dir\(13),
	combout => \ram|sram|ram_block|auto_generated|decode3|w_anode478w[3]~0_combout\);

-- Location: LCCOMB_X26_Y20_N14
\ram|sram|ram_block|auto_generated|rden_decode|w_anode570w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|rden_decode|w_anode570w[3]~0_combout\ = (!\micro|Dir\(13) & (\micro|Dir\(15) & !\micro|Dir\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Dir\(13),
	datab => \micro|Dir\(15),
	datac => \micro|Dir\(14),
	combout => \ram|sram|ram_block|auto_generated|rden_decode|w_anode570w[3]~0_combout\);

-- Location: M9K_X33_Y23_N0
\ram|sram|ram_block|auto_generated|ram_block1a39\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a39_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a39_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y18_N28
\ram|sram|ram_block|auto_generated|mux2|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~2_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (\ram|sram|ram_block|auto_generated|address_reg_a\(0))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & 
-- ((\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (\ram|sram|ram_block|auto_generated|ram_block1a47~portadataout\)) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|ram_block1a39~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a47~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a39~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~2_combout\);

-- Location: LCCOMB_X32_Y18_N22
\ram|sram|ram_block|auto_generated|mux2|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~3_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|mux2|_~2_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a63~portadataout\))) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~2_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a55~portadataout\)))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (((\ram|sram|ram_block|auto_generated|mux2|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|ram_block1a55~portadataout\,
	datac => \ram|sram|ram_block|auto_generated|ram_block1a63~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~2_combout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~3_combout\);

-- Location: M9K_X33_Y3_N0
\ram|sram|ram_block|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y33_N0
\ram|sram|ram_block|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y17_N16
\ram|sram|ram_block|auto_generated|decode3|w_anode431w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|decode3|w_anode431w\(3) = (\micro|nRW~q\ & (!\micro|Dir\(15) & (!\micro|Dir\(14) & !\micro|Dir\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|nRW~q\,
	datab => \micro|Dir\(15),
	datac => \micro|Dir\(14),
	datad => \micro|Dir\(13),
	combout => \ram|sram|ram_block|auto_generated|decode3|w_anode431w\(3));

-- Location: LCCOMB_X32_Y18_N14
\ram|sram|ram_block|auto_generated|rden_decode|w_anode519w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|rden_decode|w_anode519w\(3) = (!\micro|Dir\(13) & (!\micro|Dir\(14) & !\micro|Dir\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Dir\(13),
	datac => \micro|Dir\(14),
	datad => \micro|Dir\(15),
	combout => \ram|sram|ram_block|auto_generated|rden_decode|w_anode519w\(3));

-- Location: M9K_X33_Y11_N0
\ram|sram|ram_block|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A544170000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode431w\(3),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y17_N4
\ram|sram|ram_block|auto_generated|decode3|w_anode458w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|decode3|w_anode458w[3]~0_combout\ = (\micro|nRW~q\ & (!\micro|Dir\(15) & (\micro|Dir\(14) & !\micro|Dir\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|nRW~q\,
	datab => \micro|Dir\(15),
	datac => \micro|Dir\(14),
	datad => \micro|Dir\(13),
	combout => \ram|sram|ram_block|auto_generated|decode3|w_anode458w[3]~0_combout\);

-- Location: LCCOMB_X26_Y17_N10
\ram|sram|ram_block|auto_generated|rden_decode|w_anode548w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|rden_decode|w_anode548w[3]~0_combout\ = (!\micro|Dir\(15) & (\micro|Dir\(14) & !\micro|Dir\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Dir\(15),
	datac => \micro|Dir\(14),
	datad => \micro|Dir\(13),
	combout => \ram|sram|ram_block|auto_generated|rden_decode|w_anode548w[3]~0_combout\);

-- Location: M9K_X33_Y28_N0
\ram|sram|ram_block|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode548w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y18_N12
\ram|sram|ram_block|auto_generated|mux2|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~0_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|address_reg_a\(0)) # ((\ram|sram|ram_block|auto_generated|ram_block1a23~portadataout\)))) # 
-- (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (\ram|sram|ram_block|auto_generated|ram_block1a7~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a7~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a23~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~0_combout\);

-- Location: LCCOMB_X32_Y18_N6
\ram|sram|ram_block|auto_generated|mux2|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~1_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|mux2|_~0_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a31~portadataout\)) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~0_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a15~portadataout\))))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (((\ram|sram|ram_block|auto_generated|mux2|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|ram_block1a31~portadataout\,
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a15~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~0_combout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~1_combout\);

-- Location: LCCOMB_X32_Y18_N24
\micro|B[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[7]~0_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(2) & (\ram|sram|ram_block|auto_generated|mux2|_~3_combout\)) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(2) & ((\ram|sram|ram_block|auto_generated|mux2|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(2),
	datac => \ram|sram|ram_block|auto_generated|mux2|_~3_combout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~1_combout\,
	combout => \micro|B[7]~0_combout\);

-- Location: LCCOMB_X14_Y22_N12
\micro|B[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[7]~feeder_combout\ = \micro|B[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[7]~0_combout\,
	combout => \micro|B[7]~feeder_combout\);

-- Location: DSPMULT_X13_Y22_N0
\micro|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \micro|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \micro|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \micro|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X13_Y22_N2
\micro|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => \micro|Equal36~2_combout\,
	dataa => \micro|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \micro|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X18_Y22_N26
\micro|Equal37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal37~2_combout\ = (!\micro|e_siguiente\(0) & (\micro|e_siguiente\(1) & \micro|Equal35~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|e_siguiente\(0),
	datac => \micro|e_siguiente\(1),
	datad => \micro|Equal35~1_combout\,
	combout => \micro|Equal37~2_combout\);

-- Location: LCCOMB_X18_Y22_N16
\micro|WideOr25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideOr25~9_combout\ = (\micro|e_siguiente\(0) & (!\micro|Equal15~1_combout\)) # (!\micro|e_siguiente\(0) & (((!\micro|Equal25~1_combout\) # (!\micro|e_siguiente\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal15~1_combout\,
	datab => \micro|e_siguiente\(0),
	datac => \micro|e_siguiente\(1),
	datad => \micro|Equal25~1_combout\,
	combout => \micro|WideOr25~9_combout\);

-- Location: LCCOMB_X17_Y22_N22
\micro|WideOr25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideOr25~8_combout\ = (!\micro|WideNor0~4_combout\ & (\micro|WideOr25~9_combout\ & (!\micro|WideNor0~8_combout\ & \micro|WideNor0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|WideNor0~4_combout\,
	datab => \micro|WideOr25~9_combout\,
	datac => \micro|WideNor0~8_combout\,
	datad => \micro|WideNor0~7_combout\,
	combout => \micro|WideOr25~8_combout\);

-- Location: LCCOMB_X18_Y22_N28
\micro|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal7~0_combout\ = (\micro|e_siguiente\(1) & !\micro|e_siguiente\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \micro|e_siguiente\(1),
	datad => \micro|e_siguiente\(0),
	combout => \micro|Equal7~0_combout\);

-- Location: LCCOMB_X17_Y22_N30
\micro|WideOr28\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideOr28~combout\ = (!\micro|Equal23~2_combout\ & (\micro|WideOr25~8_combout\ & ((!\micro|Equal7~0_combout\) # (!\micro|Equal5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal23~2_combout\,
	datab => \micro|Equal5~3_combout\,
	datac => \micro|WideOr25~8_combout\,
	datad => \micro|Equal7~0_combout\,
	combout => \micro|WideOr28~combout\);

-- Location: FF_X14_Y22_N13
\micro|B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|B[7]~feeder_combout\,
	asdata => \micro|D\(7),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|B\(7));

-- Location: LCCOMB_X15_Y22_N16
\micro|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add4~12_combout\ = ((\micro|B\(6) $ (\micro|A\(6) $ (!\micro|Add4~11\)))) # (GND)
-- \micro|Add4~13\ = CARRY((\micro|B\(6) & ((\micro|A\(6)) # (!\micro|Add4~11\))) # (!\micro|B\(6) & (\micro|A\(6) & !\micro|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B\(6),
	datab => \micro|A\(6),
	datad => VCC,
	cin => \micro|Add4~11\,
	combout => \micro|Add4~12_combout\,
	cout => \micro|Add4~13\);

-- Location: LCCOMB_X15_Y22_N18
\micro|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add4~14_combout\ = (\micro|A\(7) & ((\micro|B\(7) & (\micro|Add4~13\ & VCC)) # (!\micro|B\(7) & (!\micro|Add4~13\)))) # (!\micro|A\(7) & ((\micro|B\(7) & (!\micro|Add4~13\)) # (!\micro|B\(7) & ((\micro|Add4~13\) # (GND)))))
-- \micro|Add4~15\ = CARRY((\micro|A\(7) & (!\micro|B\(7) & !\micro|Add4~13\)) # (!\micro|A\(7) & ((!\micro|Add4~13\) # (!\micro|B\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|A\(7),
	datab => \micro|B\(7),
	datad => VCC,
	cin => \micro|Add4~13\,
	combout => \micro|Add4~14_combout\,
	cout => \micro|Add4~15\);

-- Location: LCCOMB_X14_Y22_N16
\micro|A[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|A[7]~0_combout\ = (\micro|Equal23~2_combout\ & (\micro|Add4~14_combout\)) # (!\micro|Equal23~2_combout\ & ((\micro|B[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add4~14_combout\,
	datab => \micro|Equal23~2_combout\,
	datad => \micro|B[7]~0_combout\,
	combout => \micro|A[7]~0_combout\);

-- Location: LCCOMB_X21_Y22_N14
\micro|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal10~2_combout\ = (\micro|e_siguiente\(1) & (!\micro|e_siguiente\(0) & (\micro|Equal8~0_combout\ & !\micro|e_siguiente\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(1),
	datab => \micro|e_siguiente\(0),
	datac => \micro|Equal8~0_combout\,
	datad => \micro|e_siguiente\(7),
	combout => \micro|Equal10~2_combout\);

-- Location: LCCOMB_X17_Y22_N16
\micro|WideOr25\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideOr25~combout\ = (!\micro|Equal10~2_combout\ & \micro|WideOr25~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Equal10~2_combout\,
	datac => \micro|WideOr25~8_combout\,
	combout => \micro|WideOr25~combout\);

-- Location: FF_X14_Y22_N17
\micro|A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|A[7]~0_combout\,
	asdata => \micro|D\(15),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|A\(7));

-- Location: FF_X14_Y22_N3
\micro|B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|B[6]~feeder_combout\,
	asdata => \micro|D\(6),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|B\(6));

-- Location: LCCOMB_X17_Y22_N28
\micro|A[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|A[6]~1_combout\ = (\micro|Equal23~2_combout\ & (\micro|Add4~12_combout\)) # (!\micro|Equal23~2_combout\ & ((\micro|B[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal23~2_combout\,
	datab => \micro|Add4~12_combout\,
	datad => \micro|B[6]~1_combout\,
	combout => \micro|A[6]~1_combout\);

-- Location: FF_X17_Y22_N29
\micro|A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|A[6]~1_combout\,
	asdata => \micro|D\(14),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|A\(6));

-- Location: FF_X17_Y22_N15
\micro|A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|A[5]~2_combout\,
	asdata => \micro|D\(13),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|A\(5));

-- Location: FF_X14_Y22_N27
\micro|B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|B[4]~feeder_combout\,
	asdata => \micro|D\(4),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|B\(4));

-- Location: LCCOMB_X14_Y22_N14
\micro|A[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|A[4]~3_combout\ = (\micro|Equal23~2_combout\ & (\micro|Add4~8_combout\)) # (!\micro|Equal23~2_combout\ & ((\micro|B[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add4~8_combout\,
	datab => \micro|Equal23~2_combout\,
	datad => \micro|B[4]~3_combout\,
	combout => \micro|A[4]~3_combout\);

-- Location: FF_X14_Y22_N15
\micro|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|A[4]~3_combout\,
	asdata => \micro|D\(12),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|A\(4));

-- Location: FF_X14_Y22_N5
\micro|B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|B[3]~feeder_combout\,
	asdata => \micro|D\(3),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|B\(3));

-- Location: LCCOMB_X14_Y22_N20
\micro|A[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|A[3]~4_combout\ = (\micro|Equal23~2_combout\ & (\micro|Add4~6_combout\)) # (!\micro|Equal23~2_combout\ & ((\micro|B[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add4~6_combout\,
	datab => \micro|Equal23~2_combout\,
	datad => \micro|B[3]~4_combout\,
	combout => \micro|A[3]~4_combout\);

-- Location: FF_X14_Y22_N21
\micro|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|A[3]~4_combout\,
	asdata => \micro|D\(11),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|A\(3));

-- Location: LCCOMB_X12_Y22_N2
\micro|Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector66~0_combout\ = (\micro|Equal29~0_combout\ & ((\micro|B\(3)))) # (!\micro|Equal29~0_combout\ & (\micro|A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|A\(3),
	datac => \micro|B\(3),
	datad => \micro|Equal29~0_combout\,
	combout => \micro|Selector66~0_combout\);

-- Location: FF_X12_Y22_N3
\micro|Data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector66~0_combout\,
	ena => \micro|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Data_out\(3));

-- Location: M9K_X22_Y25_N0
\ram|sram|ram_block|auto_generated|ram_block1a59\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a59_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a59_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a59_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y12_N0
\ram|sram|ram_block|auto_generated|ram_block1a51\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode592w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a51_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a51_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a51_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y15_N0
\ram|sram|ram_block|auto_generated|ram_block1a43\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a43_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a43_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a43_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y22_N0
\ram|sram|ram_block|auto_generated|ram_block1a35\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a35_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a35_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y18_N10
\ram|sram|ram_block|auto_generated|mux2|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~18_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (\ram|sram|ram_block|auto_generated|address_reg_a\(0))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & 
-- ((\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (\ram|sram|ram_block|auto_generated|ram_block1a43~portadataout\)) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|ram_block1a35~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a43~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a35~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~18_combout\);

-- Location: LCCOMB_X23_Y18_N8
\ram|sram|ram_block|auto_generated|mux2|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~19_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|mux2|_~18_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a59~portadataout\)) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~18_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a51~portadataout\))))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (((\ram|sram|ram_block|auto_generated|mux2|_~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|ram_block1a59~portadataout\,
	datac => \ram|sram|ram_block|auto_generated|ram_block1a51~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~18_combout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~19_combout\);

-- Location: M9K_X22_Y13_N0
\ram|sram|ram_block|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y24_N0
\ram|sram|ram_block|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y21_N0
\ram|sram|ram_block|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode548w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y16_N0
\ram|sram|ram_block|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000920000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode431w\(3),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y18_N2
\ram|sram|ram_block|auto_generated|mux2|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~16_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|address_reg_a\(0)) # ((\ram|sram|ram_block|auto_generated|ram_block1a19~portadataout\)))) # 
-- (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|ram_block1a3~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a19~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a3~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~16_combout\);

-- Location: LCCOMB_X23_Y18_N20
\ram|sram|ram_block|auto_generated|mux2|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~17_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|mux2|_~16_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a27~portadataout\)) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~16_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a11~portadataout\))))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (((\ram|sram|ram_block|auto_generated|mux2|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|ram_block1a27~portadataout\,
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a11~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~16_combout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~17_combout\);

-- Location: LCCOMB_X23_Y18_N24
\micro|B[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[3]~4_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(2) & (\ram|sram|ram_block|auto_generated|mux2|_~19_combout\)) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(2) & ((\ram|sram|ram_block|auto_generated|mux2|_~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(2),
	datac => \ram|sram|ram_block|auto_generated|mux2|_~19_combout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~17_combout\,
	combout => \micro|B[3]~4_combout\);

-- Location: LCCOMB_X23_Y18_N6
\micro|XL[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|XL[3]~feeder_combout\ = \micro|B[3]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[3]~4_combout\,
	combout => \micro|XL[3]~feeder_combout\);

-- Location: FF_X23_Y18_N7
\micro|XL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|XL[3]~feeder_combout\,
	ena => \micro|Equal16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XL\(3));

-- Location: LCCOMB_X26_Y19_N24
\micro|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector12~0_combout\ = (\micro|WideNor0~4_combout\ & (\micro|XL\(3))) # (!\micro|WideNor0~4_combout\ & ((\micro|PC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|XL\(3),
	datab => \micro|PC\(3),
	datad => \micro|WideNor0~4_combout\,
	combout => \micro|Selector12~0_combout\);

-- Location: FF_X26_Y19_N25
\micro|Dir[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector12~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(3));

-- Location: M9K_X22_Y6_N0
\ram|sram|ram_block|auto_generated|ram_block1a50\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode592w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a50_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a50_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a50_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y7_N0
\ram|sram|ram_block|auto_generated|ram_block1a58\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a58_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a58_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a58_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y29_N0
\ram|sram|ram_block|auto_generated|ram_block1a34\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a34_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a34_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y5_N0
\ram|sram|ram_block|auto_generated|ram_block1a42\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a42_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a42_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y18_N18
\ram|sram|ram_block|auto_generated|mux2|_~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~22_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (((\ram|sram|ram_block|auto_generated|address_reg_a\(0))))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & 
-- ((\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|ram_block1a42~portadataout\))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (\ram|sram|ram_block|auto_generated|ram_block1a34~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|ram_block1a34~portadataout\,
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a42~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	combout => \ram|sram|ram_block|auto_generated|mux2|_~22_combout\);

-- Location: LCCOMB_X24_Y18_N16
\ram|sram|ram_block|auto_generated|mux2|_~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~23_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|mux2|_~22_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a58~portadataout\))) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~22_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a50~portadataout\)))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (((\ram|sram|ram_block|auto_generated|mux2|_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|ram_block1a50~portadataout\,
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a58~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~22_combout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~23_combout\);

-- Location: M9K_X22_Y33_N0
\ram|sram|ram_block|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y7_N0
\ram|sram|ram_block|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y24_N0
\ram|sram|ram_block|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode548w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y13_N0
\ram|sram|ram_block|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B744170000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode431w\(3),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y18_N10
\ram|sram|ram_block|auto_generated|mux2|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~20_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (\ram|sram|ram_block|auto_generated|address_reg_a\(1))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & 
-- ((\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (\ram|sram|ram_block|auto_generated|ram_block1a18~portadataout\)) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|ram_block1a2~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a18~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a2~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~20_combout\);

-- Location: LCCOMB_X24_Y18_N24
\ram|sram|ram_block|auto_generated|mux2|_~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~21_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|mux2|_~20_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a26~portadataout\))) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~20_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a10~portadataout\)))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (((\ram|sram|ram_block|auto_generated|mux2|_~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|ram_block1a10~portadataout\,
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a26~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~20_combout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~21_combout\);

-- Location: LCCOMB_X25_Y18_N10
\micro|B[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[2]~5_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(2) & (\ram|sram|ram_block|auto_generated|mux2|_~23_combout\)) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(2) & ((\ram|sram|ram_block|auto_generated|mux2|_~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(2),
	datac => \ram|sram|ram_block|auto_generated|mux2|_~23_combout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~21_combout\,
	combout => \micro|B[2]~5_combout\);

-- Location: LCCOMB_X14_Y22_N18
\micro|B[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[2]~feeder_combout\ = \micro|B[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[2]~5_combout\,
	combout => \micro|B[2]~feeder_combout\);

-- Location: FF_X14_Y22_N19
\micro|B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|B[2]~feeder_combout\,
	asdata => \micro|D\(2),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|B\(2));

-- Location: LCCOMB_X14_Y22_N6
\micro|A[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|A[2]~5_combout\ = (\micro|Equal23~2_combout\ & (\micro|Add4~4_combout\)) # (!\micro|Equal23~2_combout\ & ((\micro|B[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add4~4_combout\,
	datab => \micro|Equal23~2_combout\,
	datad => \micro|B[2]~5_combout\,
	combout => \micro|A[2]~5_combout\);

-- Location: FF_X14_Y22_N7
\micro|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|A[2]~5_combout\,
	asdata => \micro|D\(10),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|A\(2));

-- Location: FF_X14_Y22_N25
\micro|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|A[1]~6_combout\,
	asdata => \micro|D\(9),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|A\(1));

-- Location: FF_X14_Y22_N9
\micro|B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|B[1]~feeder_combout\,
	asdata => \micro|D\(1),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|B\(1));

-- Location: LCCOMB_X15_Y22_N22
\micro|Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector68~0_combout\ = (\micro|Equal29~0_combout\ & (\micro|B\(1))) # (!\micro|Equal29~0_combout\ & ((\micro|A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B\(1),
	datac => \micro|Equal29~0_combout\,
	datad => \micro|A\(1),
	combout => \micro|Selector68~0_combout\);

-- Location: FF_X15_Y22_N23
\micro|Data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector68~0_combout\,
	ena => \micro|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Data_out\(1));

-- Location: M9K_X33_Y15_N0
\ram|sram|ram_block|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y20_N0
\ram|sram|ram_block|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y18_N0
\ram|sram|ram_block|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001AF64950000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode431w\(3),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y17_N0
\ram|sram|ram_block|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode548w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y18_N18
\ram|sram|ram_block|auto_generated|mux2|_~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~24_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|address_reg_a\(0)) # ((\ram|sram|ram_block|auto_generated|ram_block1a17~portadataout\)))) # 
-- (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (\ram|sram|ram_block|auto_generated|ram_block1a1~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a1~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a17~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~24_combout\);

-- Location: LCCOMB_X32_Y18_N4
\ram|sram|ram_block|auto_generated|mux2|_~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~25_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|mux2|_~24_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a25~portadataout\)) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~24_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a9~portadataout\))))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (((\ram|sram|ram_block|auto_generated|mux2|_~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|ram_block1a25~portadataout\,
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a9~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~24_combout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~25_combout\);

-- Location: M9K_X33_Y14_N0
\ram|sram|ram_block|auto_generated|ram_block1a57\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a57_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a57_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a57_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y21_N0
\ram|sram|ram_block|auto_generated|ram_block1a49\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode592w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a49_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a49_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a49_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y16_N0
\ram|sram|ram_block|auto_generated|ram_block1a41\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a41_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a41_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y19_N0
\ram|sram|ram_block|auto_generated|ram_block1a33\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a33_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a33_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y18_N10
\ram|sram|ram_block|auto_generated|mux2|_~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~26_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (\ram|sram|ram_block|auto_generated|address_reg_a\(0))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & 
-- ((\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (\ram|sram|ram_block|auto_generated|ram_block1a41~portadataout\)) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|ram_block1a33~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a41~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a33~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~26_combout\);

-- Location: LCCOMB_X32_Y18_N16
\ram|sram|ram_block|auto_generated|mux2|_~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~27_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|mux2|_~26_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a57~portadataout\)) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~26_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a49~portadataout\))))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (((\ram|sram|ram_block|auto_generated|mux2|_~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|ram_block1a57~portadataout\,
	datac => \ram|sram|ram_block|auto_generated|ram_block1a49~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~26_combout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~27_combout\);

-- Location: LCCOMB_X32_Y18_N26
\micro|B[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[1]~6_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(2) & ((\ram|sram|ram_block|auto_generated|mux2|_~27_combout\))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(2) & (\ram|sram|ram_block|auto_generated|mux2|_~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(2),
	datac => \ram|sram|ram_block|auto_generated|mux2|_~25_combout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~27_combout\,
	combout => \micro|B[1]~6_combout\);

-- Location: FF_X32_Y18_N27
\micro|XL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|B[1]~6_combout\,
	ena => \micro|Equal16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XL\(1));

-- Location: LCCOMB_X26_Y19_N8
\micro|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector14~0_combout\ = (\micro|WideNor0~4_combout\ & ((\micro|XL\(1)))) # (!\micro|WideNor0~4_combout\ & (\micro|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(1),
	datac => \micro|WideNor0~4_combout\,
	datad => \micro|XL\(1),
	combout => \micro|Selector14~0_combout\);

-- Location: FF_X26_Y19_N9
\micro|Dir[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector14~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(1));

-- Location: M9K_X22_Y23_N0
\ram|sram|ram_block|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y11_N0
\ram|sram|ram_block|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y18_N0
\ram|sram|ram_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F2448A0000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode431w\(3),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y17_N0
\ram|sram|ram_block|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode548w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y18_N18
\ram|sram|ram_block|auto_generated|mux2|_~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~28_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|address_reg_a\(0)) # ((\ram|sram|ram_block|auto_generated|ram_block1a16~portadataout\)))) # 
-- (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (\ram|sram|ram_block|auto_generated|ram_block1a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a0~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a16~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~28_combout\);

-- Location: LCCOMB_X23_Y18_N4
\ram|sram|ram_block|auto_generated|mux2|_~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~29_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|mux2|_~28_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a24~portadataout\))) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~28_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a8~portadataout\)))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (((\ram|sram|ram_block|auto_generated|mux2|_~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|ram_block1a8~portadataout\,
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a24~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~28_combout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~29_combout\);

-- Location: M9K_X22_Y10_N0
\ram|sram|ram_block|auto_generated|ram_block1a40\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a40_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a40_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y19_N0
\ram|sram|ram_block|auto_generated|ram_block1a32\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y20_N0
\ram|sram|ram_block|auto_generated|ram_block1a48\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode592w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a48_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a48_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a48_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y18_N22
\ram|sram|ram_block|auto_generated|mux2|_~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~30_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|address_reg_a\(0)) # ((\ram|sram|ram_block|auto_generated|ram_block1a48~portadataout\)))) # 
-- (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (\ram|sram|ram_block|auto_generated|ram_block1a32~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a32~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a48~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~30_combout\);

-- Location: M9K_X22_Y9_N0
\ram|sram|ram_block|auto_generated|ram_block1a56\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a56_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a56_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a56_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y18_N28
\ram|sram|ram_block|auto_generated|mux2|_~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~31_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|mux2|_~30_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a56~portadataout\))) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~30_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a40~portadataout\)))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (((\ram|sram|ram_block|auto_generated|mux2|_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|ram_block1a40~portadataout\,
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|mux2|_~30_combout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a56~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~31_combout\);

-- Location: LCCOMB_X23_Y18_N30
\micro|B[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[0]~7_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(2) & ((\ram|sram|ram_block|auto_generated|mux2|_~31_combout\))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(2) & (\ram|sram|ram_block|auto_generated|mux2|_~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(2),
	datac => \ram|sram|ram_block|auto_generated|mux2|_~29_combout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~31_combout\,
	combout => \micro|B[0]~7_combout\);

-- Location: LCCOMB_X14_Y22_N30
\micro|B[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[0]~feeder_combout\ = \micro|B[0]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[0]~7_combout\,
	combout => \micro|B[0]~feeder_combout\);

-- Location: FF_X14_Y22_N31
\micro|B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|B[0]~feeder_combout\,
	asdata => \micro|D\(0),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|B\(0));

-- Location: LCCOMB_X14_Y22_N10
\micro|A[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|A[0]~7_combout\ = (\micro|Equal23~2_combout\ & (\micro|Add4~0_combout\)) # (!\micro|Equal23~2_combout\ & ((\micro|B[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add4~0_combout\,
	datab => \micro|Equal23~2_combout\,
	datad => \micro|B[0]~7_combout\,
	combout => \micro|A[0]~7_combout\);

-- Location: FF_X14_Y22_N11
\micro|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|A[0]~7_combout\,
	asdata => \micro|D\(8),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|A\(0));

-- Location: FF_X14_Y22_N1
\micro|B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|B[5]~feeder_combout\,
	asdata => \micro|D\(5),
	sload => \micro|Equal37~2_combout\,
	ena => \micro|WideOr28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|B\(5));

-- Location: LCCOMB_X12_Y22_N4
\micro|Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector64~0_combout\ = (\micro|Equal29~0_combout\ & (\micro|B\(5))) # (!\micro|Equal29~0_combout\ & ((\micro|A\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B\(5),
	datac => \micro|A\(5),
	datad => \micro|Equal29~0_combout\,
	combout => \micro|Selector64~0_combout\);

-- Location: FF_X12_Y22_N5
\micro|Data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector64~0_combout\,
	ena => \micro|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Data_out\(5));

-- Location: M9K_X33_Y31_N0
\ram|sram|ram_block|auto_generated|ram_block1a53\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode592w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a53_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a53_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a53_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y2_N0
\ram|sram|ram_block|auto_generated|ram_block1a45\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a45_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a45_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y26_N0
\ram|sram|ram_block|auto_generated|ram_block1a37\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a37_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a37_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y18_N26
\ram|sram|ram_block|auto_generated|mux2|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~10_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|address_reg_a\(1)) # ((\ram|sram|ram_block|auto_generated|ram_block1a45~portadataout\)))) # 
-- (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|ram_block1a37~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a45~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a37~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~10_combout\);

-- Location: M9K_X22_Y8_N0
\ram|sram|ram_block|auto_generated|ram_block1a61\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a61_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a61_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a61_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y18_N0
\ram|sram|ram_block|auto_generated|mux2|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~11_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|mux2|_~10_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a61~portadataout\))) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~10_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a53~portadataout\)))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (((\ram|sram|ram_block|auto_generated|mux2|_~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|ram_block1a53~portadataout\,
	datac => \ram|sram|ram_block|auto_generated|mux2|_~10_combout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a61~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~11_combout\);

-- Location: M9K_X22_Y4_N0
\ram|sram|ram_block|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y32_N0
\ram|sram|ram_block|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y27_N0
\ram|sram|ram_block|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode548w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y12_N0
\ram|sram|ram_block|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002B054020000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode431w\(3),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y18_N6
\ram|sram|ram_block|auto_generated|mux2|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~8_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (\ram|sram|ram_block|auto_generated|address_reg_a\(1))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & 
-- ((\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (\ram|sram|ram_block|auto_generated|ram_block1a21~portadataout\)) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|ram_block1a5~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a21~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a5~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~8_combout\);

-- Location: LCCOMB_X24_Y18_N12
\ram|sram|ram_block|auto_generated|mux2|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~9_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|mux2|_~8_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a29~portadataout\)) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~8_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a13~portadataout\))))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (((\ram|sram|ram_block|auto_generated|mux2|_~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|ram_block1a29~portadataout\,
	datab => \ram|sram|ram_block|auto_generated|ram_block1a13~portadataout\,
	datac => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datad => \ram|sram|ram_block|auto_generated|mux2|_~8_combout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~9_combout\);

-- Location: LCCOMB_X25_Y18_N6
\micro|B[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[5]~2_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(2) & (\ram|sram|ram_block|auto_generated|mux2|_~11_combout\)) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(2) & ((\ram|sram|ram_block|auto_generated|mux2|_~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(2),
	datac => \ram|sram|ram_block|auto_generated|mux2|_~11_combout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~9_combout\,
	combout => \micro|B[5]~2_combout\);

-- Location: LCCOMB_X26_Y20_N20
\micro|XH[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|XH[5]~feeder_combout\ = \micro|B[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[5]~2_combout\,
	combout => \micro|XH[5]~feeder_combout\);

-- Location: FF_X26_Y20_N21
\micro|XH[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|XH[5]~feeder_combout\,
	ena => \micro|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XH\(5));

-- Location: LCCOMB_X26_Y20_N26
\micro|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector2~0_combout\ = (\micro|WideNor0~4_combout\ & (\micro|XH\(5))) # (!\micro|WideNor0~4_combout\ & ((\micro|PC\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|XH\(5),
	datac => \micro|WideNor0~4_combout\,
	datad => \micro|PC\(13),
	combout => \micro|Selector2~0_combout\);

-- Location: FF_X26_Y20_N27
\micro|Dir[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector2~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(13));

-- Location: LCCOMB_X26_Y17_N2
\ram|sram|ram_block|auto_generated|decode3|w_anode498w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|decode3|w_anode498w[3]~0_combout\ = (\micro|nRW~q\ & (\micro|Dir\(15) & (\micro|Dir\(14) & !\micro|Dir\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|nRW~q\,
	datab => \micro|Dir\(15),
	datac => \micro|Dir\(14),
	datad => \micro|Dir\(13),
	combout => \ram|sram|ram_block|auto_generated|decode3|w_anode498w[3]~0_combout\);

-- Location: LCCOMB_X15_Y22_N26
\micro|Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector65~0_combout\ = (\micro|Equal29~0_combout\ & (\micro|B\(4))) # (!\micro|Equal29~0_combout\ & ((\micro|A\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Equal29~0_combout\,
	datac => \micro|B\(4),
	datad => \micro|A\(4),
	combout => \micro|Selector65~0_combout\);

-- Location: FF_X15_Y22_N27
\micro|Data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector65~0_combout\,
	ena => \micro|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Data_out\(4));

-- Location: M9K_X22_Y30_N0
\ram|sram|ram_block|auto_generated|ram_block1a52\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode592w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a52_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a52_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a52_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y9_N0
\ram|sram|ram_block|auto_generated|ram_block1a60\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a60_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a60_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a60_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y29_N0
\ram|sram|ram_block|auto_generated|ram_block1a36\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y5_N0
\ram|sram|ram_block|auto_generated|ram_block1a44\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a44_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a44_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y18_N12
\ram|sram|ram_block|auto_generated|mux2|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~14_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (\ram|sram|ram_block|auto_generated|address_reg_a\(0))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & 
-- ((\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|ram_block1a44~portadataout\))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (\ram|sram|ram_block|auto_generated|ram_block1a36~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a36~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a44~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~14_combout\);

-- Location: LCCOMB_X25_Y18_N14
\ram|sram|ram_block|auto_generated|mux2|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~15_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|mux2|_~14_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a60~portadataout\))) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~14_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a52~portadataout\)))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (((\ram|sram|ram_block|auto_generated|mux2|_~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|ram_block1a52~portadataout\,
	datac => \ram|sram|ram_block|auto_generated|ram_block1a60~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~14_combout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~15_combout\);

-- Location: M9K_X22_Y31_N0
\ram|sram|ram_block|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y4_N0
\ram|sram|ram_block|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y28_N0
\ram|sram|ram_block|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode548w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y10_N0
\ram|sram|ram_block|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000C20000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode431w\(3),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y18_N2
\ram|sram|ram_block|auto_generated|mux2|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~12_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (\ram|sram|ram_block|auto_generated|address_reg_a\(1))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & 
-- ((\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (\ram|sram|ram_block|auto_generated|ram_block1a20~portadataout\)) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|ram_block1a4~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a20~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a4~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~12_combout\);

-- Location: LCCOMB_X24_Y18_N20
\ram|sram|ram_block|auto_generated|mux2|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~13_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|mux2|_~12_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a28~portadataout\))) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~12_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a12~portadataout\)))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (((\ram|sram|ram_block|auto_generated|mux2|_~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datab => \ram|sram|ram_block|auto_generated|ram_block1a12~portadataout\,
	datac => \ram|sram|ram_block|auto_generated|ram_block1a28~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~12_combout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~13_combout\);

-- Location: LCCOMB_X25_Y18_N4
\micro|B[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[4]~3_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(2) & (\ram|sram|ram_block|auto_generated|mux2|_~15_combout\)) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(2) & ((\ram|sram|ram_block|auto_generated|mux2|_~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(2),
	datac => \ram|sram|ram_block|auto_generated|mux2|_~15_combout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~13_combout\,
	combout => \micro|B[4]~3_combout\);

-- Location: LCCOMB_X23_Y22_N30
\micro|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector19~0_combout\ = ((\micro|Equal4~2_combout\ & \micro|B[4]~3_combout\)) # (!\micro|Selector23~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal4~2_combout\,
	datac => \micro|Selector23~8_combout\,
	datad => \micro|B[4]~3_combout\,
	combout => \micro|Selector19~0_combout\);

-- Location: FF_X23_Y22_N31
\micro|e_siguiente[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|e_siguiente\(8));

-- Location: LCCOMB_X20_Y22_N20
\micro|Equal21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal21~0_combout\ = (\micro|e_siguiente\(8) & (!\micro|e_siguiente\(10) & (!\micro|e_siguiente\(2) & !\micro|e_siguiente\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(8),
	datab => \micro|e_siguiente\(10),
	datac => \micro|e_siguiente\(2),
	datad => \micro|e_siguiente\(11),
	combout => \micro|Equal21~0_combout\);

-- Location: LCCOMB_X20_Y22_N28
\micro|Equal21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal21~2_combout\ = (\micro|Equal21~1_combout\ & (\micro|Equal21~0_combout\ & (\micro|e_siguiente\(7) & \micro|e_siguiente\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal21~1_combout\,
	datab => \micro|Equal21~0_combout\,
	datac => \micro|e_siguiente\(7),
	datad => \micro|e_siguiente\(4),
	combout => \micro|Equal21~2_combout\);

-- Location: LCCOMB_X19_Y22_N10
\micro|WideNor0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideNor0~10_combout\ = (\micro|Equal35~1_combout\) # ((!\micro|Equal17~3_combout\ & (!\micro|Equal2~2_combout\ & !\micro|Equal21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal17~3_combout\,
	datab => \micro|Equal2~2_combout\,
	datac => \micro|Equal35~1_combout\,
	datad => \micro|Equal21~2_combout\,
	combout => \micro|WideNor0~10_combout\);

-- Location: LCCOMB_X18_Y22_N10
\micro|WideNor0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideNor0~11_combout\ = (\micro|WideNor0~10_combout\ & ((\micro|e_siguiente\(1)) # ((!\micro|Equal35~1_combout\) # (!\micro|e_siguiente\(0))))) # (!\micro|WideNor0~10_combout\ & (!\micro|Equal35~1_combout\ & ((\micro|e_siguiente\(1)) # 
-- (!\micro|e_siguiente\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(1),
	datab => \micro|e_siguiente\(0),
	datac => \micro|WideNor0~10_combout\,
	datad => \micro|Equal35~1_combout\,
	combout => \micro|WideNor0~11_combout\);

-- Location: LCCOMB_X19_Y22_N24
\micro|Selector18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector18~8_combout\ = ((!\micro|Equal17~3_combout\ & ((!\micro|Equal2~2_combout\) # (!\micro|e_siguiente\(9))))) # (!\micro|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal7~0_combout\,
	datab => \micro|e_siguiente\(9),
	datac => \micro|Equal2~2_combout\,
	datad => \micro|Equal17~3_combout\,
	combout => \micro|Selector18~8_combout\);

-- Location: LCCOMB_X20_Y22_N16
\micro|WideNor0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideNor0~5_combout\ = (\micro|Equal21~2_combout\) # ((\micro|Equal35~1_combout\) # (\micro|Equal17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Equal21~2_combout\,
	datac => \micro|Equal35~1_combout\,
	datad => \micro|Equal17~3_combout\,
	combout => \micro|WideNor0~5_combout\);

-- Location: LCCOMB_X21_Y22_N2
\micro|WideNor0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideNor0~9_combout\ = (\micro|Equal2~2_combout\ & (\micro|e_siguiente\(0) $ (((!\micro|e_siguiente\(9)) # (!\micro|e_siguiente\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(1),
	datab => \micro|e_siguiente\(9),
	datac => \micro|e_siguiente\(0),
	datad => \micro|Equal2~2_combout\,
	combout => \micro|WideNor0~9_combout\);

-- Location: LCCOMB_X21_Y22_N4
\micro|Equal14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal14~2_combout\ = (\micro|e_siguiente\(0) & \micro|e_siguiente\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \micro|e_siguiente\(0),
	datad => \micro|e_siguiente\(1),
	combout => \micro|Equal14~2_combout\);

-- Location: LCCOMB_X21_Y22_N28
\micro|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal5~4_combout\ = (!\micro|e_siguiente\(0) & !\micro|e_siguiente\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \micro|e_siguiente\(0),
	datad => \micro|e_siguiente\(1),
	combout => \micro|Equal5~4_combout\);

-- Location: LCCOMB_X21_Y22_N26
\micro|WideNor0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideNor0~6_combout\ = (!\micro|WideNor0~9_combout\ & (((!\micro|Equal14~2_combout\ & !\micro|Equal5~4_combout\)) # (!\micro|WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|WideNor0~5_combout\,
	datab => \micro|WideNor0~9_combout\,
	datac => \micro|Equal14~2_combout\,
	datad => \micro|Equal5~4_combout\,
	combout => \micro|WideNor0~6_combout\);

-- Location: LCCOMB_X18_Y22_N2
\micro|WideNor0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideNor0~7_combout\ = (\micro|WideNor0~11_combout\ & (\micro|Selector18~8_combout\ & (\micro|WideNor0~6_combout\ & \micro|Selector22~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|WideNor0~11_combout\,
	datab => \micro|Selector18~8_combout\,
	datac => \micro|WideNor0~6_combout\,
	datad => \micro|Selector22~5_combout\,
	combout => \micro|WideNor0~7_combout\);

-- Location: LCCOMB_X18_Y22_N14
\micro|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~18_combout\ = (\micro|Selector18~8_combout\ & (((\micro|WideNor0~4_combout\) # (!\micro|WideNor0~7_combout\)) # (!\micro|WideNor0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|WideNor0~8_combout\,
	datab => \micro|WideNor0~7_combout\,
	datac => \micro|WideNor0~4_combout\,
	datad => \micro|Selector18~8_combout\,
	combout => \micro|Add0~18_combout\);

-- Location: LCCOMB_X28_Y18_N0
\micro|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~0_combout\ = (\micro|B[0]~7_combout\ & (\micro|PC\(0) $ (VCC))) # (!\micro|B[0]~7_combout\ & (\micro|PC\(0) & VCC))
-- \micro|Add3~1\ = CARRY((\micro|B[0]~7_combout\ & \micro|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[0]~7_combout\,
	datab => \micro|PC\(0),
	datad => VCC,
	combout => \micro|Add3~0_combout\,
	cout => \micro|Add3~1\);

-- Location: LCCOMB_X18_Y22_N12
\micro|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~0_combout\ = (!\micro|Selector18~8_combout\ & (((\micro|WideNor0~4_combout\) # (!\micro|WideNor0~7_combout\)) # (!\micro|WideNor0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|WideNor0~8_combout\,
	datab => \micro|WideNor0~7_combout\,
	datac => \micro|WideNor0~4_combout\,
	datad => \micro|Selector18~8_combout\,
	combout => \micro|Add0~0_combout\);

-- Location: LCCOMB_X25_Y18_N16
\micro|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add1~0_combout\ = \micro|B[0]~7_combout\ $ (VCC)
-- \micro|Add1~1\ = CARRY(\micro|B[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[0]~7_combout\,
	datad => VCC,
	combout => \micro|Add1~0_combout\,
	cout => \micro|Add1~1\);

-- Location: LCCOMB_X26_Y18_N0
\micro|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~0_combout\ = (\micro|Add1~0_combout\ & ((\micro|PC\(0)) # (GND))) # (!\micro|Add1~0_combout\ & (\micro|PC\(0) $ (VCC)))
-- \micro|Add2~1\ = CARRY((\micro|Add1~0_combout\) # (\micro|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add1~0_combout\,
	datab => \micro|PC\(0),
	datad => VCC,
	combout => \micro|Add2~0_combout\,
	cout => \micro|Add2~1\);

-- Location: LCCOMB_X29_Y18_N18
\micro|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~32_combout\ = (\micro|Add0~0_combout\ & ((\micro|B[7]~0_combout\ & ((\micro|Add2~0_combout\))) # (!\micro|B[7]~0_combout\ & (\micro|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add3~0_combout\,
	datab => \micro|Add0~0_combout\,
	datac => \micro|B[7]~0_combout\,
	datad => \micro|Add2~0_combout\,
	combout => \micro|Add0~32_combout\);

-- Location: LCCOMB_X29_Y18_N26
\micro|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~33_combout\ = (\micro|Add0~32_combout\) # ((\micro|Add0~2_combout\ & \micro|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Add0~2_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~32_combout\,
	combout => \micro|Add0~33_combout\);

-- Location: LCCOMB_X21_Y22_N30
\micro|Selector22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector22~4_combout\ = ((!\micro|Equal5~3_combout\ & ((\micro|e_siguiente\(10)) # (!\micro|Equal25~1_combout\)))) # (!\micro|Equal5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(10),
	datab => \micro|Equal5~4_combout\,
	datac => \micro|Equal5~3_combout\,
	datad => \micro|Equal25~1_combout\,
	combout => \micro|Selector22~4_combout\);

-- Location: LCCOMB_X17_Y22_N24
\micro|WideOr26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideOr26~0_combout\ = (!\micro|WideNor0~4_combout\ & (!\micro|WideNor0~8_combout\ & \micro|WideNor0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|WideNor0~4_combout\,
	datac => \micro|WideNor0~8_combout\,
	datad => \micro|WideNor0~7_combout\,
	combout => \micro|WideOr26~0_combout\);

-- Location: LCCOMB_X17_Y22_N18
\micro|Selector52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector52~3_combout\ = (!\micro|B[4]~3_combout\ & (!\micro|B[5]~2_combout\ & (!\micro|B[7]~0_combout\ & !\micro|B[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[4]~3_combout\,
	datab => \micro|B[5]~2_combout\,
	datac => \micro|B[7]~0_combout\,
	datad => \micro|B[6]~1_combout\,
	combout => \micro|Selector52~3_combout\);

-- Location: LCCOMB_X14_Y22_N22
\micro|Equal22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal22~2_combout\ = (!\micro|e_siguiente\(1) & (\micro|e_siguiente\(0) & \micro|Equal21~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(1),
	datab => \micro|e_siguiente\(0),
	datad => \micro|Equal21~2_combout\,
	combout => \micro|Equal22~2_combout\);

-- Location: FF_X15_Y22_N15
\micro|Aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add4~10_combout\,
	ena => \micro|Equal22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Aux\(5));

-- Location: FF_X15_Y22_N19
\micro|Aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add4~14_combout\,
	ena => \micro|Equal22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Aux\(7));

-- Location: FF_X15_Y22_N17
\micro|Aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add4~12_combout\,
	ena => \micro|Equal22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Aux\(6));

-- Location: FF_X15_Y22_N13
\micro|Aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add4~8_combout\,
	ena => \micro|Equal22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Aux\(4));

-- Location: LCCOMB_X16_Y22_N12
\micro|Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector52~0_combout\ = (!\micro|Aux\(5) & (!\micro|Aux\(7) & (!\micro|Aux\(6) & !\micro|Aux\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Aux\(5),
	datab => \micro|Aux\(7),
	datac => \micro|Aux\(6),
	datad => \micro|Aux\(4),
	combout => \micro|Selector52~0_combout\);

-- Location: FF_X15_Y22_N7
\micro|Aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add4~2_combout\,
	ena => \micro|Equal22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Aux\(1));

-- Location: FF_X15_Y22_N5
\micro|Aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add4~0_combout\,
	ena => \micro|Equal22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Aux\(0));

-- Location: FF_X15_Y22_N9
\micro|Aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add4~4_combout\,
	ena => \micro|Equal22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Aux\(2));

-- Location: FF_X15_Y22_N11
\micro|Aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add4~6_combout\,
	ena => \micro|Equal22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Aux\(3));

-- Location: LCCOMB_X15_Y22_N0
\micro|Selector52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector52~1_combout\ = (!\micro|Aux\(1) & (!\micro|Aux\(0) & (!\micro|Aux\(2) & !\micro|Aux\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Aux\(1),
	datab => \micro|Aux\(0),
	datac => \micro|Aux\(2),
	datad => \micro|Aux\(3),
	combout => \micro|Selector52~1_combout\);

-- Location: LCCOMB_X16_Y22_N14
\micro|Selector52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector52~2_combout\ = (\micro|Selector52~0_combout\ & (\micro|Selector52~1_combout\ & ((\micro|Equal23~2_combout\) # (\micro|Equal37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Selector52~0_combout\,
	datab => \micro|Equal23~2_combout\,
	datac => \micro|Selector52~1_combout\,
	datad => \micro|Equal37~2_combout\,
	combout => \micro|Selector52~2_combout\);

-- Location: LCCOMB_X17_Y22_N20
\micro|Selector52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector52~4_combout\ = (!\micro|B[1]~6_combout\ & (!\micro|B[2]~5_combout\ & (!\micro|B[3]~4_combout\ & !\micro|B[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[1]~6_combout\,
	datab => \micro|B[2]~5_combout\,
	datac => \micro|B[3]~4_combout\,
	datad => \micro|B[0]~7_combout\,
	combout => \micro|Selector52~4_combout\);

-- Location: LCCOMB_X17_Y22_N2
\micro|Selector52~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector52~5_combout\ = (\micro|Selector52~2_combout\) # ((!\micro|WideOr27~0_combout\ & (\micro|Selector52~3_combout\ & \micro|Selector52~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|WideOr27~0_combout\,
	datab => \micro|Selector52~3_combout\,
	datac => \micro|Selector52~2_combout\,
	datad => \micro|Selector52~4_combout\,
	combout => \micro|Selector52~5_combout\);

-- Location: LCCOMB_X17_Y22_N4
\micro|Selector52~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector52~6_combout\ = (!\micro|Selector52~5_combout\ & ((\micro|WideOr26~0_combout\) # (\micro|estados\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|WideOr26~0_combout\,
	datac => \micro|estados\(2),
	datad => \micro|Selector52~5_combout\,
	combout => \micro|Selector52~6_combout\);

-- Location: FF_X17_Y22_N5
\micro|estados[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector52~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|estados\(2));

-- Location: LCCOMB_X17_Y22_N26
\micro|PC[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|PC[5]~0_combout\ = ((\micro|Equal17~3_combout\ & (!\micro|estados\(2) & \micro|Equal7~0_combout\))) # (!\micro|WideNor0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal17~3_combout\,
	datab => \micro|WideNor0~8_combout\,
	datac => \micro|estados\(2),
	datad => \micro|Equal7~0_combout\,
	combout => \micro|PC[5]~0_combout\);

-- Location: LCCOMB_X21_Y22_N20
\micro|PC[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|PC[5]~1_combout\ = (\micro|Selector17~2_combout\ & (\micro|WideNor0~6_combout\ & (\micro|Selector22~4_combout\ & !\micro|PC[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Selector17~2_combout\,
	datab => \micro|WideNor0~6_combout\,
	datac => \micro|Selector22~4_combout\,
	datad => \micro|PC[5]~0_combout\,
	combout => \micro|PC[5]~1_combout\);

-- Location: FF_X29_Y18_N27
\micro|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~33_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(0));

-- Location: LCCOMB_X30_Y18_N2
\micro|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~4_combout\ = (\micro|PC\(1) & (!\micro|Add0~3\)) # (!\micro|PC\(1) & ((\micro|Add0~3\) # (GND)))
-- \micro|Add0~5\ = CARRY((!\micro|Add0~3\) # (!\micro|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(1),
	datad => VCC,
	cin => \micro|Add0~3\,
	combout => \micro|Add0~4_combout\,
	cout => \micro|Add0~5\);

-- Location: LCCOMB_X28_Y18_N2
\micro|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~2_combout\ = (\micro|B[1]~6_combout\ & ((\micro|PC\(1) & (\micro|Add3~1\ & VCC)) # (!\micro|PC\(1) & (!\micro|Add3~1\)))) # (!\micro|B[1]~6_combout\ & ((\micro|PC\(1) & (!\micro|Add3~1\)) # (!\micro|PC\(1) & ((\micro|Add3~1\) # (GND)))))
-- \micro|Add3~3\ = CARRY((\micro|B[1]~6_combout\ & (!\micro|PC\(1) & !\micro|Add3~1\)) # (!\micro|B[1]~6_combout\ & ((!\micro|Add3~1\) # (!\micro|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[1]~6_combout\,
	datab => \micro|PC\(1),
	datad => VCC,
	cin => \micro|Add3~1\,
	combout => \micro|Add3~2_combout\,
	cout => \micro|Add3~3\);

-- Location: LCCOMB_X25_Y18_N18
\micro|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add1~2_combout\ = (\micro|B[1]~6_combout\ & (\micro|Add1~1\ & VCC)) # (!\micro|B[1]~6_combout\ & (!\micro|Add1~1\))
-- \micro|Add1~3\ = CARRY((!\micro|B[1]~6_combout\ & !\micro|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|B[1]~6_combout\,
	datad => VCC,
	cin => \micro|Add1~1\,
	combout => \micro|Add1~2_combout\,
	cout => \micro|Add1~3\);

-- Location: LCCOMB_X26_Y18_N2
\micro|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~2_combout\ = (\micro|PC\(1) & ((\micro|Add1~2_combout\ & (\micro|Add2~1\ & VCC)) # (!\micro|Add1~2_combout\ & (!\micro|Add2~1\)))) # (!\micro|PC\(1) & ((\micro|Add1~2_combout\ & (!\micro|Add2~1\)) # (!\micro|Add1~2_combout\ & ((\micro|Add2~1\) 
-- # (GND)))))
-- \micro|Add2~3\ = CARRY((\micro|PC\(1) & (!\micro|Add1~2_combout\ & !\micro|Add2~1\)) # (!\micro|PC\(1) & ((!\micro|Add2~1\) # (!\micro|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(1),
	datab => \micro|Add1~2_combout\,
	datad => VCC,
	cin => \micro|Add2~1\,
	combout => \micro|Add2~2_combout\,
	cout => \micro|Add2~3\);

-- Location: LCCOMB_X29_Y18_N28
\micro|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~30_combout\ = (\micro|Add0~0_combout\ & ((\micro|B[7]~0_combout\ & ((\micro|Add2~2_combout\))) # (!\micro|B[7]~0_combout\ & (\micro|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add3~2_combout\,
	datab => \micro|Add0~0_combout\,
	datac => \micro|B[7]~0_combout\,
	datad => \micro|Add2~2_combout\,
	combout => \micro|Add0~30_combout\);

-- Location: LCCOMB_X29_Y18_N8
\micro|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~31_combout\ = (\micro|Add0~30_combout\) # ((\micro|Add0~4_combout\ & \micro|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Add0~4_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~30_combout\,
	combout => \micro|Add0~31_combout\);

-- Location: FF_X29_Y18_N9
\micro|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~31_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(1));

-- Location: LCCOMB_X30_Y18_N4
\micro|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~6_combout\ = (\micro|PC\(2) & (!\micro|Add0~5\ & VCC)) # (!\micro|PC\(2) & (\micro|Add0~5\ $ (GND)))
-- \micro|Add0~7\ = CARRY((!\micro|PC\(2) & !\micro|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(2),
	datad => VCC,
	cin => \micro|Add0~5\,
	combout => \micro|Add0~6_combout\,
	cout => \micro|Add0~7\);

-- Location: LCCOMB_X25_Y18_N20
\micro|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add1~4_combout\ = (\micro|B[2]~5_combout\ & ((GND) # (!\micro|Add1~3\))) # (!\micro|B[2]~5_combout\ & (\micro|Add1~3\ $ (GND)))
-- \micro|Add1~5\ = CARRY((\micro|B[2]~5_combout\) # (!\micro|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[2]~5_combout\,
	datad => VCC,
	cin => \micro|Add1~3\,
	combout => \micro|Add1~4_combout\,
	cout => \micro|Add1~5\);

-- Location: LCCOMB_X26_Y18_N4
\micro|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~4_combout\ = ((\micro|PC\(2) $ (\micro|Add1~4_combout\ $ (\micro|Add2~3\)))) # (GND)
-- \micro|Add2~5\ = CARRY((\micro|PC\(2) & (\micro|Add1~4_combout\ & !\micro|Add2~3\)) # (!\micro|PC\(2) & ((\micro|Add1~4_combout\) # (!\micro|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(2),
	datab => \micro|Add1~4_combout\,
	datad => VCC,
	cin => \micro|Add2~3\,
	combout => \micro|Add2~4_combout\,
	cout => \micro|Add2~5\);

-- Location: LCCOMB_X28_Y18_N4
\micro|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~4_combout\ = ((\micro|B[2]~5_combout\ $ (\micro|PC\(2) $ (\micro|Add3~3\)))) # (GND)
-- \micro|Add3~5\ = CARRY((\micro|B[2]~5_combout\ & ((!\micro|Add3~3\) # (!\micro|PC\(2)))) # (!\micro|B[2]~5_combout\ & (!\micro|PC\(2) & !\micro|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[2]~5_combout\,
	datab => \micro|PC\(2),
	datad => VCC,
	cin => \micro|Add3~3\,
	combout => \micro|Add3~4_combout\,
	cout => \micro|Add3~5\);

-- Location: LCCOMB_X27_Y18_N18
\micro|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~28_combout\ = (\micro|Add0~0_combout\ & ((\micro|B[7]~0_combout\ & (\micro|Add2~4_combout\)) # (!\micro|B[7]~0_combout\ & ((\micro|Add3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[7]~0_combout\,
	datab => \micro|Add0~0_combout\,
	datac => \micro|Add2~4_combout\,
	datad => \micro|Add3~4_combout\,
	combout => \micro|Add0~28_combout\);

-- Location: LCCOMB_X27_Y18_N26
\micro|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~29_combout\ = (!\micro|Add0~28_combout\ & ((!\micro|Add0~18_combout\) # (!\micro|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Add0~6_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~28_combout\,
	combout => \micro|Add0~29_combout\);

-- Location: FF_X27_Y18_N27
\micro|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~29_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(2));

-- Location: LCCOMB_X30_Y18_N6
\micro|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~8_combout\ = (\micro|PC\(3) & (!\micro|Add0~7\)) # (!\micro|PC\(3) & ((\micro|Add0~7\) # (GND)))
-- \micro|Add0~9\ = CARRY((!\micro|Add0~7\) # (!\micro|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|PC\(3),
	datad => VCC,
	cin => \micro|Add0~7\,
	combout => \micro|Add0~8_combout\,
	cout => \micro|Add0~9\);

-- Location: LCCOMB_X25_Y18_N22
\micro|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add1~6_combout\ = (\micro|B[3]~4_combout\ & (\micro|Add1~5\ & VCC)) # (!\micro|B[3]~4_combout\ & (!\micro|Add1~5\))
-- \micro|Add1~7\ = CARRY((!\micro|B[3]~4_combout\ & !\micro|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[3]~4_combout\,
	datad => VCC,
	cin => \micro|Add1~5\,
	combout => \micro|Add1~6_combout\,
	cout => \micro|Add1~7\);

-- Location: LCCOMB_X26_Y18_N6
\micro|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~6_combout\ = (\micro|PC\(3) & ((\micro|Add1~6_combout\ & (\micro|Add2~5\ & VCC)) # (!\micro|Add1~6_combout\ & (!\micro|Add2~5\)))) # (!\micro|PC\(3) & ((\micro|Add1~6_combout\ & (!\micro|Add2~5\)) # (!\micro|Add1~6_combout\ & ((\micro|Add2~5\) 
-- # (GND)))))
-- \micro|Add2~7\ = CARRY((\micro|PC\(3) & (!\micro|Add1~6_combout\ & !\micro|Add2~5\)) # (!\micro|PC\(3) & ((!\micro|Add2~5\) # (!\micro|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(3),
	datab => \micro|Add1~6_combout\,
	datad => VCC,
	cin => \micro|Add2~5\,
	combout => \micro|Add2~6_combout\,
	cout => \micro|Add2~7\);

-- Location: LCCOMB_X28_Y18_N6
\micro|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~6_combout\ = (\micro|PC\(3) & ((\micro|B[3]~4_combout\ & (\micro|Add3~5\ & VCC)) # (!\micro|B[3]~4_combout\ & (!\micro|Add3~5\)))) # (!\micro|PC\(3) & ((\micro|B[3]~4_combout\ & (!\micro|Add3~5\)) # (!\micro|B[3]~4_combout\ & ((\micro|Add3~5\) 
-- # (GND)))))
-- \micro|Add3~7\ = CARRY((\micro|PC\(3) & (!\micro|B[3]~4_combout\ & !\micro|Add3~5\)) # (!\micro|PC\(3) & ((!\micro|Add3~5\) # (!\micro|B[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(3),
	datab => \micro|B[3]~4_combout\,
	datad => VCC,
	cin => \micro|Add3~5\,
	combout => \micro|Add3~6_combout\,
	cout => \micro|Add3~7\);

-- Location: LCCOMB_X27_Y18_N28
\micro|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~26_combout\ = (\micro|Add0~0_combout\ & ((\micro|B[7]~0_combout\ & (\micro|Add2~6_combout\)) # (!\micro|B[7]~0_combout\ & ((\micro|Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[7]~0_combout\,
	datab => \micro|Add0~0_combout\,
	datac => \micro|Add2~6_combout\,
	datad => \micro|Add3~6_combout\,
	combout => \micro|Add0~26_combout\);

-- Location: LCCOMB_X27_Y18_N4
\micro|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~27_combout\ = (\micro|Add0~26_combout\) # ((\micro|Add0~8_combout\ & \micro|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add0~8_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~26_combout\,
	combout => \micro|Add0~27_combout\);

-- Location: FF_X27_Y18_N5
\micro|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~27_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(3));

-- Location: LCCOMB_X30_Y18_N8
\micro|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~10_combout\ = (\micro|PC\(4) & (!\micro|Add0~9\ & VCC)) # (!\micro|PC\(4) & (\micro|Add0~9\ $ (GND)))
-- \micro|Add0~11\ = CARRY((!\micro|PC\(4) & !\micro|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(4),
	datad => VCC,
	cin => \micro|Add0~9\,
	combout => \micro|Add0~10_combout\,
	cout => \micro|Add0~11\);

-- Location: LCCOMB_X28_Y18_N8
\micro|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~8_combout\ = ((\micro|PC\(4) $ (\micro|B[4]~3_combout\ $ (\micro|Add3~7\)))) # (GND)
-- \micro|Add3~9\ = CARRY((\micro|PC\(4) & (\micro|B[4]~3_combout\ & !\micro|Add3~7\)) # (!\micro|PC\(4) & ((\micro|B[4]~3_combout\) # (!\micro|Add3~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(4),
	datab => \micro|B[4]~3_combout\,
	datad => VCC,
	cin => \micro|Add3~7\,
	combout => \micro|Add3~8_combout\,
	cout => \micro|Add3~9\);

-- Location: LCCOMB_X25_Y18_N24
\micro|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add1~8_combout\ = (\micro|B[4]~3_combout\ & ((GND) # (!\micro|Add1~7\))) # (!\micro|B[4]~3_combout\ & (\micro|Add1~7\ $ (GND)))
-- \micro|Add1~9\ = CARRY((\micro|B[4]~3_combout\) # (!\micro|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|B[4]~3_combout\,
	datad => VCC,
	cin => \micro|Add1~7\,
	combout => \micro|Add1~8_combout\,
	cout => \micro|Add1~9\);

-- Location: LCCOMB_X26_Y18_N8
\micro|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~8_combout\ = ((\micro|PC\(4) $ (\micro|Add1~8_combout\ $ (\micro|Add2~7\)))) # (GND)
-- \micro|Add2~9\ = CARRY((\micro|PC\(4) & (\micro|Add1~8_combout\ & !\micro|Add2~7\)) # (!\micro|PC\(4) & ((\micro|Add1~8_combout\) # (!\micro|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(4),
	datab => \micro|Add1~8_combout\,
	datad => VCC,
	cin => \micro|Add2~7\,
	combout => \micro|Add2~8_combout\,
	cout => \micro|Add2~9\);

-- Location: LCCOMB_X27_Y18_N10
\micro|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~24_combout\ = (\micro|Add0~0_combout\ & ((\micro|B[7]~0_combout\ & ((\micro|Add2~8_combout\))) # (!\micro|B[7]~0_combout\ & (\micro|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[7]~0_combout\,
	datab => \micro|Add0~0_combout\,
	datac => \micro|Add3~8_combout\,
	datad => \micro|Add2~8_combout\,
	combout => \micro|Add0~24_combout\);

-- Location: LCCOMB_X27_Y18_N14
\micro|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~25_combout\ = (!\micro|Add0~24_combout\ & ((!\micro|Add0~18_combout\) # (!\micro|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Add0~10_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~24_combout\,
	combout => \micro|Add0~25_combout\);

-- Location: FF_X27_Y18_N15
\micro|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~25_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(4));

-- Location: LCCOMB_X30_Y18_N10
\micro|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~12_combout\ = (\micro|PC\(5) & (!\micro|Add0~11\)) # (!\micro|PC\(5) & ((\micro|Add0~11\) # (GND)))
-- \micro|Add0~13\ = CARRY((!\micro|Add0~11\) # (!\micro|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(5),
	datad => VCC,
	cin => \micro|Add0~11\,
	combout => \micro|Add0~12_combout\,
	cout => \micro|Add0~13\);

-- Location: LCCOMB_X28_Y18_N10
\micro|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~10_combout\ = (\micro|B[5]~2_combout\ & ((\micro|PC\(5) & (\micro|Add3~9\ & VCC)) # (!\micro|PC\(5) & (!\micro|Add3~9\)))) # (!\micro|B[5]~2_combout\ & ((\micro|PC\(5) & (!\micro|Add3~9\)) # (!\micro|PC\(5) & ((\micro|Add3~9\) # (GND)))))
-- \micro|Add3~11\ = CARRY((\micro|B[5]~2_combout\ & (!\micro|PC\(5) & !\micro|Add3~9\)) # (!\micro|B[5]~2_combout\ & ((!\micro|Add3~9\) # (!\micro|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[5]~2_combout\,
	datab => \micro|PC\(5),
	datad => VCC,
	cin => \micro|Add3~9\,
	combout => \micro|Add3~10_combout\,
	cout => \micro|Add3~11\);

-- Location: LCCOMB_X25_Y18_N26
\micro|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add1~10_combout\ = (\micro|B[5]~2_combout\ & (\micro|Add1~9\ & VCC)) # (!\micro|B[5]~2_combout\ & (!\micro|Add1~9\))
-- \micro|Add1~11\ = CARRY((!\micro|B[5]~2_combout\ & !\micro|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[5]~2_combout\,
	datad => VCC,
	cin => \micro|Add1~9\,
	combout => \micro|Add1~10_combout\,
	cout => \micro|Add1~11\);

-- Location: LCCOMB_X26_Y18_N10
\micro|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~10_combout\ = (\micro|Add1~10_combout\ & ((\micro|PC\(5) & (\micro|Add2~9\ & VCC)) # (!\micro|PC\(5) & (!\micro|Add2~9\)))) # (!\micro|Add1~10_combout\ & ((\micro|PC\(5) & (!\micro|Add2~9\)) # (!\micro|PC\(5) & ((\micro|Add2~9\) # (GND)))))
-- \micro|Add2~11\ = CARRY((\micro|Add1~10_combout\ & (!\micro|PC\(5) & !\micro|Add2~9\)) # (!\micro|Add1~10_combout\ & ((!\micro|Add2~9\) # (!\micro|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add1~10_combout\,
	datab => \micro|PC\(5),
	datad => VCC,
	cin => \micro|Add2~9\,
	combout => \micro|Add2~10_combout\,
	cout => \micro|Add2~11\);

-- Location: LCCOMB_X27_Y18_N20
\micro|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~22_combout\ = (\micro|Add0~0_combout\ & ((\micro|B[7]~0_combout\ & ((\micro|Add2~10_combout\))) # (!\micro|B[7]~0_combout\ & (\micro|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[7]~0_combout\,
	datab => \micro|Add0~0_combout\,
	datac => \micro|Add3~10_combout\,
	datad => \micro|Add2~10_combout\,
	combout => \micro|Add0~22_combout\);

-- Location: LCCOMB_X27_Y18_N16
\micro|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~23_combout\ = (\micro|Add0~22_combout\) # ((\micro|Add0~12_combout\ & \micro|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Add0~12_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~22_combout\,
	combout => \micro|Add0~23_combout\);

-- Location: FF_X27_Y18_N17
\micro|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~23_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(5));

-- Location: LCCOMB_X30_Y18_N12
\micro|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~14_combout\ = (\micro|PC\(6) & (\micro|Add0~13\ $ (GND))) # (!\micro|PC\(6) & (!\micro|Add0~13\ & VCC))
-- \micro|Add0~15\ = CARRY((\micro|PC\(6) & !\micro|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|PC\(6),
	datad => VCC,
	cin => \micro|Add0~13\,
	combout => \micro|Add0~14_combout\,
	cout => \micro|Add0~15\);

-- Location: LCCOMB_X28_Y18_N12
\micro|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~12_combout\ = ((\micro|B[6]~1_combout\ $ (\micro|PC\(6) $ (!\micro|Add3~11\)))) # (GND)
-- \micro|Add3~13\ = CARRY((\micro|B[6]~1_combout\ & ((\micro|PC\(6)) # (!\micro|Add3~11\))) # (!\micro|B[6]~1_combout\ & (\micro|PC\(6) & !\micro|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[6]~1_combout\,
	datab => \micro|PC\(6),
	datad => VCC,
	cin => \micro|Add3~11\,
	combout => \micro|Add3~12_combout\,
	cout => \micro|Add3~13\);

-- Location: LCCOMB_X25_Y18_N28
\micro|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add1~12_combout\ = (\micro|B[6]~1_combout\ & ((GND) # (!\micro|Add1~11\))) # (!\micro|B[6]~1_combout\ & (\micro|Add1~11\ $ (GND)))
-- \micro|Add1~13\ = CARRY((\micro|B[6]~1_combout\) # (!\micro|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|B[6]~1_combout\,
	datad => VCC,
	cin => \micro|Add1~11\,
	combout => \micro|Add1~12_combout\,
	cout => \micro|Add1~13\);

-- Location: LCCOMB_X26_Y18_N12
\micro|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~12_combout\ = ((\micro|PC\(6) $ (\micro|Add1~12_combout\ $ (!\micro|Add2~11\)))) # (GND)
-- \micro|Add2~13\ = CARRY((\micro|PC\(6) & ((\micro|Add1~12_combout\) # (!\micro|Add2~11\))) # (!\micro|PC\(6) & (\micro|Add1~12_combout\ & !\micro|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(6),
	datab => \micro|Add1~12_combout\,
	datad => VCC,
	cin => \micro|Add2~11\,
	combout => \micro|Add2~12_combout\,
	cout => \micro|Add2~13\);

-- Location: LCCOMB_X27_Y18_N6
\micro|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~20_combout\ = (\micro|Add0~0_combout\ & ((\micro|B[7]~0_combout\ & ((\micro|Add2~12_combout\))) # (!\micro|B[7]~0_combout\ & (\micro|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[7]~0_combout\,
	datab => \micro|Add0~0_combout\,
	datac => \micro|Add3~12_combout\,
	datad => \micro|Add2~12_combout\,
	combout => \micro|Add0~20_combout\);

-- Location: LCCOMB_X27_Y18_N30
\micro|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~21_combout\ = (\micro|Add0~20_combout\) # ((\micro|Add0~14_combout\ & \micro|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Add0~14_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~20_combout\,
	combout => \micro|Add0~21_combout\);

-- Location: FF_X27_Y18_N31
\micro|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~21_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(6));

-- Location: LCCOMB_X30_Y18_N14
\micro|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~16_combout\ = (\micro|PC\(7) & (!\micro|Add0~15\)) # (!\micro|PC\(7) & ((\micro|Add0~15\) # (GND)))
-- \micro|Add0~17\ = CARRY((!\micro|Add0~15\) # (!\micro|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|PC\(7),
	datad => VCC,
	cin => \micro|Add0~15\,
	combout => \micro|Add0~16_combout\,
	cout => \micro|Add0~17\);

-- Location: LCCOMB_X28_Y18_N14
\micro|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~14_combout\ = (\micro|B[7]~0_combout\ & ((\micro|PC\(7) & (\micro|Add3~13\ & VCC)) # (!\micro|PC\(7) & (!\micro|Add3~13\)))) # (!\micro|B[7]~0_combout\ & ((\micro|PC\(7) & (!\micro|Add3~13\)) # (!\micro|PC\(7) & ((\micro|Add3~13\) # (GND)))))
-- \micro|Add3~15\ = CARRY((\micro|B[7]~0_combout\ & (!\micro|PC\(7) & !\micro|Add3~13\)) # (!\micro|B[7]~0_combout\ & ((!\micro|Add3~13\) # (!\micro|PC\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[7]~0_combout\,
	datab => \micro|PC\(7),
	datad => VCC,
	cin => \micro|Add3~13\,
	combout => \micro|Add3~14_combout\,
	cout => \micro|Add3~15\);

-- Location: LCCOMB_X25_Y18_N30
\micro|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add1~14_combout\ = \micro|Add1~13\ $ (!\micro|B[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[7]~0_combout\,
	cin => \micro|Add1~13\,
	combout => \micro|Add1~14_combout\);

-- Location: LCCOMB_X26_Y18_N14
\micro|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~14_combout\ = (\micro|PC\(7) & ((\micro|Add1~14_combout\ & (\micro|Add2~13\ & VCC)) # (!\micro|Add1~14_combout\ & (!\micro|Add2~13\)))) # (!\micro|PC\(7) & ((\micro|Add1~14_combout\ & (!\micro|Add2~13\)) # (!\micro|Add1~14_combout\ & 
-- ((\micro|Add2~13\) # (GND)))))
-- \micro|Add2~15\ = CARRY((\micro|PC\(7) & (!\micro|Add1~14_combout\ & !\micro|Add2~13\)) # (!\micro|PC\(7) & ((!\micro|Add2~13\) # (!\micro|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(7),
	datab => \micro|Add1~14_combout\,
	datad => VCC,
	cin => \micro|Add2~13\,
	combout => \micro|Add2~14_combout\,
	cout => \micro|Add2~15\);

-- Location: LCCOMB_X27_Y18_N12
\micro|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~1_combout\ = (\micro|Add0~0_combout\ & ((\micro|B[7]~0_combout\ & ((\micro|Add2~14_combout\))) # (!\micro|B[7]~0_combout\ & (\micro|Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[7]~0_combout\,
	datab => \micro|Add0~0_combout\,
	datac => \micro|Add3~14_combout\,
	datad => \micro|Add2~14_combout\,
	combout => \micro|Add0~1_combout\);

-- Location: LCCOMB_X27_Y18_N8
\micro|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~19_combout\ = (\micro|Add0~1_combout\) # ((\micro|Add0~16_combout\ & \micro|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add0~16_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~1_combout\,
	combout => \micro|Add0~19_combout\);

-- Location: FF_X27_Y18_N9
\micro|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~19_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(7));

-- Location: LCCOMB_X30_Y18_N16
\micro|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~35_combout\ = (\micro|PC\(8) & (\micro|Add0~17\ $ (GND))) # (!\micro|PC\(8) & (!\micro|Add0~17\ & VCC))
-- \micro|Add0~36\ = CARRY((\micro|PC\(8) & !\micro|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(8),
	datad => VCC,
	cin => \micro|Add0~17\,
	combout => \micro|Add0~35_combout\,
	cout => \micro|Add0~36\);

-- Location: LCCOMB_X28_Y18_N16
\micro|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~16_combout\ = (\micro|PC\(8) & (\micro|Add3~15\ $ (GND))) # (!\micro|PC\(8) & (!\micro|Add3~15\ & VCC))
-- \micro|Add3~17\ = CARRY((\micro|PC\(8) & !\micro|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(8),
	datad => VCC,
	cin => \micro|Add3~15\,
	combout => \micro|Add3~16_combout\,
	cout => \micro|Add3~17\);

-- Location: LCCOMB_X26_Y18_N16
\micro|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~16_combout\ = (\micro|PC\(8) & ((GND) # (!\micro|Add2~15\))) # (!\micro|PC\(8) & (\micro|Add2~15\ $ (GND)))
-- \micro|Add2~17\ = CARRY((\micro|PC\(8)) # (!\micro|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|PC\(8),
	datad => VCC,
	cin => \micro|Add2~15\,
	combout => \micro|Add2~16_combout\,
	cout => \micro|Add2~17\);

-- Location: LCCOMB_X29_Y18_N10
\micro|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~56_combout\ = (\micro|Add0~0_combout\ & ((\micro|B[7]~0_combout\ & ((\micro|Add2~16_combout\))) # (!\micro|B[7]~0_combout\ & (\micro|Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add3~16_combout\,
	datab => \micro|Add0~0_combout\,
	datac => \micro|B[7]~0_combout\,
	datad => \micro|Add2~16_combout\,
	combout => \micro|Add0~56_combout\);

-- Location: LCCOMB_X29_Y18_N14
\micro|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~57_combout\ = (\micro|Add0~56_combout\) # ((\micro|Add0~35_combout\ & \micro|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Add0~35_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~56_combout\,
	combout => \micro|Add0~57_combout\);

-- Location: FF_X29_Y18_N15
\micro|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~57_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(8));

-- Location: LCCOMB_X30_Y18_N18
\micro|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~37_combout\ = (\micro|PC\(9) & (!\micro|Add0~36\)) # (!\micro|PC\(9) & ((\micro|Add0~36\) # (GND)))
-- \micro|Add0~38\ = CARRY((!\micro|Add0~36\) # (!\micro|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|PC\(9),
	datad => VCC,
	cin => \micro|Add0~36\,
	combout => \micro|Add0~37_combout\,
	cout => \micro|Add0~38\);

-- Location: LCCOMB_X28_Y18_N18
\micro|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~18_combout\ = (\micro|PC\(9) & (!\micro|Add3~17\)) # (!\micro|PC\(9) & ((\micro|Add3~17\) # (GND)))
-- \micro|Add3~19\ = CARRY((!\micro|Add3~17\) # (!\micro|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(9),
	datad => VCC,
	cin => \micro|Add3~17\,
	combout => \micro|Add3~18_combout\,
	cout => \micro|Add3~19\);

-- Location: LCCOMB_X26_Y18_N18
\micro|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~18_combout\ = (\micro|PC\(9) & (\micro|Add2~17\ & VCC)) # (!\micro|PC\(9) & (!\micro|Add2~17\))
-- \micro|Add2~19\ = CARRY((!\micro|PC\(9) & !\micro|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|PC\(9),
	datad => VCC,
	cin => \micro|Add2~17\,
	combout => \micro|Add2~18_combout\,
	cout => \micro|Add2~19\);

-- Location: LCCOMB_X29_Y18_N16
\micro|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~58_combout\ = (\micro|Add0~0_combout\ & ((\micro|B[7]~0_combout\ & ((\micro|Add2~18_combout\))) # (!\micro|B[7]~0_combout\ & (\micro|Add3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add0~0_combout\,
	datab => \micro|Add3~18_combout\,
	datac => \micro|B[7]~0_combout\,
	datad => \micro|Add2~18_combout\,
	combout => \micro|Add0~58_combout\);

-- Location: LCCOMB_X29_Y18_N4
\micro|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~59_combout\ = (\micro|Add0~58_combout\) # ((\micro|Add0~37_combout\ & \micro|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Add0~37_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~58_combout\,
	combout => \micro|Add0~59_combout\);

-- Location: FF_X29_Y18_N5
\micro|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~59_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(9));

-- Location: LCCOMB_X30_Y18_N20
\micro|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~39_combout\ = (\micro|PC\(10) & (\micro|Add0~38\ $ (GND))) # (!\micro|PC\(10) & (!\micro|Add0~38\ & VCC))
-- \micro|Add0~40\ = CARRY((\micro|PC\(10) & !\micro|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|PC\(10),
	datad => VCC,
	cin => \micro|Add0~38\,
	combout => \micro|Add0~39_combout\,
	cout => \micro|Add0~40\);

-- Location: LCCOMB_X28_Y18_N20
\micro|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~20_combout\ = (\micro|PC\(10) & (\micro|Add3~19\ $ (GND))) # (!\micro|PC\(10) & (!\micro|Add3~19\ & VCC))
-- \micro|Add3~21\ = CARRY((\micro|PC\(10) & !\micro|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(10),
	datad => VCC,
	cin => \micro|Add3~19\,
	combout => \micro|Add3~20_combout\,
	cout => \micro|Add3~21\);

-- Location: LCCOMB_X26_Y18_N20
\micro|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~20_combout\ = (\micro|PC\(10) & ((GND) # (!\micro|Add2~19\))) # (!\micro|PC\(10) & (\micro|Add2~19\ $ (GND)))
-- \micro|Add2~21\ = CARRY((\micro|PC\(10)) # (!\micro|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(10),
	datad => VCC,
	cin => \micro|Add2~19\,
	combout => \micro|Add2~20_combout\,
	cout => \micro|Add2~21\);

-- Location: LCCOMB_X29_Y18_N2
\micro|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~60_combout\ = (\micro|Add0~0_combout\ & ((\micro|B[7]~0_combout\ & ((\micro|Add2~20_combout\))) # (!\micro|B[7]~0_combout\ & (\micro|Add3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[7]~0_combout\,
	datab => \micro|Add0~0_combout\,
	datac => \micro|Add3~20_combout\,
	datad => \micro|Add2~20_combout\,
	combout => \micro|Add0~60_combout\);

-- Location: LCCOMB_X29_Y18_N30
\micro|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~61_combout\ = (\micro|Add0~60_combout\) # ((\micro|Add0~39_combout\ & \micro|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add0~39_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~60_combout\,
	combout => \micro|Add0~61_combout\);

-- Location: FF_X29_Y18_N31
\micro|PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~61_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(10));

-- Location: LCCOMB_X30_Y18_N22
\micro|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~41_combout\ = (\micro|PC\(11) & (!\micro|Add0~40\)) # (!\micro|PC\(11) & ((\micro|Add0~40\) # (GND)))
-- \micro|Add0~42\ = CARRY((!\micro|Add0~40\) # (!\micro|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(11),
	datad => VCC,
	cin => \micro|Add0~40\,
	combout => \micro|Add0~41_combout\,
	cout => \micro|Add0~42\);

-- Location: LCCOMB_X28_Y18_N22
\micro|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~22_combout\ = (\micro|PC\(11) & (!\micro|Add3~21\)) # (!\micro|PC\(11) & ((\micro|Add3~21\) # (GND)))
-- \micro|Add3~23\ = CARRY((!\micro|Add3~21\) # (!\micro|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|PC\(11),
	datad => VCC,
	cin => \micro|Add3~21\,
	combout => \micro|Add3~22_combout\,
	cout => \micro|Add3~23\);

-- Location: LCCOMB_X26_Y18_N22
\micro|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~22_combout\ = (\micro|PC\(11) & (\micro|Add2~21\ & VCC)) # (!\micro|PC\(11) & (!\micro|Add2~21\))
-- \micro|Add2~23\ = CARRY((!\micro|PC\(11) & !\micro|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(11),
	datad => VCC,
	cin => \micro|Add2~21\,
	combout => \micro|Add2~22_combout\,
	cout => \micro|Add2~23\);

-- Location: LCCOMB_X29_Y18_N24
\micro|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~62_combout\ = (\micro|Add0~0_combout\ & ((\micro|B[7]~0_combout\ & ((\micro|Add2~22_combout\))) # (!\micro|B[7]~0_combout\ & (\micro|Add3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[7]~0_combout\,
	datab => \micro|Add0~0_combout\,
	datac => \micro|Add3~22_combout\,
	datad => \micro|Add2~22_combout\,
	combout => \micro|Add0~62_combout\);

-- Location: LCCOMB_X29_Y18_N12
\micro|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~63_combout\ = (\micro|Add0~62_combout\) # ((\micro|Add0~41_combout\ & \micro|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Add0~41_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~62_combout\,
	combout => \micro|Add0~63_combout\);

-- Location: FF_X29_Y18_N13
\micro|PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~63_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(11));

-- Location: LCCOMB_X30_Y18_N24
\micro|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~43_combout\ = (\micro|PC\(12) & (\micro|Add0~42\ $ (GND))) # (!\micro|PC\(12) & (!\micro|Add0~42\ & VCC))
-- \micro|Add0~44\ = CARRY((\micro|PC\(12) & !\micro|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|PC\(12),
	datad => VCC,
	cin => \micro|Add0~42\,
	combout => \micro|Add0~43_combout\,
	cout => \micro|Add0~44\);

-- Location: LCCOMB_X28_Y18_N24
\micro|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~24_combout\ = (\micro|PC\(12) & (\micro|Add3~23\ $ (GND))) # (!\micro|PC\(12) & (!\micro|Add3~23\ & VCC))
-- \micro|Add3~25\ = CARRY((\micro|PC\(12) & !\micro|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|PC\(12),
	datad => VCC,
	cin => \micro|Add3~23\,
	combout => \micro|Add3~24_combout\,
	cout => \micro|Add3~25\);

-- Location: LCCOMB_X26_Y18_N24
\micro|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~24_combout\ = (\micro|PC\(12) & ((GND) # (!\micro|Add2~23\))) # (!\micro|PC\(12) & (\micro|Add2~23\ $ (GND)))
-- \micro|Add2~25\ = CARRY((\micro|PC\(12)) # (!\micro|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(12),
	datad => VCC,
	cin => \micro|Add2~23\,
	combout => \micro|Add2~24_combout\,
	cout => \micro|Add2~25\);

-- Location: LCCOMB_X29_Y18_N6
\micro|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~64_combout\ = (\micro|Add0~0_combout\ & ((\micro|B[7]~0_combout\ & ((\micro|Add2~24_combout\))) # (!\micro|B[7]~0_combout\ & (\micro|Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[7]~0_combout\,
	datab => \micro|Add0~0_combout\,
	datac => \micro|Add3~24_combout\,
	datad => \micro|Add2~24_combout\,
	combout => \micro|Add0~64_combout\);

-- Location: LCCOMB_X29_Y18_N22
\micro|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~65_combout\ = (\micro|Add0~64_combout\) # ((\micro|Add0~43_combout\ & \micro|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Add0~43_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~64_combout\,
	combout => \micro|Add0~65_combout\);

-- Location: FF_X29_Y18_N23
\micro|PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~65_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(12));

-- Location: LCCOMB_X30_Y18_N26
\micro|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~45_combout\ = (\micro|PC\(13) & (!\micro|Add0~44\)) # (!\micro|PC\(13) & ((\micro|Add0~44\) # (GND)))
-- \micro|Add0~46\ = CARRY((!\micro|Add0~44\) # (!\micro|PC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|PC\(13),
	datad => VCC,
	cin => \micro|Add0~44\,
	combout => \micro|Add0~45_combout\,
	cout => \micro|Add0~46\);

-- Location: LCCOMB_X28_Y18_N26
\micro|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~26_combout\ = (\micro|PC\(13) & (!\micro|Add3~25\)) # (!\micro|PC\(13) & ((\micro|Add3~25\) # (GND)))
-- \micro|Add3~27\ = CARRY((!\micro|Add3~25\) # (!\micro|PC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(13),
	datad => VCC,
	cin => \micro|Add3~25\,
	combout => \micro|Add3~26_combout\,
	cout => \micro|Add3~27\);

-- Location: LCCOMB_X26_Y18_N26
\micro|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~26_combout\ = (\micro|PC\(13) & (\micro|Add2~25\ & VCC)) # (!\micro|PC\(13) & (!\micro|Add2~25\))
-- \micro|Add2~27\ = CARRY((!\micro|PC\(13) & !\micro|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(13),
	datad => VCC,
	cin => \micro|Add2~25\,
	combout => \micro|Add2~26_combout\,
	cout => \micro|Add2~27\);

-- Location: LCCOMB_X29_Y18_N0
\micro|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~34_combout\ = (\micro|Add0~0_combout\ & ((\micro|B[7]~0_combout\ & ((\micro|Add2~26_combout\))) # (!\micro|B[7]~0_combout\ & (\micro|Add3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[7]~0_combout\,
	datab => \micro|Add0~0_combout\,
	datac => \micro|Add3~26_combout\,
	datad => \micro|Add2~26_combout\,
	combout => \micro|Add0~34_combout\);

-- Location: LCCOMB_X29_Y18_N20
\micro|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~47_combout\ = (\micro|Add0~34_combout\) # ((\micro|Add0~45_combout\ & \micro|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add0~45_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~34_combout\,
	combout => \micro|Add0~47_combout\);

-- Location: FF_X29_Y18_N21
\micro|PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~47_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(13));

-- Location: LCCOMB_X30_Y18_N28
\micro|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~48_combout\ = (\micro|PC\(14) & (\micro|Add0~46\ $ (GND))) # (!\micro|PC\(14) & (!\micro|Add0~46\ & VCC))
-- \micro|Add0~49\ = CARRY((\micro|PC\(14) & !\micro|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(14),
	datad => VCC,
	cin => \micro|Add0~46\,
	combout => \micro|Add0~48_combout\,
	cout => \micro|Add0~49\);

-- Location: LCCOMB_X28_Y18_N28
\micro|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~28_combout\ = (\micro|PC\(14) & (\micro|Add3~27\ $ (GND))) # (!\micro|PC\(14) & (!\micro|Add3~27\ & VCC))
-- \micro|Add3~29\ = CARRY((\micro|PC\(14) & !\micro|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|PC\(14),
	datad => VCC,
	cin => \micro|Add3~27\,
	combout => \micro|Add3~28_combout\,
	cout => \micro|Add3~29\);

-- Location: LCCOMB_X26_Y18_N28
\micro|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~28_combout\ = (\micro|PC\(14) & ((GND) # (!\micro|Add2~27\))) # (!\micro|PC\(14) & (\micro|Add2~27\ $ (GND)))
-- \micro|Add2~29\ = CARRY((\micro|PC\(14)) # (!\micro|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \micro|PC\(14),
	datad => VCC,
	cin => \micro|Add2~27\,
	combout => \micro|Add2~28_combout\,
	cout => \micro|Add2~29\);

-- Location: LCCOMB_X27_Y18_N2
\micro|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~54_combout\ = (\micro|B[7]~0_combout\ & ((\micro|Add2~28_combout\))) # (!\micro|B[7]~0_combout\ & (\micro|Add3~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Add3~28_combout\,
	datac => \micro|B[7]~0_combout\,
	datad => \micro|Add2~28_combout\,
	combout => \micro|Add0~54_combout\);

-- Location: LCCOMB_X27_Y18_N22
\micro|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~55_combout\ = (\micro|Add0~48_combout\ & ((\micro|Add0~18_combout\) # ((\micro|Add0~0_combout\ & \micro|Add0~54_combout\)))) # (!\micro|Add0~48_combout\ & (\micro|Add0~0_combout\ & ((\micro|Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add0~48_combout\,
	datab => \micro|Add0~0_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~54_combout\,
	combout => \micro|Add0~55_combout\);

-- Location: FF_X27_Y18_N23
\micro|PC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~55_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(14));

-- Location: LCCOMB_X30_Y18_N30
\micro|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~50_combout\ = \micro|PC\(15) $ (\micro|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \micro|PC\(15),
	cin => \micro|Add0~49\,
	combout => \micro|Add0~50_combout\);

-- Location: LCCOMB_X28_Y18_N30
\micro|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add3~30_combout\ = \micro|Add3~29\ $ (\micro|PC\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \micro|PC\(15),
	cin => \micro|Add3~29\,
	combout => \micro|Add3~30_combout\);

-- Location: LCCOMB_X26_Y18_N30
\micro|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add2~30_combout\ = \micro|Add2~29\ $ (!\micro|PC\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \micro|PC\(15),
	cin => \micro|Add2~29\,
	combout => \micro|Add2~30_combout\);

-- Location: LCCOMB_X27_Y18_N0
\micro|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~52_combout\ = (\micro|B[7]~0_combout\ & ((\micro|Add2~30_combout\))) # (!\micro|B[7]~0_combout\ & (\micro|Add3~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B[7]~0_combout\,
	datac => \micro|Add3~30_combout\,
	datad => \micro|Add2~30_combout\,
	combout => \micro|Add0~52_combout\);

-- Location: LCCOMB_X27_Y18_N24
\micro|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add0~53_combout\ = (\micro|Add0~50_combout\ & ((\micro|Add0~18_combout\) # ((\micro|Add0~0_combout\ & \micro|Add0~52_combout\)))) # (!\micro|Add0~50_combout\ & (\micro|Add0~0_combout\ & ((\micro|Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Add0~50_combout\,
	datab => \micro|Add0~0_combout\,
	datac => \micro|Add0~18_combout\,
	datad => \micro|Add0~52_combout\,
	combout => \micro|Add0~53_combout\);

-- Location: FF_X27_Y18_N25
\micro|PC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add0~53_combout\,
	ena => \micro|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|PC\(15));

-- Location: LCCOMB_X26_Y20_N12
\micro|XH[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|XH[7]~feeder_combout\ = \micro|B[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|B[7]~0_combout\,
	combout => \micro|XH[7]~feeder_combout\);

-- Location: FF_X26_Y20_N13
\micro|XH[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|XH[7]~feeder_combout\,
	ena => \micro|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|XH\(7));

-- Location: LCCOMB_X26_Y20_N24
\micro|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector0~0_combout\ = (\micro|WideNor0~4_combout\ & ((\micro|XH\(7)))) # (!\micro|WideNor0~4_combout\ & (\micro|PC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|WideNor0~4_combout\,
	datac => \micro|PC\(15),
	datad => \micro|XH\(7),
	combout => \micro|Selector0~0_combout\);

-- Location: FF_X26_Y20_N25
\micro|Dir[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector0~0_combout\,
	ena => \micro|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Dir\(15));

-- Location: LCCOMB_X32_Y18_N8
\ram|sram|ram_block|auto_generated|address_reg_a[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|address_reg_a[2]~feeder_combout\ = \micro|Dir\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|Dir\(15),
	combout => \ram|sram|ram_block|auto_generated|address_reg_a[2]~feeder_combout\);

-- Location: FF_X32_Y18_N9
\ram|sram|ram_block|auto_generated|address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram|sram|ram_block|auto_generated|address_reg_a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|sram|ram_block|auto_generated|address_reg_a\(2));

-- Location: LCCOMB_X15_Y22_N2
\micro|Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector63~0_combout\ = (\micro|Equal29~0_combout\ & (\micro|B\(6))) # (!\micro|Equal29~0_combout\ & ((\micro|A\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|B\(6),
	datac => \micro|Equal29~0_combout\,
	datad => \micro|A\(6),
	combout => \micro|Selector63~0_combout\);

-- Location: FF_X15_Y22_N3
\micro|Data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector63~0_combout\,
	ena => \micro|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Data_out\(6));

-- Location: M9K_X22_Y3_N0
\ram|sram|ram_block|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode468w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode559w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y32_N0
\ram|sram|ram_block|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode448w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode537w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y14_N0
\ram|sram|ram_block|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008440160000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode431w\(3),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode519w\(3),
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y26_N0
\ram|sram|ram_block|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode458w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode548w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y18_N12
\ram|sram|ram_block|auto_generated|mux2|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~4_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|address_reg_a\(0)) # ((\ram|sram|ram_block|auto_generated|ram_block1a22~portadataout\)))) # 
-- (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (\ram|sram|ram_block|auto_generated|ram_block1a6~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a6~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a22~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~4_combout\);

-- Location: LCCOMB_X24_Y18_N4
\ram|sram|ram_block|auto_generated|mux2|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~5_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|mux2|_~4_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a30~portadataout\)) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~4_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a14~portadataout\))))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (((\ram|sram|ram_block|auto_generated|mux2|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datab => \ram|sram|ram_block|auto_generated|ram_block1a30~portadataout\,
	datac => \ram|sram|ram_block|auto_generated|ram_block1a14~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~4_combout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~5_combout\);

-- Location: M9K_X33_Y30_N0
\ram|sram|ram_block|auto_generated|ram_block1a54\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode498w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode592w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a54_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a54_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a54_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y27_N0
\ram|sram|ram_block|auto_generated|ram_block1a62\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode508w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode603w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a62_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a62_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a62_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y2_N0
\ram|sram|ram_block|auto_generated|ram_block1a46\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode488w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode581w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a46_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a46_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y22_N0
\ram|sram|ram_block|auto_generated|ram_block1a38\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoria.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_m3a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram|sram|ram_block|auto_generated|decode3|w_anode478w[3]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \ram|sram|ram_block|auto_generated|rden_decode|w_anode570w[3]~0_combout\,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a38_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a38_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y18_N0
\ram|sram|ram_block|auto_generated|mux2|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~6_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (\ram|sram|ram_block|auto_generated|address_reg_a\(0))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & 
-- ((\ram|sram|ram_block|auto_generated|address_reg_a\(0) & (\ram|sram|ram_block|auto_generated|ram_block1a46~portadataout\)) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(0) & ((\ram|sram|ram_block|auto_generated|ram_block1a38~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(0),
	datac => \ram|sram|ram_block|auto_generated|ram_block1a46~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|ram_block1a38~portadataout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~6_combout\);

-- Location: LCCOMB_X25_Y18_N2
\ram|sram|ram_block|auto_generated|mux2|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|sram|ram_block|auto_generated|mux2|_~7_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(1) & ((\ram|sram|ram_block|auto_generated|mux2|_~6_combout\ & ((\ram|sram|ram_block|auto_generated|ram_block1a62~portadataout\))) # 
-- (!\ram|sram|ram_block|auto_generated|mux2|_~6_combout\ & (\ram|sram|ram_block|auto_generated|ram_block1a54~portadataout\)))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(1) & (((\ram|sram|ram_block|auto_generated|mux2|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|sram|ram_block|auto_generated|address_reg_a\(1),
	datab => \ram|sram|ram_block|auto_generated|ram_block1a54~portadataout\,
	datac => \ram|sram|ram_block|auto_generated|ram_block1a62~portadataout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~6_combout\,
	combout => \ram|sram|ram_block|auto_generated|mux2|_~7_combout\);

-- Location: LCCOMB_X25_Y18_N8
\micro|B[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|B[6]~1_combout\ = (\ram|sram|ram_block|auto_generated|address_reg_a\(2) & ((\ram|sram|ram_block|auto_generated|mux2|_~7_combout\))) # (!\ram|sram|ram_block|auto_generated|address_reg_a\(2) & (\ram|sram|ram_block|auto_generated|mux2|_~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram|sram|ram_block|auto_generated|address_reg_a\(2),
	datac => \ram|sram|ram_block|auto_generated|mux2|_~5_combout\,
	datad => \ram|sram|ram_block|auto_generated|mux2|_~7_combout\,
	combout => \micro|B[6]~1_combout\);

-- Location: LCCOMB_X23_Y22_N6
\micro|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector17~3_combout\ = (\micro|Equal4~2_combout\ & ((\micro|B[6]~1_combout\) # ((!\micro|e_siguiente\(0) & \micro|Equal15~1_combout\)))) # (!\micro|Equal4~2_combout\ & (!\micro|e_siguiente\(0) & ((\micro|Equal15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal4~2_combout\,
	datab => \micro|e_siguiente\(0),
	datac => \micro|B[6]~1_combout\,
	datad => \micro|Equal15~1_combout\,
	combout => \micro|Selector17~3_combout\);

-- Location: LCCOMB_X23_Y22_N24
\micro|Selector17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector17~4_combout\ = (\micro|Equal29~0_combout\) # (((\micro|Selector17~3_combout\) # (!\micro|Selector17~2_combout\)) # (!\micro|Selector17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal29~0_combout\,
	datab => \micro|Selector17~0_combout\,
	datac => \micro|Selector17~2_combout\,
	datad => \micro|Selector17~3_combout\,
	combout => \micro|Selector17~4_combout\);

-- Location: FF_X23_Y22_N25
\micro|e_siguiente[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|e_siguiente\(10));

-- Location: LCCOMB_X21_Y22_N22
\micro|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal8~0_combout\ = (!\micro|e_siguiente\(2) & (\micro|Equal5~1_combout\ & (\micro|e_siguiente\(10) & \micro|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(2),
	datab => \micro|Equal5~1_combout\,
	datac => \micro|e_siguiente\(10),
	datad => \micro|Equal5~0_combout\,
	combout => \micro|Equal8~0_combout\);

-- Location: LCCOMB_X21_Y22_N0
\micro|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector17~1_combout\ = (\micro|Equal8~0_combout\) # ((!\micro|e_siguiente\(1) & (\micro|e_siguiente\(10) & \micro|Equal25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal8~0_combout\,
	datab => \micro|e_siguiente\(1),
	datac => \micro|e_siguiente\(10),
	datad => \micro|Equal25~1_combout\,
	combout => \micro|Selector17~1_combout\);

-- Location: LCCOMB_X21_Y22_N6
\micro|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector17~2_combout\ = ((\micro|e_siguiente\(1) & ((!\micro|e_siguiente\(7)))) # (!\micro|e_siguiente\(1) & (\micro|e_siguiente\(0)))) # (!\micro|Selector17~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(1),
	datab => \micro|Selector17~1_combout\,
	datac => \micro|e_siguiente\(0),
	datad => \micro|e_siguiente\(7),
	combout => \micro|Selector17~2_combout\);

-- Location: LCCOMB_X21_Y22_N8
\micro|Equal15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal15~2_combout\ = (!\micro|e_siguiente\(0) & \micro|Equal15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \micro|e_siguiente\(0),
	datad => \micro|Equal15~1_combout\,
	combout => \micro|Equal15~2_combout\);

-- Location: LCCOMB_X21_Y22_N12
\micro|Selector22~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector22~9_combout\ = ((\micro|e_siguiente\(1)) # ((!\micro|Equal5~3_combout\ & !\micro|Equal8~0_combout\))) # (!\micro|e_siguiente\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal5~3_combout\,
	datab => \micro|e_siguiente\(0),
	datac => \micro|Equal8~0_combout\,
	datad => \micro|e_siguiente\(1),
	combout => \micro|Selector22~9_combout\);

-- Location: LCCOMB_X21_Y22_N18
\micro|Selector22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector22~5_combout\ = (\micro|Selector17~2_combout\ & (!\micro|Equal15~2_combout\ & (\micro|Selector22~4_combout\ & \micro|Selector22~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Selector17~2_combout\,
	datab => \micro|Equal15~2_combout\,
	datac => \micro|Selector22~4_combout\,
	datad => \micro|Selector22~9_combout\,
	combout => \micro|Selector22~5_combout\);

-- Location: LCCOMB_X18_Y22_N4
\micro|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector16~0_combout\ = ((\micro|WideNor0~4_combout\) # ((\micro|Equal4~2_combout\ & \micro|B[7]~0_combout\))) # (!\micro|Selector22~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Selector22~5_combout\,
	datab => \micro|Equal4~2_combout\,
	datac => \micro|WideNor0~4_combout\,
	datad => \micro|B[7]~0_combout\,
	combout => \micro|Selector16~0_combout\);

-- Location: FF_X18_Y22_N5
\micro|e_siguiente[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|e_siguiente\(11));

-- Location: LCCOMB_X20_Y22_N18
\micro|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal5~0_combout\ = (\micro|e_siguiente\(11) & (!\micro|e_siguiente\(8) & (\micro|e_siguiente\(6) & \micro|e_siguiente\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(11),
	datab => \micro|e_siguiente\(8),
	datac => \micro|e_siguiente\(6),
	datad => \micro|e_siguiente\(5),
	combout => \micro|Equal5~0_combout\);

-- Location: LCCOMB_X21_Y22_N16
\micro|Equal25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal25~0_combout\ = (\micro|e_siguiente\(9) & \micro|e_siguiente\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \micro|e_siguiente\(9),
	datad => \micro|e_siguiente\(4),
	combout => \micro|Equal25~0_combout\);

-- Location: LCCOMB_X21_Y22_N10
\micro|Equal25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal25~1_combout\ = (!\micro|e_siguiente\(7) & (\micro|Equal5~0_combout\ & (!\micro|e_siguiente\(2) & \micro|Equal25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(7),
	datab => \micro|Equal5~0_combout\,
	datac => \micro|e_siguiente\(2),
	datad => \micro|Equal25~0_combout\,
	combout => \micro|Equal25~1_combout\);

-- Location: LCCOMB_X23_Y22_N18
\micro|Selector23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector23~9_combout\ = (!\micro|e_siguiente\(1) & \micro|Equal25~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(1),
	datad => \micro|Equal25~1_combout\,
	combout => \micro|Selector23~9_combout\);

-- Location: LCCOMB_X23_Y22_N26
\micro|Selector23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector23~10_combout\ = (\micro|Selector23~9_combout\) # (((\micro|Equal4~2_combout\ & \micro|B[0]~7_combout\)) # (!\micro|Selector23~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal4~2_combout\,
	datab => \micro|Selector23~9_combout\,
	datac => \micro|Selector23~8_combout\,
	datad => \micro|B[0]~7_combout\,
	combout => \micro|Selector23~10_combout\);

-- Location: FF_X23_Y22_N27
\micro|e_siguiente[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector23~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|e_siguiente\(4));

-- Location: LCCOMB_X20_Y22_N6
\micro|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal2~1_combout\ = (!\micro|e_siguiente\(7) & !\micro|e_siguiente\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \micro|e_siguiente\(7),
	datad => \micro|e_siguiente\(4),
	combout => \micro|Equal2~1_combout\);

-- Location: LCCOMB_X20_Y22_N4
\micro|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal2~0_combout\ = (!\micro|e_siguiente\(8) & (!\micro|e_siguiente\(10) & (!\micro|e_siguiente\(2) & !\micro|e_siguiente\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(8),
	datab => \micro|e_siguiente\(10),
	datac => \micro|e_siguiente\(2),
	datad => \micro|e_siguiente\(11),
	combout => \micro|Equal2~0_combout\);

-- Location: LCCOMB_X20_Y22_N12
\micro|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal2~2_combout\ = (\micro|Equal2~1_combout\ & (!\micro|e_siguiente\(5) & (\micro|Equal2~0_combout\ & !\micro|e_siguiente\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal2~1_combout\,
	datab => \micro|e_siguiente\(5),
	datac => \micro|Equal2~0_combout\,
	datad => \micro|e_siguiente\(6),
	combout => \micro|Equal2~2_combout\);

-- Location: LCCOMB_X19_Y22_N8
\micro|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal4~2_combout\ = (!\micro|e_siguiente\(0) & (!\micro|e_siguiente\(9) & (\micro|Equal2~2_combout\ & \micro|e_siguiente\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(0),
	datab => \micro|e_siguiente\(9),
	datac => \micro|Equal2~2_combout\,
	datad => \micro|e_siguiente\(1),
	combout => \micro|Equal4~2_combout\);

-- Location: LCCOMB_X20_Y22_N24
\micro|Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector21~2_combout\ = (((\micro|Equal4~2_combout\ & \micro|B[2]~5_combout\)) # (!\micro|Selector22~6_combout\)) # (!\micro|Selector21~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Selector21~3_combout\,
	datab => \micro|Equal4~2_combout\,
	datac => \micro|B[2]~5_combout\,
	datad => \micro|Selector22~6_combout\,
	combout => \micro|Selector21~2_combout\);

-- Location: FF_X20_Y22_N25
\micro|e_siguiente[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|e_siguiente\(6));

-- Location: LCCOMB_X20_Y22_N10
\micro|Equal17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal17~2_combout\ = (\micro|e_siguiente\(5) & (\micro|e_siguiente\(9) & \micro|e_siguiente\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|e_siguiente\(5),
	datac => \micro|e_siguiente\(9),
	datad => \micro|e_siguiente\(6),
	combout => \micro|Equal17~2_combout\);

-- Location: LCCOMB_X20_Y22_N2
\micro|Equal17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal17~3_combout\ = (\micro|Equal17~2_combout\ & (!\micro|e_siguiente\(7) & (\micro|Equal2~0_combout\ & !\micro|e_siguiente\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal17~2_combout\,
	datab => \micro|e_siguiente\(7),
	datac => \micro|Equal2~0_combout\,
	datad => \micro|e_siguiente\(4),
	combout => \micro|Equal17~3_combout\);

-- Location: LCCOMB_X19_Y22_N12
\micro|Selector22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector22~6_combout\ = (\micro|Selector22~5_combout\ & (((\micro|e_siguiente\(1) & \micro|e_siguiente\(0))) # (!\micro|Equal17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal17~3_combout\,
	datab => \micro|e_siguiente\(1),
	datac => \micro|e_siguiente\(0),
	datad => \micro|Selector22~5_combout\,
	combout => \micro|Selector22~6_combout\);

-- Location: LCCOMB_X19_Y22_N4
\micro|Selector23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector23~11_combout\ = (\micro|e_siguiente\(1)) # (!\micro|Equal21~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|e_siguiente\(1),
	datad => \micro|Equal21~2_combout\,
	combout => \micro|Selector23~11_combout\);

-- Location: LCCOMB_X19_Y22_N6
\micro|Selector22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector22~7_combout\ = (\micro|Equal7~0_combout\ & ((\micro|Equal21~2_combout\) # ((\micro|Equal4~2_combout\ & \micro|B[1]~6_combout\)))) # (!\micro|Equal7~0_combout\ & (((\micro|Equal4~2_combout\ & \micro|B[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal7~0_combout\,
	datab => \micro|Equal21~2_combout\,
	datac => \micro|Equal4~2_combout\,
	datad => \micro|B[1]~6_combout\,
	combout => \micro|Selector22~7_combout\);

-- Location: LCCOMB_X19_Y22_N18
\micro|Selector22~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector22~8_combout\ = ((\micro|WideNor0~4_combout\) # ((\micro|Selector22~7_combout\) # (!\micro|Selector23~11_combout\))) # (!\micro|Selector22~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Selector22~6_combout\,
	datab => \micro|WideNor0~4_combout\,
	datac => \micro|Selector23~11_combout\,
	datad => \micro|Selector22~7_combout\,
	combout => \micro|Selector22~8_combout\);

-- Location: FF_X19_Y22_N19
\micro|e_siguiente[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector22~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|e_siguiente\(5));

-- Location: LCCOMB_X20_Y22_N22
\micro|Equal35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal35~0_combout\ = (!\micro|e_siguiente\(5) & (\micro|e_siguiente\(9) & \micro|e_siguiente\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|e_siguiente\(5),
	datac => \micro|e_siguiente\(9),
	datad => \micro|e_siguiente\(6),
	combout => \micro|Equal35~0_combout\);

-- Location: LCCOMB_X20_Y22_N8
\micro|Equal35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal35~1_combout\ = (\micro|Equal35~0_combout\ & (\micro|Equal21~0_combout\ & (\micro|e_siguiente\(7) & \micro|e_siguiente\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal35~0_combout\,
	datab => \micro|Equal21~0_combout\,
	datac => \micro|e_siguiente\(7),
	datad => \micro|e_siguiente\(4),
	combout => \micro|Equal35~1_combout\);

-- Location: LCCOMB_X19_Y22_N14
\micro|Selector23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector23~8_combout\ = (\micro|e_siguiente\(0) & ((\micro|e_siguiente\(1)) # ((!\micro|Equal35~1_combout\ & !\micro|Equal21~2_combout\)))) # (!\micro|e_siguiente\(0) & (((!\micro|Equal35~1_combout\ & !\micro|Equal21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(0),
	datab => \micro|e_siguiente\(1),
	datac => \micro|Equal35~1_combout\,
	datad => \micro|Equal21~2_combout\,
	combout => \micro|Selector23~8_combout\);

-- Location: LCCOMB_X23_Y22_N12
\micro|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector20~0_combout\ = (\micro|Equal15~1_combout\ & (((\micro|B[3]~4_combout\ & \micro|Equal4~2_combout\)) # (!\micro|e_siguiente\(0)))) # (!\micro|Equal15~1_combout\ & (\micro|B[3]~4_combout\ & ((\micro|Equal4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal15~1_combout\,
	datab => \micro|B[3]~4_combout\,
	datac => \micro|e_siguiente\(0),
	datad => \micro|Equal4~2_combout\,
	combout => \micro|Selector20~0_combout\);

-- Location: LCCOMB_X23_Y22_N4
\micro|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector20~1_combout\ = ((\micro|Selector20~0_combout\) # ((\micro|Equal8~0_combout\ & \micro|e_siguiente\(7)))) # (!\micro|Selector23~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Selector23~8_combout\,
	datab => \micro|Equal8~0_combout\,
	datac => \micro|e_siguiente\(7),
	datad => \micro|Selector20~0_combout\,
	combout => \micro|Selector20~1_combout\);

-- Location: FF_X23_Y22_N5
\micro|e_siguiente[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|e_siguiente\(7));

-- Location: LCCOMB_X23_Y22_N8
\micro|Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal13~2_combout\ = (\micro|e_siguiente\(1) & (\micro|e_siguiente\(7) & (!\micro|e_siguiente\(0) & \micro|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(1),
	datab => \micro|e_siguiente\(7),
	datac => \micro|e_siguiente\(0),
	datad => \micro|Equal8~0_combout\,
	combout => \micro|Equal13~2_combout\);

-- Location: LCCOMB_X19_Y22_N28
\micro|estados[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|estados[0]~3_combout\ = (\micro|e_siguiente\(0)) # (((!\micro|Equal35~1_combout\ & !\micro|Equal21~2_combout\)) # (!\micro|e_siguiente\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(0),
	datab => \micro|e_siguiente\(1),
	datac => \micro|Equal35~1_combout\,
	datad => \micro|Equal21~2_combout\,
	combout => \micro|estados[0]~3_combout\);

-- Location: LCCOMB_X18_Y22_N8
\micro|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideOr1~2_combout\ = (\micro|Selector22~9_combout\ & \micro|WideNor0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \micro|Selector22~9_combout\,
	datad => \micro|WideNor0~11_combout\,
	combout => \micro|WideOr1~2_combout\);

-- Location: LCCOMB_X18_Y22_N22
\micro|WideOr1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideOr1~3_combout\ = (!\micro|Equal13~2_combout\ & (\micro|estados[0]~3_combout\ & (\micro|WideOr1~2_combout\ & \micro|Selector18~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal13~2_combout\,
	datab => \micro|estados[0]~3_combout\,
	datac => \micro|WideOr1~2_combout\,
	datad => \micro|Selector18~8_combout\,
	combout => \micro|WideOr1~3_combout\);

-- Location: LCCOMB_X18_Y22_N18
\micro|WideOr21\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideOr21~combout\ = ((\micro|e_siguiente\(0) & (!\micro|e_siguiente\(1) & \micro|Equal25~1_combout\))) # (!\micro|WideOr1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|WideOr1~3_combout\,
	datab => \micro|e_siguiente\(0),
	datac => \micro|e_siguiente\(1),
	datad => \micro|Equal25~1_combout\,
	combout => \micro|WideOr21~combout\);

-- Location: FF_X18_Y22_N19
\micro|e_siguiente[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|WideOr21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|e_siguiente\(1));

-- Location: LCCOMB_X19_Y22_N26
\micro|Selector21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector21~3_combout\ = (\micro|e_siguiente\(0) & ((\micro|e_siguiente\(1)) # ((!\micro|Equal35~1_combout\ & !\micro|Equal25~1_combout\)))) # (!\micro|e_siguiente\(0) & (((!\micro|Equal35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(0),
	datab => \micro|e_siguiente\(1),
	datac => \micro|Equal35~1_combout\,
	datad => \micro|Equal25~1_combout\,
	combout => \micro|Selector21~3_combout\);

-- Location: LCCOMB_X19_Y22_N30
\micro|Selector18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector18~9_combout\ = (\micro|e_siguiente\(0) & (\micro|e_siguiente\(9) & (\micro|Equal2~2_combout\))) # (!\micro|e_siguiente\(0) & ((\micro|Equal25~1_combout\) # ((\micro|e_siguiente\(9) & \micro|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(0),
	datab => \micro|e_siguiente\(9),
	datac => \micro|Equal2~2_combout\,
	datad => \micro|Equal25~1_combout\,
	combout => \micro|Selector18~9_combout\);

-- Location: LCCOMB_X19_Y22_N22
\micro|Selector18~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector18~12_combout\ = (\micro|e_siguiente\(1)) # (!\micro|Equal17~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|e_siguiente\(1),
	datad => \micro|Equal17~3_combout\,
	combout => \micro|Selector18~12_combout\);

-- Location: LCCOMB_X19_Y22_N16
\micro|Selector18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector18~10_combout\ = (\micro|Selector18~12_combout\ & (\micro|Selector18~8_combout\ & ((!\micro|B[5]~2_combout\) # (!\micro|Equal4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Selector18~12_combout\,
	datab => \micro|Equal4~2_combout\,
	datac => \micro|B[5]~2_combout\,
	datad => \micro|Selector18~8_combout\,
	combout => \micro|Selector18~10_combout\);

-- Location: LCCOMB_X19_Y22_N0
\micro|Selector18~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector18~11_combout\ = (((!\micro|e_siguiente\(1) & \micro|Selector18~9_combout\)) # (!\micro|Selector18~10_combout\)) # (!\micro|Selector21~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Selector21~3_combout\,
	datab => \micro|e_siguiente\(1),
	datac => \micro|Selector18~9_combout\,
	datad => \micro|Selector18~10_combout\,
	combout => \micro|Selector18~11_combout\);

-- Location: FF_X19_Y22_N1
\micro|e_siguiente[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector18~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|e_siguiente\(9));

-- Location: LCCOMB_X20_Y22_N30
\micro|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal15~0_combout\ = (!\micro|e_siguiente\(9) & (!\micro|e_siguiente\(4) & (\micro|e_siguiente\(7) & \micro|e_siguiente\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(9),
	datab => \micro|e_siguiente\(4),
	datac => \micro|e_siguiente\(7),
	datad => \micro|e_siguiente\(10),
	combout => \micro|Equal15~0_combout\);

-- Location: LCCOMB_X19_Y22_N2
\micro|Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal15~1_combout\ = (\micro|Equal15~0_combout\ & (\micro|e_siguiente\(2) & (\micro|Equal5~0_combout\ & !\micro|e_siguiente\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal15~0_combout\,
	datab => \micro|e_siguiente\(2),
	datac => \micro|Equal5~0_combout\,
	datad => \micro|e_siguiente\(1),
	combout => \micro|Equal15~1_combout\);

-- Location: LCCOMB_X23_Y22_N2
\micro|Equal14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal14~3_combout\ = (\micro|e_siguiente\(1) & (\micro|e_siguiente\(7) & (\micro|e_siguiente\(0) & \micro|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(1),
	datab => \micro|e_siguiente\(7),
	datac => \micro|e_siguiente\(0),
	datad => \micro|Equal8~0_combout\,
	combout => \micro|Equal14~3_combout\);

-- Location: LCCOMB_X19_Y22_N20
\micro|e_siguiente~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|e_siguiente~2_combout\ = (\micro|Equal14~3_combout\) # ((!\micro|e_siguiente\(0) & \micro|Equal15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(0),
	datac => \micro|Equal15~1_combout\,
	datad => \micro|Equal14~3_combout\,
	combout => \micro|e_siguiente~2_combout\);

-- Location: FF_X19_Y22_N21
\micro|e_siguiente[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|e_siguiente~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|e_siguiente\(2));

-- Location: LCCOMB_X20_Y22_N14
\micro|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal5~2_combout\ = (!\micro|e_siguiente\(4) & (!\micro|e_siguiente\(9) & !\micro|e_siguiente\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|e_siguiente\(4),
	datac => \micro|e_siguiente\(9),
	datad => \micro|e_siguiente\(10),
	combout => \micro|Equal5~2_combout\);

-- Location: LCCOMB_X20_Y22_N0
\micro|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Equal5~3_combout\ = (!\micro|e_siguiente\(2) & (!\micro|e_siguiente\(7) & (\micro|Equal5~2_combout\ & \micro|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|e_siguiente\(2),
	datab => \micro|e_siguiente\(7),
	datac => \micro|Equal5~2_combout\,
	datad => \micro|Equal5~0_combout\,
	combout => \micro|Equal5~3_combout\);

-- Location: LCCOMB_X17_Y22_N10
\micro|WideOr27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideOr27~0_combout\ = (!\micro|Equal10~2_combout\ & (\micro|WideOr25~9_combout\ & ((!\micro|Equal7~0_combout\) # (!\micro|Equal5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Equal5~3_combout\,
	datab => \micro|Equal7~0_combout\,
	datac => \micro|Equal10~2_combout\,
	datad => \micro|WideOr25~9_combout\,
	combout => \micro|WideOr27~0_combout\);

-- Location: LCCOMB_X17_Y22_N8
\micro|WideNor0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideNor0~8_combout\ = (\micro|WideOr27~0_combout\ & (((!\micro|Equal35~1_combout\ & !\micro|Equal21~2_combout\)) # (!\micro|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|WideOr27~0_combout\,
	datab => \micro|Equal7~0_combout\,
	datac => \micro|Equal35~1_combout\,
	datad => \micro|Equal21~2_combout\,
	combout => \micro|WideNor0~8_combout\);

-- Location: LCCOMB_X18_Y22_N0
\micro|WideOr1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideOr1~4_combout\ = (!\micro|Equal4~2_combout\ & (((\micro|WideNor0~4_combout\) # (!\micro|WideNor0~7_combout\)) # (!\micro|WideNor0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|WideNor0~8_combout\,
	datab => \micro|Equal4~2_combout\,
	datac => \micro|WideNor0~4_combout\,
	datad => \micro|WideNor0~7_combout\,
	combout => \micro|WideOr1~4_combout\);

-- Location: LCCOMB_X18_Y22_N20
\micro|WideOr23\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideOr23~combout\ = (!\micro|WideNor0~4_combout\ & (\micro|WideOr1~4_combout\ & (\micro|WideOr1~2_combout\ & !\micro|Equal14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|WideNor0~4_combout\,
	datab => \micro|WideOr1~4_combout\,
	datac => \micro|WideOr1~2_combout\,
	datad => \micro|Equal14~3_combout\,
	combout => \micro|WideOr23~combout\);

-- Location: FF_X18_Y22_N21
\micro|e_siguiente[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|WideOr23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|e_siguiente\(0));

-- Location: LCCOMB_X18_Y22_N30
\micro|WideNor0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|WideNor0~4_combout\ = (\micro|e_siguiente\(0) & (!\micro|e_siguiente\(1) & \micro|Equal25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|e_siguiente\(0),
	datac => \micro|e_siguiente\(1),
	datad => \micro|Equal25~1_combout\,
	combout => \micro|WideNor0~4_combout\);

-- Location: LCCOMB_X26_Y17_N28
\micro|nRW~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|nRW~feeder_combout\ = \micro|WideNor0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \micro|WideNor0~4_combout\,
	combout => \micro|nRW~feeder_combout\);

-- Location: FF_X26_Y17_N29
\micro|nRW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|nRW~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|nRW~q\);

-- Location: LCCOMB_X16_Y22_N18
\micro|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector51~0_combout\ = (\micro|estados[0]~3_combout\ & ((\micro|WideOr27~0_combout\ & (!\micro|estados\(3))) # (!\micro|WideOr27~0_combout\ & ((\micro|B[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|estados[0]~3_combout\,
	datab => \micro|estados\(3),
	datac => \micro|WideOr27~0_combout\,
	datad => \micro|B[7]~0_combout\,
	combout => \micro|Selector51~0_combout\);

-- Location: LCCOMB_X16_Y22_N20
\micro|Selector51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector51~1_combout\ = (!\micro|Selector51~0_combout\ & ((\micro|estados[0]~3_combout\) # (!\micro|Aux\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \micro|Aux\(7),
	datac => \micro|estados[0]~3_combout\,
	datad => \micro|Selector51~0_combout\,
	combout => \micro|Selector51~1_combout\);

-- Location: FF_X16_Y22_N21
\micro|estados[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|estados\(3));

-- Location: LCCOMB_X15_Y22_N30
\micro|Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector53~0_combout\ = (\micro|A\(7) & (\micro|B\(7) & !\micro|Aux\(7))) # (!\micro|A\(7) & (!\micro|B\(7) & \micro|Aux\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|A\(7),
	datab => \micro|B\(7),
	datad => \micro|Aux\(7),
	combout => \micro|Selector53~0_combout\);

-- Location: LCCOMB_X16_Y22_N2
\micro|Selector53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Selector53~1_combout\ = (\micro|estados[0]~3_combout\ & (((\micro|estados\(1)) # (\micro|WideOr26~0_combout\)))) # (!\micro|estados[0]~3_combout\ & (!\micro|Selector53~0_combout\ & ((\micro|estados\(1)) # (\micro|WideOr26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|estados[0]~3_combout\,
	datab => \micro|Selector53~0_combout\,
	datac => \micro|estados\(1),
	datad => \micro|WideOr26~0_combout\,
	combout => \micro|Selector53~1_combout\);

-- Location: FF_X16_Y22_N3
\micro|estados[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Selector53~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|estados\(1));

-- Location: LCCOMB_X15_Y22_N20
\micro|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|Add4~16_combout\ = !\micro|Add4~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \micro|Add4~15\,
	combout => \micro|Add4~16_combout\);

-- Location: FF_X15_Y22_N21
\micro|Aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|Add4~16_combout\,
	ena => \micro|Equal22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|Aux\(8));

-- Location: LCCOMB_X16_Y22_N24
\micro|estados[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \micro|estados[0]~2_combout\ = (\micro|Equal23~2_combout\ & (!\micro|Aux\(8))) # (!\micro|Equal23~2_combout\ & ((\micro|Equal37~2_combout\ & (!\micro|Aux\(8))) # (!\micro|Equal37~2_combout\ & ((\micro|estados\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \micro|Aux\(8),
	datab => \micro|Equal23~2_combout\,
	datac => \micro|estados\(0),
	datad => \micro|Equal37~2_combout\,
	combout => \micro|estados[0]~2_combout\);

-- Location: FF_X16_Y22_N25
\micro|estados[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \micro|estados[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \micro|estados\(0));

ww_RW <= \RW~output_o\;

ww_A(7) <= \A[7]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(0) <= \A[0]~output_o\;

ww_B(7) <= \B[7]~output_o\;

ww_B(6) <= \B[6]~output_o\;

ww_B(5) <= \B[5]~output_o\;

ww_B(4) <= \B[4]~output_o\;

ww_B(3) <= \B[3]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_DataOut(7) <= \DataOut[7]~output_o\;

ww_DataOut(6) <= \DataOut[6]~output_o\;

ww_DataOut(5) <= \DataOut[5]~output_o\;

ww_DataOut(4) <= \DataOut[4]~output_o\;

ww_DataOut(3) <= \DataOut[3]~output_o\;

ww_DataOut(2) <= \DataOut[2]~output_o\;

ww_DataOut(1) <= \DataOut[1]~output_o\;

ww_DataOut(0) <= \DataOut[0]~output_o\;

ww_e_presente(7) <= \e_presente[7]~output_o\;

ww_e_presente(6) <= \e_presente[6]~output_o\;

ww_e_presente(5) <= \e_presente[5]~output_o\;

ww_e_presente(4) <= \e_presente[4]~output_o\;

ww_e_presente(3) <= \e_presente[3]~output_o\;

ww_e_presente(2) <= \e_presente[2]~output_o\;

ww_e_presente(1) <= \e_presente[1]~output_o\;

ww_e_presente(0) <= \e_presente[0]~output_o\;

ww_flags(7) <= \flags[7]~output_o\;

ww_flags(6) <= \flags[6]~output_o\;

ww_flags(5) <= \flags[5]~output_o\;

ww_flags(4) <= \flags[4]~output_o\;

ww_flags(3) <= \flags[3]~output_o\;

ww_flags(2) <= \flags[2]~output_o\;

ww_flags(1) <= \flags[1]~output_o\;

ww_flags(0) <= \flags[0]~output_o\;

ww_mem(7) <= \mem[7]~output_o\;

ww_mem(6) <= \mem[6]~output_o\;

ww_mem(5) <= \mem[5]~output_o\;

ww_mem(4) <= \mem[4]~output_o\;

ww_mem(3) <= \mem[3]~output_o\;

ww_mem(2) <= \mem[2]~output_o\;

ww_mem(1) <= \mem[1]~output_o\;

ww_mem(0) <= \mem[0]~output_o\;

ww_PC(7) <= \PC[7]~output_o\;

ww_PC(6) <= \PC[6]~output_o\;

ww_PC(5) <= \PC[5]~output_o\;

ww_PC(4) <= \PC[4]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(0) <= \PC[0]~output_o\;

ww_X_high(7) <= \X_high[7]~output_o\;

ww_X_high(6) <= \X_high[6]~output_o\;

ww_X_high(5) <= \X_high[5]~output_o\;

ww_X_high(4) <= \X_high[4]~output_o\;

ww_X_high(3) <= \X_high[3]~output_o\;

ww_X_high(2) <= \X_high[2]~output_o\;

ww_X_high(1) <= \X_high[1]~output_o\;

ww_X_high(0) <= \X_high[0]~output_o\;

ww_X_low(7) <= \X_low[7]~output_o\;

ww_X_low(6) <= \X_low[6]~output_o\;

ww_X_low(5) <= \X_low[5]~output_o\;

ww_X_low(4) <= \X_low[4]~output_o\;

ww_X_low(3) <= \X_low[3]~output_o\;

ww_X_low(2) <= \X_low[2]~output_o\;

ww_X_low(1) <= \X_low[1]~output_o\;

ww_X_low(0) <= \X_low[0]~output_o\;

ww_Y_low(7) <= \Y_low[7]~output_o\;

ww_Y_low(6) <= \Y_low[6]~output_o\;

ww_Y_low(5) <= \Y_low[5]~output_o\;

ww_Y_low(4) <= \Y_low[4]~output_o\;

ww_Y_low(3) <= \Y_low[3]~output_o\;

ww_Y_low(2) <= \Y_low[2]~output_o\;

ww_Y_low(1) <= \Y_low[1]~output_o\;

ww_Y_low(0) <= \Y_low[0]~output_o\;
END structure;


