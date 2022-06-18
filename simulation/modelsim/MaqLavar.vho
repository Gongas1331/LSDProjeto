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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/18/2022 00:05:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	MaqLavar IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(1 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END MaqLavar;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MaqLavar IS
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
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSMUnit|pSt.spn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSMUnit|pSt.idle~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSMUnit|timeEn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_dirtyIn~q\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_previousIn~q\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~0_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~1\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~2_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~3\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~4_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~5\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~6_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~7\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~8_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~9\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~10_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt[22]~2_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~19\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~20_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~21\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~22_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~23\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~24_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~25\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~26_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~27\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~28_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~29\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~30_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~31\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~32_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~33\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~34_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~35\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~36_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~37\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~38_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~39\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~40_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~41\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~42_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|LessThan0~0_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|LessThan0~1_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~11\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~12_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|LessThan0~2_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|LessThan0~3_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|LessThan0~4_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|LessThan0~5_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|LessThan0~6_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|LessThan0~7_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt[22]~0_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~43\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~44_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~13\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~14_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~15\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~16_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~17\ : std_logic;
SIGNAL \registerBlock|debounceReset|Add0~18_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \registerBlock|debounceReset|s_pulsedOut~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \registerBlock|p1_out~q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \registerBlock|p3_out~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \registerBlock|p2_out~q\ : std_logic;
SIGNAL \FSMUnit|comb_proc~0_combout\ : std_logic;
SIGNAL \FSMUnit|timeVal~0_combout\ : std_logic;
SIGNAL \FSMUnit|comb_proc~1_combout\ : std_logic;
SIGNAL \FSMUnit|Selector3~0_combout\ : std_logic;
SIGNAL \FSMUnit|Selector8~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_dirtyIn~q\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_previousIn~q\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~0_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~1\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~2_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~3\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~4_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~5\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~6_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~7\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~8_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~9\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~10_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt[12]~2_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~11\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~12_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~13\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~14_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~15\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~16_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~17\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~18_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~19\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~20_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~21\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~22_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~23\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~24_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~25\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~26_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~27\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~28_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~29\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~30_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~31\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~32_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~33\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~35\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~36_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~37\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~38_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~39\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~40_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~41\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~42_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|LessThan0~0_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|LessThan0~4_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|LessThan0~5_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|LessThan0~1_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|LessThan0~2_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|LessThan0~3_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|LessThan0~6_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|LessThan0~7_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~43\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~44_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|Add0~34_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \registerBlock|debounceStartStop|s_pulsedOut~q\ : std_logic;
SIGNAL \s_running~0_combout\ : std_logic;
SIGNAL \s_running~feeder_combout\ : std_logic;
SIGNAL \s_running~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \registerBlock|door_out~q\ : std_logic;
SIGNAL \FSMUnit|timeEn~combout\ : std_logic;
SIGNAL \FSMUnit|timeEn~clkctrl_outclk\ : std_logic;
SIGNAL \FSMUnit|nSt.off_359~combout\ : std_logic;
SIGNAL \FSMUnit|pSt~12_combout\ : std_logic;
SIGNAL \FSMUnit|pSt.off~q\ : std_logic;
SIGNAL \FSMUnit|Selector3~1_combout\ : std_logic;
SIGNAL \FSMUnit|nSt.idle_429~combout\ : std_logic;
SIGNAL \FSMUnit|pSt~13_combout\ : std_logic;
SIGNAL \FSMUnit|pSt.idle~q\ : std_logic;
SIGNAL \FSMUnit|diffSt~1_combout\ : std_logic;
SIGNAL \FSMUnit|diffSt~0_combout\ : std_logic;
SIGNAL \FSMUnit|Selector4~0_combout\ : std_logic;
SIGNAL \FSMUnit|Selector4~2_combout\ : std_logic;
SIGNAL \FSMUnit|nSt.wIn_415~combout\ : std_logic;
SIGNAL \FSMUnit|pSt~8_combout\ : std_logic;
SIGNAL \FSMUnit|pSt.wIn~q\ : std_logic;
SIGNAL \FSMUnit|diffSt~2_combout\ : std_logic;
SIGNAL \FSMUnit|diffSt~3_combout\ : std_logic;
SIGNAL \FSMUnit|diffSt~4_combout\ : std_logic;
SIGNAL \FSMUnit|diffSt~q\ : std_logic;
SIGNAL \FSMUnit|newTime~0_combout\ : std_logic;
SIGNAL \FSMUnit|newTime~q\ : std_logic;
SIGNAL \timerAux|Add0~0_combout\ : std_logic;
SIGNAL \FSMUnit|Selector2~0_combout\ : std_logic;
SIGNAL \FSMUnit|Selector2~1_combout\ : std_logic;
SIGNAL \FSMUnit|pSt.spn~clkctrl_outclk\ : std_logic;
SIGNAL \timerAux|Add0~2_combout\ : std_logic;
SIGNAL \timerAux|Equal0~0_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[0]~26_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[23]~28_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[0]~27\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[1]~29_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[1]~30\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[2]~31_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[2]~32\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[3]~33_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[3]~34\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[4]~35_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[4]~36\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[5]~37_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[5]~38\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[6]~39_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[6]~40\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[7]~41_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[7]~42\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[8]~43_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[8]~44\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[9]~45_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[9]~46\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[10]~47_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[10]~48\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[11]~49_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[11]~50\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[12]~51_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[12]~52\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[13]~53_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[13]~54\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[14]~55_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[14]~56\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[15]~57_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[15]~58\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[16]~59_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[16]~60\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[17]~61_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[17]~62\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[18]~63_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[18]~64\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[19]~65_combout\ : std_logic;
SIGNAL \pulseGenUnit|Equal0~5_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[19]~66\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[20]~67_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[20]~68\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[21]~69_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[21]~70\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[22]~71_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[22]~72\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[23]~73_combout\ : std_logic;
SIGNAL \pulseGenUnit|Equal0~6_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[23]~74\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[24]~75_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[24]~76\ : std_logic;
SIGNAL \pulseGenUnit|s_counter[25]~77_combout\ : std_logic;
SIGNAL \pulseGenUnit|Equal0~7_combout\ : std_logic;
SIGNAL \pulseGenUnit|Equal0~0_combout\ : std_logic;
SIGNAL \pulseGenUnit|Equal0~1_combout\ : std_logic;
SIGNAL \pulseGenUnit|Equal0~3_combout\ : std_logic;
SIGNAL \pulseGenUnit|Equal0~2_combout\ : std_logic;
SIGNAL \pulseGenUnit|Equal0~4_combout\ : std_logic;
SIGNAL \pulseGenUnit|Equal0~8_combout\ : std_logic;
SIGNAL \pulseGenUnit|pulse~0_combout\ : std_logic;
SIGNAL \pulseGenUnit|pulse~q\ : std_logic;
SIGNAL \timerAux|s_counter[5]~3_combout\ : std_logic;
SIGNAL \timerAux|s_counter[5]~2_combout\ : std_logic;
SIGNAL \timerAux|Add0~1\ : std_logic;
SIGNAL \timerAux|Add0~3_combout\ : std_logic;
SIGNAL \FSMUnit|Selector9~0_combout\ : std_logic;
SIGNAL \timerAux|Add0~5_combout\ : std_logic;
SIGNAL \timerAux|Add0~4\ : std_logic;
SIGNAL \timerAux|Add0~6_combout\ : std_logic;
SIGNAL \FSMUnit|Selector11~0_combout\ : std_logic;
SIGNAL \timerAux|Add0~8_combout\ : std_logic;
SIGNAL \timerAux|Add0~7\ : std_logic;
SIGNAL \timerAux|Add0~9_combout\ : std_logic;
SIGNAL \FSMUnit|Selector13~0_combout\ : std_logic;
SIGNAL \FSMUnit|Selector13~1_combout\ : std_logic;
SIGNAL \timerAux|Add0~11_combout\ : std_logic;
SIGNAL \timerAux|Add0~10\ : std_logic;
SIGNAL \timerAux|Add0~12_combout\ : std_logic;
SIGNAL \timerAux|Add0~14_combout\ : std_logic;
SIGNAL \timerAux|Add0~13\ : std_logic;
SIGNAL \timerAux|Add0~15_combout\ : std_logic;
SIGNAL \FSMUnit|Selector16~0_combout\ : std_logic;
SIGNAL \timerAux|Add0~17_combout\ : std_logic;
SIGNAL \timerAux|Add0~16\ : std_logic;
SIGNAL \timerAux|Add0~18_combout\ : std_logic;
SIGNAL \timerAux|Add0~20_combout\ : std_logic;
SIGNAL \timerAux|Add0~19\ : std_logic;
SIGNAL \timerAux|Add0~21_combout\ : std_logic;
SIGNAL \timerAux|Add0~23_combout\ : std_logic;
SIGNAL \timerAux|Equal0~1_combout\ : std_logic;
SIGNAL \timerAux|Equal0~2_combout\ : std_logic;
SIGNAL \timerAux|s_cntZero~0_combout\ : std_logic;
SIGNAL \timerAux|s_cntZero~1_combout\ : std_logic;
SIGNAL \timerAux|s_cntZero~q\ : std_logic;
SIGNAL \FSMUnit|Selector5~0_combout\ : std_logic;
SIGNAL \FSMUnit|nSt.rns_401~combout\ : std_logic;
SIGNAL \FSMUnit|pSt~10_combout\ : std_logic;
SIGNAL \FSMUnit|pSt.rns~q\ : std_logic;
SIGNAL \FSMUnit|Selector6~1_combout\ : std_logic;
SIGNAL \FSMUnit|Selector6~0_combout\ : std_logic;
SIGNAL \FSMUnit|Selector6~2_combout\ : std_logic;
SIGNAL \FSMUnit|nSt.wOut_387~combout\ : std_logic;
SIGNAL \FSMUnit|pSt~11_combout\ : std_logic;
SIGNAL \FSMUnit|pSt.wOut~q\ : std_logic;
SIGNAL \FSMUnit|Selector4~1_combout\ : std_logic;
SIGNAL \FSMUnit|Selector0~0_combout\ : std_logic;
SIGNAL \FSMUnit|cycle~combout\ : std_logic;
SIGNAL \FSMUnit|Selector7~1_combout\ : std_logic;
SIGNAL \FSMUnit|Selector7~0_combout\ : std_logic;
SIGNAL \FSMUnit|Selector7~2_combout\ : std_logic;
SIGNAL \FSMUnit|nSt.spn_373~combout\ : std_logic;
SIGNAL \FSMUnit|pSt~9_combout\ : std_logic;
SIGNAL \FSMUnit|pSt.spn~q\ : std_logic;
SIGNAL \FSMUnit|ledOn~0_combout\ : std_logic;
SIGNAL \FSMUnit|ledOn~1_combout\ : std_logic;
SIGNAL \FSMUnit|ledOn~combout\ : std_logic;
SIGNAL \LEDR[1]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[1]~reg0_q\ : std_logic;
SIGNAL \FSMUnit|WideOr1~combout\ : std_logic;
SIGNAL \FSMUnit|waterValve~combout\ : std_logic;
SIGNAL \FSMUnit|WideOr1~0_combout\ : std_logic;
SIGNAL \FSMUnit|rinse~combout\ : std_logic;
SIGNAL \FSMUnit|waterPump~combout\ : std_logic;
SIGNAL \FSMUnit|WideOr4~0_combout\ : std_logic;
SIGNAL \FSMUnit|spin~combout\ : std_logic;
SIGNAL \FSMUnit|pSt.idle~clkctrl_outclk\ : std_logic;
SIGNAL \displayUnit|bcd7segProgram|Mux6~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segProgram|Mux4~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segProgram|Mux2~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segProgram|Mux1~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segProgram|Mux0~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segTimeR|Mux6~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segTimeR|Mux5~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segTimeR|Mux4~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segTimeR|Mux3~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segTimeR|Mux2~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segTimeR|Mux1~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segTimeR|Mux0~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segTimeL|Mux6~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segTimeL|Mux5~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segTimeL|Mux4~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segTimeL|Mux3~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segTimeL|Mux2~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segTimeL|Mux1~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segTimeL|Mux0~0_combout\ : std_logic;
SIGNAL \pulseGenUnit|s_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \timerAux|s_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerBlock|debounceReset|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \FSMUnit|s_program\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \registerBlock|debounceStartStop|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \FSMUnit|program\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSMUnit|timeVal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \displayUnit|bcd7segTimeL|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segTimeR|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segProgram|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \displayUnit|bcd7segProgram|ALT_INV_Mux2~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\FSMUnit|pSt.spn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FSMUnit|pSt.spn~q\);

\FSMUnit|pSt.idle~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FSMUnit|pSt.idle~q\);

\FSMUnit|timeEn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FSMUnit|timeEn~combout\);
\displayUnit|bcd7segTimeL|ALT_INV_Mux0~0_combout\ <= NOT \displayUnit|bcd7segTimeL|Mux0~0_combout\;
\displayUnit|bcd7segTimeR|ALT_INV_Mux0~0_combout\ <= NOT \displayUnit|bcd7segTimeR|Mux0~0_combout\;
\displayUnit|bcd7segProgram|ALT_INV_Mux0~0_combout\ <= NOT \displayUnit|bcd7segProgram|Mux0~0_combout\;
\displayUnit|bcd7segProgram|ALT_INV_Mux2~0_combout\ <= NOT \displayUnit|bcd7segProgram|Mux2~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSMUnit|ledOn~combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[1]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSMUnit|waterValve~combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSMUnit|rinse~combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSMUnit|waterPump~combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSMUnit|spin~combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registerBlock|door_out~q\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segProgram|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSMUnit|program\(2),
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segProgram|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segProgram|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segProgram|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segProgram|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segProgram|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segTimeR|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segTimeR|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segTimeR|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segTimeR|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segTimeR|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segTimeR|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segTimeR|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segTimeL|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segTimeL|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segTimeL|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segTimeL|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segTimeL|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segTimeL|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|bcd7segTimeL|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSMUnit|timeEn~combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSMUnit|timeEn~combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X98_Y45_N10
\registerBlock|debounceReset|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \registerBlock|debounceReset|s_dirtyIn~0_combout\);

-- Location: FF_X98_Y45_N11
\registerBlock|debounceReset|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_dirtyIn~q\);

-- Location: FF_X97_Y45_N29
\registerBlock|debounceReset|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \registerBlock|debounceReset|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_previousIn~q\);

-- Location: LCCOMB_X96_Y46_N10
\registerBlock|debounceReset|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~0_combout\ = \registerBlock|debounceReset|s_debounceCnt\(0) $ (VCC)
-- \registerBlock|debounceReset|Add0~1\ = CARRY(\registerBlock|debounceReset|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_debounceCnt\(0),
	datad => VCC,
	combout => \registerBlock|debounceReset|Add0~0_combout\,
	cout => \registerBlock|debounceReset|Add0~1\);

-- Location: LCCOMB_X97_Y45_N14
\registerBlock|debounceReset|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~24_combout\ = (\registerBlock|debounceReset|s_debounceCnt[22]~4_combout\ & \registerBlock|debounceReset|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\,
	datad => \registerBlock|debounceReset|Add0~0_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~24_combout\);

-- Location: FF_X97_Y45_N15
\registerBlock|debounceReset|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~24_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(0));

-- Location: LCCOMB_X96_Y46_N12
\registerBlock|debounceReset|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~2_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(1) & (\registerBlock|debounceReset|Add0~1\ & VCC)) # (!\registerBlock|debounceReset|s_debounceCnt\(1) & (!\registerBlock|debounceReset|Add0~1\))
-- \registerBlock|debounceReset|Add0~3\ = CARRY((!\registerBlock|debounceReset|s_debounceCnt\(1) & !\registerBlock|debounceReset|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_debounceCnt\(1),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~1\,
	combout => \registerBlock|debounceReset|Add0~2_combout\,
	cout => \registerBlock|debounceReset|Add0~3\);

-- Location: LCCOMB_X96_Y46_N0
\registerBlock|debounceReset|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~20_combout\ = (\registerBlock|debounceReset|Add0~2_combout\ & \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|Add0~2_combout\,
	datad => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~20_combout\);

-- Location: FF_X96_Y46_N1
\registerBlock|debounceReset|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~20_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(1));

-- Location: LCCOMB_X96_Y46_N14
\registerBlock|debounceReset|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~4_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(2) & ((GND) # (!\registerBlock|debounceReset|Add0~3\))) # (!\registerBlock|debounceReset|s_debounceCnt\(2) & (\registerBlock|debounceReset|Add0~3\ $ (GND)))
-- \registerBlock|debounceReset|Add0~5\ = CARRY((\registerBlock|debounceReset|s_debounceCnt\(2)) # (!\registerBlock|debounceReset|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(2),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~3\,
	combout => \registerBlock|debounceReset|Add0~4_combout\,
	cout => \registerBlock|debounceReset|Add0~5\);

-- Location: LCCOMB_X96_Y46_N6
\registerBlock|debounceReset|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~21_combout\ = (\registerBlock|debounceReset|Add0~4_combout\ & \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerBlock|debounceReset|Add0~4_combout\,
	datad => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~21_combout\);

-- Location: FF_X96_Y46_N7
\registerBlock|debounceReset|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~21_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(2));

-- Location: LCCOMB_X96_Y46_N16
\registerBlock|debounceReset|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~6_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(3) & (\registerBlock|debounceReset|Add0~5\ & VCC)) # (!\registerBlock|debounceReset|s_debounceCnt\(3) & (!\registerBlock|debounceReset|Add0~5\))
-- \registerBlock|debounceReset|Add0~7\ = CARRY((!\registerBlock|debounceReset|s_debounceCnt\(3) & !\registerBlock|debounceReset|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_debounceCnt\(3),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~5\,
	combout => \registerBlock|debounceReset|Add0~6_combout\,
	cout => \registerBlock|debounceReset|Add0~7\);

-- Location: LCCOMB_X96_Y46_N4
\registerBlock|debounceReset|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~22_combout\ = (\registerBlock|debounceReset|Add0~6_combout\ & \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|Add0~6_combout\,
	datad => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~22_combout\);

-- Location: FF_X96_Y46_N5
\registerBlock|debounceReset|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~22_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(3));

-- Location: LCCOMB_X96_Y46_N18
\registerBlock|debounceReset|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~8_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(4) & ((GND) # (!\registerBlock|debounceReset|Add0~7\))) # (!\registerBlock|debounceReset|s_debounceCnt\(4) & (\registerBlock|debounceReset|Add0~7\ $ (GND)))
-- \registerBlock|debounceReset|Add0~9\ = CARRY((\registerBlock|debounceReset|s_debounceCnt\(4)) # (!\registerBlock|debounceReset|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_debounceCnt\(4),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~7\,
	combout => \registerBlock|debounceReset|Add0~8_combout\,
	cout => \registerBlock|debounceReset|Add0~9\);

-- Location: LCCOMB_X96_Y46_N2
\registerBlock|debounceReset|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~23_combout\ = (\registerBlock|debounceReset|Add0~8_combout\ & \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|Add0~8_combout\,
	datad => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~23_combout\);

-- Location: FF_X96_Y46_N3
\registerBlock|debounceReset|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~23_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(4));

-- Location: LCCOMB_X96_Y46_N20
\registerBlock|debounceReset|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~10_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(5) & (\registerBlock|debounceReset|Add0~9\ & VCC)) # (!\registerBlock|debounceReset|s_debounceCnt\(5) & (!\registerBlock|debounceReset|Add0~9\))
-- \registerBlock|debounceReset|Add0~11\ = CARRY((!\registerBlock|debounceReset|s_debounceCnt\(5) & !\registerBlock|debounceReset|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(5),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~9\,
	combout => \registerBlock|debounceReset|Add0~10_combout\,
	cout => \registerBlock|debounceReset|Add0~11\);

-- Location: LCCOMB_X94_Y45_N0
\registerBlock|debounceReset|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~27_combout\ = (\registerBlock|debounceReset|Add0~10_combout\ & \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerBlock|debounceReset|Add0~10_combout\,
	datad => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~27_combout\);

-- Location: FF_X94_Y45_N1
\registerBlock|debounceReset|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~27_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(5));

-- Location: LCCOMB_X96_Y46_N8
\registerBlock|debounceReset|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_pulsedOut~5_combout\ = (!\registerBlock|debounceReset|s_debounceCnt\(2) & (!\registerBlock|debounceReset|s_debounceCnt\(1) & (!\registerBlock|debounceReset|s_debounceCnt\(3) & 
-- !\registerBlock|debounceReset|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(2),
	datab => \registerBlock|debounceReset|s_debounceCnt\(1),
	datac => \registerBlock|debounceReset|s_debounceCnt\(3),
	datad => \registerBlock|debounceReset|s_debounceCnt\(4),
	combout => \registerBlock|debounceReset|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X97_Y45_N6
\registerBlock|debounceReset|s_debounceCnt[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt[22]~2_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(5)) # ((\registerBlock|debounceReset|s_debounceCnt\(0)) # ((!\registerBlock|debounceReset|s_pulsedOut~4_combout\) # 
-- (!\registerBlock|debounceReset|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(5),
	datab => \registerBlock|debounceReset|s_debounceCnt\(0),
	datac => \registerBlock|debounceReset|s_pulsedOut~5_combout\,
	datad => \registerBlock|debounceReset|s_pulsedOut~4_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt[22]~2_combout\);

-- Location: LCCOMB_X97_Y45_N28
\registerBlock|debounceReset|s_debounceCnt[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(22)) # (((\registerBlock|debounceReset|s_debounceCnt[22]~2_combout\) # (!\registerBlock|debounceReset|s_previousIn~q\)) # 
-- (!\registerBlock|debounceReset|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(22),
	datab => \registerBlock|debounceReset|s_dirtyIn~q\,
	datac => \registerBlock|debounceReset|s_previousIn~q\,
	datad => \registerBlock|debounceReset|s_debounceCnt[22]~2_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\);

-- Location: LCCOMB_X96_Y46_N28
\registerBlock|debounceReset|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~18_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(9) & (\registerBlock|debounceReset|Add0~17\ & VCC)) # (!\registerBlock|debounceReset|s_debounceCnt\(9) & (!\registerBlock|debounceReset|Add0~17\))
-- \registerBlock|debounceReset|Add0~19\ = CARRY((!\registerBlock|debounceReset|s_debounceCnt\(9) & !\registerBlock|debounceReset|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(9),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~17\,
	combout => \registerBlock|debounceReset|Add0~18_combout\,
	cout => \registerBlock|debounceReset|Add0~19\);

-- Location: LCCOMB_X96_Y46_N30
\registerBlock|debounceReset|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~20_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(10) & ((GND) # (!\registerBlock|debounceReset|Add0~19\))) # (!\registerBlock|debounceReset|s_debounceCnt\(10) & (\registerBlock|debounceReset|Add0~19\ $ (GND)))
-- \registerBlock|debounceReset|Add0~21\ = CARRY((\registerBlock|debounceReset|s_debounceCnt\(10)) # (!\registerBlock|debounceReset|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_debounceCnt\(10),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~19\,
	combout => \registerBlock|debounceReset|Add0~20_combout\,
	cout => \registerBlock|debounceReset|Add0~21\);

-- Location: LCCOMB_X97_Y45_N16
\registerBlock|debounceReset|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~15_combout\ = (\registerBlock|debounceReset|s_debounceCnt[22]~4_combout\ & \registerBlock|debounceReset|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\,
	datad => \registerBlock|debounceReset|Add0~20_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~15_combout\);

-- Location: FF_X97_Y45_N17
\registerBlock|debounceReset|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~15_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(10));

-- Location: LCCOMB_X96_Y45_N0
\registerBlock|debounceReset|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~22_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(11) & (\registerBlock|debounceReset|Add0~21\ & VCC)) # (!\registerBlock|debounceReset|s_debounceCnt\(11) & (!\registerBlock|debounceReset|Add0~21\))
-- \registerBlock|debounceReset|Add0~23\ = CARRY((!\registerBlock|debounceReset|s_debounceCnt\(11) & !\registerBlock|debounceReset|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(11),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~21\,
	combout => \registerBlock|debounceReset|Add0~22_combout\,
	cout => \registerBlock|debounceReset|Add0~23\);

-- Location: LCCOMB_X95_Y45_N26
\registerBlock|debounceReset|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~16_combout\ = (\registerBlock|debounceReset|s_debounceCnt[22]~0_combout\ & ((\registerBlock|debounceReset|Add0~22_combout\) # (!\registerBlock|debounceReset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_previousIn~q\,
	datac => \registerBlock|debounceReset|Add0~22_combout\,
	datad => \registerBlock|debounceReset|s_debounceCnt[22]~0_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~16_combout\);

-- Location: FF_X95_Y45_N27
\registerBlock|debounceReset|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~16_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(11));

-- Location: LCCOMB_X96_Y45_N2
\registerBlock|debounceReset|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~24_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(12) & ((GND) # (!\registerBlock|debounceReset|Add0~23\))) # (!\registerBlock|debounceReset|s_debounceCnt\(12) & (\registerBlock|debounceReset|Add0~23\ $ (GND)))
-- \registerBlock|debounceReset|Add0~25\ = CARRY((\registerBlock|debounceReset|s_debounceCnt\(12)) # (!\registerBlock|debounceReset|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(12),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~23\,
	combout => \registerBlock|debounceReset|Add0~24_combout\,
	cout => \registerBlock|debounceReset|Add0~25\);

-- Location: LCCOMB_X95_Y45_N20
\registerBlock|debounceReset|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~8_combout\ = (\registerBlock|debounceReset|s_debounceCnt[22]~4_combout\ & \registerBlock|debounceReset|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\,
	datad => \registerBlock|debounceReset|Add0~24_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~8_combout\);

-- Location: FF_X95_Y45_N21
\registerBlock|debounceReset|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~8_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(12));

-- Location: LCCOMB_X96_Y45_N4
\registerBlock|debounceReset|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~26_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(13) & (\registerBlock|debounceReset|Add0~25\ & VCC)) # (!\registerBlock|debounceReset|s_debounceCnt\(13) & (!\registerBlock|debounceReset|Add0~25\))
-- \registerBlock|debounceReset|Add0~27\ = CARRY((!\registerBlock|debounceReset|s_debounceCnt\(13) & !\registerBlock|debounceReset|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(13),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~25\,
	combout => \registerBlock|debounceReset|Add0~26_combout\,
	cout => \registerBlock|debounceReset|Add0~27\);

-- Location: LCCOMB_X96_Y45_N26
\registerBlock|debounceReset|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~9_combout\ = (\registerBlock|debounceReset|Add0~26_combout\ & \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerBlock|debounceReset|Add0~26_combout\,
	datad => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~9_combout\);

-- Location: FF_X96_Y45_N27
\registerBlock|debounceReset|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~9_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(13));

-- Location: LCCOMB_X96_Y45_N6
\registerBlock|debounceReset|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~28_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(14) & ((GND) # (!\registerBlock|debounceReset|Add0~27\))) # (!\registerBlock|debounceReset|s_debounceCnt\(14) & (\registerBlock|debounceReset|Add0~27\ $ (GND)))
-- \registerBlock|debounceReset|Add0~29\ = CARRY((\registerBlock|debounceReset|s_debounceCnt\(14)) # (!\registerBlock|debounceReset|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(14),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~27\,
	combout => \registerBlock|debounceReset|Add0~28_combout\,
	cout => \registerBlock|debounceReset|Add0~29\);

-- Location: LCCOMB_X97_Y45_N4
\registerBlock|debounceReset|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~17_combout\ = (\registerBlock|debounceReset|s_debounceCnt[22]~0_combout\ & ((\registerBlock|debounceReset|Add0~28_combout\) # (!\registerBlock|debounceReset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_previousIn~q\,
	datac => \registerBlock|debounceReset|Add0~28_combout\,
	datad => \registerBlock|debounceReset|s_debounceCnt[22]~0_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~17_combout\);

-- Location: FF_X97_Y45_N5
\registerBlock|debounceReset|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~17_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(14));

-- Location: LCCOMB_X96_Y45_N8
\registerBlock|debounceReset|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~30_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(15) & (\registerBlock|debounceReset|Add0~29\ & VCC)) # (!\registerBlock|debounceReset|s_debounceCnt\(15) & (!\registerBlock|debounceReset|Add0~29\))
-- \registerBlock|debounceReset|Add0~31\ = CARRY((!\registerBlock|debounceReset|s_debounceCnt\(15) & !\registerBlock|debounceReset|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_debounceCnt\(15),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~29\,
	combout => \registerBlock|debounceReset|Add0~30_combout\,
	cout => \registerBlock|debounceReset|Add0~31\);

-- Location: LCCOMB_X96_Y45_N28
\registerBlock|debounceReset|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~5_combout\ = (\registerBlock|debounceReset|Add0~30_combout\ & \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerBlock|debounceReset|Add0~30_combout\,
	datad => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~5_combout\);

-- Location: FF_X96_Y45_N29
\registerBlock|debounceReset|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~5_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(15));

-- Location: LCCOMB_X96_Y45_N10
\registerBlock|debounceReset|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~32_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(16) & ((GND) # (!\registerBlock|debounceReset|Add0~31\))) # (!\registerBlock|debounceReset|s_debounceCnt\(16) & (\registerBlock|debounceReset|Add0~31\ $ (GND)))
-- \registerBlock|debounceReset|Add0~33\ = CARRY((\registerBlock|debounceReset|s_debounceCnt\(16)) # (!\registerBlock|debounceReset|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_debounceCnt\(16),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~31\,
	combout => \registerBlock|debounceReset|Add0~32_combout\,
	cout => \registerBlock|debounceReset|Add0~33\);

-- Location: LCCOMB_X97_Y45_N26
\registerBlock|debounceReset|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~6_combout\ = (\registerBlock|debounceReset|s_debounceCnt[22]~4_combout\ & \registerBlock|debounceReset|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\,
	datad => \registerBlock|debounceReset|Add0~32_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~6_combout\);

-- Location: FF_X97_Y45_N27
\registerBlock|debounceReset|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~6_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(16));

-- Location: LCCOMB_X96_Y45_N12
\registerBlock|debounceReset|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~34_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(17) & (\registerBlock|debounceReset|Add0~33\ & VCC)) # (!\registerBlock|debounceReset|s_debounceCnt\(17) & (!\registerBlock|debounceReset|Add0~33\))
-- \registerBlock|debounceReset|Add0~35\ = CARRY((!\registerBlock|debounceReset|s_debounceCnt\(17) & !\registerBlock|debounceReset|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_debounceCnt\(17),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~33\,
	combout => \registerBlock|debounceReset|Add0~34_combout\,
	cout => \registerBlock|debounceReset|Add0~35\);

-- Location: LCCOMB_X97_Y45_N8
\registerBlock|debounceReset|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~7_combout\ = (\registerBlock|debounceReset|s_debounceCnt[22]~4_combout\ & \registerBlock|debounceReset|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\,
	datad => \registerBlock|debounceReset|Add0~34_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~7_combout\);

-- Location: FF_X97_Y45_N9
\registerBlock|debounceReset|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~7_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(17));

-- Location: LCCOMB_X96_Y45_N14
\registerBlock|debounceReset|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~36_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(18) & ((GND) # (!\registerBlock|debounceReset|Add0~35\))) # (!\registerBlock|debounceReset|s_debounceCnt\(18) & (\registerBlock|debounceReset|Add0~35\ $ (GND)))
-- \registerBlock|debounceReset|Add0~37\ = CARRY((\registerBlock|debounceReset|s_debounceCnt\(18)) # (!\registerBlock|debounceReset|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(18),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~35\,
	combout => \registerBlock|debounceReset|Add0~36_combout\,
	cout => \registerBlock|debounceReset|Add0~37\);

-- Location: LCCOMB_X95_Y45_N8
\registerBlock|debounceReset|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt[18]~18_combout\ = (\registerBlock|debounceReset|s_debounceCnt[22]~3_combout\ & (\registerBlock|debounceReset|s_debounceCnt[22]~0_combout\ & ((\registerBlock|debounceReset|Add0~36_combout\) # 
-- (!\registerBlock|debounceReset|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	datab => \registerBlock|debounceReset|s_previousIn~q\,
	datac => \registerBlock|debounceReset|Add0~36_combout\,
	datad => \registerBlock|debounceReset|s_debounceCnt[22]~0_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt[18]~18_combout\);

-- Location: FF_X95_Y45_N9
\registerBlock|debounceReset|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(18));

-- Location: LCCOMB_X96_Y45_N16
\registerBlock|debounceReset|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~38_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(19) & (\registerBlock|debounceReset|Add0~37\ & VCC)) # (!\registerBlock|debounceReset|s_debounceCnt\(19) & (!\registerBlock|debounceReset|Add0~37\))
-- \registerBlock|debounceReset|Add0~39\ = CARRY((!\registerBlock|debounceReset|s_debounceCnt\(19) & !\registerBlock|debounceReset|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(19),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~37\,
	combout => \registerBlock|debounceReset|Add0~38_combout\,
	cout => \registerBlock|debounceReset|Add0~39\);

-- Location: LCCOMB_X95_Y45_N14
\registerBlock|debounceReset|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt[19]~19_combout\ = (\registerBlock|debounceReset|s_debounceCnt[22]~0_combout\ & (\registerBlock|debounceReset|s_debounceCnt[22]~3_combout\ & ((\registerBlock|debounceReset|Add0~38_combout\) # 
-- (!\registerBlock|debounceReset|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt[22]~0_combout\,
	datab => \registerBlock|debounceReset|s_previousIn~q\,
	datac => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	datad => \registerBlock|debounceReset|Add0~38_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt[19]~19_combout\);

-- Location: FF_X95_Y45_N15
\registerBlock|debounceReset|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(19));

-- Location: LCCOMB_X96_Y45_N18
\registerBlock|debounceReset|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~40_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(20) & ((GND) # (!\registerBlock|debounceReset|Add0~39\))) # (!\registerBlock|debounceReset|s_debounceCnt\(20) & (\registerBlock|debounceReset|Add0~39\ $ (GND)))
-- \registerBlock|debounceReset|Add0~41\ = CARRY((\registerBlock|debounceReset|s_debounceCnt\(20)) # (!\registerBlock|debounceReset|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_debounceCnt\(20),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~39\,
	combout => \registerBlock|debounceReset|Add0~40_combout\,
	cout => \registerBlock|debounceReset|Add0~41\);

-- Location: LCCOMB_X96_Y45_N24
\registerBlock|debounceReset|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt[20]~10_combout\ = (\registerBlock|debounceReset|s_debounceCnt[22]~3_combout\ & (\registerBlock|debounceReset|s_debounceCnt[22]~4_combout\ & \registerBlock|debounceReset|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	datac => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\,
	datad => \registerBlock|debounceReset|Add0~40_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt[20]~10_combout\);

-- Location: FF_X96_Y45_N25
\registerBlock|debounceReset|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(20));

-- Location: LCCOMB_X96_Y45_N20
\registerBlock|debounceReset|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~42_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(21) & (\registerBlock|debounceReset|Add0~41\ & VCC)) # (!\registerBlock|debounceReset|s_debounceCnt\(21) & (!\registerBlock|debounceReset|Add0~41\))
-- \registerBlock|debounceReset|Add0~43\ = CARRY((!\registerBlock|debounceReset|s_debounceCnt\(21) & !\registerBlock|debounceReset|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(21),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~41\,
	combout => \registerBlock|debounceReset|Add0~42_combout\,
	cout => \registerBlock|debounceReset|Add0~43\);

-- Location: LCCOMB_X96_Y45_N30
\registerBlock|debounceReset|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt[21]~11_combout\ = (\registerBlock|debounceReset|s_debounceCnt[22]~3_combout\ & (\registerBlock|debounceReset|s_debounceCnt[22]~4_combout\ & \registerBlock|debounceReset|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	datac => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\,
	datad => \registerBlock|debounceReset|Add0~42_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt[21]~11_combout\);

-- Location: FF_X96_Y45_N31
\registerBlock|debounceReset|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(21));

-- Location: LCCOMB_X95_Y45_N22
\registerBlock|debounceReset|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|LessThan0~0_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(18) & (\registerBlock|debounceReset|s_debounceCnt\(19) & (\registerBlock|debounceReset|s_debounceCnt\(14) & \registerBlock|debounceReset|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(18),
	datab => \registerBlock|debounceReset|s_debounceCnt\(19),
	datac => \registerBlock|debounceReset|s_debounceCnt\(14),
	datad => \registerBlock|debounceReset|s_debounceCnt\(8),
	combout => \registerBlock|debounceReset|LessThan0~0_combout\);

-- Location: LCCOMB_X95_Y45_N16
\registerBlock|debounceReset|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|LessThan0~1_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(11) & \registerBlock|debounceReset|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerBlock|debounceReset|s_debounceCnt\(11),
	datad => \registerBlock|debounceReset|s_debounceCnt\(9),
	combout => \registerBlock|debounceReset|LessThan0~1_combout\);

-- Location: LCCOMB_X96_Y46_N22
\registerBlock|debounceReset|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~12_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(6) & ((GND) # (!\registerBlock|debounceReset|Add0~11\))) # (!\registerBlock|debounceReset|s_debounceCnt\(6) & (\registerBlock|debounceReset|Add0~11\ $ (GND)))
-- \registerBlock|debounceReset|Add0~13\ = CARRY((\registerBlock|debounceReset|s_debounceCnt\(6)) # (!\registerBlock|debounceReset|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_debounceCnt\(6),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~11\,
	combout => \registerBlock|debounceReset|Add0~12_combout\,
	cout => \registerBlock|debounceReset|Add0~13\);

-- Location: LCCOMB_X97_Y45_N0
\registerBlock|debounceReset|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~1_combout\ = (\registerBlock|debounceReset|s_debounceCnt[22]~0_combout\ & ((\registerBlock|debounceReset|Add0~12_combout\) # (!\registerBlock|debounceReset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_previousIn~q\,
	datac => \registerBlock|debounceReset|Add0~12_combout\,
	datad => \registerBlock|debounceReset|s_debounceCnt[22]~0_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~1_combout\);

-- Location: FF_X97_Y45_N1
\registerBlock|debounceReset|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~1_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(6));

-- Location: LCCOMB_X95_Y45_N2
\registerBlock|debounceReset|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|LessThan0~2_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(6) & ((\registerBlock|debounceReset|s_debounceCnt\(5)) # ((\registerBlock|debounceReset|s_debounceCnt\(0)) # 
-- (!\registerBlock|debounceReset|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(5),
	datab => \registerBlock|debounceReset|s_debounceCnt\(0),
	datac => \registerBlock|debounceReset|s_debounceCnt\(6),
	datad => \registerBlock|debounceReset|s_pulsedOut~5_combout\,
	combout => \registerBlock|debounceReset|LessThan0~2_combout\);

-- Location: LCCOMB_X95_Y45_N4
\registerBlock|debounceReset|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|LessThan0~3_combout\ = (\registerBlock|debounceReset|LessThan0~0_combout\ & (\registerBlock|debounceReset|LessThan0~1_combout\ & ((\registerBlock|debounceReset|s_debounceCnt\(7)) # 
-- (\registerBlock|debounceReset|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|LessThan0~0_combout\,
	datab => \registerBlock|debounceReset|LessThan0~1_combout\,
	datac => \registerBlock|debounceReset|s_debounceCnt\(7),
	datad => \registerBlock|debounceReset|LessThan0~2_combout\,
	combout => \registerBlock|debounceReset|LessThan0~3_combout\);

-- Location: LCCOMB_X95_Y45_N10
\registerBlock|debounceReset|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|LessThan0~4_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(13)) # ((\registerBlock|debounceReset|s_debounceCnt\(12)) # ((\registerBlock|debounceReset|s_debounceCnt\(11) & 
-- \registerBlock|debounceReset|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(11),
	datab => \registerBlock|debounceReset|s_debounceCnt\(13),
	datac => \registerBlock|debounceReset|s_debounceCnt\(12),
	datad => \registerBlock|debounceReset|s_debounceCnt\(10),
	combout => \registerBlock|debounceReset|LessThan0~4_combout\);

-- Location: LCCOMB_X95_Y45_N0
\registerBlock|debounceReset|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|LessThan0~5_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(16)) # ((\registerBlock|debounceReset|s_debounceCnt\(15)) # ((\registerBlock|debounceReset|s_debounceCnt\(14) & 
-- \registerBlock|debounceReset|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(16),
	datab => \registerBlock|debounceReset|s_debounceCnt\(15),
	datac => \registerBlock|debounceReset|s_debounceCnt\(14),
	datad => \registerBlock|debounceReset|LessThan0~4_combout\,
	combout => \registerBlock|debounceReset|LessThan0~5_combout\);

-- Location: LCCOMB_X95_Y45_N18
\registerBlock|debounceReset|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|LessThan0~6_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(19) & (\registerBlock|debounceReset|s_debounceCnt\(18) & ((\registerBlock|debounceReset|s_debounceCnt\(17)) # 
-- (\registerBlock|debounceReset|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(17),
	datab => \registerBlock|debounceReset|s_debounceCnt\(19),
	datac => \registerBlock|debounceReset|s_debounceCnt\(18),
	datad => \registerBlock|debounceReset|LessThan0~5_combout\,
	combout => \registerBlock|debounceReset|LessThan0~6_combout\);

-- Location: LCCOMB_X95_Y45_N12
\registerBlock|debounceReset|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|LessThan0~7_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(21)) # ((\registerBlock|debounceReset|s_debounceCnt\(20)) # ((\registerBlock|debounceReset|LessThan0~3_combout\) # 
-- (\registerBlock|debounceReset|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(21),
	datab => \registerBlock|debounceReset|s_debounceCnt\(20),
	datac => \registerBlock|debounceReset|LessThan0~3_combout\,
	datad => \registerBlock|debounceReset|LessThan0~6_combout\,
	combout => \registerBlock|debounceReset|LessThan0~7_combout\);

-- Location: LCCOMB_X95_Y45_N6
\registerBlock|debounceReset|s_debounceCnt[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt[22]~0_combout\ = (\registerBlock|debounceReset|s_dirtyIn~q\ & ((!\registerBlock|debounceReset|LessThan0~7_combout\) # (!\registerBlock|debounceReset|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_debounceCnt\(22),
	datac => \registerBlock|debounceReset|s_dirtyIn~q\,
	datad => \registerBlock|debounceReset|LessThan0~7_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt[22]~0_combout\);

-- Location: LCCOMB_X95_Y45_N30
\registerBlock|debounceReset|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt[22]~25_combout\ = (\registerBlock|debounceReset|s_dirtyIn~q\ & ((\registerBlock|debounceReset|s_debounceCnt\(22) & (!\registerBlock|debounceReset|LessThan0~7_combout\)) # 
-- (!\registerBlock|debounceReset|s_debounceCnt\(22) & ((\registerBlock|debounceReset|s_debounceCnt[22]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|LessThan0~7_combout\,
	datab => \registerBlock|debounceReset|s_debounceCnt\(22),
	datac => \registerBlock|debounceReset|s_dirtyIn~q\,
	datad => \registerBlock|debounceReset|s_debounceCnt[22]~2_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X96_Y45_N22
\registerBlock|debounceReset|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~44_combout\ = \registerBlock|debounceReset|Add0~43\ $ (\registerBlock|debounceReset|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \registerBlock|debounceReset|s_debounceCnt\(22),
	cin => \registerBlock|debounceReset|Add0~43\,
	combout => \registerBlock|debounceReset|Add0~44_combout\);

-- Location: LCCOMB_X95_Y45_N28
\registerBlock|debounceReset|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt[22]~26_combout\ = (\registerBlock|debounceReset|s_previousIn~q\ & (((\registerBlock|debounceReset|s_debounceCnt[22]~25_combout\ & \registerBlock|debounceReset|Add0~44_combout\)))) # 
-- (!\registerBlock|debounceReset|s_previousIn~q\ & (\registerBlock|debounceReset|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt[22]~0_combout\,
	datab => \registerBlock|debounceReset|s_previousIn~q\,
	datac => \registerBlock|debounceReset|s_debounceCnt[22]~25_combout\,
	datad => \registerBlock|debounceReset|Add0~44_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt[22]~26_combout\);

-- Location: FF_X95_Y45_N29
\registerBlock|debounceReset|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(22));

-- Location: LCCOMB_X95_Y45_N24
\registerBlock|debounceReset|s_debounceCnt[22]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\ = (\registerBlock|debounceReset|s_previousIn~q\ & (\registerBlock|debounceReset|s_dirtyIn~q\ & ((!\registerBlock|debounceReset|LessThan0~7_combout\) # 
-- (!\registerBlock|debounceReset|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(22),
	datab => \registerBlock|debounceReset|s_previousIn~q\,
	datac => \registerBlock|debounceReset|s_dirtyIn~q\,
	datad => \registerBlock|debounceReset|LessThan0~7_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\);

-- Location: LCCOMB_X96_Y46_N24
\registerBlock|debounceReset|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~14_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(7) & (\registerBlock|debounceReset|Add0~13\ & VCC)) # (!\registerBlock|debounceReset|s_debounceCnt\(7) & (!\registerBlock|debounceReset|Add0~13\))
-- \registerBlock|debounceReset|Add0~15\ = CARRY((!\registerBlock|debounceReset|s_debounceCnt\(7) & !\registerBlock|debounceReset|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(7),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~13\,
	combout => \registerBlock|debounceReset|Add0~14_combout\,
	cout => \registerBlock|debounceReset|Add0~15\);

-- Location: LCCOMB_X97_Y45_N2
\registerBlock|debounceReset|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~12_combout\ = (\registerBlock|debounceReset|s_debounceCnt[22]~4_combout\ & \registerBlock|debounceReset|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerBlock|debounceReset|s_debounceCnt[22]~4_combout\,
	datad => \registerBlock|debounceReset|Add0~14_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~12_combout\);

-- Location: FF_X97_Y45_N3
\registerBlock|debounceReset|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~12_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(7));

-- Location: LCCOMB_X96_Y46_N26
\registerBlock|debounceReset|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|Add0~16_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(8) & ((GND) # (!\registerBlock|debounceReset|Add0~15\))) # (!\registerBlock|debounceReset|s_debounceCnt\(8) & (\registerBlock|debounceReset|Add0~15\ $ (GND)))
-- \registerBlock|debounceReset|Add0~17\ = CARRY((\registerBlock|debounceReset|s_debounceCnt\(8)) # (!\registerBlock|debounceReset|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(8),
	datad => VCC,
	cin => \registerBlock|debounceReset|Add0~15\,
	combout => \registerBlock|debounceReset|Add0~16_combout\,
	cout => \registerBlock|debounceReset|Add0~17\);

-- Location: LCCOMB_X97_Y45_N24
\registerBlock|debounceReset|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~13_combout\ = (\registerBlock|debounceReset|s_debounceCnt[22]~0_combout\ & ((\registerBlock|debounceReset|Add0~16_combout\) # (!\registerBlock|debounceReset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_previousIn~q\,
	datac => \registerBlock|debounceReset|Add0~16_combout\,
	datad => \registerBlock|debounceReset|s_debounceCnt[22]~0_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~13_combout\);

-- Location: FF_X97_Y45_N25
\registerBlock|debounceReset|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~13_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(8));

-- Location: LCCOMB_X97_Y45_N10
\registerBlock|debounceReset|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_debounceCnt~14_combout\ = (\registerBlock|debounceReset|s_debounceCnt[22]~0_combout\ & ((\registerBlock|debounceReset|Add0~18_combout\) # (!\registerBlock|debounceReset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_previousIn~q\,
	datac => \registerBlock|debounceReset|Add0~18_combout\,
	datad => \registerBlock|debounceReset|s_debounceCnt[22]~0_combout\,
	combout => \registerBlock|debounceReset|s_debounceCnt~14_combout\);

-- Location: FF_X97_Y45_N11
\registerBlock|debounceReset|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_debounceCnt~14_combout\,
	ena => \registerBlock|debounceReset|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_debounceCnt\(9));

-- Location: LCCOMB_X97_Y45_N22
\registerBlock|debounceReset|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_pulsedOut~2_combout\ = (!\registerBlock|debounceReset|s_debounceCnt\(9) & (!\registerBlock|debounceReset|s_debounceCnt\(8) & (!\registerBlock|debounceReset|s_debounceCnt\(7) & 
-- !\registerBlock|debounceReset|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(9),
	datab => \registerBlock|debounceReset|s_debounceCnt\(8),
	datac => \registerBlock|debounceReset|s_debounceCnt\(7),
	datad => \registerBlock|debounceReset|s_debounceCnt\(10),
	combout => \registerBlock|debounceReset|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X97_Y45_N18
\registerBlock|debounceReset|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_pulsedOut~0_combout\ = (!\registerBlock|debounceReset|s_debounceCnt\(16) & (!\registerBlock|debounceReset|s_debounceCnt\(6) & (!\registerBlock|debounceReset|s_debounceCnt\(17) & 
-- !\registerBlock|debounceReset|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(16),
	datab => \registerBlock|debounceReset|s_debounceCnt\(6),
	datac => \registerBlock|debounceReset|s_debounceCnt\(17),
	datad => \registerBlock|debounceReset|s_debounceCnt\(15),
	combout => \registerBlock|debounceReset|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X97_Y45_N30
\registerBlock|debounceReset|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_pulsedOut~3_combout\ = (!\registerBlock|debounceReset|s_debounceCnt\(11) & (!\registerBlock|debounceReset|s_debounceCnt\(14) & (!\registerBlock|debounceReset|s_debounceCnt\(19) & 
-- !\registerBlock|debounceReset|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(11),
	datab => \registerBlock|debounceReset|s_debounceCnt\(14),
	datac => \registerBlock|debounceReset|s_debounceCnt\(19),
	datad => \registerBlock|debounceReset|s_debounceCnt\(18),
	combout => \registerBlock|debounceReset|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X97_Y45_N12
\registerBlock|debounceReset|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_pulsedOut~1_combout\ = (!\registerBlock|debounceReset|s_debounceCnt\(13) & (!\registerBlock|debounceReset|s_debounceCnt\(20) & (!\registerBlock|debounceReset|s_debounceCnt\(12) & 
-- !\registerBlock|debounceReset|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(13),
	datab => \registerBlock|debounceReset|s_debounceCnt\(20),
	datac => \registerBlock|debounceReset|s_debounceCnt\(12),
	datad => \registerBlock|debounceReset|s_debounceCnt\(21),
	combout => \registerBlock|debounceReset|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X97_Y45_N20
\registerBlock|debounceReset|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_pulsedOut~4_combout\ = (\registerBlock|debounceReset|s_pulsedOut~2_combout\ & (\registerBlock|debounceReset|s_pulsedOut~0_combout\ & (\registerBlock|debounceReset|s_pulsedOut~3_combout\ & 
-- \registerBlock|debounceReset|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_pulsedOut~2_combout\,
	datab => \registerBlock|debounceReset|s_pulsedOut~0_combout\,
	datac => \registerBlock|debounceReset|s_pulsedOut~3_combout\,
	datad => \registerBlock|debounceReset|s_pulsedOut~1_combout\,
	combout => \registerBlock|debounceReset|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X98_Y45_N20
\registerBlock|debounceReset|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_pulsedOut~6_combout\ = (\registerBlock|debounceReset|s_debounceCnt\(0) & (!\registerBlock|debounceReset|s_debounceCnt\(22) & (\registerBlock|debounceReset|s_previousIn~q\ & \registerBlock|debounceReset|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_debounceCnt\(0),
	datab => \registerBlock|debounceReset|s_debounceCnt\(22),
	datac => \registerBlock|debounceReset|s_previousIn~q\,
	datad => \registerBlock|debounceReset|s_dirtyIn~q\,
	combout => \registerBlock|debounceReset|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X98_Y45_N4
\registerBlock|debounceReset|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceReset|s_pulsedOut~7_combout\ = (\registerBlock|debounceReset|s_pulsedOut~4_combout\ & (!\registerBlock|debounceReset|s_debounceCnt\(5) & (\registerBlock|debounceReset|s_pulsedOut~5_combout\ & 
-- \registerBlock|debounceReset|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_pulsedOut~4_combout\,
	datab => \registerBlock|debounceReset|s_debounceCnt\(5),
	datac => \registerBlock|debounceReset|s_pulsedOut~5_combout\,
	datad => \registerBlock|debounceReset|s_pulsedOut~6_combout\,
	combout => \registerBlock|debounceReset|s_pulsedOut~7_combout\);

-- Location: FF_X98_Y45_N5
\registerBlock|debounceReset|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceReset|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceReset|s_pulsedOut~q\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X102_Y35_N15
\registerBlock|p1_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|p1_out~q\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X102_Y35_N31
\registerBlock|p3_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|p3_out~q\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X102_Y35_N1
\registerBlock|p2_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|p2_out~q\);

-- Location: LCCOMB_X102_Y35_N20
\FSMUnit|comb_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|comb_proc~0_combout\ = (!\registerBlock|p1_out~q\ & (!\registerBlock|p3_out~q\ & \registerBlock|p2_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|p1_out~q\,
	datac => \registerBlock|p3_out~q\,
	datad => \registerBlock|p2_out~q\,
	combout => \FSMUnit|comb_proc~0_combout\);

-- Location: LCCOMB_X102_Y35_N14
\FSMUnit|s_program[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|s_program\(0) = (\FSMUnit|pSt.idle~q\ & (\FSMUnit|s_program\(0))) # (!\FSMUnit|pSt.idle~q\ & ((!\FSMUnit|comb_proc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|s_program\(0),
	datab => \FSMUnit|pSt.idle~q\,
	datad => \FSMUnit|comb_proc~0_combout\,
	combout => \FSMUnit|s_program\(0));

-- Location: LCCOMB_X102_Y35_N24
\FSMUnit|timeVal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|timeVal~0_combout\ = (\registerBlock|p3_out~q\ & ((\registerBlock|p1_out~q\) # (\registerBlock|p2_out~q\))) # (!\registerBlock|p3_out~q\ & (\registerBlock|p1_out~q\ $ (!\registerBlock|p2_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|p3_out~q\,
	datac => \registerBlock|p1_out~q\,
	datad => \registerBlock|p2_out~q\,
	combout => \FSMUnit|timeVal~0_combout\);

-- Location: LCCOMB_X102_Y35_N30
\FSMUnit|s_program[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|s_program\(2) = (\FSMUnit|pSt.idle~q\ & (\FSMUnit|s_program\(2))) # (!\FSMUnit|pSt.idle~q\ & ((\FSMUnit|timeVal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|s_program\(2),
	datab => \FSMUnit|pSt.idle~q\,
	datad => \FSMUnit|timeVal~0_combout\,
	combout => \FSMUnit|s_program\(2));

-- Location: LCCOMB_X102_Y35_N28
\FSMUnit|comb_proc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|comb_proc~1_combout\ = (!\registerBlock|p3_out~q\ & (\registerBlock|p1_out~q\ & !\registerBlock|p2_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|p3_out~q\,
	datac => \registerBlock|p1_out~q\,
	datad => \registerBlock|p2_out~q\,
	combout => \FSMUnit|comb_proc~1_combout\);

-- Location: LCCOMB_X102_Y35_N0
\FSMUnit|s_program[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|s_program\(1) = (\FSMUnit|pSt.idle~q\ & (\FSMUnit|s_program\(1))) # (!\FSMUnit|pSt.idle~q\ & ((!\FSMUnit|comb_proc~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|s_program\(1),
	datab => \FSMUnit|pSt.idle~q\,
	datad => \FSMUnit|comb_proc~1_combout\,
	combout => \FSMUnit|s_program\(1));

-- Location: LCCOMB_X100_Y35_N18
\FSMUnit|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector3~0_combout\ = (!\FSMUnit|pSt.idle~q\ & ((\FSMUnit|s_program\(2)) # ((!\FSMUnit|s_program\(0) & !\FSMUnit|s_program\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|s_program\(0),
	datab => \FSMUnit|pSt.idle~q\,
	datac => \FSMUnit|s_program\(2),
	datad => \FSMUnit|s_program\(1),
	combout => \FSMUnit|Selector3~0_combout\);

-- Location: LCCOMB_X99_Y35_N16
\FSMUnit|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector8~0_combout\ = (\FSMUnit|pSt.off~q\ & !\timerAux|s_cntZero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|pSt.off~q\,
	datac => \timerAux|s_cntZero~q\,
	combout => \FSMUnit|Selector8~0_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X109_Y53_N26
\registerBlock|debounceStartStop|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \registerBlock|debounceStartStop|s_dirtyIn~0_combout\);

-- Location: FF_X109_Y53_N27
\registerBlock|debounceStartStop|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_dirtyIn~q\);

-- Location: FF_X109_Y53_N25
\registerBlock|debounceStartStop|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \registerBlock|debounceStartStop|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_previousIn~q\);

-- Location: LCCOMB_X111_Y54_N10
\registerBlock|debounceStartStop|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~0_combout\ = \registerBlock|debounceStartStop|s_debounceCnt\(0) $ (VCC)
-- \registerBlock|debounceStartStop|Add0~1\ = CARRY(\registerBlock|debounceStartStop|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(0),
	datad => VCC,
	combout => \registerBlock|debounceStartStop|Add0~0_combout\,
	cout => \registerBlock|debounceStartStop|Add0~1\);

-- Location: LCCOMB_X111_Y54_N6
\registerBlock|debounceStartStop|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~23_combout\ = (\registerBlock|debounceStartStop|Add0~0_combout\ & (\registerBlock|debounceStartStop|s_previousIn~q\ & \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|Add0~0_combout\,
	datac => \registerBlock|debounceStartStop|s_previousIn~q\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~23_combout\);

-- Location: LCCOMB_X110_Y53_N18
\registerBlock|debounceStartStop|s_debounceCnt[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(22)) # (((\registerBlock|debounceStartStop|s_debounceCnt[12]~2_combout\) # (!\registerBlock|debounceStartStop|s_dirtyIn~q\)) # 
-- (!\registerBlock|debounceStartStop|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(22),
	datab => \registerBlock|debounceStartStop|s_previousIn~q\,
	datac => \registerBlock|debounceStartStop|s_dirtyIn~q\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt[12]~2_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\);

-- Location: FF_X111_Y54_N7
\registerBlock|debounceStartStop|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~23_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(0));

-- Location: LCCOMB_X111_Y54_N12
\registerBlock|debounceStartStop|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~2_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(1) & (\registerBlock|debounceStartStop|Add0~1\ & VCC)) # (!\registerBlock|debounceStartStop|s_debounceCnt\(1) & 
-- (!\registerBlock|debounceStartStop|Add0~1\))
-- \registerBlock|debounceStartStop|Add0~3\ = CARRY((!\registerBlock|debounceStartStop|s_debounceCnt\(1) & !\registerBlock|debounceStartStop|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(1),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~1\,
	combout => \registerBlock|debounceStartStop|Add0~2_combout\,
	cout => \registerBlock|debounceStartStop|Add0~3\);

-- Location: LCCOMB_X111_Y54_N8
\registerBlock|debounceStartStop|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~19_combout\ = (\registerBlock|debounceStartStop|Add0~2_combout\ & (\registerBlock|debounceStartStop|s_previousIn~q\ & \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|Add0~2_combout\,
	datac => \registerBlock|debounceStartStop|s_previousIn~q\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~19_combout\);

-- Location: FF_X111_Y54_N9
\registerBlock|debounceStartStop|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~19_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(1));

-- Location: LCCOMB_X111_Y54_N14
\registerBlock|debounceStartStop|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~4_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(2) & ((GND) # (!\registerBlock|debounceStartStop|Add0~3\))) # (!\registerBlock|debounceStartStop|s_debounceCnt\(2) & 
-- (\registerBlock|debounceStartStop|Add0~3\ $ (GND)))
-- \registerBlock|debounceStartStop|Add0~5\ = CARRY((\registerBlock|debounceStartStop|s_debounceCnt\(2)) # (!\registerBlock|debounceStartStop|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(2),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~3\,
	combout => \registerBlock|debounceStartStop|Add0~4_combout\,
	cout => \registerBlock|debounceStartStop|Add0~5\);

-- Location: LCCOMB_X110_Y53_N2
\registerBlock|debounceStartStop|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~20_combout\ = (\registerBlock|debounceStartStop|s_previousIn~q\ & (\registerBlock|debounceStartStop|Add0~4_combout\ & \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_previousIn~q\,
	datac => \registerBlock|debounceStartStop|Add0~4_combout\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~20_combout\);

-- Location: FF_X110_Y53_N3
\registerBlock|debounceStartStop|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~20_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(2));

-- Location: LCCOMB_X111_Y54_N16
\registerBlock|debounceStartStop|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~6_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(3) & (\registerBlock|debounceStartStop|Add0~5\ & VCC)) # (!\registerBlock|debounceStartStop|s_debounceCnt\(3) & 
-- (!\registerBlock|debounceStartStop|Add0~5\))
-- \registerBlock|debounceStartStop|Add0~7\ = CARRY((!\registerBlock|debounceStartStop|s_debounceCnt\(3) & !\registerBlock|debounceStartStop|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(3),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~5\,
	combout => \registerBlock|debounceStartStop|Add0~6_combout\,
	cout => \registerBlock|debounceStartStop|Add0~7\);

-- Location: LCCOMB_X110_Y53_N0
\registerBlock|debounceStartStop|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~21_combout\ = (\registerBlock|debounceStartStop|s_previousIn~q\ & (\registerBlock|debounceStartStop|Add0~6_combout\ & \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_previousIn~q\,
	datac => \registerBlock|debounceStartStop|Add0~6_combout\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~21_combout\);

-- Location: FF_X110_Y53_N1
\registerBlock|debounceStartStop|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~21_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(3));

-- Location: LCCOMB_X111_Y54_N18
\registerBlock|debounceStartStop|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~8_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(4) & ((GND) # (!\registerBlock|debounceStartStop|Add0~7\))) # (!\registerBlock|debounceStartStop|s_debounceCnt\(4) & 
-- (\registerBlock|debounceStartStop|Add0~7\ $ (GND)))
-- \registerBlock|debounceStartStop|Add0~9\ = CARRY((\registerBlock|debounceStartStop|s_debounceCnt\(4)) # (!\registerBlock|debounceStartStop|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(4),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~7\,
	combout => \registerBlock|debounceStartStop|Add0~8_combout\,
	cout => \registerBlock|debounceStartStop|Add0~9\);

-- Location: LCCOMB_X110_Y53_N10
\registerBlock|debounceStartStop|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~22_combout\ = (\registerBlock|debounceStartStop|s_previousIn~q\ & (\registerBlock|debounceStartStop|Add0~8_combout\ & \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_previousIn~q\,
	datac => \registerBlock|debounceStartStop|Add0~8_combout\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~22_combout\);

-- Location: FF_X110_Y53_N11
\registerBlock|debounceStartStop|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~22_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(4));

-- Location: LCCOMB_X110_Y53_N16
\registerBlock|debounceStartStop|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_pulsedOut~5_combout\ = (!\registerBlock|debounceStartStop|s_debounceCnt\(4) & (!\registerBlock|debounceStartStop|s_debounceCnt\(3) & (!\registerBlock|debounceStartStop|s_debounceCnt\(2) & 
-- !\registerBlock|debounceStartStop|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(4),
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(3),
	datac => \registerBlock|debounceStartStop|s_debounceCnt\(2),
	datad => \registerBlock|debounceStartStop|s_debounceCnt\(1),
	combout => \registerBlock|debounceStartStop|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X111_Y54_N20
\registerBlock|debounceStartStop|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~10_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(5) & (\registerBlock|debounceStartStop|Add0~9\ & VCC)) # (!\registerBlock|debounceStartStop|s_debounceCnt\(5) & 
-- (!\registerBlock|debounceStartStop|Add0~9\))
-- \registerBlock|debounceStartStop|Add0~11\ = CARRY((!\registerBlock|debounceStartStop|s_debounceCnt\(5) & !\registerBlock|debounceStartStop|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(5),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~9\,
	combout => \registerBlock|debounceStartStop|Add0~10_combout\,
	cout => \registerBlock|debounceStartStop|Add0~11\);

-- Location: LCCOMB_X111_Y54_N4
\registerBlock|debounceStartStop|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~27_combout\ = (\registerBlock|debounceStartStop|Add0~10_combout\ & (\registerBlock|debounceStartStop|s_previousIn~q\ & \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|Add0~10_combout\,
	datac => \registerBlock|debounceStartStop|s_previousIn~q\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~27_combout\);

-- Location: FF_X111_Y54_N5
\registerBlock|debounceStartStop|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~27_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(5));

-- Location: LCCOMB_X110_Y53_N20
\registerBlock|debounceStartStop|s_debounceCnt[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt[12]~2_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(0)) # (((\registerBlock|debounceStartStop|s_debounceCnt\(5)) # (!\registerBlock|debounceStartStop|s_pulsedOut~4_combout\)) # 
-- (!\registerBlock|debounceStartStop|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(0),
	datab => \registerBlock|debounceStartStop|s_pulsedOut~5_combout\,
	datac => \registerBlock|debounceStartStop|s_debounceCnt\(5),
	datad => \registerBlock|debounceStartStop|s_pulsedOut~4_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt[12]~2_combout\);

-- Location: LCCOMB_X111_Y54_N22
\registerBlock|debounceStartStop|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~12_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(6) & ((GND) # (!\registerBlock|debounceStartStop|Add0~11\))) # (!\registerBlock|debounceStartStop|s_debounceCnt\(6) & 
-- (\registerBlock|debounceStartStop|Add0~11\ $ (GND)))
-- \registerBlock|debounceStartStop|Add0~13\ = CARRY((\registerBlock|debounceStartStop|s_debounceCnt\(6)) # (!\registerBlock|debounceStartStop|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(6),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~11\,
	combout => \registerBlock|debounceStartStop|Add0~12_combout\,
	cout => \registerBlock|debounceStartStop|Add0~13\);

-- Location: LCCOMB_X112_Y53_N0
\registerBlock|debounceStartStop|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~1_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\ & ((\registerBlock|debounceStartStop|Add0~12_combout\) # (!\registerBlock|debounceStartStop|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_previousIn~q\,
	datac => \registerBlock|debounceStartStop|Add0~12_combout\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~1_combout\);

-- Location: FF_X112_Y53_N1
\registerBlock|debounceStartStop|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~1_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(6));

-- Location: LCCOMB_X111_Y54_N24
\registerBlock|debounceStartStop|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~14_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(7) & (\registerBlock|debounceStartStop|Add0~13\ & VCC)) # (!\registerBlock|debounceStartStop|s_debounceCnt\(7) & 
-- (!\registerBlock|debounceStartStop|Add0~13\))
-- \registerBlock|debounceStartStop|Add0~15\ = CARRY((!\registerBlock|debounceStartStop|s_debounceCnt\(7) & !\registerBlock|debounceStartStop|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(7),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~13\,
	combout => \registerBlock|debounceStartStop|Add0~14_combout\,
	cout => \registerBlock|debounceStartStop|Add0~15\);

-- Location: LCCOMB_X112_Y53_N10
\registerBlock|debounceStartStop|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~11_combout\ = (\registerBlock|debounceStartStop|s_previousIn~q\ & (\registerBlock|debounceStartStop|Add0~14_combout\ & \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_previousIn~q\,
	datac => \registerBlock|debounceStartStop|Add0~14_combout\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~11_combout\);

-- Location: FF_X112_Y53_N11
\registerBlock|debounceStartStop|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~11_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(7));

-- Location: LCCOMB_X111_Y54_N26
\registerBlock|debounceStartStop|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~16_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(8) & ((GND) # (!\registerBlock|debounceStartStop|Add0~15\))) # (!\registerBlock|debounceStartStop|s_debounceCnt\(8) & 
-- (\registerBlock|debounceStartStop|Add0~15\ $ (GND)))
-- \registerBlock|debounceStartStop|Add0~17\ = CARRY((\registerBlock|debounceStartStop|s_debounceCnt\(8)) # (!\registerBlock|debounceStartStop|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(8),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~15\,
	combout => \registerBlock|debounceStartStop|Add0~16_combout\,
	cout => \registerBlock|debounceStartStop|Add0~17\);

-- Location: LCCOMB_X112_Y53_N28
\registerBlock|debounceStartStop|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~12_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\ & ((\registerBlock|debounceStartStop|Add0~16_combout\) # (!\registerBlock|debounceStartStop|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_previousIn~q\,
	datac => \registerBlock|debounceStartStop|Add0~16_combout\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~12_combout\);

-- Location: FF_X112_Y53_N29
\registerBlock|debounceStartStop|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~12_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(8));

-- Location: LCCOMB_X111_Y54_N28
\registerBlock|debounceStartStop|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~18_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(9) & (\registerBlock|debounceStartStop|Add0~17\ & VCC)) # (!\registerBlock|debounceStartStop|s_debounceCnt\(9) & 
-- (!\registerBlock|debounceStartStop|Add0~17\))
-- \registerBlock|debounceStartStop|Add0~19\ = CARRY((!\registerBlock|debounceStartStop|s_debounceCnt\(9) & !\registerBlock|debounceStartStop|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(9),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~17\,
	combout => \registerBlock|debounceStartStop|Add0~18_combout\,
	cout => \registerBlock|debounceStartStop|Add0~19\);

-- Location: LCCOMB_X112_Y53_N2
\registerBlock|debounceStartStop|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~13_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\ & ((\registerBlock|debounceStartStop|Add0~18_combout\) # (!\registerBlock|debounceStartStop|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_previousIn~q\,
	datac => \registerBlock|debounceStartStop|Add0~18_combout\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~13_combout\);

-- Location: FF_X112_Y53_N3
\registerBlock|debounceStartStop|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~13_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(9));

-- Location: LCCOMB_X111_Y54_N30
\registerBlock|debounceStartStop|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~20_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(10) & ((GND) # (!\registerBlock|debounceStartStop|Add0~19\))) # (!\registerBlock|debounceStartStop|s_debounceCnt\(10) & 
-- (\registerBlock|debounceStartStop|Add0~19\ $ (GND)))
-- \registerBlock|debounceStartStop|Add0~21\ = CARRY((\registerBlock|debounceStartStop|s_debounceCnt\(10)) # (!\registerBlock|debounceStartStop|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(10),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~19\,
	combout => \registerBlock|debounceStartStop|Add0~20_combout\,
	cout => \registerBlock|debounceStartStop|Add0~21\);

-- Location: LCCOMB_X110_Y53_N24
\registerBlock|debounceStartStop|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~14_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\ & (\registerBlock|debounceStartStop|s_previousIn~q\ & \registerBlock|debounceStartStop|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	datab => \registerBlock|debounceStartStop|s_previousIn~q\,
	datad => \registerBlock|debounceStartStop|Add0~20_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~14_combout\);

-- Location: FF_X110_Y53_N25
\registerBlock|debounceStartStop|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~14_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(10));

-- Location: LCCOMB_X111_Y53_N0
\registerBlock|debounceStartStop|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~22_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(11) & (\registerBlock|debounceStartStop|Add0~21\ & VCC)) # (!\registerBlock|debounceStartStop|s_debounceCnt\(11) & 
-- (!\registerBlock|debounceStartStop|Add0~21\))
-- \registerBlock|debounceStartStop|Add0~23\ = CARRY((!\registerBlock|debounceStartStop|s_debounceCnt\(11) & !\registerBlock|debounceStartStop|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(11),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~21\,
	combout => \registerBlock|debounceStartStop|Add0~22_combout\,
	cout => \registerBlock|debounceStartStop|Add0~23\);

-- Location: LCCOMB_X110_Y53_N14
\registerBlock|debounceStartStop|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~15_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\ & ((\registerBlock|debounceStartStop|Add0~22_combout\) # (!\registerBlock|debounceStartStop|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_previousIn~q\,
	datac => \registerBlock|debounceStartStop|Add0~22_combout\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~15_combout\);

-- Location: FF_X110_Y53_N15
\registerBlock|debounceStartStop|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~15_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(11));

-- Location: LCCOMB_X111_Y53_N2
\registerBlock|debounceStartStop|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~24_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(12) & ((GND) # (!\registerBlock|debounceStartStop|Add0~23\))) # (!\registerBlock|debounceStartStop|s_debounceCnt\(12) & 
-- (\registerBlock|debounceStartStop|Add0~23\ $ (GND)))
-- \registerBlock|debounceStartStop|Add0~25\ = CARRY((\registerBlock|debounceStartStop|s_debounceCnt\(12)) # (!\registerBlock|debounceStartStop|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(12),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~23\,
	combout => \registerBlock|debounceStartStop|Add0~24_combout\,
	cout => \registerBlock|debounceStartStop|Add0~25\);

-- Location: LCCOMB_X110_Y53_N8
\registerBlock|debounceStartStop|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~7_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\ & (\registerBlock|debounceStartStop|s_previousIn~q\ & \registerBlock|debounceStartStop|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	datab => \registerBlock|debounceStartStop|s_previousIn~q\,
	datad => \registerBlock|debounceStartStop|Add0~24_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~7_combout\);

-- Location: FF_X110_Y53_N9
\registerBlock|debounceStartStop|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~7_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(12));

-- Location: LCCOMB_X111_Y53_N4
\registerBlock|debounceStartStop|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~26_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(13) & (\registerBlock|debounceStartStop|Add0~25\ & VCC)) # (!\registerBlock|debounceStartStop|s_debounceCnt\(13) & 
-- (!\registerBlock|debounceStartStop|Add0~25\))
-- \registerBlock|debounceStartStop|Add0~27\ = CARRY((!\registerBlock|debounceStartStop|s_debounceCnt\(13) & !\registerBlock|debounceStartStop|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(13),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~25\,
	combout => \registerBlock|debounceStartStop|Add0~26_combout\,
	cout => \registerBlock|debounceStartStop|Add0~27\);

-- Location: LCCOMB_X110_Y53_N30
\registerBlock|debounceStartStop|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~8_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\ & (\registerBlock|debounceStartStop|s_previousIn~q\ & \registerBlock|debounceStartStop|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	datab => \registerBlock|debounceStartStop|s_previousIn~q\,
	datad => \registerBlock|debounceStartStop|Add0~26_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~8_combout\);

-- Location: FF_X110_Y53_N31
\registerBlock|debounceStartStop|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~8_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(13));

-- Location: LCCOMB_X111_Y53_N6
\registerBlock|debounceStartStop|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~28_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(14) & ((GND) # (!\registerBlock|debounceStartStop|Add0~27\))) # (!\registerBlock|debounceStartStop|s_debounceCnt\(14) & 
-- (\registerBlock|debounceStartStop|Add0~27\ $ (GND)))
-- \registerBlock|debounceStartStop|Add0~29\ = CARRY((\registerBlock|debounceStartStop|s_debounceCnt\(14)) # (!\registerBlock|debounceStartStop|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(14),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~27\,
	combout => \registerBlock|debounceStartStop|Add0~28_combout\,
	cout => \registerBlock|debounceStartStop|Add0~29\);

-- Location: LCCOMB_X110_Y53_N28
\registerBlock|debounceStartStop|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~16_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\ & ((\registerBlock|debounceStartStop|Add0~28_combout\) # (!\registerBlock|debounceStartStop|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	datab => \registerBlock|debounceStartStop|s_previousIn~q\,
	datad => \registerBlock|debounceStartStop|Add0~28_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~16_combout\);

-- Location: FF_X110_Y53_N29
\registerBlock|debounceStartStop|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~16_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(14));

-- Location: LCCOMB_X111_Y53_N8
\registerBlock|debounceStartStop|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~30_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(15) & (\registerBlock|debounceStartStop|Add0~29\ & VCC)) # (!\registerBlock|debounceStartStop|s_debounceCnt\(15) & 
-- (!\registerBlock|debounceStartStop|Add0~29\))
-- \registerBlock|debounceStartStop|Add0~31\ = CARRY((!\registerBlock|debounceStartStop|s_debounceCnt\(15) & !\registerBlock|debounceStartStop|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(15),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~29\,
	combout => \registerBlock|debounceStartStop|Add0~30_combout\,
	cout => \registerBlock|debounceStartStop|Add0~31\);

-- Location: LCCOMB_X110_Y53_N12
\registerBlock|debounceStartStop|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~4_combout\ = (\registerBlock|debounceStartStop|s_previousIn~q\ & (\registerBlock|debounceStartStop|Add0~30_combout\ & \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_previousIn~q\,
	datac => \registerBlock|debounceStartStop|Add0~30_combout\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~4_combout\);

-- Location: FF_X110_Y53_N13
\registerBlock|debounceStartStop|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~4_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(15));

-- Location: LCCOMB_X111_Y53_N10
\registerBlock|debounceStartStop|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~32_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(16) & ((GND) # (!\registerBlock|debounceStartStop|Add0~31\))) # (!\registerBlock|debounceStartStop|s_debounceCnt\(16) & 
-- (\registerBlock|debounceStartStop|Add0~31\ $ (GND)))
-- \registerBlock|debounceStartStop|Add0~33\ = CARRY((\registerBlock|debounceStartStop|s_debounceCnt\(16)) # (!\registerBlock|debounceStartStop|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(16),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~31\,
	combout => \registerBlock|debounceStartStop|Add0~32_combout\,
	cout => \registerBlock|debounceStartStop|Add0~33\);

-- Location: LCCOMB_X110_Y53_N6
\registerBlock|debounceStartStop|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~5_combout\ = (\registerBlock|debounceStartStop|s_previousIn~q\ & (\registerBlock|debounceStartStop|Add0~32_combout\ & \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_previousIn~q\,
	datac => \registerBlock|debounceStartStop|Add0~32_combout\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~5_combout\);

-- Location: FF_X110_Y53_N7
\registerBlock|debounceStartStop|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~5_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(16));

-- Location: LCCOMB_X111_Y53_N12
\registerBlock|debounceStartStop|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~34_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(17) & (\registerBlock|debounceStartStop|Add0~33\ & VCC)) # (!\registerBlock|debounceStartStop|s_debounceCnt\(17) & 
-- (!\registerBlock|debounceStartStop|Add0~33\))
-- \registerBlock|debounceStartStop|Add0~35\ = CARRY((!\registerBlock|debounceStartStop|s_debounceCnt\(17) & !\registerBlock|debounceStartStop|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(17),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~33\,
	combout => \registerBlock|debounceStartStop|Add0~34_combout\,
	cout => \registerBlock|debounceStartStop|Add0~35\);

-- Location: LCCOMB_X111_Y53_N14
\registerBlock|debounceStartStop|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~36_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(18) & ((GND) # (!\registerBlock|debounceStartStop|Add0~35\))) # (!\registerBlock|debounceStartStop|s_debounceCnt\(18) & 
-- (\registerBlock|debounceStartStop|Add0~35\ $ (GND)))
-- \registerBlock|debounceStartStop|Add0~37\ = CARRY((\registerBlock|debounceStartStop|s_debounceCnt\(18)) # (!\registerBlock|debounceStartStop|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(18),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~35\,
	combout => \registerBlock|debounceStartStop|Add0~36_combout\,
	cout => \registerBlock|debounceStartStop|Add0~37\);

-- Location: LCCOMB_X112_Y53_N26
\registerBlock|debounceStartStop|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt[18]~17_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\ & (\registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\ & ((\registerBlock|debounceStartStop|Add0~36_combout\) # 
-- (!\registerBlock|debounceStartStop|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_previousIn~q\,
	datab => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	datac => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	datad => \registerBlock|debounceStartStop|Add0~36_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt[18]~17_combout\);

-- Location: FF_X112_Y53_N27
\registerBlock|debounceStartStop|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(18));

-- Location: LCCOMB_X111_Y53_N16
\registerBlock|debounceStartStop|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~38_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(19) & (\registerBlock|debounceStartStop|Add0~37\ & VCC)) # (!\registerBlock|debounceStartStop|s_debounceCnt\(19) & 
-- (!\registerBlock|debounceStartStop|Add0~37\))
-- \registerBlock|debounceStartStop|Add0~39\ = CARRY((!\registerBlock|debounceStartStop|s_debounceCnt\(19) & !\registerBlock|debounceStartStop|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(19),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~37\,
	combout => \registerBlock|debounceStartStop|Add0~38_combout\,
	cout => \registerBlock|debounceStartStop|Add0~39\);

-- Location: LCCOMB_X111_Y53_N28
\registerBlock|debounceStartStop|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt[19]~18_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\ & (\registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\ & ((\registerBlock|debounceStartStop|Add0~38_combout\) # 
-- (!\registerBlock|debounceStartStop|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_previousIn~q\,
	datab => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	datac => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	datad => \registerBlock|debounceStartStop|Add0~38_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt[19]~18_combout\);

-- Location: FF_X111_Y53_N29
\registerBlock|debounceStartStop|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(19));

-- Location: LCCOMB_X111_Y53_N18
\registerBlock|debounceStartStop|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~40_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(20) & ((GND) # (!\registerBlock|debounceStartStop|Add0~39\))) # (!\registerBlock|debounceStartStop|s_debounceCnt\(20) & 
-- (\registerBlock|debounceStartStop|Add0~39\ $ (GND)))
-- \registerBlock|debounceStartStop|Add0~41\ = CARRY((\registerBlock|debounceStartStop|s_debounceCnt\(20)) # (!\registerBlock|debounceStartStop|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(20),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~39\,
	combout => \registerBlock|debounceStartStop|Add0~40_combout\,
	cout => \registerBlock|debounceStartStop|Add0~41\);

-- Location: LCCOMB_X112_Y53_N16
\registerBlock|debounceStartStop|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt[20]~9_combout\ = (\registerBlock|debounceStartStop|s_previousIn~q\ & (\registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\ & (\registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\ & 
-- \registerBlock|debounceStartStop|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_previousIn~q\,
	datab => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	datac => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	datad => \registerBlock|debounceStartStop|Add0~40_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt[20]~9_combout\);

-- Location: FF_X112_Y53_N17
\registerBlock|debounceStartStop|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(20));

-- Location: LCCOMB_X111_Y53_N20
\registerBlock|debounceStartStop|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~42_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(21) & (\registerBlock|debounceStartStop|Add0~41\ & VCC)) # (!\registerBlock|debounceStartStop|s_debounceCnt\(21) & 
-- (!\registerBlock|debounceStartStop|Add0~41\))
-- \registerBlock|debounceStartStop|Add0~43\ = CARRY((!\registerBlock|debounceStartStop|s_debounceCnt\(21) & !\registerBlock|debounceStartStop|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(21),
	datad => VCC,
	cin => \registerBlock|debounceStartStop|Add0~41\,
	combout => \registerBlock|debounceStartStop|Add0~42_combout\,
	cout => \registerBlock|debounceStartStop|Add0~43\);

-- Location: LCCOMB_X112_Y53_N18
\registerBlock|debounceStartStop|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt[21]~10_combout\ = (\registerBlock|debounceStartStop|s_previousIn~q\ & (\registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\ & (\registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\ & 
-- \registerBlock|debounceStartStop|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_previousIn~q\,
	datab => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	datac => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	datad => \registerBlock|debounceStartStop|Add0~42_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt[21]~10_combout\);

-- Location: FF_X112_Y53_N19
\registerBlock|debounceStartStop|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(21));

-- Location: LCCOMB_X112_Y53_N4
\registerBlock|debounceStartStop|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|LessThan0~0_combout\ = (!\registerBlock|debounceStartStop|s_debounceCnt\(20) & !\registerBlock|debounceStartStop|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(20),
	datad => \registerBlock|debounceStartStop|s_debounceCnt\(21),
	combout => \registerBlock|debounceStartStop|LessThan0~0_combout\);

-- Location: LCCOMB_X109_Y53_N28
\registerBlock|debounceStartStop|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|LessThan0~4_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(18) & (\registerBlock|debounceStartStop|s_debounceCnt\(14) & (\registerBlock|debounceStartStop|s_debounceCnt\(8) & 
-- \registerBlock|debounceStartStop|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(18),
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(14),
	datac => \registerBlock|debounceStartStop|s_debounceCnt\(8),
	datad => \registerBlock|debounceStartStop|s_debounceCnt\(19),
	combout => \registerBlock|debounceStartStop|LessThan0~4_combout\);

-- Location: LCCOMB_X109_Y53_N14
\registerBlock|debounceStartStop|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|LessThan0~5_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(11) & (\registerBlock|debounceStartStop|s_debounceCnt\(9) & \registerBlock|debounceStartStop|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(11),
	datac => \registerBlock|debounceStartStop|s_debounceCnt\(9),
	datad => \registerBlock|debounceStartStop|LessThan0~4_combout\,
	combout => \registerBlock|debounceStartStop|LessThan0~5_combout\);

-- Location: LCCOMB_X110_Y53_N22
\registerBlock|debounceStartStop|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|LessThan0~1_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(13)) # ((\registerBlock|debounceStartStop|s_debounceCnt\(12)) # ((\registerBlock|debounceStartStop|s_debounceCnt\(11) & 
-- \registerBlock|debounceStartStop|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(13),
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(12),
	datac => \registerBlock|debounceStartStop|s_debounceCnt\(11),
	datad => \registerBlock|debounceStartStop|s_debounceCnt\(10),
	combout => \registerBlock|debounceStartStop|LessThan0~1_combout\);

-- Location: LCCOMB_X110_Y53_N4
\registerBlock|debounceStartStop|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|LessThan0~2_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(16)) # ((\registerBlock|debounceStartStop|s_debounceCnt\(15)) # ((\registerBlock|debounceStartStop|s_debounceCnt\(14) & 
-- \registerBlock|debounceStartStop|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(16),
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(14),
	datac => \registerBlock|debounceStartStop|LessThan0~1_combout\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt\(15),
	combout => \registerBlock|debounceStartStop|LessThan0~2_combout\);

-- Location: LCCOMB_X109_Y53_N30
\registerBlock|debounceStartStop|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|LessThan0~3_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(19) & (\registerBlock|debounceStartStop|s_debounceCnt\(18) & ((\registerBlock|debounceStartStop|s_debounceCnt\(17)) # 
-- (\registerBlock|debounceStartStop|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(17),
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(19),
	datac => \registerBlock|debounceStartStop|s_debounceCnt\(18),
	datad => \registerBlock|debounceStartStop|LessThan0~2_combout\,
	combout => \registerBlock|debounceStartStop|LessThan0~3_combout\);

-- Location: LCCOMB_X110_Y53_N26
\registerBlock|debounceStartStop|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|LessThan0~6_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(6) & ((\registerBlock|debounceStartStop|s_debounceCnt\(5)) # ((\registerBlock|debounceStartStop|s_debounceCnt\(0)) # 
-- (!\registerBlock|debounceStartStop|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(5),
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(6),
	datac => \registerBlock|debounceStartStop|s_debounceCnt\(0),
	datad => \registerBlock|debounceStartStop|s_pulsedOut~5_combout\,
	combout => \registerBlock|debounceStartStop|LessThan0~6_combout\);

-- Location: LCCOMB_X109_Y53_N20
\registerBlock|debounceStartStop|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|LessThan0~7_combout\ = (\registerBlock|debounceStartStop|LessThan0~3_combout\) # ((\registerBlock|debounceStartStop|LessThan0~5_combout\ & ((\registerBlock|debounceStartStop|s_debounceCnt\(7)) # 
-- (\registerBlock|debounceStartStop|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(7),
	datab => \registerBlock|debounceStartStop|LessThan0~5_combout\,
	datac => \registerBlock|debounceStartStop|LessThan0~3_combout\,
	datad => \registerBlock|debounceStartStop|LessThan0~6_combout\,
	combout => \registerBlock|debounceStartStop|LessThan0~7_combout\);

-- Location: LCCOMB_X109_Y53_N12
\registerBlock|debounceStartStop|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt[22]~24_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(22) & (((\registerBlock|debounceStartStop|LessThan0~0_combout\ & !\registerBlock|debounceStartStop|LessThan0~7_combout\)))) # 
-- (!\registerBlock|debounceStartStop|s_debounceCnt\(22) & (\registerBlock|debounceStartStop|s_debounceCnt[12]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt[12]~2_combout\,
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(22),
	datac => \registerBlock|debounceStartStop|LessThan0~0_combout\,
	datad => \registerBlock|debounceStartStop|LessThan0~7_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X109_Y53_N22
\registerBlock|debounceStartStop|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt[22]~25_combout\ = (\registerBlock|debounceStartStop|s_previousIn~q\ & (\registerBlock|debounceStartStop|s_dirtyIn~q\)) # (!\registerBlock|debounceStartStop|s_previousIn~q\ & 
-- ((\registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_previousIn~q\,
	datac => \registerBlock|debounceStartStop|s_dirtyIn~q\,
	datad => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X111_Y53_N22
\registerBlock|debounceStartStop|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|Add0~44_combout\ = \registerBlock|debounceStartStop|s_debounceCnt\(22) $ (\registerBlock|debounceStartStop|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(22),
	cin => \registerBlock|debounceStartStop|Add0~43\,
	combout => \registerBlock|debounceStartStop|Add0~44_combout\);

-- Location: LCCOMB_X109_Y53_N16
\registerBlock|debounceStartStop|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt[22]~26_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt[22]~25_combout\ & (((\registerBlock|debounceStartStop|s_debounceCnt[22]~24_combout\ & \registerBlock|debounceStartStop|Add0~44_combout\)) # 
-- (!\registerBlock|debounceStartStop|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt[22]~24_combout\,
	datab => \registerBlock|debounceStartStop|s_previousIn~q\,
	datac => \registerBlock|debounceStartStop|s_debounceCnt[22]~25_combout\,
	datad => \registerBlock|debounceStartStop|Add0~44_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt[22]~26_combout\);

-- Location: FF_X109_Y53_N17
\registerBlock|debounceStartStop|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(22));

-- Location: LCCOMB_X109_Y53_N10
\registerBlock|debounceStartStop|s_debounceCnt[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\ = (\registerBlock|debounceStartStop|s_dirtyIn~q\ & (((\registerBlock|debounceStartStop|LessThan0~0_combout\ & !\registerBlock|debounceStartStop|LessThan0~7_combout\)) # 
-- (!\registerBlock|debounceStartStop|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_dirtyIn~q\,
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(22),
	datac => \registerBlock|debounceStartStop|LessThan0~0_combout\,
	datad => \registerBlock|debounceStartStop|LessThan0~7_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\);

-- Location: LCCOMB_X111_Y53_N26
\registerBlock|debounceStartStop|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_debounceCnt~6_combout\ = (\registerBlock|debounceStartStop|s_previousIn~q\ & (\registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\ & \registerBlock|debounceStartStop|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceStartStop|s_previousIn~q\,
	datac => \registerBlock|debounceStartStop|s_debounceCnt[12]~0_combout\,
	datad => \registerBlock|debounceStartStop|Add0~34_combout\,
	combout => \registerBlock|debounceStartStop|s_debounceCnt~6_combout\);

-- Location: FF_X111_Y53_N27
\registerBlock|debounceStartStop|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_debounceCnt~6_combout\,
	ena => \registerBlock|debounceStartStop|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_debounceCnt\(17));

-- Location: LCCOMB_X112_Y53_N22
\registerBlock|debounceStartStop|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_pulsedOut~0_combout\ = (!\registerBlock|debounceStartStop|s_debounceCnt\(17) & (!\registerBlock|debounceStartStop|s_debounceCnt\(6) & (!\registerBlock|debounceStartStop|s_debounceCnt\(16) & 
-- !\registerBlock|debounceStartStop|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(17),
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(6),
	datac => \registerBlock|debounceStartStop|s_debounceCnt\(16),
	datad => \registerBlock|debounceStartStop|s_debounceCnt\(15),
	combout => \registerBlock|debounceStartStop|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X112_Y53_N24
\registerBlock|debounceStartStop|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_pulsedOut~1_combout\ = (!\registerBlock|debounceStartStop|s_debounceCnt\(21) & (!\registerBlock|debounceStartStop|s_debounceCnt\(20) & (!\registerBlock|debounceStartStop|s_debounceCnt\(12) & 
-- !\registerBlock|debounceStartStop|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(21),
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(20),
	datac => \registerBlock|debounceStartStop|s_debounceCnt\(12),
	datad => \registerBlock|debounceStartStop|s_debounceCnt\(13),
	combout => \registerBlock|debounceStartStop|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X112_Y53_N8
\registerBlock|debounceStartStop|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_pulsedOut~3_combout\ = (!\registerBlock|debounceStartStop|s_debounceCnt\(18) & (!\registerBlock|debounceStartStop|s_debounceCnt\(19) & (!\registerBlock|debounceStartStop|s_debounceCnt\(11) & 
-- !\registerBlock|debounceStartStop|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(18),
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(19),
	datac => \registerBlock|debounceStartStop|s_debounceCnt\(11),
	datad => \registerBlock|debounceStartStop|s_debounceCnt\(14),
	combout => \registerBlock|debounceStartStop|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X112_Y53_N20
\registerBlock|debounceStartStop|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_pulsedOut~2_combout\ = (!\registerBlock|debounceStartStop|s_debounceCnt\(7) & (!\registerBlock|debounceStartStop|s_debounceCnt\(8) & (!\registerBlock|debounceStartStop|s_debounceCnt\(9) & 
-- !\registerBlock|debounceStartStop|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(7),
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(8),
	datac => \registerBlock|debounceStartStop|s_debounceCnt\(9),
	datad => \registerBlock|debounceStartStop|s_debounceCnt\(10),
	combout => \registerBlock|debounceStartStop|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X112_Y53_N30
\registerBlock|debounceStartStop|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_pulsedOut~4_combout\ = (\registerBlock|debounceStartStop|s_pulsedOut~0_combout\ & (\registerBlock|debounceStartStop|s_pulsedOut~1_combout\ & (\registerBlock|debounceStartStop|s_pulsedOut~3_combout\ & 
-- \registerBlock|debounceStartStop|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_pulsedOut~0_combout\,
	datab => \registerBlock|debounceStartStop|s_pulsedOut~1_combout\,
	datac => \registerBlock|debounceStartStop|s_pulsedOut~3_combout\,
	datad => \registerBlock|debounceStartStop|s_pulsedOut~2_combout\,
	combout => \registerBlock|debounceStartStop|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X111_Y53_N30
\registerBlock|debounceStartStop|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_pulsedOut~6_combout\ = (\registerBlock|debounceStartStop|s_debounceCnt\(0) & (\registerBlock|debounceStartStop|s_dirtyIn~q\ & (!\registerBlock|debounceStartStop|s_debounceCnt\(22) & 
-- \registerBlock|debounceStartStop|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_debounceCnt\(0),
	datab => \registerBlock|debounceStartStop|s_dirtyIn~q\,
	datac => \registerBlock|debounceStartStop|s_debounceCnt\(22),
	datad => \registerBlock|debounceStartStop|s_previousIn~q\,
	combout => \registerBlock|debounceStartStop|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X111_Y53_N24
\registerBlock|debounceStartStop|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \registerBlock|debounceStartStop|s_pulsedOut~7_combout\ = (\registerBlock|debounceStartStop|s_pulsedOut~4_combout\ & (!\registerBlock|debounceStartStop|s_debounceCnt\(5) & (\registerBlock|debounceStartStop|s_pulsedOut~6_combout\ & 
-- \registerBlock|debounceStartStop|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceStartStop|s_pulsedOut~4_combout\,
	datab => \registerBlock|debounceStartStop|s_debounceCnt\(5),
	datac => \registerBlock|debounceStartStop|s_pulsedOut~6_combout\,
	datad => \registerBlock|debounceStartStop|s_pulsedOut~5_combout\,
	combout => \registerBlock|debounceStartStop|s_pulsedOut~7_combout\);

-- Location: FF_X111_Y53_N25
\registerBlock|debounceStartStop|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \registerBlock|debounceStartStop|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|debounceStartStop|s_pulsedOut~q\);

-- Location: LCCOMB_X100_Y35_N14
\s_running~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_running~0_combout\ = \s_running~q\ $ (\registerBlock|debounceStartStop|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_running~q\,
	datac => \registerBlock|debounceStartStop|s_pulsedOut~q\,
	combout => \s_running~0_combout\);

-- Location: LCCOMB_X100_Y35_N6
\s_running~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_running~feeder_combout\ = \s_running~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_running~0_combout\,
	combout => \s_running~feeder_combout\);

-- Location: FF_X100_Y35_N7
s_running : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \s_running~feeder_combout\,
	sclr => \registerBlock|debounceReset|s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_running~q\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X101_Y35_N21
\registerBlock|door_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerBlock|door_out~q\);

-- Location: LCCOMB_X101_Y35_N24
\FSMUnit|timeEn\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|timeEn~combout\ = (\s_running~q\ & !\registerBlock|door_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_running~q\,
	datad => \registerBlock|door_out~q\,
	combout => \FSMUnit|timeEn~combout\);

-- Location: CLKCTRL_G9
\FSMUnit|timeEn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FSMUnit|timeEn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FSMUnit|timeEn~clkctrl_outclk\);

-- Location: LCCOMB_X99_Y35_N26
\FSMUnit|nSt.off_359\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|nSt.off_359~combout\ = (GLOBAL(\FSMUnit|timeEn~clkctrl_outclk\) & ((\FSMUnit|Selector8~0_combout\))) # (!GLOBAL(\FSMUnit|timeEn~clkctrl_outclk\) & (\FSMUnit|nSt.off_359~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|nSt.off_359~combout\,
	datac => \FSMUnit|Selector8~0_combout\,
	datad => \FSMUnit|timeEn~clkctrl_outclk\,
	combout => \FSMUnit|nSt.off_359~combout\);

-- Location: LCCOMB_X99_Y35_N8
\FSMUnit|pSt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|pSt~12_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & \FSMUnit|nSt.off_359~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_pulsedOut~q\,
	datad => \FSMUnit|nSt.off_359~combout\,
	combout => \FSMUnit|pSt~12_combout\);

-- Location: FF_X98_Y35_N19
\FSMUnit|pSt.off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \FSMUnit|pSt~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMUnit|pSt.off~q\);

-- Location: LCCOMB_X100_Y35_N24
\FSMUnit|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector3~1_combout\ = (\FSMUnit|Selector3~0_combout\) # ((\FSMUnit|pSt.off~q\ & \timerAux|s_cntZero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|Selector3~0_combout\,
	datac => \FSMUnit|pSt.off~q\,
	datad => \timerAux|s_cntZero~q\,
	combout => \FSMUnit|Selector3~1_combout\);

-- Location: LCCOMB_X100_Y35_N8
\FSMUnit|nSt.idle_429\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|nSt.idle_429~combout\ = (GLOBAL(\FSMUnit|timeEn~clkctrl_outclk\) & (\FSMUnit|Selector3~1_combout\)) # (!GLOBAL(\FSMUnit|timeEn~clkctrl_outclk\) & ((\FSMUnit|nSt.idle_429~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|Selector3~1_combout\,
	datac => \FSMUnit|nSt.idle_429~combout\,
	datad => \FSMUnit|timeEn~clkctrl_outclk\,
	combout => \FSMUnit|nSt.idle_429~combout\);

-- Location: LCCOMB_X100_Y35_N22
\FSMUnit|pSt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|pSt~13_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & !\FSMUnit|nSt.idle_429~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_pulsedOut~q\,
	datac => \FSMUnit|nSt.idle_429~combout\,
	combout => \FSMUnit|pSt~13_combout\);

-- Location: FF_X100_Y35_N23
\FSMUnit|pSt.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSMUnit|pSt~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMUnit|pSt.idle~q\);

-- Location: LCCOMB_X99_Y35_N0
\FSMUnit|diffSt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|diffSt~1_combout\ = (\FSMUnit|pSt.wOut~q\ & ((\FSMUnit|pSt.rns~q\ $ (\FSMUnit|nSt.rns_401~combout\)) # (!\FSMUnit|nSt.wOut_387~combout\))) # (!\FSMUnit|pSt.wOut~q\ & ((\FSMUnit|nSt.wOut_387~combout\) # (\FSMUnit|pSt.rns~q\ $ 
-- (\FSMUnit|nSt.rns_401~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|pSt.wOut~q\,
	datab => \FSMUnit|pSt.rns~q\,
	datac => \FSMUnit|nSt.wOut_387~combout\,
	datad => \FSMUnit|nSt.rns_401~combout\,
	combout => \FSMUnit|diffSt~1_combout\);

-- Location: LCCOMB_X99_Y35_N6
\FSMUnit|diffSt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|diffSt~0_combout\ = (\FSMUnit|pSt.off~q\ & ((\FSMUnit|pSt.spn~q\ $ (\FSMUnit|nSt.spn_373~combout\)) # (!\FSMUnit|nSt.off_359~combout\))) # (!\FSMUnit|pSt.off~q\ & ((\FSMUnit|nSt.off_359~combout\) # (\FSMUnit|pSt.spn~q\ $ 
-- (\FSMUnit|nSt.spn_373~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|pSt.off~q\,
	datab => \FSMUnit|pSt.spn~q\,
	datac => \FSMUnit|nSt.off_359~combout\,
	datad => \FSMUnit|nSt.spn_373~combout\,
	combout => \FSMUnit|diffSt~0_combout\);

-- Location: LCCOMB_X100_Y35_N10
\FSMUnit|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector4~0_combout\ = (\FSMUnit|s_program\(1) & (!\FSMUnit|s_program\(0) & (!\FSMUnit|s_program\(2) & !\FSMUnit|pSt.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|s_program\(1),
	datab => \FSMUnit|s_program\(0),
	datac => \FSMUnit|s_program\(2),
	datad => \FSMUnit|pSt.idle~q\,
	combout => \FSMUnit|Selector4~0_combout\);

-- Location: LCCOMB_X100_Y35_N30
\FSMUnit|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector4~2_combout\ = (\FSMUnit|Selector4~0_combout\) # ((\FSMUnit|Selector4~1_combout\) # ((!\timerAux|s_cntZero~q\ & \FSMUnit|pSt.wIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_cntZero~q\,
	datab => \FSMUnit|pSt.wIn~q\,
	datac => \FSMUnit|Selector4~0_combout\,
	datad => \FSMUnit|Selector4~1_combout\,
	combout => \FSMUnit|Selector4~2_combout\);

-- Location: LCCOMB_X100_Y35_N4
\FSMUnit|nSt.wIn_415\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|nSt.wIn_415~combout\ = (GLOBAL(\FSMUnit|timeEn~clkctrl_outclk\) & (\FSMUnit|Selector4~2_combout\)) # (!GLOBAL(\FSMUnit|timeEn~clkctrl_outclk\) & ((\FSMUnit|nSt.wIn_415~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|Selector4~2_combout\,
	datac => \FSMUnit|nSt.wIn_415~combout\,
	datad => \FSMUnit|timeEn~clkctrl_outclk\,
	combout => \FSMUnit|nSt.wIn_415~combout\);

-- Location: LCCOMB_X99_Y35_N20
\FSMUnit|pSt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|pSt~8_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & \FSMUnit|nSt.wIn_415~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_pulsedOut~q\,
	datad => \FSMUnit|nSt.wIn_415~combout\,
	combout => \FSMUnit|pSt~8_combout\);

-- Location: FF_X98_Y35_N29
\FSMUnit|pSt.wIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \FSMUnit|pSt~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMUnit|pSt.wIn~q\);

-- Location: LCCOMB_X100_Y35_N0
\FSMUnit|diffSt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|diffSt~2_combout\ = (\FSMUnit|pSt.wIn~q\ & ((\FSMUnit|nSt.idle_429~combout\ $ (!\FSMUnit|pSt.idle~q\)) # (!\FSMUnit|nSt.wIn_415~combout\))) # (!\FSMUnit|pSt.wIn~q\ & ((\FSMUnit|nSt.wIn_415~combout\) # (\FSMUnit|nSt.idle_429~combout\ $ 
-- (!\FSMUnit|pSt.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|pSt.wIn~q\,
	datab => \FSMUnit|nSt.idle_429~combout\,
	datac => \FSMUnit|nSt.wIn_415~combout\,
	datad => \FSMUnit|pSt.idle~q\,
	combout => \FSMUnit|diffSt~2_combout\);

-- Location: LCCOMB_X100_Y35_N26
\FSMUnit|diffSt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|diffSt~3_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & ((\FSMUnit|diffSt~1_combout\) # ((\FSMUnit|diffSt~0_combout\) # (\FSMUnit|diffSt~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|diffSt~1_combout\,
	datab => \FSMUnit|diffSt~0_combout\,
	datac => \registerBlock|debounceReset|s_pulsedOut~q\,
	datad => \FSMUnit|diffSt~2_combout\,
	combout => \FSMUnit|diffSt~3_combout\);

-- Location: LCCOMB_X100_Y35_N12
\FSMUnit|diffSt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|diffSt~4_combout\ = (!\FSMUnit|diffSt~3_combout\ & ((\FSMUnit|diffSt~q\) # (!\registerBlock|debounceReset|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|diffSt~3_combout\,
	datac => \FSMUnit|diffSt~q\,
	datad => \registerBlock|debounceReset|s_pulsedOut~q\,
	combout => \FSMUnit|diffSt~4_combout\);

-- Location: FF_X100_Y35_N13
\FSMUnit|diffSt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSMUnit|diffSt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMUnit|diffSt~q\);

-- Location: LCCOMB_X100_Y35_N28
\FSMUnit|newTime~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|newTime~0_combout\ = (!\FSMUnit|diffSt~q\) # (!\FSMUnit|pSt.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|pSt.idle~q\,
	datad => \FSMUnit|diffSt~q\,
	combout => \FSMUnit|newTime~0_combout\);

-- Location: FF_X101_Y35_N25
\FSMUnit|newTime\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \FSMUnit|newTime~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMUnit|newTime~q\);

-- Location: LCCOMB_X103_Y35_N10
\timerAux|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~0_combout\ = \timerAux|s_counter\(0) $ (GND)
-- \timerAux|Add0~1\ = CARRY(!\timerAux|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timerAux|s_counter\(0),
	datad => VCC,
	combout => \timerAux|Add0~0_combout\,
	cout => \timerAux|Add0~1\);

-- Location: LCCOMB_X103_Y35_N2
\FSMUnit|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector2~0_combout\ = (!\FSMUnit|pSt.idle~q\ & ((\registerBlock|p3_out~q\ & ((\registerBlock|p2_out~q\) # (\registerBlock|p1_out~q\))) # (!\registerBlock|p3_out~q\ & (\registerBlock|p2_out~q\ $ (!\registerBlock|p1_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|pSt.idle~q\,
	datab => \registerBlock|p3_out~q\,
	datac => \registerBlock|p2_out~q\,
	datad => \registerBlock|p1_out~q\,
	combout => \FSMUnit|Selector2~0_combout\);

-- Location: LCCOMB_X103_Y35_N0
\FSMUnit|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector2~1_combout\ = (\FSMUnit|Selector2~0_combout\) # (\FSMUnit|pSt.wIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSMUnit|Selector2~0_combout\,
	datad => \FSMUnit|pSt.wIn~q\,
	combout => \FSMUnit|Selector2~1_combout\);

-- Location: CLKCTRL_G6
\FSMUnit|pSt.spn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FSMUnit|pSt.spn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FSMUnit|pSt.spn~clkctrl_outclk\);

-- Location: LCCOMB_X102_Y35_N6
\FSMUnit|timeVal[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|timeVal\(0) = (GLOBAL(\FSMUnit|pSt.spn~clkctrl_outclk\) & (\FSMUnit|timeVal\(0))) # (!GLOBAL(\FSMUnit|pSt.spn~clkctrl_outclk\) & ((\FSMUnit|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|timeVal\(0),
	datac => \FSMUnit|Selector2~1_combout\,
	datad => \FSMUnit|pSt.spn~clkctrl_outclk\,
	combout => \FSMUnit|timeVal\(0));

-- Location: LCCOMB_X102_Y35_N22
\timerAux|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~2_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & ((\FSMUnit|newTime~q\ & ((!\FSMUnit|timeVal\(0)))) # (!\FSMUnit|newTime~q\ & (!\timerAux|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_pulsedOut~q\,
	datab => \FSMUnit|newTime~q\,
	datac => \timerAux|Add0~0_combout\,
	datad => \FSMUnit|timeVal\(0),
	combout => \timerAux|Add0~2_combout\);

-- Location: LCCOMB_X101_Y35_N22
\timerAux|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Equal0~0_combout\ = (\timerAux|s_counter\(1) & (\timerAux|s_counter\(3) & (\timerAux|s_counter\(0) & \timerAux|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(1),
	datab => \timerAux|s_counter\(3),
	datac => \timerAux|s_counter\(0),
	datad => \timerAux|s_counter\(2),
	combout => \timerAux|Equal0~0_combout\);

-- Location: LCCOMB_X97_Y39_N6
\pulseGenUnit|s_counter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[0]~26_combout\ = \pulseGenUnit|s_counter\(0) $ (VCC)
-- \pulseGenUnit|s_counter[0]~27\ = CARRY(\pulseGenUnit|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(0),
	datad => VCC,
	combout => \pulseGenUnit|s_counter[0]~26_combout\,
	cout => \pulseGenUnit|s_counter[0]~27\);

-- Location: LCCOMB_X98_Y38_N0
\pulseGenUnit|s_counter[23]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[23]~28_combout\ = (\registerBlock|debounceReset|s_pulsedOut~q\) # (!\pulseGenUnit|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerBlock|debounceReset|s_pulsedOut~q\,
	datad => \pulseGenUnit|Equal0~8_combout\,
	combout => \pulseGenUnit|s_counter[23]~28_combout\);

-- Location: FF_X97_Y39_N7
\pulseGenUnit|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[0]~26_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(0));

-- Location: LCCOMB_X97_Y39_N8
\pulseGenUnit|s_counter[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[1]~29_combout\ = (\pulseGenUnit|s_counter\(1) & (!\pulseGenUnit|s_counter[0]~27\)) # (!\pulseGenUnit|s_counter\(1) & ((\pulseGenUnit|s_counter[0]~27\) # (GND)))
-- \pulseGenUnit|s_counter[1]~30\ = CARRY((!\pulseGenUnit|s_counter[0]~27\) # (!\pulseGenUnit|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenUnit|s_counter\(1),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[0]~27\,
	combout => \pulseGenUnit|s_counter[1]~29_combout\,
	cout => \pulseGenUnit|s_counter[1]~30\);

-- Location: FF_X97_Y39_N9
\pulseGenUnit|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[1]~29_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(1));

-- Location: LCCOMB_X97_Y39_N10
\pulseGenUnit|s_counter[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[2]~31_combout\ = (\pulseGenUnit|s_counter\(2) & (\pulseGenUnit|s_counter[1]~30\ $ (GND))) # (!\pulseGenUnit|s_counter\(2) & (!\pulseGenUnit|s_counter[1]~30\ & VCC))
-- \pulseGenUnit|s_counter[2]~32\ = CARRY((\pulseGenUnit|s_counter\(2) & !\pulseGenUnit|s_counter[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(2),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[1]~30\,
	combout => \pulseGenUnit|s_counter[2]~31_combout\,
	cout => \pulseGenUnit|s_counter[2]~32\);

-- Location: FF_X97_Y39_N11
\pulseGenUnit|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[2]~31_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(2));

-- Location: LCCOMB_X97_Y39_N12
\pulseGenUnit|s_counter[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[3]~33_combout\ = (\pulseGenUnit|s_counter\(3) & (!\pulseGenUnit|s_counter[2]~32\)) # (!\pulseGenUnit|s_counter\(3) & ((\pulseGenUnit|s_counter[2]~32\) # (GND)))
-- \pulseGenUnit|s_counter[3]~34\ = CARRY((!\pulseGenUnit|s_counter[2]~32\) # (!\pulseGenUnit|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(3),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[2]~32\,
	combout => \pulseGenUnit|s_counter[3]~33_combout\,
	cout => \pulseGenUnit|s_counter[3]~34\);

-- Location: FF_X97_Y39_N13
\pulseGenUnit|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[3]~33_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(3));

-- Location: LCCOMB_X97_Y39_N14
\pulseGenUnit|s_counter[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[4]~35_combout\ = (\pulseGenUnit|s_counter\(4) & (\pulseGenUnit|s_counter[3]~34\ $ (GND))) # (!\pulseGenUnit|s_counter\(4) & (!\pulseGenUnit|s_counter[3]~34\ & VCC))
-- \pulseGenUnit|s_counter[4]~36\ = CARRY((\pulseGenUnit|s_counter\(4) & !\pulseGenUnit|s_counter[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenUnit|s_counter\(4),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[3]~34\,
	combout => \pulseGenUnit|s_counter[4]~35_combout\,
	cout => \pulseGenUnit|s_counter[4]~36\);

-- Location: FF_X97_Y39_N15
\pulseGenUnit|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[4]~35_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(4));

-- Location: LCCOMB_X97_Y39_N16
\pulseGenUnit|s_counter[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[5]~37_combout\ = (\pulseGenUnit|s_counter\(5) & (!\pulseGenUnit|s_counter[4]~36\)) # (!\pulseGenUnit|s_counter\(5) & ((\pulseGenUnit|s_counter[4]~36\) # (GND)))
-- \pulseGenUnit|s_counter[5]~38\ = CARRY((!\pulseGenUnit|s_counter[4]~36\) # (!\pulseGenUnit|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenUnit|s_counter\(5),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[4]~36\,
	combout => \pulseGenUnit|s_counter[5]~37_combout\,
	cout => \pulseGenUnit|s_counter[5]~38\);

-- Location: FF_X97_Y39_N17
\pulseGenUnit|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[5]~37_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(5));

-- Location: LCCOMB_X97_Y39_N18
\pulseGenUnit|s_counter[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[6]~39_combout\ = (\pulseGenUnit|s_counter\(6) & (\pulseGenUnit|s_counter[5]~38\ $ (GND))) # (!\pulseGenUnit|s_counter\(6) & (!\pulseGenUnit|s_counter[5]~38\ & VCC))
-- \pulseGenUnit|s_counter[6]~40\ = CARRY((\pulseGenUnit|s_counter\(6) & !\pulseGenUnit|s_counter[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenUnit|s_counter\(6),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[5]~38\,
	combout => \pulseGenUnit|s_counter[6]~39_combout\,
	cout => \pulseGenUnit|s_counter[6]~40\);

-- Location: FF_X97_Y39_N19
\pulseGenUnit|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[6]~39_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(6));

-- Location: LCCOMB_X97_Y39_N20
\pulseGenUnit|s_counter[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[7]~41_combout\ = (\pulseGenUnit|s_counter\(7) & (!\pulseGenUnit|s_counter[6]~40\)) # (!\pulseGenUnit|s_counter\(7) & ((\pulseGenUnit|s_counter[6]~40\) # (GND)))
-- \pulseGenUnit|s_counter[7]~42\ = CARRY((!\pulseGenUnit|s_counter[6]~40\) # (!\pulseGenUnit|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenUnit|s_counter\(7),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[6]~40\,
	combout => \pulseGenUnit|s_counter[7]~41_combout\,
	cout => \pulseGenUnit|s_counter[7]~42\);

-- Location: FF_X97_Y39_N21
\pulseGenUnit|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[7]~41_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(7));

-- Location: LCCOMB_X97_Y39_N22
\pulseGenUnit|s_counter[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[8]~43_combout\ = (\pulseGenUnit|s_counter\(8) & (\pulseGenUnit|s_counter[7]~42\ $ (GND))) # (!\pulseGenUnit|s_counter\(8) & (!\pulseGenUnit|s_counter[7]~42\ & VCC))
-- \pulseGenUnit|s_counter[8]~44\ = CARRY((\pulseGenUnit|s_counter\(8) & !\pulseGenUnit|s_counter[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(8),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[7]~42\,
	combout => \pulseGenUnit|s_counter[8]~43_combout\,
	cout => \pulseGenUnit|s_counter[8]~44\);

-- Location: FF_X97_Y39_N23
\pulseGenUnit|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[8]~43_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(8));

-- Location: LCCOMB_X97_Y39_N24
\pulseGenUnit|s_counter[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[9]~45_combout\ = (\pulseGenUnit|s_counter\(9) & (!\pulseGenUnit|s_counter[8]~44\)) # (!\pulseGenUnit|s_counter\(9) & ((\pulseGenUnit|s_counter[8]~44\) # (GND)))
-- \pulseGenUnit|s_counter[9]~46\ = CARRY((!\pulseGenUnit|s_counter[8]~44\) # (!\pulseGenUnit|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenUnit|s_counter\(9),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[8]~44\,
	combout => \pulseGenUnit|s_counter[9]~45_combout\,
	cout => \pulseGenUnit|s_counter[9]~46\);

-- Location: FF_X97_Y39_N25
\pulseGenUnit|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[9]~45_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(9));

-- Location: LCCOMB_X97_Y39_N26
\pulseGenUnit|s_counter[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[10]~47_combout\ = (\pulseGenUnit|s_counter\(10) & (\pulseGenUnit|s_counter[9]~46\ $ (GND))) # (!\pulseGenUnit|s_counter\(10) & (!\pulseGenUnit|s_counter[9]~46\ & VCC))
-- \pulseGenUnit|s_counter[10]~48\ = CARRY((\pulseGenUnit|s_counter\(10) & !\pulseGenUnit|s_counter[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(10),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[9]~46\,
	combout => \pulseGenUnit|s_counter[10]~47_combout\,
	cout => \pulseGenUnit|s_counter[10]~48\);

-- Location: FF_X97_Y39_N27
\pulseGenUnit|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[10]~47_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(10));

-- Location: LCCOMB_X97_Y39_N28
\pulseGenUnit|s_counter[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[11]~49_combout\ = (\pulseGenUnit|s_counter\(11) & (!\pulseGenUnit|s_counter[10]~48\)) # (!\pulseGenUnit|s_counter\(11) & ((\pulseGenUnit|s_counter[10]~48\) # (GND)))
-- \pulseGenUnit|s_counter[11]~50\ = CARRY((!\pulseGenUnit|s_counter[10]~48\) # (!\pulseGenUnit|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenUnit|s_counter\(11),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[10]~48\,
	combout => \pulseGenUnit|s_counter[11]~49_combout\,
	cout => \pulseGenUnit|s_counter[11]~50\);

-- Location: FF_X97_Y39_N29
\pulseGenUnit|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[11]~49_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(11));

-- Location: LCCOMB_X97_Y39_N30
\pulseGenUnit|s_counter[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[12]~51_combout\ = (\pulseGenUnit|s_counter\(12) & (\pulseGenUnit|s_counter[11]~50\ $ (GND))) # (!\pulseGenUnit|s_counter\(12) & (!\pulseGenUnit|s_counter[11]~50\ & VCC))
-- \pulseGenUnit|s_counter[12]~52\ = CARRY((\pulseGenUnit|s_counter\(12) & !\pulseGenUnit|s_counter[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(12),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[11]~50\,
	combout => \pulseGenUnit|s_counter[12]~51_combout\,
	cout => \pulseGenUnit|s_counter[12]~52\);

-- Location: FF_X97_Y39_N31
\pulseGenUnit|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[12]~51_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(12));

-- Location: LCCOMB_X97_Y38_N0
\pulseGenUnit|s_counter[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[13]~53_combout\ = (\pulseGenUnit|s_counter\(13) & (!\pulseGenUnit|s_counter[12]~52\)) # (!\pulseGenUnit|s_counter\(13) & ((\pulseGenUnit|s_counter[12]~52\) # (GND)))
-- \pulseGenUnit|s_counter[13]~54\ = CARRY((!\pulseGenUnit|s_counter[12]~52\) # (!\pulseGenUnit|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenUnit|s_counter\(13),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[12]~52\,
	combout => \pulseGenUnit|s_counter[13]~53_combout\,
	cout => \pulseGenUnit|s_counter[13]~54\);

-- Location: FF_X97_Y38_N1
\pulseGenUnit|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[13]~53_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(13));

-- Location: LCCOMB_X97_Y38_N2
\pulseGenUnit|s_counter[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[14]~55_combout\ = (\pulseGenUnit|s_counter\(14) & (\pulseGenUnit|s_counter[13]~54\ $ (GND))) # (!\pulseGenUnit|s_counter\(14) & (!\pulseGenUnit|s_counter[13]~54\ & VCC))
-- \pulseGenUnit|s_counter[14]~56\ = CARRY((\pulseGenUnit|s_counter\(14) & !\pulseGenUnit|s_counter[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenUnit|s_counter\(14),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[13]~54\,
	combout => \pulseGenUnit|s_counter[14]~55_combout\,
	cout => \pulseGenUnit|s_counter[14]~56\);

-- Location: FF_X97_Y38_N3
\pulseGenUnit|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[14]~55_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(14));

-- Location: LCCOMB_X97_Y38_N4
\pulseGenUnit|s_counter[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[15]~57_combout\ = (\pulseGenUnit|s_counter\(15) & (!\pulseGenUnit|s_counter[14]~56\)) # (!\pulseGenUnit|s_counter\(15) & ((\pulseGenUnit|s_counter[14]~56\) # (GND)))
-- \pulseGenUnit|s_counter[15]~58\ = CARRY((!\pulseGenUnit|s_counter[14]~56\) # (!\pulseGenUnit|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenUnit|s_counter\(15),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[14]~56\,
	combout => \pulseGenUnit|s_counter[15]~57_combout\,
	cout => \pulseGenUnit|s_counter[15]~58\);

-- Location: FF_X97_Y38_N5
\pulseGenUnit|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[15]~57_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(15));

-- Location: LCCOMB_X97_Y38_N6
\pulseGenUnit|s_counter[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[16]~59_combout\ = (\pulseGenUnit|s_counter\(16) & (\pulseGenUnit|s_counter[15]~58\ $ (GND))) # (!\pulseGenUnit|s_counter\(16) & (!\pulseGenUnit|s_counter[15]~58\ & VCC))
-- \pulseGenUnit|s_counter[16]~60\ = CARRY((\pulseGenUnit|s_counter\(16) & !\pulseGenUnit|s_counter[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(16),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[15]~58\,
	combout => \pulseGenUnit|s_counter[16]~59_combout\,
	cout => \pulseGenUnit|s_counter[16]~60\);

-- Location: FF_X97_Y38_N7
\pulseGenUnit|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[16]~59_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(16));

-- Location: LCCOMB_X97_Y38_N8
\pulseGenUnit|s_counter[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[17]~61_combout\ = (\pulseGenUnit|s_counter\(17) & (!\pulseGenUnit|s_counter[16]~60\)) # (!\pulseGenUnit|s_counter\(17) & ((\pulseGenUnit|s_counter[16]~60\) # (GND)))
-- \pulseGenUnit|s_counter[17]~62\ = CARRY((!\pulseGenUnit|s_counter[16]~60\) # (!\pulseGenUnit|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenUnit|s_counter\(17),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[16]~60\,
	combout => \pulseGenUnit|s_counter[17]~61_combout\,
	cout => \pulseGenUnit|s_counter[17]~62\);

-- Location: FF_X97_Y38_N9
\pulseGenUnit|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[17]~61_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(17));

-- Location: LCCOMB_X97_Y38_N10
\pulseGenUnit|s_counter[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[18]~63_combout\ = (\pulseGenUnit|s_counter\(18) & (\pulseGenUnit|s_counter[17]~62\ $ (GND))) # (!\pulseGenUnit|s_counter\(18) & (!\pulseGenUnit|s_counter[17]~62\ & VCC))
-- \pulseGenUnit|s_counter[18]~64\ = CARRY((\pulseGenUnit|s_counter\(18) & !\pulseGenUnit|s_counter[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(18),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[17]~62\,
	combout => \pulseGenUnit|s_counter[18]~63_combout\,
	cout => \pulseGenUnit|s_counter[18]~64\);

-- Location: FF_X97_Y38_N11
\pulseGenUnit|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[18]~63_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(18));

-- Location: LCCOMB_X97_Y38_N12
\pulseGenUnit|s_counter[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[19]~65_combout\ = (\pulseGenUnit|s_counter\(19) & (!\pulseGenUnit|s_counter[18]~64\)) # (!\pulseGenUnit|s_counter\(19) & ((\pulseGenUnit|s_counter[18]~64\) # (GND)))
-- \pulseGenUnit|s_counter[19]~66\ = CARRY((!\pulseGenUnit|s_counter[18]~64\) # (!\pulseGenUnit|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(19),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[18]~64\,
	combout => \pulseGenUnit|s_counter[19]~65_combout\,
	cout => \pulseGenUnit|s_counter[19]~66\);

-- Location: FF_X97_Y38_N13
\pulseGenUnit|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[19]~65_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(19));

-- Location: LCCOMB_X97_Y38_N30
\pulseGenUnit|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|Equal0~5_combout\ = (\pulseGenUnit|s_counter\(18)) # (((\pulseGenUnit|s_counter\(16)) # (!\pulseGenUnit|s_counter\(17))) # (!\pulseGenUnit|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(18),
	datab => \pulseGenUnit|s_counter\(19),
	datac => \pulseGenUnit|s_counter\(17),
	datad => \pulseGenUnit|s_counter\(16),
	combout => \pulseGenUnit|Equal0~5_combout\);

-- Location: LCCOMB_X97_Y38_N14
\pulseGenUnit|s_counter[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[20]~67_combout\ = (\pulseGenUnit|s_counter\(20) & (\pulseGenUnit|s_counter[19]~66\ $ (GND))) # (!\pulseGenUnit|s_counter\(20) & (!\pulseGenUnit|s_counter[19]~66\ & VCC))
-- \pulseGenUnit|s_counter[20]~68\ = CARRY((\pulseGenUnit|s_counter\(20) & !\pulseGenUnit|s_counter[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenUnit|s_counter\(20),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[19]~66\,
	combout => \pulseGenUnit|s_counter[20]~67_combout\,
	cout => \pulseGenUnit|s_counter[20]~68\);

-- Location: FF_X97_Y38_N15
\pulseGenUnit|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[20]~67_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(20));

-- Location: LCCOMB_X97_Y38_N16
\pulseGenUnit|s_counter[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[21]~69_combout\ = (\pulseGenUnit|s_counter\(21) & (!\pulseGenUnit|s_counter[20]~68\)) # (!\pulseGenUnit|s_counter\(21) & ((\pulseGenUnit|s_counter[20]~68\) # (GND)))
-- \pulseGenUnit|s_counter[21]~70\ = CARRY((!\pulseGenUnit|s_counter[20]~68\) # (!\pulseGenUnit|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenUnit|s_counter\(21),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[20]~68\,
	combout => \pulseGenUnit|s_counter[21]~69_combout\,
	cout => \pulseGenUnit|s_counter[21]~70\);

-- Location: FF_X97_Y38_N17
\pulseGenUnit|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[21]~69_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(21));

-- Location: LCCOMB_X97_Y38_N18
\pulseGenUnit|s_counter[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[22]~71_combout\ = (\pulseGenUnit|s_counter\(22) & (\pulseGenUnit|s_counter[21]~70\ $ (GND))) # (!\pulseGenUnit|s_counter\(22) & (!\pulseGenUnit|s_counter[21]~70\ & VCC))
-- \pulseGenUnit|s_counter[22]~72\ = CARRY((\pulseGenUnit|s_counter\(22) & !\pulseGenUnit|s_counter[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenUnit|s_counter\(22),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[21]~70\,
	combout => \pulseGenUnit|s_counter[22]~71_combout\,
	cout => \pulseGenUnit|s_counter[22]~72\);

-- Location: FF_X97_Y38_N19
\pulseGenUnit|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[22]~71_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(22));

-- Location: LCCOMB_X97_Y38_N20
\pulseGenUnit|s_counter[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[23]~73_combout\ = (\pulseGenUnit|s_counter\(23) & (!\pulseGenUnit|s_counter[22]~72\)) # (!\pulseGenUnit|s_counter\(23) & ((\pulseGenUnit|s_counter[22]~72\) # (GND)))
-- \pulseGenUnit|s_counter[23]~74\ = CARRY((!\pulseGenUnit|s_counter[22]~72\) # (!\pulseGenUnit|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenUnit|s_counter\(23),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[22]~72\,
	combout => \pulseGenUnit|s_counter[23]~73_combout\,
	cout => \pulseGenUnit|s_counter[23]~74\);

-- Location: FF_X97_Y38_N21
\pulseGenUnit|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[23]~73_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(23));

-- Location: LCCOMB_X97_Y38_N28
\pulseGenUnit|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|Equal0~6_combout\ = (((!\pulseGenUnit|s_counter\(21)) # (!\pulseGenUnit|s_counter\(20))) # (!\pulseGenUnit|s_counter\(22))) # (!\pulseGenUnit|s_counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(23),
	datab => \pulseGenUnit|s_counter\(22),
	datac => \pulseGenUnit|s_counter\(20),
	datad => \pulseGenUnit|s_counter\(21),
	combout => \pulseGenUnit|Equal0~6_combout\);

-- Location: LCCOMB_X97_Y38_N22
\pulseGenUnit|s_counter[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[24]~75_combout\ = (\pulseGenUnit|s_counter\(24) & (\pulseGenUnit|s_counter[23]~74\ $ (GND))) # (!\pulseGenUnit|s_counter\(24) & (!\pulseGenUnit|s_counter[23]~74\ & VCC))
-- \pulseGenUnit|s_counter[24]~76\ = CARRY((\pulseGenUnit|s_counter\(24) & !\pulseGenUnit|s_counter[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(24),
	datad => VCC,
	cin => \pulseGenUnit|s_counter[23]~74\,
	combout => \pulseGenUnit|s_counter[24]~75_combout\,
	cout => \pulseGenUnit|s_counter[24]~76\);

-- Location: FF_X97_Y38_N23
\pulseGenUnit|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[24]~75_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(24));

-- Location: LCCOMB_X97_Y38_N24
\pulseGenUnit|s_counter[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|s_counter[25]~77_combout\ = \pulseGenUnit|s_counter[24]~76\ $ (\pulseGenUnit|s_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pulseGenUnit|s_counter\(25),
	cin => \pulseGenUnit|s_counter[24]~76\,
	combout => \pulseGenUnit|s_counter[25]~77_combout\);

-- Location: FF_X97_Y38_N25
\pulseGenUnit|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|s_counter[25]~77_combout\,
	sclr => \pulseGenUnit|s_counter[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|s_counter\(25));

-- Location: LCCOMB_X97_Y38_N26
\pulseGenUnit|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|Equal0~7_combout\ = (\pulseGenUnit|s_counter\(24)) # (!\pulseGenUnit|s_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulseGenUnit|s_counter\(24),
	datad => \pulseGenUnit|s_counter\(25),
	combout => \pulseGenUnit|Equal0~7_combout\);

-- Location: LCCOMB_X97_Y39_N4
\pulseGenUnit|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|Equal0~0_combout\ = (((!\pulseGenUnit|s_counter\(2)) # (!\pulseGenUnit|s_counter\(0))) # (!\pulseGenUnit|s_counter\(1))) # (!\pulseGenUnit|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(3),
	datab => \pulseGenUnit|s_counter\(1),
	datac => \pulseGenUnit|s_counter\(0),
	datad => \pulseGenUnit|s_counter\(2),
	combout => \pulseGenUnit|Equal0~0_combout\);

-- Location: LCCOMB_X97_Y39_N2
\pulseGenUnit|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|Equal0~1_combout\ = (\pulseGenUnit|s_counter\(7)) # (((!\pulseGenUnit|s_counter\(5)) # (!\pulseGenUnit|s_counter\(4))) # (!\pulseGenUnit|s_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(7),
	datab => \pulseGenUnit|s_counter\(6),
	datac => \pulseGenUnit|s_counter\(4),
	datad => \pulseGenUnit|s_counter\(5),
	combout => \pulseGenUnit|Equal0~1_combout\);

-- Location: LCCOMB_X98_Y38_N30
\pulseGenUnit|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|Equal0~3_combout\ = (((!\pulseGenUnit|s_counter\(14)) # (!\pulseGenUnit|s_counter\(12))) # (!\pulseGenUnit|s_counter\(15))) # (!\pulseGenUnit|s_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(13),
	datab => \pulseGenUnit|s_counter\(15),
	datac => \pulseGenUnit|s_counter\(12),
	datad => \pulseGenUnit|s_counter\(14),
	combout => \pulseGenUnit|Equal0~3_combout\);

-- Location: LCCOMB_X97_Y39_N0
\pulseGenUnit|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|Equal0~2_combout\ = (\pulseGenUnit|s_counter\(8)) # ((\pulseGenUnit|s_counter\(11)) # ((\pulseGenUnit|s_counter\(10)) # (\pulseGenUnit|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|s_counter\(8),
	datab => \pulseGenUnit|s_counter\(11),
	datac => \pulseGenUnit|s_counter\(10),
	datad => \pulseGenUnit|s_counter\(9),
	combout => \pulseGenUnit|Equal0~2_combout\);

-- Location: LCCOMB_X98_Y38_N12
\pulseGenUnit|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|Equal0~4_combout\ = (\pulseGenUnit|Equal0~0_combout\) # ((\pulseGenUnit|Equal0~1_combout\) # ((\pulseGenUnit|Equal0~3_combout\) # (\pulseGenUnit|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|Equal0~0_combout\,
	datab => \pulseGenUnit|Equal0~1_combout\,
	datac => \pulseGenUnit|Equal0~3_combout\,
	datad => \pulseGenUnit|Equal0~2_combout\,
	combout => \pulseGenUnit|Equal0~4_combout\);

-- Location: LCCOMB_X98_Y38_N10
\pulseGenUnit|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|Equal0~8_combout\ = (\pulseGenUnit|Equal0~5_combout\) # ((\pulseGenUnit|Equal0~6_combout\) # ((\pulseGenUnit|Equal0~7_combout\) # (\pulseGenUnit|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenUnit|Equal0~5_combout\,
	datab => \pulseGenUnit|Equal0~6_combout\,
	datac => \pulseGenUnit|Equal0~7_combout\,
	datad => \pulseGenUnit|Equal0~4_combout\,
	combout => \pulseGenUnit|Equal0~8_combout\);

-- Location: LCCOMB_X98_Y38_N28
\pulseGenUnit|pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenUnit|pulse~0_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & !\pulseGenUnit|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerBlock|debounceReset|s_pulsedOut~q\,
	datad => \pulseGenUnit|Equal0~8_combout\,
	combout => \pulseGenUnit|pulse~0_combout\);

-- Location: FF_X98_Y38_N29
\pulseGenUnit|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenUnit|pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenUnit|pulse~q\);

-- Location: LCCOMB_X101_Y35_N0
\timerAux|s_counter[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|s_counter[5]~3_combout\ = (((\timerAux|Equal0~0_combout\ & \timerAux|Equal0~1_combout\)) # (!\s_running~q\)) # (!\pulseGenUnit|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|Equal0~0_combout\,
	datab => \pulseGenUnit|pulse~q\,
	datac => \s_running~q\,
	datad => \timerAux|Equal0~1_combout\,
	combout => \timerAux|s_counter[5]~3_combout\);

-- Location: LCCOMB_X101_Y35_N30
\timerAux|s_counter[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|s_counter[5]~2_combout\ = (\registerBlock|debounceReset|s_pulsedOut~q\) # ((\FSMUnit|newTime~q\) # ((!\registerBlock|door_out~q\ & !\timerAux|s_counter[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_pulsedOut~q\,
	datab => \FSMUnit|newTime~q\,
	datac => \registerBlock|door_out~q\,
	datad => \timerAux|s_counter[5]~3_combout\,
	combout => \timerAux|s_counter[5]~2_combout\);

-- Location: FF_X102_Y35_N23
\timerAux|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerAux|Add0~2_combout\,
	ena => \timerAux|s_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerAux|s_counter\(0));

-- Location: LCCOMB_X103_Y35_N12
\timerAux|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~3_combout\ = (\timerAux|s_counter\(1) & (!\timerAux|Add0~1\)) # (!\timerAux|s_counter\(1) & (\timerAux|Add0~1\ & VCC))
-- \timerAux|Add0~4\ = CARRY((\timerAux|s_counter\(1) & !\timerAux|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerAux|s_counter\(1),
	datad => VCC,
	cin => \timerAux|Add0~1\,
	combout => \timerAux|Add0~3_combout\,
	cout => \timerAux|Add0~4\);

-- Location: LCCOMB_X101_Y35_N8
\FSMUnit|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector9~0_combout\ = (\FSMUnit|pSt.wOut~q\) # ((\FSMUnit|pSt.off~q\) # ((!\FSMUnit|comb_proc~1_combout\ & !\FSMUnit|pSt.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|comb_proc~1_combout\,
	datab => \FSMUnit|pSt.idle~q\,
	datac => \FSMUnit|pSt.wOut~q\,
	datad => \FSMUnit|pSt.off~q\,
	combout => \FSMUnit|Selector9~0_combout\);

-- Location: LCCOMB_X102_Y35_N10
\FSMUnit|timeVal[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|timeVal\(1) = (GLOBAL(\FSMUnit|pSt.spn~clkctrl_outclk\) & ((\FSMUnit|timeVal\(1)))) # (!GLOBAL(\FSMUnit|pSt.spn~clkctrl_outclk\) & (\FSMUnit|Selector9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|Selector9~0_combout\,
	datac => \FSMUnit|timeVal\(1),
	datad => \FSMUnit|pSt.spn~clkctrl_outclk\,
	combout => \FSMUnit|timeVal\(1));

-- Location: LCCOMB_X102_Y35_N12
\timerAux|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~5_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & ((\FSMUnit|newTime~q\ & ((!\FSMUnit|timeVal\(1)))) # (!\FSMUnit|newTime~q\ & (!\timerAux|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_pulsedOut~q\,
	datab => \FSMUnit|newTime~q\,
	datac => \timerAux|Add0~3_combout\,
	datad => \FSMUnit|timeVal\(1),
	combout => \timerAux|Add0~5_combout\);

-- Location: FF_X102_Y35_N13
\timerAux|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerAux|Add0~5_combout\,
	ena => \timerAux|s_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerAux|s_counter\(1));

-- Location: LCCOMB_X103_Y35_N14
\timerAux|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~6_combout\ = (\timerAux|s_counter\(2) & (\timerAux|Add0~4\ $ (GND))) # (!\timerAux|s_counter\(2) & ((GND) # (!\timerAux|Add0~4\)))
-- \timerAux|Add0~7\ = CARRY((!\timerAux|Add0~4\) # (!\timerAux|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(2),
	datad => VCC,
	cin => \timerAux|Add0~4\,
	combout => \timerAux|Add0~6_combout\,
	cout => \timerAux|Add0~7\);

-- Location: LCCOMB_X103_Y35_N26
\FSMUnit|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector11~0_combout\ = (\FSMUnit|pSt.wIn~q\) # ((!\FSMUnit|pSt.idle~q\ & (\FSMUnit|comb_proc~0_combout\ $ (!\FSMUnit|comb_proc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|comb_proc~0_combout\,
	datab => \FSMUnit|comb_proc~1_combout\,
	datac => \FSMUnit|pSt.idle~q\,
	datad => \FSMUnit|pSt.wIn~q\,
	combout => \FSMUnit|Selector11~0_combout\);

-- Location: LCCOMB_X102_Y35_N2
\FSMUnit|timeVal[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|timeVal\(2) = (GLOBAL(\FSMUnit|pSt.spn~clkctrl_outclk\) & (\FSMUnit|timeVal\(2))) # (!GLOBAL(\FSMUnit|pSt.spn~clkctrl_outclk\) & ((\FSMUnit|Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|timeVal\(2),
	datac => \FSMUnit|Selector11~0_combout\,
	datad => \FSMUnit|pSt.spn~clkctrl_outclk\,
	combout => \FSMUnit|timeVal\(2));

-- Location: LCCOMB_X102_Y35_N16
\timerAux|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~8_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & ((\FSMUnit|newTime~q\ & ((!\FSMUnit|timeVal\(2)))) # (!\FSMUnit|newTime~q\ & (!\timerAux|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_pulsedOut~q\,
	datab => \FSMUnit|newTime~q\,
	datac => \timerAux|Add0~6_combout\,
	datad => \FSMUnit|timeVal\(2),
	combout => \timerAux|Add0~8_combout\);

-- Location: FF_X102_Y35_N17
\timerAux|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerAux|Add0~8_combout\,
	ena => \timerAux|s_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerAux|s_counter\(2));

-- Location: LCCOMB_X103_Y35_N16
\timerAux|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~9_combout\ = (\timerAux|s_counter\(3) & (!\timerAux|Add0~7\)) # (!\timerAux|s_counter\(3) & (\timerAux|Add0~7\ & VCC))
-- \timerAux|Add0~10\ = CARRY((\timerAux|s_counter\(3) & !\timerAux|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerAux|s_counter\(3),
	datad => VCC,
	cin => \timerAux|Add0~7\,
	combout => \timerAux|Add0~9_combout\,
	cout => \timerAux|Add0~10\);

-- Location: LCCOMB_X103_Y35_N4
\FSMUnit|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector13~0_combout\ = (!\FSMUnit|pSt.idle~q\ & ((\registerBlock|p1_out~q\) # (\registerBlock|p3_out~q\ $ (!\registerBlock|p2_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|p1_out~q\,
	datab => \registerBlock|p3_out~q\,
	datac => \registerBlock|p2_out~q\,
	datad => \FSMUnit|pSt.idle~q\,
	combout => \FSMUnit|Selector13~0_combout\);

-- Location: LCCOMB_X101_Y35_N20
\FSMUnit|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector13~1_combout\ = (\FSMUnit|Selector13~0_combout\) # (\FSMUnit|pSt.rns~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|Selector13~0_combout\,
	datad => \FSMUnit|pSt.rns~q\,
	combout => \FSMUnit|Selector13~1_combout\);

-- Location: LCCOMB_X101_Y35_N10
\FSMUnit|timeVal[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|timeVal\(3) = (GLOBAL(\FSMUnit|pSt.spn~clkctrl_outclk\) & (\FSMUnit|timeVal\(3))) # (!GLOBAL(\FSMUnit|pSt.spn~clkctrl_outclk\) & ((\FSMUnit|Selector13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|timeVal\(3),
	datac => \FSMUnit|Selector13~1_combout\,
	datad => \FSMUnit|pSt.spn~clkctrl_outclk\,
	combout => \FSMUnit|timeVal\(3));

-- Location: LCCOMB_X101_Y35_N4
\timerAux|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~11_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & ((\FSMUnit|newTime~q\ & ((!\FSMUnit|timeVal\(3)))) # (!\FSMUnit|newTime~q\ & (!\timerAux|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|Add0~9_combout\,
	datab => \FSMUnit|newTime~q\,
	datac => \registerBlock|debounceReset|s_pulsedOut~q\,
	datad => \FSMUnit|timeVal\(3),
	combout => \timerAux|Add0~11_combout\);

-- Location: FF_X101_Y35_N5
\timerAux|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerAux|Add0~11_combout\,
	ena => \timerAux|s_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerAux|s_counter\(3));

-- Location: LCCOMB_X103_Y35_N18
\timerAux|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~12_combout\ = (\timerAux|s_counter\(4) & (\timerAux|Add0~10\ $ (GND))) # (!\timerAux|s_counter\(4) & ((GND) # (!\timerAux|Add0~10\)))
-- \timerAux|Add0~13\ = CARRY((!\timerAux|Add0~10\) # (!\timerAux|s_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(4),
	datad => VCC,
	cin => \timerAux|Add0~10\,
	combout => \timerAux|Add0~12_combout\,
	cout => \timerAux|Add0~13\);

-- Location: LCCOMB_X101_Y35_N16
\FSMUnit|timeVal[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|timeVal\(4) = (GLOBAL(\FSMUnit|pSt.spn~clkctrl_outclk\) & (\FSMUnit|timeVal\(4))) # (!GLOBAL(\FSMUnit|pSt.spn~clkctrl_outclk\) & ((\FSMUnit|Selector13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|timeVal\(4),
	datac => \FSMUnit|Selector13~0_combout\,
	datad => \FSMUnit|pSt.spn~clkctrl_outclk\,
	combout => \FSMUnit|timeVal\(4));

-- Location: LCCOMB_X101_Y35_N26
\timerAux|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~14_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & ((\FSMUnit|newTime~q\ & ((!\FSMUnit|timeVal\(4)))) # (!\FSMUnit|newTime~q\ & (!\timerAux|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|newTime~q\,
	datab => \timerAux|Add0~12_combout\,
	datac => \registerBlock|debounceReset|s_pulsedOut~q\,
	datad => \FSMUnit|timeVal\(4),
	combout => \timerAux|Add0~14_combout\);

-- Location: FF_X101_Y35_N27
\timerAux|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerAux|Add0~14_combout\,
	ena => \timerAux|s_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerAux|s_counter\(4));

-- Location: LCCOMB_X103_Y35_N20
\timerAux|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~15_combout\ = (\timerAux|s_counter\(5) & (!\timerAux|Add0~13\)) # (!\timerAux|s_counter\(5) & (\timerAux|Add0~13\ & VCC))
-- \timerAux|Add0~16\ = CARRY((\timerAux|s_counter\(5) & !\timerAux|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(5),
	datad => VCC,
	cin => \timerAux|Add0~13\,
	combout => \timerAux|Add0~15_combout\,
	cout => \timerAux|Add0~16\);

-- Location: LCCOMB_X103_Y35_N30
\FSMUnit|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector16~0_combout\ = (!\FSMUnit|pSt.idle~q\ & ((\registerBlock|p1_out~q\) # ((\registerBlock|p2_out~q\) # (!\registerBlock|p3_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|p1_out~q\,
	datab => \registerBlock|p3_out~q\,
	datac => \registerBlock|p2_out~q\,
	datad => \FSMUnit|pSt.idle~q\,
	combout => \FSMUnit|Selector16~0_combout\);

-- Location: LCCOMB_X102_Y35_N18
\FSMUnit|timeVal[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|timeVal\(5) = (GLOBAL(\FSMUnit|pSt.spn~clkctrl_outclk\) & ((\FSMUnit|timeVal\(5)))) # (!GLOBAL(\FSMUnit|pSt.spn~clkctrl_outclk\) & (\FSMUnit|Selector16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|Selector16~0_combout\,
	datac => \FSMUnit|timeVal\(5),
	datad => \FSMUnit|pSt.spn~clkctrl_outclk\,
	combout => \FSMUnit|timeVal\(5));

-- Location: LCCOMB_X102_Y35_N4
\timerAux|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~17_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & ((\FSMUnit|newTime~q\ & ((!\FSMUnit|timeVal\(5)))) # (!\FSMUnit|newTime~q\ & (!\timerAux|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_pulsedOut~q\,
	datab => \FSMUnit|newTime~q\,
	datac => \timerAux|Add0~15_combout\,
	datad => \FSMUnit|timeVal\(5),
	combout => \timerAux|Add0~17_combout\);

-- Location: FF_X102_Y35_N5
\timerAux|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerAux|Add0~17_combout\,
	ena => \timerAux|s_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerAux|s_counter\(5));

-- Location: LCCOMB_X103_Y35_N22
\timerAux|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~18_combout\ = (\timerAux|s_counter\(6) & (\timerAux|Add0~16\ $ (GND))) # (!\timerAux|s_counter\(6) & ((GND) # (!\timerAux|Add0~16\)))
-- \timerAux|Add0~19\ = CARRY((!\timerAux|Add0~16\) # (!\timerAux|s_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(6),
	datad => VCC,
	cin => \timerAux|Add0~16\,
	combout => \timerAux|Add0~18_combout\,
	cout => \timerAux|Add0~19\);

-- Location: LCCOMB_X101_Y35_N18
\FSMUnit|timeVal[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|timeVal\(6) = (GLOBAL(\FSMUnit|pSt.spn~clkctrl_outclk\) & (\FSMUnit|timeVal\(6))) # (!GLOBAL(\FSMUnit|pSt.spn~clkctrl_outclk\) & ((\FSMUnit|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|timeVal\(6),
	datac => \FSMUnit|Selector2~0_combout\,
	datad => \FSMUnit|pSt.spn~clkctrl_outclk\,
	combout => \FSMUnit|timeVal\(6));

-- Location: LCCOMB_X101_Y35_N2
\timerAux|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~20_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & ((\FSMUnit|newTime~q\ & ((!\FSMUnit|timeVal\(6)))) # (!\FSMUnit|newTime~q\ & (!\timerAux|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|Add0~18_combout\,
	datab => \FSMUnit|newTime~q\,
	datac => \registerBlock|debounceReset|s_pulsedOut~q\,
	datad => \FSMUnit|timeVal\(6),
	combout => \timerAux|Add0~20_combout\);

-- Location: FF_X101_Y35_N3
\timerAux|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerAux|Add0~20_combout\,
	ena => \timerAux|s_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerAux|s_counter\(6));

-- Location: LCCOMB_X103_Y35_N24
\timerAux|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~21_combout\ = \timerAux|Add0~19\ $ (\timerAux|s_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timerAux|s_counter\(7),
	cin => \timerAux|Add0~19\,
	combout => \timerAux|Add0~21_combout\);

-- Location: LCCOMB_X101_Y35_N14
\timerAux|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Add0~23_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & ((\FSMUnit|newTime~q\ & ((!\FSMUnit|timeVal\(6)))) # (!\FSMUnit|newTime~q\ & (!\timerAux|Add0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|Add0~21_combout\,
	datab => \FSMUnit|newTime~q\,
	datac => \registerBlock|debounceReset|s_pulsedOut~q\,
	datad => \FSMUnit|timeVal\(6),
	combout => \timerAux|Add0~23_combout\);

-- Location: FF_X101_Y35_N15
\timerAux|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerAux|Add0~23_combout\,
	ena => \timerAux|s_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerAux|s_counter\(7));

-- Location: LCCOMB_X101_Y35_N6
\timerAux|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Equal0~1_combout\ = (\timerAux|s_counter\(4) & (\timerAux|s_counter\(6) & (\timerAux|s_counter\(7) & \timerAux|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(4),
	datab => \timerAux|s_counter\(6),
	datac => \timerAux|s_counter\(7),
	datad => \timerAux|s_counter\(5),
	combout => \timerAux|Equal0~1_combout\);

-- Location: LCCOMB_X100_Y35_N20
\timerAux|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|Equal0~2_combout\ = (\timerAux|Equal0~1_combout\ & \timerAux|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|Equal0~1_combout\,
	datad => \timerAux|Equal0~0_combout\,
	combout => \timerAux|Equal0~2_combout\);

-- Location: LCCOMB_X101_Y35_N28
\timerAux|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|s_cntZero~0_combout\ = (\s_running~q\ & (!\registerBlock|door_out~q\ & \pulseGenUnit|pulse~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_running~q\,
	datac => \registerBlock|door_out~q\,
	datad => \pulseGenUnit|pulse~q\,
	combout => \timerAux|s_cntZero~0_combout\);

-- Location: LCCOMB_X100_Y35_N2
\timerAux|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerAux|s_cntZero~1_combout\ = (!\FSMUnit|newTime~q\ & ((\timerAux|s_cntZero~0_combout\ & (\timerAux|Equal0~2_combout\)) # (!\timerAux|s_cntZero~0_combout\ & ((\timerAux|s_cntZero~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|newTime~q\,
	datab => \timerAux|Equal0~2_combout\,
	datac => \timerAux|s_cntZero~q\,
	datad => \timerAux|s_cntZero~0_combout\,
	combout => \timerAux|s_cntZero~1_combout\);

-- Location: FF_X100_Y35_N3
\timerAux|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timerAux|s_cntZero~1_combout\,
	sclr => \registerBlock|debounceReset|s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerAux|s_cntZero~q\);

-- Location: LCCOMB_X99_Y35_N22
\FSMUnit|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector5~0_combout\ = (\timerAux|s_cntZero~q\ & ((\FSMUnit|pSt.wIn~q\))) # (!\timerAux|s_cntZero~q\ & (\FSMUnit|pSt.rns~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|pSt.rns~q\,
	datab => \timerAux|s_cntZero~q\,
	datad => \FSMUnit|pSt.wIn~q\,
	combout => \FSMUnit|Selector5~0_combout\);

-- Location: LCCOMB_X99_Y35_N18
\FSMUnit|nSt.rns_401\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|nSt.rns_401~combout\ = (GLOBAL(\FSMUnit|timeEn~clkctrl_outclk\) & ((\FSMUnit|Selector5~0_combout\))) # (!GLOBAL(\FSMUnit|timeEn~clkctrl_outclk\) & (\FSMUnit|nSt.rns_401~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|nSt.rns_401~combout\,
	datac => \FSMUnit|Selector5~0_combout\,
	datad => \FSMUnit|timeEn~clkctrl_outclk\,
	combout => \FSMUnit|nSt.rns_401~combout\);

-- Location: LCCOMB_X98_Y35_N8
\FSMUnit|pSt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|pSt~10_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & \FSMUnit|nSt.rns_401~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerBlock|debounceReset|s_pulsedOut~q\,
	datad => \FSMUnit|nSt.rns_401~combout\,
	combout => \FSMUnit|pSt~10_combout\);

-- Location: FF_X98_Y35_N9
\FSMUnit|pSt.rns\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSMUnit|pSt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMUnit|pSt.rns~q\);

-- Location: LCCOMB_X99_Y35_N28
\FSMUnit|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector6~1_combout\ = (\timerAux|s_cntZero~q\ & ((\FSMUnit|pSt.rns~q\) # ((\FSMUnit|pSt.spn~q\)))) # (!\timerAux|s_cntZero~q\ & (((\FSMUnit|pSt.wOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|pSt.rns~q\,
	datab => \timerAux|s_cntZero~q\,
	datac => \FSMUnit|pSt.wOut~q\,
	datad => \FSMUnit|pSt.spn~q\,
	combout => \FSMUnit|Selector6~1_combout\);

-- Location: LCCOMB_X102_Y35_N26
\FSMUnit|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector6~0_combout\ = (!\FSMUnit|pSt.idle~q\ & (!\FSMUnit|s_program\(2) & (\FSMUnit|s_program\(0) & !\FSMUnit|s_program\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|pSt.idle~q\,
	datab => \FSMUnit|s_program\(2),
	datac => \FSMUnit|s_program\(0),
	datad => \FSMUnit|s_program\(1),
	combout => \FSMUnit|Selector6~0_combout\);

-- Location: LCCOMB_X99_Y35_N30
\FSMUnit|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector6~2_combout\ = (\FSMUnit|Selector6~1_combout\) # (\FSMUnit|Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSMUnit|Selector6~1_combout\,
	datad => \FSMUnit|Selector6~0_combout\,
	combout => \FSMUnit|Selector6~2_combout\);

-- Location: LCCOMB_X99_Y35_N4
\FSMUnit|nSt.wOut_387\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|nSt.wOut_387~combout\ = (GLOBAL(\FSMUnit|timeEn~clkctrl_outclk\) & ((\FSMUnit|Selector6~2_combout\))) # (!GLOBAL(\FSMUnit|timeEn~clkctrl_outclk\) & (\FSMUnit|nSt.wOut_387~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|nSt.wOut_387~combout\,
	datac => \FSMUnit|Selector6~2_combout\,
	datad => \FSMUnit|timeEn~clkctrl_outclk\,
	combout => \FSMUnit|nSt.wOut_387~combout\);

-- Location: LCCOMB_X99_Y35_N14
\FSMUnit|pSt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|pSt~11_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & \FSMUnit|nSt.wOut_387~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerBlock|debounceReset|s_pulsedOut~q\,
	datad => \FSMUnit|nSt.wOut_387~combout\,
	combout => \FSMUnit|pSt~11_combout\);

-- Location: FF_X98_Y35_N7
\FSMUnit|pSt.wOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \FSMUnit|pSt~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMUnit|pSt.wOut~q\);

-- Location: LCCOMB_X100_Y35_N16
\FSMUnit|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector4~1_combout\ = (\FSMUnit|cycle~combout\ & (\FSMUnit|pSt.wOut~q\ & \timerAux|s_cntZero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|cycle~combout\,
	datac => \FSMUnit|pSt.wOut~q\,
	datad => \timerAux|s_cntZero~q\,
	combout => \FSMUnit|Selector4~1_combout\);

-- Location: LCCOMB_X101_Y35_N12
\FSMUnit|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector0~0_combout\ = (!\registerBlock|door_out~q\ & (\s_running~q\ & ((\FSMUnit|Selector4~1_combout\) # (\FSMUnit|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|Selector4~1_combout\,
	datab => \registerBlock|door_out~q\,
	datac => \s_running~q\,
	datad => \FSMUnit|Selector6~0_combout\,
	combout => \FSMUnit|Selector0~0_combout\);

-- Location: LCCOMB_X98_Y35_N12
\FSMUnit|cycle\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|cycle~combout\ = (\FSMUnit|Selector0~0_combout\ & ((!\FSMUnit|pSt.wOut~q\))) # (!\FSMUnit|Selector0~0_combout\ & (\FSMUnit|cycle~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|cycle~combout\,
	datac => \FSMUnit|Selector0~0_combout\,
	datad => \FSMUnit|pSt.wOut~q\,
	combout => \FSMUnit|cycle~combout\);

-- Location: LCCOMB_X98_Y35_N6
\FSMUnit|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector7~1_combout\ = (\timerAux|s_cntZero~q\ & (!\FSMUnit|cycle~combout\ & (\FSMUnit|pSt.wOut~q\))) # (!\timerAux|s_cntZero~q\ & (((\FSMUnit|pSt.spn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|cycle~combout\,
	datab => \timerAux|s_cntZero~q\,
	datac => \FSMUnit|pSt.wOut~q\,
	datad => \FSMUnit|pSt.spn~q\,
	combout => \FSMUnit|Selector7~1_combout\);

-- Location: LCCOMB_X102_Y35_N8
\FSMUnit|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector7~0_combout\ = (!\FSMUnit|s_program\(2) & (!\FSMUnit|pSt.idle~q\ & (\FSMUnit|s_program\(1) & \FSMUnit|s_program\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|s_program\(2),
	datab => \FSMUnit|pSt.idle~q\,
	datac => \FSMUnit|s_program\(1),
	datad => \FSMUnit|s_program\(0),
	combout => \FSMUnit|Selector7~0_combout\);

-- Location: LCCOMB_X98_Y35_N18
\FSMUnit|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|Selector7~2_combout\ = (\FSMUnit|Selector7~1_combout\) # (\FSMUnit|Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|Selector7~1_combout\,
	datad => \FSMUnit|Selector7~0_combout\,
	combout => \FSMUnit|Selector7~2_combout\);

-- Location: LCCOMB_X98_Y35_N14
\FSMUnit|nSt.spn_373\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|nSt.spn_373~combout\ = (GLOBAL(\FSMUnit|timeEn~clkctrl_outclk\) & ((\FSMUnit|Selector7~2_combout\))) # (!GLOBAL(\FSMUnit|timeEn~clkctrl_outclk\) & (\FSMUnit|nSt.spn_373~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|nSt.spn_373~combout\,
	datac => \FSMUnit|Selector7~2_combout\,
	datad => \FSMUnit|timeEn~clkctrl_outclk\,
	combout => \FSMUnit|nSt.spn_373~combout\);

-- Location: LCCOMB_X98_Y35_N30
\FSMUnit|pSt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|pSt~9_combout\ = (!\registerBlock|debounceReset|s_pulsedOut~q\ & \FSMUnit|nSt.spn_373~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerBlock|debounceReset|s_pulsedOut~q\,
	datac => \FSMUnit|nSt.spn_373~combout\,
	combout => \FSMUnit|pSt~9_combout\);

-- Location: FF_X98_Y35_N31
\FSMUnit|pSt.spn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSMUnit|pSt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMUnit|pSt.spn~q\);

-- Location: LCCOMB_X98_Y35_N24
\FSMUnit|ledOn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|ledOn~0_combout\ = (\FSMUnit|pSt.spn~q\) # (\FSMUnit|pSt.wIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|pSt.spn~q\,
	datad => \FSMUnit|pSt.wIn~q\,
	combout => \FSMUnit|ledOn~0_combout\);

-- Location: LCCOMB_X98_Y35_N10
\FSMUnit|ledOn~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|ledOn~1_combout\ = (\FSMUnit|pSt.rns~q\) # (\FSMUnit|pSt.wOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSMUnit|pSt.rns~q\,
	datad => \FSMUnit|pSt.wOut~q\,
	combout => \FSMUnit|ledOn~1_combout\);

-- Location: LCCOMB_X98_Y35_N26
\FSMUnit|ledOn\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|ledOn~combout\ = (\FSMUnit|ledOn~1_combout\ & ((\FSMUnit|ledOn~combout\))) # (!\FSMUnit|ledOn~1_combout\ & (\FSMUnit|ledOn~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|ledOn~0_combout\,
	datac => \FSMUnit|ledOn~combout\,
	datad => \FSMUnit|ledOn~1_combout\,
	combout => \FSMUnit|ledOn~combout\);

-- Location: LCCOMB_X100_Y39_N20
\LEDR[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR[1]~reg0feeder_combout\ = \s_running~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_running~q\,
	combout => \LEDR[1]~reg0feeder_combout\);

-- Location: FF_X100_Y39_N21
\LEDR[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LEDR[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[1]~reg0_q\);

-- Location: LCCOMB_X98_Y35_N22
\FSMUnit|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|WideOr1~combout\ = (\FSMUnit|pSt.wOut~q\) # ((\FSMUnit|pSt.spn~q\) # (\FSMUnit|pSt.off~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|pSt.wOut~q\,
	datab => \FSMUnit|pSt.spn~q\,
	datad => \FSMUnit|pSt.off~q\,
	combout => \FSMUnit|WideOr1~combout\);

-- Location: LCCOMB_X98_Y35_N20
\FSMUnit|waterValve\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|waterValve~combout\ = (\FSMUnit|WideOr1~combout\ & (\FSMUnit|waterValve~combout\)) # (!\FSMUnit|WideOr1~combout\ & ((\FSMUnit|pSt.wIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|WideOr1~combout\,
	datab => \FSMUnit|waterValve~combout\,
	datad => \FSMUnit|pSt.wIn~q\,
	combout => \FSMUnit|waterValve~combout\);

-- Location: LCCOMB_X98_Y35_N28
\FSMUnit|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|WideOr1~0_combout\ = (!\FSMUnit|pSt.spn~q\ & !\FSMUnit|pSt.off~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|pSt.spn~q\,
	datad => \FSMUnit|pSt.off~q\,
	combout => \FSMUnit|WideOr1~0_combout\);

-- Location: LCCOMB_X98_Y35_N4
\FSMUnit|rinse\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|rinse~combout\ = (\FSMUnit|WideOr1~0_combout\ & (\FSMUnit|pSt.rns~q\)) # (!\FSMUnit|WideOr1~0_combout\ & ((\FSMUnit|rinse~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|pSt.rns~q\,
	datac => \FSMUnit|WideOr1~0_combout\,
	datad => \FSMUnit|rinse~combout\,
	combout => \FSMUnit|rinse~combout\);

-- Location: LCCOMB_X98_Y35_N2
\FSMUnit|waterPump\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|waterPump~combout\ = (\FSMUnit|pSt.rns~q\ & (\FSMUnit|waterPump~combout\)) # (!\FSMUnit|pSt.rns~q\ & ((\FSMUnit|pSt.wOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|pSt.rns~q\,
	datac => \FSMUnit|waterPump~combout\,
	datad => \FSMUnit|pSt.wOut~q\,
	combout => \FSMUnit|waterPump~combout\);

-- Location: LCCOMB_X98_Y35_N16
\FSMUnit|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|WideOr4~0_combout\ = (\FSMUnit|pSt.wIn~q\) # ((\FSMUnit|pSt.rns~q\) # (\FSMUnit|pSt.off~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|pSt.wIn~q\,
	datac => \FSMUnit|pSt.rns~q\,
	datad => \FSMUnit|pSt.off~q\,
	combout => \FSMUnit|WideOr4~0_combout\);

-- Location: LCCOMB_X98_Y35_N0
\FSMUnit|spin\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|spin~combout\ = (\FSMUnit|WideOr4~0_combout\ & (\FSMUnit|spin~combout\)) # (!\FSMUnit|WideOr4~0_combout\ & ((\FSMUnit|pSt.spn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|WideOr4~0_combout\,
	datac => \FSMUnit|spin~combout\,
	datad => \FSMUnit|pSt.spn~q\,
	combout => \FSMUnit|spin~combout\);

-- Location: CLKCTRL_G5
\FSMUnit|pSt.idle~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FSMUnit|pSt.idle~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FSMUnit|pSt.idle~clkctrl_outclk\);

-- Location: LCCOMB_X105_Y35_N10
\FSMUnit|program[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|program\(2) = (GLOBAL(\FSMUnit|pSt.idle~clkctrl_outclk\) & (\FSMUnit|program\(2))) # (!GLOBAL(\FSMUnit|pSt.idle~clkctrl_outclk\) & ((\FSMUnit|s_program\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|program\(2),
	datac => \FSMUnit|s_program\(2),
	datad => \FSMUnit|pSt.idle~clkctrl_outclk\,
	combout => \FSMUnit|program\(2));

-- Location: LCCOMB_X105_Y35_N24
\FSMUnit|program[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|program\(0) = (GLOBAL(\FSMUnit|pSt.idle~clkctrl_outclk\) & (\FSMUnit|program\(0))) # (!GLOBAL(\FSMUnit|pSt.idle~clkctrl_outclk\) & ((\FSMUnit|s_program\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMUnit|program\(0),
	datac => \FSMUnit|s_program\(0),
	datad => \FSMUnit|pSt.idle~clkctrl_outclk\,
	combout => \FSMUnit|program\(0));

-- Location: LCCOMB_X105_Y35_N22
\FSMUnit|program[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSMUnit|program\(1) = (GLOBAL(\FSMUnit|pSt.idle~clkctrl_outclk\) & ((\FSMUnit|program\(1)))) # (!GLOBAL(\FSMUnit|pSt.idle~clkctrl_outclk\) & (\FSMUnit|s_program\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|s_program\(1),
	datac => \FSMUnit|program\(1),
	datad => \FSMUnit|pSt.idle~clkctrl_outclk\,
	combout => \FSMUnit|program\(1));

-- Location: LCCOMB_X105_Y35_N8
\displayUnit|bcd7segProgram|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segProgram|Mux6~0_combout\ = (\FSMUnit|program\(2)) # ((\FSMUnit|program\(0) & !\FSMUnit|program\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|program\(2),
	datab => \FSMUnit|program\(0),
	datac => \FSMUnit|program\(1),
	combout => \displayUnit|bcd7segProgram|Mux6~0_combout\);

-- Location: LCCOMB_X105_Y35_N14
\displayUnit|bcd7segProgram|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segProgram|Mux4~0_combout\ = (\FSMUnit|program\(2)) # ((!\FSMUnit|program\(0) & \FSMUnit|program\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|program\(2),
	datab => \FSMUnit|program\(0),
	datac => \FSMUnit|program\(1),
	combout => \displayUnit|bcd7segProgram|Mux4~0_combout\);

-- Location: LCCOMB_X105_Y35_N20
\displayUnit|bcd7segProgram|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segProgram|Mux2~0_combout\ = (!\FSMUnit|program\(2) & !\FSMUnit|program\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|program\(2),
	datad => \FSMUnit|program\(0),
	combout => \displayUnit|bcd7segProgram|Mux2~0_combout\);

-- Location: LCCOMB_X105_Y35_N30
\displayUnit|bcd7segProgram|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segProgram|Mux1~0_combout\ = (\FSMUnit|program\(2)) # ((\FSMUnit|program\(0)) # (\FSMUnit|program\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|program\(2),
	datab => \FSMUnit|program\(0),
	datac => \FSMUnit|program\(1),
	combout => \displayUnit|bcd7segProgram|Mux1~0_combout\);

-- Location: LCCOMB_X105_Y35_N28
\displayUnit|bcd7segProgram|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segProgram|Mux0~0_combout\ = (!\FSMUnit|program\(2) & \FSMUnit|program\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMUnit|program\(2),
	datac => \FSMUnit|program\(1),
	combout => \displayUnit|bcd7segProgram|Mux0~0_combout\);

-- Location: LCCOMB_X105_Y35_N18
\displayUnit|bcd7segTimeR|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segTimeR|Mux6~0_combout\ = (\timerAux|s_counter\(1) & (\timerAux|s_counter\(2) $ (((\timerAux|s_counter\(0)) # (!\timerAux|s_counter\(3)))))) # (!\timerAux|s_counter\(1) & (((!\timerAux|s_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(2),
	datab => \timerAux|s_counter\(1),
	datac => \timerAux|s_counter\(3),
	datad => \timerAux|s_counter\(0),
	combout => \displayUnit|bcd7segTimeR|Mux6~0_combout\);

-- Location: LCCOMB_X105_Y35_N4
\displayUnit|bcd7segTimeR|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segTimeR|Mux5~0_combout\ = (\timerAux|s_counter\(2) & (!\timerAux|s_counter\(1) & (!\timerAux|s_counter\(3)))) # (!\timerAux|s_counter\(2) & ((\timerAux|s_counter\(1) $ (\timerAux|s_counter\(0))) # (!\timerAux|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(2),
	datab => \timerAux|s_counter\(1),
	datac => \timerAux|s_counter\(3),
	datad => \timerAux|s_counter\(0),
	combout => \displayUnit|bcd7segTimeR|Mux5~0_combout\);

-- Location: LCCOMB_X103_Y35_N8
\displayUnit|bcd7segTimeR|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segTimeR|Mux4~0_combout\ = (\timerAux|s_counter\(2) & (!\timerAux|s_counter\(1) & ((\timerAux|s_counter\(0)) # (!\timerAux|s_counter\(3))))) # (!\timerAux|s_counter\(2) & (!\timerAux|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(2),
	datab => \timerAux|s_counter\(3),
	datac => \timerAux|s_counter\(1),
	datad => \timerAux|s_counter\(0),
	combout => \displayUnit|bcd7segTimeR|Mux4~0_combout\);

-- Location: LCCOMB_X103_Y35_N6
\displayUnit|bcd7segTimeR|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segTimeR|Mux3~0_combout\ = (\timerAux|s_counter\(1) & (\timerAux|s_counter\(2) $ (((\timerAux|s_counter\(0)) # (!\timerAux|s_counter\(3)))))) # (!\timerAux|s_counter\(1) & (((!\timerAux|s_counter\(2) & !\timerAux|s_counter\(0))) # 
-- (!\timerAux|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(2),
	datab => \timerAux|s_counter\(3),
	datac => \timerAux|s_counter\(1),
	datad => \timerAux|s_counter\(0),
	combout => \displayUnit|bcd7segTimeR|Mux3~0_combout\);

-- Location: LCCOMB_X103_Y35_N28
\displayUnit|bcd7segTimeR|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segTimeR|Mux2~0_combout\ = ((\timerAux|s_counter\(1) & (!\timerAux|s_counter\(2))) # (!\timerAux|s_counter\(1) & ((!\timerAux|s_counter\(3))))) # (!\timerAux|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(2),
	datab => \timerAux|s_counter\(3),
	datac => \timerAux|s_counter\(1),
	datad => \timerAux|s_counter\(0),
	combout => \displayUnit|bcd7segTimeR|Mux2~0_combout\);

-- Location: LCCOMB_X105_Y35_N26
\displayUnit|bcd7segTimeR|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segTimeR|Mux1~0_combout\ = (\timerAux|s_counter\(2) & (((\timerAux|s_counter\(3) & !\timerAux|s_counter\(0))) # (!\timerAux|s_counter\(1)))) # (!\timerAux|s_counter\(2) & (((!\timerAux|s_counter\(1) & !\timerAux|s_counter\(0))) # 
-- (!\timerAux|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(2),
	datab => \timerAux|s_counter\(1),
	datac => \timerAux|s_counter\(3),
	datad => \timerAux|s_counter\(0),
	combout => \displayUnit|bcd7segTimeR|Mux1~0_combout\);

-- Location: LCCOMB_X105_Y35_N16
\displayUnit|bcd7segTimeR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segTimeR|Mux0~0_combout\ = (\timerAux|s_counter\(2) & (\timerAux|s_counter\(1) $ ((\timerAux|s_counter\(3))))) # (!\timerAux|s_counter\(2) & (\timerAux|s_counter\(3) & ((\timerAux|s_counter\(1)) # (\timerAux|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(2),
	datab => \timerAux|s_counter\(1),
	datac => \timerAux|s_counter\(3),
	datad => \timerAux|s_counter\(0),
	combout => \displayUnit|bcd7segTimeR|Mux0~0_combout\);

-- Location: LCCOMB_X91_Y4_N4
\displayUnit|bcd7segTimeL|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segTimeL|Mux6~0_combout\ = (\timerAux|s_counter\(5) & (\timerAux|s_counter\(6) $ (((\timerAux|s_counter\(4)) # (!\timerAux|s_counter\(7)))))) # (!\timerAux|s_counter\(5) & (((!\timerAux|s_counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(4),
	datab => \timerAux|s_counter\(6),
	datac => \timerAux|s_counter\(7),
	datad => \timerAux|s_counter\(5),
	combout => \displayUnit|bcd7segTimeL|Mux6~0_combout\);

-- Location: LCCOMB_X91_Y4_N14
\displayUnit|bcd7segTimeL|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segTimeL|Mux5~0_combout\ = (\timerAux|s_counter\(6) & (((!\timerAux|s_counter\(7) & !\timerAux|s_counter\(5))))) # (!\timerAux|s_counter\(6) & ((\timerAux|s_counter\(4) $ (\timerAux|s_counter\(5))) # (!\timerAux|s_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(4),
	datab => \timerAux|s_counter\(6),
	datac => \timerAux|s_counter\(7),
	datad => \timerAux|s_counter\(5),
	combout => \displayUnit|bcd7segTimeL|Mux5~0_combout\);

-- Location: LCCOMB_X91_Y4_N28
\displayUnit|bcd7segTimeL|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segTimeL|Mux4~0_combout\ = (\timerAux|s_counter\(6) & (!\timerAux|s_counter\(5) & ((\timerAux|s_counter\(4)) # (!\timerAux|s_counter\(7))))) # (!\timerAux|s_counter\(6) & (((!\timerAux|s_counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(4),
	datab => \timerAux|s_counter\(6),
	datac => \timerAux|s_counter\(7),
	datad => \timerAux|s_counter\(5),
	combout => \displayUnit|bcd7segTimeL|Mux4~0_combout\);

-- Location: LCCOMB_X91_Y4_N22
\displayUnit|bcd7segTimeL|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segTimeL|Mux3~0_combout\ = (\timerAux|s_counter\(5) & (\timerAux|s_counter\(6) $ (((\timerAux|s_counter\(4)) # (!\timerAux|s_counter\(7)))))) # (!\timerAux|s_counter\(5) & (((!\timerAux|s_counter\(4) & !\timerAux|s_counter\(6))) # 
-- (!\timerAux|s_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(4),
	datab => \timerAux|s_counter\(6),
	datac => \timerAux|s_counter\(7),
	datad => \timerAux|s_counter\(5),
	combout => \displayUnit|bcd7segTimeL|Mux3~0_combout\);

-- Location: LCCOMB_X91_Y4_N16
\displayUnit|bcd7segTimeL|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segTimeL|Mux2~0_combout\ = ((\timerAux|s_counter\(5) & (!\timerAux|s_counter\(6))) # (!\timerAux|s_counter\(5) & ((!\timerAux|s_counter\(7))))) # (!\timerAux|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(4),
	datab => \timerAux|s_counter\(6),
	datac => \timerAux|s_counter\(7),
	datad => \timerAux|s_counter\(5),
	combout => \displayUnit|bcd7segTimeL|Mux2~0_combout\);

-- Location: LCCOMB_X91_Y4_N10
\displayUnit|bcd7segTimeL|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segTimeL|Mux1~0_combout\ = (\timerAux|s_counter\(4) & ((\timerAux|s_counter\(6) & ((!\timerAux|s_counter\(5)))) # (!\timerAux|s_counter\(6) & (!\timerAux|s_counter\(7))))) # (!\timerAux|s_counter\(4) & ((\timerAux|s_counter\(6) $ 
-- (!\timerAux|s_counter\(7))) # (!\timerAux|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(4),
	datab => \timerAux|s_counter\(6),
	datac => \timerAux|s_counter\(7),
	datad => \timerAux|s_counter\(5),
	combout => \displayUnit|bcd7segTimeL|Mux1~0_combout\);

-- Location: LCCOMB_X91_Y4_N24
\displayUnit|bcd7segTimeL|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|bcd7segTimeL|Mux0~0_combout\ = (\timerAux|s_counter\(6) & ((\timerAux|s_counter\(7) $ (\timerAux|s_counter\(5))))) # (!\timerAux|s_counter\(6) & (\timerAux|s_counter\(7) & ((\timerAux|s_counter\(4)) # (\timerAux|s_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerAux|s_counter\(4),
	datab => \timerAux|s_counter\(6),
	datac => \timerAux|s_counter\(7),
	datad => \timerAux|s_counter\(5),
	combout => \displayUnit|bcd7segTimeL|Mux0~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;
END structure;


