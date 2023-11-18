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

-- DATE "11/21/2022 10:32:43"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RF IS
    PORT (
	CLK : IN std_logic;
	RF_Wr : IN std_logic;
	RF_A1 : IN std_logic_vector(2 DOWNTO 0);
	RF_A2 : IN std_logic_vector(2 DOWNTO 0);
	RF_A3 : IN std_logic_vector(2 DOWNTO 0);
	RF_D3 : IN std_logic_vector(15 DOWNTO 0);
	RF_D1 : BUFFER std_logic_vector(15 DOWNTO 0);
	RF_D2 : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END RF;

-- Design Ports Information
-- RF_D1[0]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D1[1]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D1[2]	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D1[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D1[4]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D1[5]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D1[6]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D1[7]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D1[8]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D1[9]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D1[10]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D1[11]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D1[12]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D1[13]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D1[14]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D1[15]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[1]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[3]	=>  Location: PIN_97,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[5]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[6]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[7]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[8]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[9]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[10]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[11]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[12]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[13]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[14]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D2[15]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_A1[0]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_A1[1]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_A1[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_A2[2]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_A2[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_A2[0]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_A3[2]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_A3[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_A3[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_Wr	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[2]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[3]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[4]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[5]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[6]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[7]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[8]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[9]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[10]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[11]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[12]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[13]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[14]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RF_D3[15]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RF_Wr : std_logic;
SIGNAL ww_RF_A1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RF_A2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RF_A3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RF_D3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RF_D1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RF_D2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \RF_D1[0]~output_o\ : std_logic;
SIGNAL \RF_D1[1]~output_o\ : std_logic;
SIGNAL \RF_D1[2]~output_o\ : std_logic;
SIGNAL \RF_D1[3]~output_o\ : std_logic;
SIGNAL \RF_D1[4]~output_o\ : std_logic;
SIGNAL \RF_D1[5]~output_o\ : std_logic;
SIGNAL \RF_D1[6]~output_o\ : std_logic;
SIGNAL \RF_D1[7]~output_o\ : std_logic;
SIGNAL \RF_D1[8]~output_o\ : std_logic;
SIGNAL \RF_D1[9]~output_o\ : std_logic;
SIGNAL \RF_D1[10]~output_o\ : std_logic;
SIGNAL \RF_D1[11]~output_o\ : std_logic;
SIGNAL \RF_D1[12]~output_o\ : std_logic;
SIGNAL \RF_D1[13]~output_o\ : std_logic;
SIGNAL \RF_D1[14]~output_o\ : std_logic;
SIGNAL \RF_D1[15]~output_o\ : std_logic;
SIGNAL \RF_D2[0]~output_o\ : std_logic;
SIGNAL \RF_D2[1]~output_o\ : std_logic;
SIGNAL \RF_D2[2]~output_o\ : std_logic;
SIGNAL \RF_D2[3]~output_o\ : std_logic;
SIGNAL \RF_D2[4]~output_o\ : std_logic;
SIGNAL \RF_D2[5]~output_o\ : std_logic;
SIGNAL \RF_D2[6]~output_o\ : std_logic;
SIGNAL \RF_D2[7]~output_o\ : std_logic;
SIGNAL \RF_D2[8]~output_o\ : std_logic;
SIGNAL \RF_D2[9]~output_o\ : std_logic;
SIGNAL \RF_D2[10]~output_o\ : std_logic;
SIGNAL \RF_D2[11]~output_o\ : std_logic;
SIGNAL \RF_D2[12]~output_o\ : std_logic;
SIGNAL \RF_D2[13]~output_o\ : std_logic;
SIGNAL \RF_D2[14]~output_o\ : std_logic;
SIGNAL \RF_D2[15]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RF_D3[0]~input_o\ : std_logic;
SIGNAL \RF_A3[1]~input_o\ : std_logic;
SIGNAL \RF_Wr~input_o\ : std_logic;
SIGNAL \RF_A3[0]~input_o\ : std_logic;
SIGNAL \RF_A3[2]~input_o\ : std_logic;
SIGNAL \Equal8~3_combout\ : std_logic;
SIGNAL \RF_A1[0]~input_o\ : std_logic;
SIGNAL \RF_A1[1]~input_o\ : std_logic;
SIGNAL \Equal8~2_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Equal8~6_combout\ : std_logic;
SIGNAL \Equal8~5_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Equal8~7_combout\ : std_logic;
SIGNAL \Equal8~4_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \RF_A1[2]~input_o\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \RF_D3[1]~input_o\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \RF_D3[2]~input_o\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \RF_D3[3]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \RF_D3[4]~input_o\ : std_logic;
SIGNAL \R6[4]~feeder_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \RF_D3[5]~input_o\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \RF_D3[6]~input_o\ : std_logic;
SIGNAL \R6[6]~feeder_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \RF_D3[7]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \RF_D3[8]~input_o\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \RF_D3[9]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \RF_D3[10]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \RF_D3[11]~input_o\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \RF_D3[12]~input_o\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \RF_D3[13]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \RF_D3[14]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \RF_D3[15]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \R6[15]~feeder_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \RF_A2[2]~input_o\ : std_logic;
SIGNAL \RF_A2[1]~input_o\ : std_logic;
SIGNAL \RF_D2[0]~0_combout\ : std_logic;
SIGNAL \RF_D2[0]~1_combout\ : std_logic;
SIGNAL \RF_D2[0]~2_combout\ : std_logic;
SIGNAL \RF_D2[0]~3_combout\ : std_logic;
SIGNAL \RF_A2[0]~input_o\ : std_logic;
SIGNAL \RF_D2[0]~4_combout\ : std_logic;
SIGNAL \RF_D2[1]~7_combout\ : std_logic;
SIGNAL \RF_D2[1]~8_combout\ : std_logic;
SIGNAL \RF_D2[1]~5_combout\ : std_logic;
SIGNAL \RF_D2[1]~6_combout\ : std_logic;
SIGNAL \RF_D2[1]~9_combout\ : std_logic;
SIGNAL \RF_D2[2]~12_combout\ : std_logic;
SIGNAL \RF_D2[2]~13_combout\ : std_logic;
SIGNAL \RF_D2[2]~10_combout\ : std_logic;
SIGNAL \RF_D2[2]~11_combout\ : std_logic;
SIGNAL \RF_D2[2]~14_combout\ : std_logic;
SIGNAL \RF_D2[3]~17_combout\ : std_logic;
SIGNAL \RF_D2[3]~18_combout\ : std_logic;
SIGNAL \RF_D2[3]~15_combout\ : std_logic;
SIGNAL \RF_D2[3]~16_combout\ : std_logic;
SIGNAL \RF_D2[3]~19_combout\ : std_logic;
SIGNAL \RF_D2[4]~20_combout\ : std_logic;
SIGNAL \RF_D2[4]~21_combout\ : std_logic;
SIGNAL \RF_D2[4]~22_combout\ : std_logic;
SIGNAL \RF_D2[4]~23_combout\ : std_logic;
SIGNAL \RF_D2[4]~24_combout\ : std_logic;
SIGNAL \RF_D2[5]~27_combout\ : std_logic;
SIGNAL \RF_D2[5]~28_combout\ : std_logic;
SIGNAL \RF_D2[5]~25_combout\ : std_logic;
SIGNAL \RF_D2[5]~26_combout\ : std_logic;
SIGNAL \RF_D2[5]~29_combout\ : std_logic;
SIGNAL \RF_D2[6]~30_combout\ : std_logic;
SIGNAL \RF_D2[6]~31_combout\ : std_logic;
SIGNAL \RF_D2[6]~32_combout\ : std_logic;
SIGNAL \RF_D2[6]~33_combout\ : std_logic;
SIGNAL \RF_D2[6]~34_combout\ : std_logic;
SIGNAL \RF_D2[7]~35_combout\ : std_logic;
SIGNAL \RF_D2[7]~36_combout\ : std_logic;
SIGNAL \RF_D2[7]~37_combout\ : std_logic;
SIGNAL \RF_D2[7]~38_combout\ : std_logic;
SIGNAL \RF_D2[7]~39_combout\ : std_logic;
SIGNAL \RF_D2[8]~40_combout\ : std_logic;
SIGNAL \RF_D2[8]~41_combout\ : std_logic;
SIGNAL \RF_D2[8]~42_combout\ : std_logic;
SIGNAL \RF_D2[8]~43_combout\ : std_logic;
SIGNAL \RF_D2[8]~44_combout\ : std_logic;
SIGNAL \RF_D2[9]~47_combout\ : std_logic;
SIGNAL \RF_D2[9]~48_combout\ : std_logic;
SIGNAL \RF_D2[9]~45_combout\ : std_logic;
SIGNAL \RF_D2[9]~46_combout\ : std_logic;
SIGNAL \RF_D2[9]~49_combout\ : std_logic;
SIGNAL \RF_D2[10]~52_combout\ : std_logic;
SIGNAL \RF_D2[10]~53_combout\ : std_logic;
SIGNAL \RF_D2[10]~50_combout\ : std_logic;
SIGNAL \RF_D2[10]~51_combout\ : std_logic;
SIGNAL \RF_D2[10]~54_combout\ : std_logic;
SIGNAL \RF_D2[11]~57_combout\ : std_logic;
SIGNAL \RF_D2[11]~58_combout\ : std_logic;
SIGNAL \RF_D2[11]~55_combout\ : std_logic;
SIGNAL \RF_D2[11]~56_combout\ : std_logic;
SIGNAL \RF_D2[11]~59_combout\ : std_logic;
SIGNAL \RF_D2[12]~60_combout\ : std_logic;
SIGNAL \RF_D2[12]~61_combout\ : std_logic;
SIGNAL \RF_D2[12]~62_combout\ : std_logic;
SIGNAL \RF_D2[12]~63_combout\ : std_logic;
SIGNAL \RF_D2[12]~64_combout\ : std_logic;
SIGNAL \RF_D2[13]~65_combout\ : std_logic;
SIGNAL \RF_D2[13]~66_combout\ : std_logic;
SIGNAL \RF_D2[13]~67_combout\ : std_logic;
SIGNAL \RF_D2[13]~68_combout\ : std_logic;
SIGNAL \RF_D2[13]~69_combout\ : std_logic;
SIGNAL \RF_D2[14]~72_combout\ : std_logic;
SIGNAL \RF_D2[14]~73_combout\ : std_logic;
SIGNAL \RF_D2[14]~70_combout\ : std_logic;
SIGNAL \RF_D2[14]~71_combout\ : std_logic;
SIGNAL \RF_D2[14]~74_combout\ : std_logic;
SIGNAL \RF_D2[15]~75_combout\ : std_logic;
SIGNAL \RF_D2[15]~76_combout\ : std_logic;
SIGNAL \RF_D2[15]~77_combout\ : std_logic;
SIGNAL \RF_D2[15]~78_combout\ : std_logic;
SIGNAL \RF_D2[15]~79_combout\ : std_logic;
SIGNAL R5 : std_logic_vector(15 DOWNTO 0);
SIGNAL R6 : std_logic_vector(15 DOWNTO 0);
SIGNAL R4 : std_logic_vector(15 DOWNTO 0);
SIGNAL R7 : std_logic_vector(15 DOWNTO 0);
SIGNAL R2 : std_logic_vector(15 DOWNTO 0);
SIGNAL R1 : std_logic_vector(15 DOWNTO 0);
SIGNAL R0 : std_logic_vector(15 DOWNTO 0);
SIGNAL R3 : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RF_Wr <= RF_Wr;
ww_RF_A1 <= RF_A1;
ww_RF_A2 <= RF_A2;
ww_RF_A3 <= RF_A3;
ww_RF_D3 <= RF_D3;
RF_D1 <= ww_RF_D1;
RF_D2 <= ww_RF_D2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y24_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X12_Y21_N9
\RF_D1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[0]~output_o\);

-- Location: IOOBUF_X8_Y21_N23
\RF_D1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\RF_D1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\RF_D1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[3]~output_o\);

-- Location: IOOBUF_X12_Y21_N2
\RF_D1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[4]~output_o\);

-- Location: IOOBUF_X60_Y10_N2
\RF_D1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[5]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\RF_D1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\RF_D1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\RF_D1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[8]~output_o\);

-- Location: IOOBUF_X16_Y21_N16
\RF_D1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[9]~output_o\);

-- Location: IOOBUF_X28_Y36_N2
\RF_D1[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[10]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\RF_D1[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[11]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\RF_D1[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[12]~output_o\);

-- Location: IOOBUF_X60_Y8_N23
\RF_D1[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[13]~output_o\);

-- Location: IOOBUF_X14_Y21_N23
\RF_D1[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[14]~output_o\);

-- Location: IOOBUF_X60_Y15_N23
\RF_D1[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~4_combout\,
	devoe => ww_devoe,
	o => \RF_D1[15]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\RF_D2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[0]~4_combout\,
	devoe => ww_devoe,
	o => \RF_D2[0]~output_o\);

-- Location: IOOBUF_X25_Y26_N23
\RF_D2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[1]~9_combout\,
	devoe => ww_devoe,
	o => \RF_D2[1]~output_o\);

-- Location: IOOBUF_X60_Y13_N16
\RF_D2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[2]~14_combout\,
	devoe => ww_devoe,
	o => \RF_D2[2]~output_o\);

-- Location: IOOBUF_X60_Y22_N9
\RF_D2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[3]~19_combout\,
	devoe => ww_devoe,
	o => \RF_D2[3]~output_o\);

-- Location: IOOBUF_X19_Y21_N30
\RF_D2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[4]~24_combout\,
	devoe => ww_devoe,
	o => \RF_D2[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\RF_D2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[5]~29_combout\,
	devoe => ww_devoe,
	o => \RF_D2[5]~output_o\);

-- Location: IOOBUF_X60_Y31_N16
\RF_D2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[6]~34_combout\,
	devoe => ww_devoe,
	o => \RF_D2[6]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\RF_D2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[7]~39_combout\,
	devoe => ww_devoe,
	o => \RF_D2[7]~output_o\);

-- Location: IOOBUF_X38_Y36_N16
\RF_D2[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[8]~44_combout\,
	devoe => ww_devoe,
	o => \RF_D2[8]~output_o\);

-- Location: IOOBUF_X58_Y36_N2
\RF_D2[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[9]~49_combout\,
	devoe => ww_devoe,
	o => \RF_D2[9]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\RF_D2[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[10]~54_combout\,
	devoe => ww_devoe,
	o => \RF_D2[10]~output_o\);

-- Location: IOOBUF_X60_Y31_N23
\RF_D2[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[11]~59_combout\,
	devoe => ww_devoe,
	o => \RF_D2[11]~output_o\);

-- Location: IOOBUF_X12_Y21_N30
\RF_D2[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[12]~64_combout\,
	devoe => ww_devoe,
	o => \RF_D2[12]~output_o\);

-- Location: IOOBUF_X28_Y36_N9
\RF_D2[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[13]~69_combout\,
	devoe => ww_devoe,
	o => \RF_D2[13]~output_o\);

-- Location: IOOBUF_X8_Y21_N16
\RF_D2[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[14]~74_combout\,
	devoe => ww_devoe,
	o => \RF_D2[14]~output_o\);

-- Location: IOOBUF_X25_Y26_N16
\RF_D2[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RF_D2[15]~79_combout\,
	devoe => ww_devoe,
	o => \RF_D2[15]~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X19_Y21_N22
\RF_D3[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(0),
	o => \RF_D3[0]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\RF_A3[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_A3(1),
	o => \RF_A3[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N29
\RF_Wr~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_Wr,
	o => \RF_Wr~input_o\);

-- Location: IOIBUF_X60_Y10_N15
\RF_A3[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_A3(0),
	o => \RF_A3[0]~input_o\);

-- Location: IOIBUF_X60_Y23_N15
\RF_A3[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_A3(2),
	o => \RF_A3[2]~input_o\);

-- Location: LCCOMB_X40_Y22_N22
\Equal8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~3_combout\ = (\RF_A3[1]~input_o\ & (\RF_Wr~input_o\ & (\RF_A3[0]~input_o\ & \RF_A3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A3[1]~input_o\,
	datab => \RF_Wr~input_o\,
	datac => \RF_A3[0]~input_o\,
	datad => \RF_A3[2]~input_o\,
	combout => \Equal8~3_combout\);

-- Location: FF_X39_Y22_N27
\R7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[0]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(0));

-- Location: IOIBUF_X60_Y23_N1
\RF_A1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_A1(0),
	o => \RF_A1[0]~input_o\);

-- Location: IOIBUF_X25_Y28_N22
\RF_A1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_A1(1),
	o => \RF_A1[1]~input_o\);

-- Location: LCCOMB_X40_Y22_N12
\Equal8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~2_combout\ = (!\RF_A3[1]~input_o\ & (\RF_Wr~input_o\ & (!\RF_A3[0]~input_o\ & \RF_A3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A3[1]~input_o\,
	datab => \RF_Wr~input_o\,
	datac => \RF_A3[0]~input_o\,
	datad => \RF_A3[2]~input_o\,
	combout => \Equal8~2_combout\);

-- Location: FF_X43_Y22_N19
\R4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[0]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(0));

-- Location: LCCOMB_X40_Y22_N2
\Equal8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (\RF_A3[1]~input_o\ & (\RF_Wr~input_o\ & (!\RF_A3[0]~input_o\ & \RF_A3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A3[1]~input_o\,
	datab => \RF_Wr~input_o\,
	datac => \RF_A3[0]~input_o\,
	datad => \RF_A3[2]~input_o\,
	combout => \Equal8~1_combout\);

-- Location: FF_X43_Y22_N25
\R6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[0]~input_o\,
	sload => VCC,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(0));

-- Location: LCCOMB_X43_Y22_N18
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\RF_A1[0]~input_o\ & (\RF_A1[1]~input_o\)) # (!\RF_A1[0]~input_o\ & ((\RF_A1[1]~input_o\ & ((R6(0)))) # (!\RF_A1[1]~input_o\ & (R4(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => \RF_A1[1]~input_o\,
	datac => R4(0),
	datad => R6(0),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X40_Y22_N8
\Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!\RF_A3[1]~input_o\ & (\RF_Wr~input_o\ & (\RF_A3[0]~input_o\ & \RF_A3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A3[1]~input_o\,
	datab => \RF_Wr~input_o\,
	datac => \RF_A3[0]~input_o\,
	datad => \RF_A3[2]~input_o\,
	combout => \Equal8~0_combout\);

-- Location: FF_X39_Y22_N9
\R5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[0]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(0));

-- Location: LCCOMB_X39_Y22_N8
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & ((R7(0)) # ((!\RF_A1[0]~input_o\)))) # (!\Mux15~0_combout\ & (((R5(0) & \RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R7(0),
	datab => \Mux15~0_combout\,
	datac => R5(0),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X40_Y22_N28
\Equal8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~6_combout\ = (!\RF_A3[1]~input_o\ & (\RF_Wr~input_o\ & (!\RF_A3[0]~input_o\ & !\RF_A3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A3[1]~input_o\,
	datab => \RF_Wr~input_o\,
	datac => \RF_A3[0]~input_o\,
	datad => \RF_A3[2]~input_o\,
	combout => \Equal8~6_combout\);

-- Location: FF_X41_Y22_N11
\R0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[0]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(0));

-- Location: LCCOMB_X40_Y22_N26
\Equal8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~5_combout\ = (!\RF_A3[1]~input_o\ & (\RF_Wr~input_o\ & (\RF_A3[0]~input_o\ & !\RF_A3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A3[1]~input_o\,
	datab => \RF_Wr~input_o\,
	datac => \RF_A3[0]~input_o\,
	datad => \RF_A3[2]~input_o\,
	combout => \Equal8~5_combout\);

-- Location: FF_X41_Y22_N25
\R1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[0]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(0));

-- Location: LCCOMB_X41_Y22_N24
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\RF_A1[0]~input_o\ & (((R1(0)) # (\RF_A1[1]~input_o\)))) # (!\RF_A1[0]~input_o\ & (R0(0) & ((!\RF_A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(0),
	datab => \RF_A1[0]~input_o\,
	datac => R1(0),
	datad => \RF_A1[1]~input_o\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X40_Y22_N6
\Equal8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~7_combout\ = (\RF_A3[1]~input_o\ & (\RF_Wr~input_o\ & (\RF_A3[0]~input_o\ & !\RF_A3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A3[1]~input_o\,
	datab => \RF_Wr~input_o\,
	datac => \RF_A3[0]~input_o\,
	datad => \RF_A3[2]~input_o\,
	combout => \Equal8~7_combout\);

-- Location: FF_X40_Y22_N17
\R3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[0]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(0));

-- Location: LCCOMB_X40_Y22_N24
\Equal8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~4_combout\ = (\RF_A3[1]~input_o\ & (\RF_Wr~input_o\ & (!\RF_A3[0]~input_o\ & !\RF_A3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A3[1]~input_o\,
	datab => \RF_Wr~input_o\,
	datac => \RF_A3[0]~input_o\,
	datad => \RF_A3[2]~input_o\,
	combout => \Equal8~4_combout\);

-- Location: FF_X42_Y22_N17
\R2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[0]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(0));

-- Location: LCCOMB_X39_Y22_N20
\Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux15~2_combout\ & ((R3(0)) # ((!\RF_A1[1]~input_o\)))) # (!\Mux15~2_combout\ & (((\RF_A1[1]~input_o\ & R2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => R3(0),
	datac => \RF_A1[1]~input_o\,
	datad => R2(0),
	combout => \Mux15~3_combout\);

-- Location: IOIBUF_X40_Y36_N15
\RF_A1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_A1(2),
	o => \RF_A1[2]~input_o\);

-- Location: LCCOMB_X39_Y22_N14
\Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\RF_A1[2]~input_o\ & (\Mux15~1_combout\)) # (!\RF_A1[2]~input_o\ & ((\Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~3_combout\,
	datad => \RF_A1[2]~input_o\,
	combout => \Mux15~4_combout\);

-- Location: IOIBUF_X60_Y13_N22
\RF_D3[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(1),
	o => \RF_D3[1]~input_o\);

-- Location: FF_X38_Y22_N1
\R2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[1]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(1));

-- Location: FF_X40_Y22_N11
\R3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[1]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(1));

-- Location: FF_X41_Y22_N23
\R0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[1]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(1));

-- Location: FF_X41_Y22_N21
\R1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[1]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(1));

-- Location: LCCOMB_X41_Y22_N20
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\RF_A1[0]~input_o\ & (((R1(1)) # (\RF_A1[1]~input_o\)))) # (!\RF_A1[0]~input_o\ & (R0(1) & ((!\RF_A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(1),
	datab => \RF_A1[0]~input_o\,
	datac => R1(1),
	datad => \RF_A1[1]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X39_Y22_N12
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\RF_A1[1]~input_o\ & ((\Mux14~2_combout\ & ((R3(1)))) # (!\Mux14~2_combout\ & (R2(1))))) # (!\RF_A1[1]~input_o\ & (((\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R2(1),
	datab => R3(1),
	datac => \RF_A1[1]~input_o\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: FF_X43_Y22_N31
\R4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[1]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(1));

-- Location: FF_X43_Y22_N29
\R6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[1]~input_o\,
	sload => VCC,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(1));

-- Location: LCCOMB_X43_Y22_N30
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\RF_A1[0]~input_o\ & (\RF_A1[1]~input_o\)) # (!\RF_A1[0]~input_o\ & ((\RF_A1[1]~input_o\ & ((R6(1)))) # (!\RF_A1[1]~input_o\ & (R4(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => \RF_A1[1]~input_o\,
	datac => R4(1),
	datad => R6(1),
	combout => \Mux14~0_combout\);

-- Location: FF_X39_Y22_N11
\R7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[1]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(1));

-- Location: FF_X39_Y22_N25
\R5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[1]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(1));

-- Location: LCCOMB_X39_Y22_N24
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & ((R7(1)) # ((!\RF_A1[0]~input_o\)))) # (!\Mux14~0_combout\ & (((R5(1) & \RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => R7(1),
	datac => R5(1),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X39_Y22_N22
\Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\RF_A1[2]~input_o\ & ((\Mux14~1_combout\))) # (!\RF_A1[2]~input_o\ & (\Mux14~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~3_combout\,
	datac => \Mux14~1_combout\,
	datad => \RF_A1[2]~input_o\,
	combout => \Mux14~4_combout\);

-- Location: IOIBUF_X60_Y14_N15
\RF_D3[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(2),
	o => \RF_D3[2]~input_o\);

-- Location: FF_X40_Y22_N21
\R3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[2]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(2));

-- Location: FF_X42_Y22_N27
\R2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[2]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(2));

-- Location: FF_X41_Y22_N27
\R0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[2]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(2));

-- Location: FF_X41_Y22_N9
\R1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[2]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(2));

-- Location: LCCOMB_X41_Y22_N8
\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\RF_A1[0]~input_o\ & (((R1(2)) # (\RF_A1[1]~input_o\)))) # (!\RF_A1[0]~input_o\ & (R0(2) & ((!\RF_A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(2),
	datab => \RF_A1[0]~input_o\,
	datac => R1(2),
	datad => \RF_A1[1]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X41_Y21_N12
\Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\RF_A1[1]~input_o\ & ((\Mux13~2_combout\ & (R3(2))) # (!\Mux13~2_combout\ & ((R2(2)))))) # (!\RF_A1[1]~input_o\ & (((\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R3(2),
	datab => \RF_A1[1]~input_o\,
	datac => R2(2),
	datad => \Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: FF_X43_Y22_N9
\R6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[2]~input_o\,
	sload => VCC,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(2));

-- Location: FF_X43_Y22_N3
\R4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[2]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(2));

-- Location: LCCOMB_X43_Y22_N2
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\RF_A1[0]~input_o\ & (((\RF_A1[1]~input_o\)))) # (!\RF_A1[0]~input_o\ & ((\RF_A1[1]~input_o\ & (R6(2))) # (!\RF_A1[1]~input_o\ & ((R4(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => R6(2),
	datac => R4(2),
	datad => \RF_A1[1]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: FF_X41_Y21_N1
\R5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[2]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(2));

-- Location: FF_X41_Y21_N3
\R7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[2]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(2));

-- Location: LCCOMB_X41_Y21_N0
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\RF_A1[0]~input_o\ & ((\Mux13~0_combout\ & ((R7(2)))) # (!\Mux13~0_combout\ & (R5(2))))) # (!\RF_A1[0]~input_o\ & (\Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => \Mux13~0_combout\,
	datac => R5(2),
	datad => R7(2),
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X41_Y21_N6
\Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\RF_A1[2]~input_o\ & ((\Mux13~1_combout\))) # (!\RF_A1[2]~input_o\ & (\Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datac => \RF_A1[2]~input_o\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~4_combout\);

-- Location: IOIBUF_X14_Y21_N29
\RF_D3[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(3),
	o => \RF_D3[3]~input_o\);

-- Location: FF_X39_Y22_N19
\R7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[3]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(3));

-- Location: FF_X43_Y22_N7
\R4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[3]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(3));

-- Location: FF_X43_Y22_N21
\R6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[3]~input_o\,
	sload => VCC,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(3));

-- Location: LCCOMB_X43_Y22_N6
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\RF_A1[0]~input_o\ & (\RF_A1[1]~input_o\)) # (!\RF_A1[0]~input_o\ & ((\RF_A1[1]~input_o\ & ((R6(3)))) # (!\RF_A1[1]~input_o\ & (R4(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => \RF_A1[1]~input_o\,
	datac => R4(3),
	datad => R6(3),
	combout => \Mux12~0_combout\);

-- Location: FF_X39_Y22_N1
\R5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[3]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(3));

-- Location: LCCOMB_X39_Y22_N0
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & ((R7(3)) # ((!\RF_A1[0]~input_o\)))) # (!\Mux12~0_combout\ & (((R5(3) & \RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R7(3),
	datab => \Mux12~0_combout\,
	datac => R5(3),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: FF_X42_Y22_N5
\R2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[3]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(3));

-- Location: FF_X41_Y22_N31
\R0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[3]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(3));

-- Location: FF_X41_Y22_N5
\R1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[3]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(3));

-- Location: LCCOMB_X41_Y22_N4
\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\RF_A1[0]~input_o\ & (((R1(3)) # (\RF_A1[1]~input_o\)))) # (!\RF_A1[0]~input_o\ & (R0(3) & ((!\RF_A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(3),
	datab => \RF_A1[0]~input_o\,
	datac => R1(3),
	datad => \RF_A1[1]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: FF_X40_Y22_N31
\R3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[3]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(3));

-- Location: LCCOMB_X41_Y22_N0
\Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\RF_A1[1]~input_o\ & ((\Mux12~2_combout\ & ((R3(3)))) # (!\Mux12~2_combout\ & (R2(3))))) # (!\RF_A1[1]~input_o\ & (((\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R2(3),
	datab => \RF_A1[1]~input_o\,
	datac => \Mux12~2_combout\,
	datad => R3(3),
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X39_Y22_N4
\Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\RF_A1[2]~input_o\ & (\Mux12~1_combout\)) # (!\RF_A1[2]~input_o\ & ((\Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[2]~input_o\,
	datac => \Mux12~1_combout\,
	datad => \Mux12~3_combout\,
	combout => \Mux12~4_combout\);

-- Location: IOIBUF_X14_Y21_N1
\RF_D3[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(4),
	o => \RF_D3[4]~input_o\);

-- Location: LCCOMB_X43_Y22_N0
\R6[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R6[4]~feeder_combout\ = \RF_D3[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RF_D3[4]~input_o\,
	combout => \R6[4]~feeder_combout\);

-- Location: FF_X43_Y22_N1
\R6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R6[4]~feeder_combout\,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(4));

-- Location: FF_X43_Y22_N27
\R4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[4]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(4));

-- Location: LCCOMB_X43_Y22_N26
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\RF_A1[1]~input_o\ & ((R6(4)) # ((\RF_A1[0]~input_o\)))) # (!\RF_A1[1]~input_o\ & (((R4(4) & !\RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R6(4),
	datab => \RF_A1[1]~input_o\,
	datac => R4(4),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: FF_X40_Y23_N3
\R7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[4]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(4));

-- Location: FF_X40_Y23_N9
\R5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[4]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(4));

-- Location: LCCOMB_X40_Y23_N8
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & ((R7(4)) # ((!\RF_A1[0]~input_o\)))) # (!\Mux11~0_combout\ & (((R5(4) & \RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => R7(4),
	datac => R5(4),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: FF_X40_Y22_N1
\R3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[4]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(4));

-- Location: FF_X41_Y22_N19
\R1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[4]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(4));

-- Location: FF_X41_Y22_N29
\R0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[4]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(4));

-- Location: LCCOMB_X41_Y22_N18
\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\RF_A1[1]~input_o\ & (\RF_A1[0]~input_o\)) # (!\RF_A1[1]~input_o\ & ((\RF_A1[0]~input_o\ & (R1(4))) # (!\RF_A1[0]~input_o\ & ((R0(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[1]~input_o\,
	datab => \RF_A1[0]~input_o\,
	datac => R1(4),
	datad => R0(4),
	combout => \Mux11~2_combout\);

-- Location: FF_X38_Y22_N27
\R2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[4]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(4));

-- Location: LCCOMB_X41_Y22_N14
\Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\RF_A1[1]~input_o\ & ((\Mux11~2_combout\ & (R3(4))) # (!\Mux11~2_combout\ & ((R2(4)))))) # (!\RF_A1[1]~input_o\ & (((\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R3(4),
	datab => \RF_A1[1]~input_o\,
	datac => \Mux11~2_combout\,
	datad => R2(4),
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X41_Y22_N16
\Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\RF_A1[2]~input_o\ & (\Mux11~1_combout\)) # (!\RF_A1[2]~input_o\ & ((\Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[2]~input_o\,
	datab => \Mux11~1_combout\,
	datac => \Mux11~3_combout\,
	combout => \Mux11~4_combout\);

-- Location: IOIBUF_X60_Y22_N23
\RF_D3[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(5),
	o => \RF_D3[5]~input_o\);

-- Location: FF_X40_Y22_N19
\R3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[5]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(5));

-- Location: FF_X42_Y22_N31
\R2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[5]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(5));

-- Location: FF_X41_Y22_N13
\R0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[5]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(5));

-- Location: FF_X41_Y22_N3
\R1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[5]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(5));

-- Location: LCCOMB_X41_Y22_N2
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\RF_A1[0]~input_o\ & (((R1(5)) # (\RF_A1[1]~input_o\)))) # (!\RF_A1[0]~input_o\ & (R0(5) & ((!\RF_A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(5),
	datab => \RF_A1[0]~input_o\,
	datac => R1(5),
	datad => \RF_A1[1]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X41_Y22_N6
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\RF_A1[1]~input_o\ & ((\Mux10~2_combout\ & (R3(5))) # (!\Mux10~2_combout\ & ((R2(5)))))) # (!\RF_A1[1]~input_o\ & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[1]~input_o\,
	datab => R3(5),
	datac => R2(5),
	datad => \Mux10~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: FF_X43_Y22_N13
\R6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[5]~input_o\,
	sload => VCC,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(5));

-- Location: FF_X43_Y22_N15
\R4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[5]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(5));

-- Location: LCCOMB_X43_Y22_N14
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\RF_A1[1]~input_o\ & ((R6(5)) # ((\RF_A1[0]~input_o\)))) # (!\RF_A1[1]~input_o\ & (((R4(5) & !\RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R6(5),
	datab => \RF_A1[1]~input_o\,
	datac => R4(5),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: FF_X39_Y22_N17
\R7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[5]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(5));

-- Location: FF_X39_Y22_N31
\R5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[5]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(5));

-- Location: LCCOMB_X39_Y22_N30
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((R7(5)) # ((!\RF_A1[0]~input_o\)))) # (!\Mux10~0_combout\ & (((R5(5) & \RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => R7(5),
	datac => R5(5),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X39_Y22_N2
\Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\RF_A1[2]~input_o\ & ((\Mux10~1_combout\))) # (!\RF_A1[2]~input_o\ & (\Mux10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[2]~input_o\,
	datab => \Mux10~3_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~4_combout\);

-- Location: IOIBUF_X25_Y28_N15
\RF_D3[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(6),
	o => \RF_D3[6]~input_o\);

-- Location: FF_X40_Y23_N7
\R7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[6]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(6));

-- Location: LCCOMB_X43_Y22_N16
\R6[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R6[6]~feeder_combout\ = \RF_D3[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RF_D3[6]~input_o\,
	combout => \R6[6]~feeder_combout\);

-- Location: FF_X43_Y22_N17
\R6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R6[6]~feeder_combout\,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(6));

-- Location: FF_X43_Y22_N11
\R4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[6]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(6));

-- Location: LCCOMB_X43_Y22_N10
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\RF_A1[1]~input_o\ & ((R6(6)) # ((\RF_A1[0]~input_o\)))) # (!\RF_A1[1]~input_o\ & (((R4(6) & !\RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R6(6),
	datab => \RF_A1[1]~input_o\,
	datac => R4(6),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: FF_X40_Y23_N13
\R5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[6]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(6));

-- Location: LCCOMB_X40_Y23_N12
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & ((R7(6)) # ((!\RF_A1[0]~input_o\)))) # (!\Mux9~0_combout\ & (((R5(6) & \RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R7(6),
	datab => \Mux9~0_combout\,
	datac => R5(6),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: FF_X41_Y23_N19
\R3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[6]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(6));

-- Location: FF_X41_Y24_N17
\R0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[6]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(6));

-- Location: FF_X41_Y23_N1
\R1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[6]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(6));

-- Location: LCCOMB_X41_Y23_N0
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\RF_A1[0]~input_o\ & (((R1(6)) # (\RF_A1[1]~input_o\)))) # (!\RF_A1[0]~input_o\ & (R0(6) & ((!\RF_A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => R0(6),
	datac => R1(6),
	datad => \RF_A1[1]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: FF_X42_Y22_N1
\R2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[6]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(6));

-- Location: LCCOMB_X41_Y23_N20
\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~2_combout\ & ((R3(6)) # ((!\RF_A1[1]~input_o\)))) # (!\Mux9~2_combout\ & (((\RF_A1[1]~input_o\ & R2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R3(6),
	datab => \Mux9~2_combout\,
	datac => \RF_A1[1]~input_o\,
	datad => R2(6),
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X41_Y23_N6
\Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\RF_A1[2]~input_o\ & (\Mux9~1_combout\)) # (!\RF_A1[2]~input_o\ & ((\Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \RF_A1[2]~input_o\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: IOIBUF_X58_Y36_N8
\RF_D3[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(7),
	o => \RF_D3[7]~input_o\);

-- Location: FF_X43_Y22_N5
\R6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[7]~input_o\,
	sload => VCC,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(7));

-- Location: FF_X43_Y22_N23
\R4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[7]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(7));

-- Location: LCCOMB_X43_Y22_N22
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\RF_A1[0]~input_o\ & (((\RF_A1[1]~input_o\)))) # (!\RF_A1[0]~input_o\ & ((\RF_A1[1]~input_o\ & (R6(7))) # (!\RF_A1[1]~input_o\ & ((R4(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => R6(7),
	datac => R4(7),
	datad => \RF_A1[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: FF_X41_Y21_N9
\R5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[7]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(7));

-- Location: FF_X41_Y21_N11
\R7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[7]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(7));

-- Location: LCCOMB_X41_Y21_N8
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\RF_A1[0]~input_o\ & ((\Mux8~0_combout\ & ((R7(7)))) # (!\Mux8~0_combout\ & (R5(7))))) # (!\RF_A1[0]~input_o\ & (\Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => \Mux8~0_combout\,
	datac => R5(7),
	datad => R7(7),
	combout => \Mux8~1_combout\);

-- Location: FF_X41_Y24_N27
\R0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[7]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(7));

-- Location: FF_X40_Y22_N5
\R1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[7]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(7));

-- Location: LCCOMB_X40_Y22_N4
\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\RF_A1[1]~input_o\ & (((\RF_A1[0]~input_o\)))) # (!\RF_A1[1]~input_o\ & ((\RF_A1[0]~input_o\ & ((R1(7)))) # (!\RF_A1[0]~input_o\ & (R0(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(7),
	datab => \RF_A1[1]~input_o\,
	datac => R1(7),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: FF_X42_Y22_N19
\R2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[7]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(7));

-- Location: FF_X40_Y22_N15
\R3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[7]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(7));

-- Location: LCCOMB_X41_Y21_N28
\Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux8~2_combout\ & (((R3(7))) # (!\RF_A1[1]~input_o\))) # (!\Mux8~2_combout\ & (\RF_A1[1]~input_o\ & (R2(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \RF_A1[1]~input_o\,
	datac => R2(7),
	datad => R3(7),
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X41_Y21_N30
\Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\RF_A1[2]~input_o\ & (\Mux8~1_combout\)) # (!\RF_A1[2]~input_o\ & ((\Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF_A1[2]~input_o\,
	datac => \Mux8~1_combout\,
	datad => \Mux8~3_combout\,
	combout => \Mux8~4_combout\);

-- Location: IOIBUF_X25_Y29_N15
\RF_D3[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(8),
	o => \RF_D3[8]~input_o\);

-- Location: FF_X39_Y24_N11
\R3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[8]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(8));

-- Location: FF_X41_Y24_N15
\R0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[8]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(8));

-- Location: FF_X39_Y24_N9
\R1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[8]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(8));

-- Location: LCCOMB_X39_Y24_N8
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\RF_A1[1]~input_o\ & (((\RF_A1[0]~input_o\)))) # (!\RF_A1[1]~input_o\ & ((\RF_A1[0]~input_o\ & ((R1(8)))) # (!\RF_A1[0]~input_o\ & (R0(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(8),
	datab => \RF_A1[1]~input_o\,
	datac => R1(8),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: FF_X40_Y24_N19
\R2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[8]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(8));

-- Location: LCCOMB_X39_Y24_N28
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\RF_A1[1]~input_o\ & ((\Mux7~2_combout\ & (R3(8))) # (!\Mux7~2_combout\ & ((R2(8)))))) # (!\RF_A1[1]~input_o\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R3(8),
	datab => \RF_A1[1]~input_o\,
	datac => \Mux7~2_combout\,
	datad => R2(8),
	combout => \Mux7~3_combout\);

-- Location: FF_X40_Y23_N27
\R7[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[8]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(8));

-- Location: FF_X41_Y24_N5
\R4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[8]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(8));

-- Location: FF_X40_Y24_N1
\R6[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[8]~input_o\,
	sload => VCC,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(8));

-- Location: LCCOMB_X41_Y24_N4
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\RF_A1[0]~input_o\ & (\RF_A1[1]~input_o\)) # (!\RF_A1[0]~input_o\ & ((\RF_A1[1]~input_o\ & ((R6(8)))) # (!\RF_A1[1]~input_o\ & (R4(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => \RF_A1[1]~input_o\,
	datac => R4(8),
	datad => R6(8),
	combout => \Mux7~0_combout\);

-- Location: FF_X40_Y23_N25
\R5[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[8]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(8));

-- Location: LCCOMB_X40_Y23_N24
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & ((R7(8)) # ((!\RF_A1[0]~input_o\)))) # (!\Mux7~0_combout\ & (((R5(8) & \RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R7(8),
	datab => \Mux7~0_combout\,
	datac => R5(8),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X39_Y24_N30
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\RF_A1[2]~input_o\ & ((\Mux7~1_combout\))) # (!\RF_A1[2]~input_o\ & (\Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[2]~input_o\,
	datab => \Mux7~3_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux7~4_combout\);

-- Location: IOIBUF_X40_Y36_N29
\RF_D3[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(9),
	o => \RF_D3[9]~input_o\);

-- Location: FF_X40_Y23_N31
\R7[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[9]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(9));

-- Location: FF_X41_Y24_N9
\R4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[9]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(9));

-- Location: FF_X42_Y22_N29
\R6[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[9]~input_o\,
	sload => VCC,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(9));

-- Location: LCCOMB_X41_Y24_N8
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\RF_A1[0]~input_o\ & (\RF_A1[1]~input_o\)) # (!\RF_A1[0]~input_o\ & ((\RF_A1[1]~input_o\ & ((R6(9)))) # (!\RF_A1[1]~input_o\ & (R4(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => \RF_A1[1]~input_o\,
	datac => R4(9),
	datad => R6(9),
	combout => \Mux6~0_combout\);

-- Location: FF_X40_Y23_N21
\R5[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[9]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(9));

-- Location: LCCOMB_X40_Y23_N20
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & ((R7(9)) # ((!\RF_A1[0]~input_o\)))) # (!\Mux6~0_combout\ & (((R5(9) & \RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R7(9),
	datab => \Mux6~0_combout\,
	datac => R5(9),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: FF_X41_Y23_N11
\R3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[9]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(9));

-- Location: FF_X41_Y23_N25
\R1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[9]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(9));

-- Location: FF_X41_Y24_N3
\R0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[9]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(9));

-- Location: LCCOMB_X41_Y23_N24
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\RF_A1[0]~input_o\ & ((\RF_A1[1]~input_o\) # ((R1(9))))) # (!\RF_A1[0]~input_o\ & (!\RF_A1[1]~input_o\ & ((R0(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => \RF_A1[1]~input_o\,
	datac => R1(9),
	datad => R0(9),
	combout => \Mux6~2_combout\);

-- Location: FF_X42_Y22_N23
\R2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[9]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(9));

-- Location: LCCOMB_X41_Y23_N28
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\ & ((R3(9)) # ((!\RF_A1[1]~input_o\)))) # (!\Mux6~2_combout\ & (((R2(9) & \RF_A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R3(9),
	datab => \Mux6~2_combout\,
	datac => R2(9),
	datad => \RF_A1[1]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X41_Y23_N30
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\RF_A1[2]~input_o\ & (\Mux6~1_combout\)) # (!\RF_A1[2]~input_o\ & ((\Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~1_combout\,
	datac => \RF_A1[2]~input_o\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

-- Location: IOIBUF_X25_Y29_N22
\RF_D3[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(10),
	o => \RF_D3[10]~input_o\);

-- Location: FF_X40_Y23_N11
\R7[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[10]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(10));

-- Location: FF_X40_Y24_N5
\R6[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[10]~input_o\,
	sload => VCC,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(10));

-- Location: FF_X41_Y24_N13
\R4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[10]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(10));

-- Location: LCCOMB_X41_Y24_N12
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\RF_A1[0]~input_o\ & (((\RF_A1[1]~input_o\)))) # (!\RF_A1[0]~input_o\ & ((\RF_A1[1]~input_o\ & (R6(10))) # (!\RF_A1[1]~input_o\ & ((R4(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => R6(10),
	datac => R4(10),
	datad => \RF_A1[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: FF_X40_Y23_N1
\R5[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[10]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(10));

-- Location: LCCOMB_X40_Y23_N0
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & ((R7(10)) # ((!\RF_A1[0]~input_o\)))) # (!\Mux5~0_combout\ & (((R5(10) & \RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R7(10),
	datab => \Mux5~0_combout\,
	datac => R5(10),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: FF_X41_Y24_N23
\R0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[10]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(10));

-- Location: FF_X39_Y24_N25
\R1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[10]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(10));

-- Location: LCCOMB_X39_Y24_N24
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\RF_A1[1]~input_o\ & (((\RF_A1[0]~input_o\)))) # (!\RF_A1[1]~input_o\ & ((\RF_A1[0]~input_o\ & ((R1(10)))) # (!\RF_A1[0]~input_o\ & (R0(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(10),
	datab => \RF_A1[1]~input_o\,
	datac => R1(10),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: FF_X39_Y24_N27
\R3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[10]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(10));

-- Location: FF_X40_Y24_N23
\R2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[10]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(10));

-- Location: LCCOMB_X39_Y24_N4
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & (((R3(10))) # (!\RF_A1[1]~input_o\))) # (!\Mux5~2_combout\ & (\RF_A1[1]~input_o\ & ((R2(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \RF_A1[1]~input_o\,
	datac => R3(10),
	datad => R2(10),
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X39_Y24_N22
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\RF_A1[2]~input_o\ & (\Mux5~1_combout\)) # (!\RF_A1[2]~input_o\ & ((\Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datac => \Mux5~3_combout\,
	datad => \RF_A1[2]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: IOIBUF_X60_Y23_N22
\RF_D3[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(11),
	o => \RF_D3[11]~input_o\);

-- Location: FF_X41_Y24_N19
\R0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[11]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(11));

-- Location: FF_X39_Y24_N17
\R1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[11]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(11));

-- Location: LCCOMB_X39_Y24_N16
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\RF_A1[1]~input_o\ & (((\RF_A1[0]~input_o\)))) # (!\RF_A1[1]~input_o\ & ((\RF_A1[0]~input_o\ & ((R1(11)))) # (!\RF_A1[0]~input_o\ & (R0(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(11),
	datab => \RF_A1[1]~input_o\,
	datac => R1(11),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: FF_X39_Y24_N19
\R3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[11]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(11));

-- Location: FF_X40_Y24_N3
\R2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[11]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(11));

-- Location: LCCOMB_X39_Y24_N12
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & ((R3(11)) # ((!\RF_A1[1]~input_o\)))) # (!\Mux4~2_combout\ & (((\RF_A1[1]~input_o\ & R2(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => R3(11),
	datac => \RF_A1[1]~input_o\,
	datad => R2(11),
	combout => \Mux4~3_combout\);

-- Location: FF_X40_Y23_N23
\R7[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[11]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(11));

-- Location: FF_X41_Y24_N25
\R4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[11]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(11));

-- Location: FF_X40_Y24_N9
\R6[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[11]~input_o\,
	sload => VCC,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(11));

-- Location: LCCOMB_X41_Y24_N24
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\RF_A1[0]~input_o\ & (\RF_A1[1]~input_o\)) # (!\RF_A1[0]~input_o\ & ((\RF_A1[1]~input_o\ & ((R6(11)))) # (!\RF_A1[1]~input_o\ & (R4(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => \RF_A1[1]~input_o\,
	datac => R4(11),
	datad => R6(11),
	combout => \Mux4~0_combout\);

-- Location: FF_X40_Y23_N29
\R5[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[11]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(11));

-- Location: LCCOMB_X40_Y23_N28
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & ((R7(11)) # ((!\RF_A1[0]~input_o\)))) # (!\Mux4~0_combout\ & (((R5(11) & \RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R7(11),
	datab => \Mux4~0_combout\,
	datac => R5(11),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X39_Y24_N14
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\RF_A1[2]~input_o\ & ((\Mux4~1_combout\))) # (!\RF_A1[2]~input_o\ & (\Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \Mux4~1_combout\,
	datad => \RF_A1[2]~input_o\,
	combout => \Mux4~4_combout\);

-- Location: IOIBUF_X60_Y22_N15
\RF_D3[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(12),
	o => \RF_D3[12]~input_o\);

-- Location: FF_X41_Y24_N7
\R0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[12]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(12));

-- Location: FF_X39_Y24_N1
\R1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[12]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(12));

-- Location: LCCOMB_X39_Y24_N0
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\RF_A1[1]~input_o\ & (((\RF_A1[0]~input_o\)))) # (!\RF_A1[1]~input_o\ & ((\RF_A1[0]~input_o\ & ((R1(12)))) # (!\RF_A1[0]~input_o\ & (R0(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(12),
	datab => \RF_A1[1]~input_o\,
	datac => R1(12),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: FF_X39_Y24_N3
\R3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[12]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(12));

-- Location: FF_X40_Y24_N15
\R2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[12]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(12));

-- Location: LCCOMB_X39_Y24_N20
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & ((R3(12)) # ((!\RF_A1[1]~input_o\)))) # (!\Mux3~2_combout\ & (((R2(12) & \RF_A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => R3(12),
	datac => R2(12),
	datad => \RF_A1[1]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: FF_X41_Y21_N19
\R7[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[12]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(12));

-- Location: FF_X41_Y21_N25
\R5[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[12]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(12));

-- Location: FF_X41_Y24_N29
\R4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[12]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(12));

-- Location: FF_X40_Y24_N13
\R6[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[12]~input_o\,
	sload => VCC,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(12));

-- Location: LCCOMB_X41_Y24_N28
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\RF_A1[0]~input_o\ & (\RF_A1[1]~input_o\)) # (!\RF_A1[0]~input_o\ & ((\RF_A1[1]~input_o\ & ((R6(12)))) # (!\RF_A1[1]~input_o\ & (R4(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => \RF_A1[1]~input_o\,
	datac => R4(12),
	datad => R6(12),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X41_Y21_N24
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\RF_A1[0]~input_o\ & ((\Mux3~0_combout\ & (R7(12))) # (!\Mux3~0_combout\ & ((R5(12)))))) # (!\RF_A1[0]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => R7(12),
	datac => R5(12),
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X40_Y21_N8
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\RF_A1[2]~input_o\ & ((\Mux3~1_combout\))) # (!\RF_A1[2]~input_o\ & (\Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~3_combout\,
	datac => \RF_A1[2]~input_o\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~4_combout\);

-- Location: IOIBUF_X25_Y27_N15
\RF_D3[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(13),
	o => \RF_D3[13]~input_o\);

-- Location: FF_X41_Y24_N1
\R4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[13]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(13));

-- Location: FF_X40_Y24_N25
\R6[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[13]~input_o\,
	sload => VCC,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(13));

-- Location: LCCOMB_X41_Y24_N0
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\RF_A1[0]~input_o\ & (\RF_A1[1]~input_o\)) # (!\RF_A1[0]~input_o\ & ((\RF_A1[1]~input_o\ & ((R6(13)))) # (!\RF_A1[1]~input_o\ & (R4(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => \RF_A1[1]~input_o\,
	datac => R4(13),
	datad => R6(13),
	combout => \Mux2~0_combout\);

-- Location: FF_X40_Y23_N19
\R7[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[13]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(13));

-- Location: FF_X40_Y23_N17
\R5[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[13]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(13));

-- Location: LCCOMB_X40_Y23_N16
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((R7(13)) # ((!\RF_A1[0]~input_o\)))) # (!\Mux2~0_combout\ & (((R5(13) & \RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => R7(13),
	datac => R5(13),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: FF_X40_Y24_N11
\R2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[13]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(13));

-- Location: FF_X41_Y23_N27
\R3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[13]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(13));

-- Location: FF_X41_Y23_N17
\R1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[13]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(13));

-- Location: FF_X41_Y24_N11
\R0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[13]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(13));

-- Location: LCCOMB_X41_Y23_N16
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\RF_A1[0]~input_o\ & ((\RF_A1[1]~input_o\) # ((R1(13))))) # (!\RF_A1[0]~input_o\ & (!\RF_A1[1]~input_o\ & ((R0(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => \RF_A1[1]~input_o\,
	datac => R1(13),
	datad => R0(13),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X40_Y24_N20
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\RF_A1[1]~input_o\ & ((\Mux2~2_combout\ & ((R3(13)))) # (!\Mux2~2_combout\ & (R2(13))))) # (!\RF_A1[1]~input_o\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R2(13),
	datab => R3(13),
	datac => \RF_A1[1]~input_o\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X40_Y24_N6
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\RF_A1[2]~input_o\ & (\Mux2~1_combout\)) # (!\RF_A1[2]~input_o\ & ((\Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[2]~input_o\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: IOIBUF_X60_Y15_N15
\RF_D3[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(14),
	o => \RF_D3[14]~input_o\);

-- Location: FF_X41_Y24_N21
\R4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[14]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(14));

-- Location: FF_X42_Y22_N25
\R6[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[14]~input_o\,
	sload => VCC,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(14));

-- Location: LCCOMB_X41_Y24_N20
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\RF_A1[0]~input_o\ & (\RF_A1[1]~input_o\)) # (!\RF_A1[0]~input_o\ & ((\RF_A1[1]~input_o\ & ((R6(14)))) # (!\RF_A1[1]~input_o\ & (R4(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => \RF_A1[1]~input_o\,
	datac => R4(14),
	datad => R6(14),
	combout => \Mux1~0_combout\);

-- Location: FF_X41_Y21_N5
\R5[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[14]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(14));

-- Location: FF_X41_Y21_N23
\R7[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[14]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(14));

-- Location: LCCOMB_X41_Y21_N4
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\RF_A1[0]~input_o\ & ((\Mux1~0_combout\ & ((R7(14)))) # (!\Mux1~0_combout\ & (R5(14))))) # (!\RF_A1[0]~input_o\ & (\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[0]~input_o\,
	datab => \Mux1~0_combout\,
	datac => R5(14),
	datad => R7(14),
	combout => \Mux1~1_combout\);

-- Location: FF_X41_Y23_N15
\R3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[14]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(14));

-- Location: FF_X41_Y24_N31
\R0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[14]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(14));

-- Location: FF_X41_Y23_N13
\R1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[14]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(14));

-- Location: LCCOMB_X41_Y23_N12
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\RF_A1[1]~input_o\ & (((\RF_A1[0]~input_o\)))) # (!\RF_A1[1]~input_o\ & ((\RF_A1[0]~input_o\ & ((R1(14)))) # (!\RF_A1[0]~input_o\ & (R0(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(14),
	datab => \RF_A1[1]~input_o\,
	datac => R1(14),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: FF_X42_Y22_N11
\R2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[14]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(14));

-- Location: LCCOMB_X41_Y21_N16
\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & ((R3(14)) # ((!\RF_A1[1]~input_o\)))) # (!\Mux1~2_combout\ & (((\RF_A1[1]~input_o\ & R2(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R3(14),
	datab => \Mux1~2_combout\,
	datac => \RF_A1[1]~input_o\,
	datad => R2(14),
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X41_Y21_N26
\Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\RF_A1[2]~input_o\ & (\Mux1~1_combout\)) # (!\RF_A1[2]~input_o\ & ((\Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datac => \RF_A1[2]~input_o\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~4_combout\);

-- Location: IOIBUF_X40_Y0_N1
\RF_D3[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_D3(15),
	o => \RF_D3[15]~input_o\);

-- Location: FF_X38_Y22_N5
\R2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[15]~input_o\,
	sload => VCC,
	ena => \Equal8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R2(15));

-- Location: FF_X38_Y22_N31
\R0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[15]~input_o\,
	sload => VCC,
	ena => \Equal8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R0(15));

-- Location: FF_X41_Y23_N9
\R1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[15]~input_o\,
	sload => VCC,
	ena => \Equal8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1(15));

-- Location: LCCOMB_X41_Y23_N8
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\RF_A1[1]~input_o\ & (((\RF_A1[0]~input_o\)))) # (!\RF_A1[1]~input_o\ & ((\RF_A1[0]~input_o\ & ((R1(15)))) # (!\RF_A1[0]~input_o\ & (R0(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0(15),
	datab => \RF_A1[1]~input_o\,
	datac => R1(15),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: FF_X41_Y23_N3
\R3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[15]~input_o\,
	sload => VCC,
	ena => \Equal8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R3(15));

-- Location: LCCOMB_X41_Y23_N4
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & (((R3(15)) # (!\RF_A1[1]~input_o\)))) # (!\Mux0~2_combout\ & (R2(15) & (\RF_A1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R2(15),
	datab => \Mux0~2_combout\,
	datac => \RF_A1[1]~input_o\,
	datad => R3(15),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X42_Y22_N12
\R6[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R6[15]~feeder_combout\ = \RF_D3[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RF_D3[15]~input_o\,
	combout => \R6[15]~feeder_combout\);

-- Location: FF_X42_Y22_N13
\R6[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R6[15]~feeder_combout\,
	ena => \Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R6(15));

-- Location: FF_X42_Y23_N11
\R4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[15]~input_o\,
	sload => VCC,
	ena => \Equal8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R4(15));

-- Location: LCCOMB_X42_Y23_N10
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\RF_A1[1]~input_o\ & ((R6(15)) # ((\RF_A1[0]~input_o\)))) # (!\RF_A1[1]~input_o\ & (((R4(15) & !\RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A1[1]~input_o\,
	datab => R6(15),
	datac => R4(15),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: FF_X40_Y23_N5
\R7[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[15]~input_o\,
	sload => VCC,
	ena => \Equal8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R7(15));

-- Location: FF_X42_Y23_N25
\R5[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RF_D3[15]~input_o\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R5(15));

-- Location: LCCOMB_X42_Y23_N24
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((R7(15)) # ((!\RF_A1[0]~input_o\)))) # (!\Mux0~0_combout\ & (((R5(15) & \RF_A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => R7(15),
	datac => R5(15),
	datad => \RF_A1[0]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X41_Y23_N22
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\RF_A1[2]~input_o\ & ((\Mux0~1_combout\))) # (!\RF_A1[2]~input_o\ & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF_A1[2]~input_o\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~4_combout\);

-- Location: IOIBUF_X25_Y27_N22
\RF_A2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_A2(2),
	o => \RF_A2[2]~input_o\);

-- Location: IOIBUF_X60_Y23_N8
\RF_A2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_A2(1),
	o => \RF_A2[1]~input_o\);

-- Location: LCCOMB_X40_Y22_N16
\RF_D2[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[0]~0_combout\ = (\RF_A2[2]~input_o\ & (((\RF_A2[1]~input_o\)))) # (!\RF_A2[2]~input_o\ & ((\RF_A2[1]~input_o\ & ((R3(0)))) # (!\RF_A2[1]~input_o\ & (R1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => R1(0),
	datac => R3(0),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[0]~0_combout\);

-- Location: LCCOMB_X39_Y22_N26
\RF_D2[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[0]~1_combout\ = (\RF_A2[2]~input_o\ & ((\RF_D2[0]~0_combout\ & ((R7(0)))) # (!\RF_D2[0]~0_combout\ & (R5(0))))) # (!\RF_A2[2]~input_o\ & (((\RF_D2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R5(0),
	datab => \RF_A2[2]~input_o\,
	datac => R7(0),
	datad => \RF_D2[0]~0_combout\,
	combout => \RF_D2[0]~1_combout\);

-- Location: LCCOMB_X41_Y22_N10
\RF_D2[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[0]~2_combout\ = (\RF_A2[2]~input_o\ & ((\RF_A2[1]~input_o\) # ((R4(0))))) # (!\RF_A2[2]~input_o\ & (!\RF_A2[1]~input_o\ & (R0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => \RF_A2[1]~input_o\,
	datac => R0(0),
	datad => R4(0),
	combout => \RF_D2[0]~2_combout\);

-- Location: LCCOMB_X42_Y22_N16
\RF_D2[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[0]~3_combout\ = (\RF_D2[0]~2_combout\ & ((R6(0)) # ((!\RF_A2[1]~input_o\)))) # (!\RF_D2[0]~2_combout\ & (((R2(0) & \RF_A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[0]~2_combout\,
	datab => R6(0),
	datac => R2(0),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[0]~3_combout\);

-- Location: IOIBUF_X60_Y14_N22
\RF_A2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RF_A2(0),
	o => \RF_A2[0]~input_o\);

-- Location: LCCOMB_X38_Y22_N24
\RF_D2[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[0]~4_combout\ = (\RF_A2[0]~input_o\ & (\RF_D2[0]~1_combout\)) # (!\RF_A2[0]~input_o\ & ((\RF_D2[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[0]~1_combout\,
	datac => \RF_D2[0]~3_combout\,
	datad => \RF_A2[0]~input_o\,
	combout => \RF_D2[0]~4_combout\);

-- Location: LCCOMB_X41_Y22_N22
\RF_D2[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[1]~7_combout\ = (\RF_A2[1]~input_o\ & (((\RF_A2[2]~input_o\)))) # (!\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\ & (R4(1))) # (!\RF_A2[2]~input_o\ & ((R0(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R4(1),
	datab => \RF_A2[1]~input_o\,
	datac => R0(1),
	datad => \RF_A2[2]~input_o\,
	combout => \RF_D2[1]~7_combout\);

-- Location: LCCOMB_X38_Y22_N0
\RF_D2[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[1]~8_combout\ = (\RF_A2[1]~input_o\ & ((\RF_D2[1]~7_combout\ & ((R6(1)))) # (!\RF_D2[1]~7_combout\ & (R2(1))))) # (!\RF_A2[1]~input_o\ & (\RF_D2[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[1]~input_o\,
	datab => \RF_D2[1]~7_combout\,
	datac => R2(1),
	datad => R6(1),
	combout => \RF_D2[1]~8_combout\);

-- Location: LCCOMB_X40_Y22_N10
\RF_D2[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[1]~5_combout\ = (\RF_A2[2]~input_o\ & (((\RF_A2[1]~input_o\)))) # (!\RF_A2[2]~input_o\ & ((\RF_A2[1]~input_o\ & ((R3(1)))) # (!\RF_A2[1]~input_o\ & (R1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => R1(1),
	datac => R3(1),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[1]~5_combout\);

-- Location: LCCOMB_X39_Y22_N10
\RF_D2[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[1]~6_combout\ = (\RF_D2[1]~5_combout\ & (((R7(1))) # (!\RF_A2[2]~input_o\))) # (!\RF_D2[1]~5_combout\ & (\RF_A2[2]~input_o\ & ((R5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[1]~5_combout\,
	datab => \RF_A2[2]~input_o\,
	datac => R7(1),
	datad => R5(1),
	combout => \RF_D2[1]~6_combout\);

-- Location: LCCOMB_X39_Y22_N28
\RF_D2[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[1]~9_combout\ = (\RF_A2[0]~input_o\ & ((\RF_D2[1]~6_combout\))) # (!\RF_A2[0]~input_o\ & (\RF_D2[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF_D2[1]~8_combout\,
	datac => \RF_A2[0]~input_o\,
	datad => \RF_D2[1]~6_combout\,
	combout => \RF_D2[1]~9_combout\);

-- Location: LCCOMB_X41_Y22_N26
\RF_D2[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[2]~12_combout\ = (\RF_A2[1]~input_o\ & (((\RF_A2[2]~input_o\)))) # (!\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\ & (R4(2))) # (!\RF_A2[2]~input_o\ & ((R0(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R4(2),
	datab => \RF_A2[1]~input_o\,
	datac => R0(2),
	datad => \RF_A2[2]~input_o\,
	combout => \RF_D2[2]~12_combout\);

-- Location: LCCOMB_X42_Y22_N26
\RF_D2[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[2]~13_combout\ = (\RF_D2[2]~12_combout\ & ((R6(2)) # ((!\RF_A2[1]~input_o\)))) # (!\RF_D2[2]~12_combout\ & (((R2(2) & \RF_A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[2]~12_combout\,
	datab => R6(2),
	datac => R2(2),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[2]~13_combout\);

-- Location: LCCOMB_X40_Y22_N20
\RF_D2[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[2]~10_combout\ = (\RF_A2[2]~input_o\ & (((\RF_A2[1]~input_o\)))) # (!\RF_A2[2]~input_o\ & ((\RF_A2[1]~input_o\ & ((R3(2)))) # (!\RF_A2[1]~input_o\ & (R1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => R1(2),
	datac => R3(2),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[2]~10_combout\);

-- Location: LCCOMB_X41_Y21_N2
\RF_D2[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[2]~11_combout\ = (\RF_A2[2]~input_o\ & ((\RF_D2[2]~10_combout\ & (R7(2))) # (!\RF_D2[2]~10_combout\ & ((R5(2)))))) # (!\RF_A2[2]~input_o\ & (\RF_D2[2]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => \RF_D2[2]~10_combout\,
	datac => R7(2),
	datad => R5(2),
	combout => \RF_D2[2]~11_combout\);

-- Location: LCCOMB_X41_Y21_N20
\RF_D2[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[2]~14_combout\ = (\RF_A2[0]~input_o\ & ((\RF_D2[2]~11_combout\))) # (!\RF_A2[0]~input_o\ & (\RF_D2[2]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[2]~13_combout\,
	datac => \RF_D2[2]~11_combout\,
	datad => \RF_A2[0]~input_o\,
	combout => \RF_D2[2]~14_combout\);

-- Location: LCCOMB_X41_Y22_N30
\RF_D2[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[3]~17_combout\ = (\RF_A2[1]~input_o\ & (((\RF_A2[2]~input_o\)))) # (!\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\ & (R4(3))) # (!\RF_A2[2]~input_o\ & ((R0(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R4(3),
	datab => \RF_A2[1]~input_o\,
	datac => R0(3),
	datad => \RF_A2[2]~input_o\,
	combout => \RF_D2[3]~17_combout\);

-- Location: LCCOMB_X42_Y22_N4
\RF_D2[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[3]~18_combout\ = (\RF_D2[3]~17_combout\ & ((R6(3)) # ((!\RF_A2[1]~input_o\)))) # (!\RF_D2[3]~17_combout\ & (((R2(3) & \RF_A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R6(3),
	datab => \RF_D2[3]~17_combout\,
	datac => R2(3),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[3]~18_combout\);

-- Location: LCCOMB_X40_Y22_N30
\RF_D2[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[3]~15_combout\ = (\RF_A2[2]~input_o\ & (((\RF_A2[1]~input_o\)))) # (!\RF_A2[2]~input_o\ & ((\RF_A2[1]~input_o\ & ((R3(3)))) # (!\RF_A2[1]~input_o\ & (R1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => R1(3),
	datac => R3(3),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[3]~15_combout\);

-- Location: LCCOMB_X39_Y22_N18
\RF_D2[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[3]~16_combout\ = (\RF_D2[3]~15_combout\ & (((R7(3))) # (!\RF_A2[2]~input_o\))) # (!\RF_D2[3]~15_combout\ & (\RF_A2[2]~input_o\ & ((R5(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[3]~15_combout\,
	datab => \RF_A2[2]~input_o\,
	datac => R7(3),
	datad => R5(3),
	combout => \RF_D2[3]~16_combout\);

-- Location: LCCOMB_X42_Y22_N14
\RF_D2[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[3]~19_combout\ = (\RF_A2[0]~input_o\ & ((\RF_D2[3]~16_combout\))) # (!\RF_A2[0]~input_o\ & (\RF_D2[3]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF_D2[3]~18_combout\,
	datac => \RF_A2[0]~input_o\,
	datad => \RF_D2[3]~16_combout\,
	combout => \RF_D2[3]~19_combout\);

-- Location: LCCOMB_X40_Y22_N0
\RF_D2[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[4]~20_combout\ = (\RF_A2[2]~input_o\ & (((\RF_A2[1]~input_o\)))) # (!\RF_A2[2]~input_o\ & ((\RF_A2[1]~input_o\ & ((R3(4)))) # (!\RF_A2[1]~input_o\ & (R1(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => R1(4),
	datac => R3(4),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[4]~20_combout\);

-- Location: LCCOMB_X40_Y23_N2
\RF_D2[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[4]~21_combout\ = (\RF_A2[2]~input_o\ & ((\RF_D2[4]~20_combout\ & ((R7(4)))) # (!\RF_D2[4]~20_combout\ & (R5(4))))) # (!\RF_A2[2]~input_o\ & (((\RF_D2[4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => R5(4),
	datac => R7(4),
	datad => \RF_D2[4]~20_combout\,
	combout => \RF_D2[4]~21_combout\);

-- Location: LCCOMB_X41_Y22_N28
\RF_D2[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[4]~22_combout\ = (\RF_A2[1]~input_o\ & (((\RF_A2[2]~input_o\)))) # (!\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\ & (R4(4))) # (!\RF_A2[2]~input_o\ & ((R0(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R4(4),
	datab => \RF_A2[1]~input_o\,
	datac => R0(4),
	datad => \RF_A2[2]~input_o\,
	combout => \RF_D2[4]~22_combout\);

-- Location: LCCOMB_X38_Y22_N26
\RF_D2[4]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[4]~23_combout\ = (\RF_D2[4]~22_combout\ & ((R6(4)) # ((!\RF_A2[1]~input_o\)))) # (!\RF_D2[4]~22_combout\ & (((R2(4) & \RF_A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R6(4),
	datab => \RF_D2[4]~22_combout\,
	datac => R2(4),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[4]~23_combout\);

-- Location: LCCOMB_X38_Y22_N10
\RF_D2[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[4]~24_combout\ = (\RF_A2[0]~input_o\ & (\RF_D2[4]~21_combout\)) # (!\RF_A2[0]~input_o\ & ((\RF_D2[4]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[4]~21_combout\,
	datac => \RF_D2[4]~23_combout\,
	datad => \RF_A2[0]~input_o\,
	combout => \RF_D2[4]~24_combout\);

-- Location: LCCOMB_X41_Y22_N12
\RF_D2[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[5]~27_combout\ = (\RF_A2[1]~input_o\ & (((\RF_A2[2]~input_o\)))) # (!\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\ & (R4(5))) # (!\RF_A2[2]~input_o\ & ((R0(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R4(5),
	datab => \RF_A2[1]~input_o\,
	datac => R0(5),
	datad => \RF_A2[2]~input_o\,
	combout => \RF_D2[5]~27_combout\);

-- Location: LCCOMB_X42_Y22_N30
\RF_D2[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[5]~28_combout\ = (\RF_D2[5]~27_combout\ & ((R6(5)) # ((!\RF_A2[1]~input_o\)))) # (!\RF_D2[5]~27_combout\ & (((R2(5) & \RF_A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[5]~27_combout\,
	datab => R6(5),
	datac => R2(5),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[5]~28_combout\);

-- Location: LCCOMB_X40_Y22_N18
\RF_D2[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[5]~25_combout\ = (\RF_A2[2]~input_o\ & (((\RF_A2[1]~input_o\)))) # (!\RF_A2[2]~input_o\ & ((\RF_A2[1]~input_o\ & ((R3(5)))) # (!\RF_A2[1]~input_o\ & (R1(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R1(5),
	datab => \RF_A2[2]~input_o\,
	datac => R3(5),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[5]~25_combout\);

-- Location: LCCOMB_X39_Y22_N16
\RF_D2[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[5]~26_combout\ = (\RF_A2[2]~input_o\ & ((\RF_D2[5]~25_combout\ & ((R7(5)))) # (!\RF_D2[5]~25_combout\ & (R5(5))))) # (!\RF_A2[2]~input_o\ & (((\RF_D2[5]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R5(5),
	datab => \RF_A2[2]~input_o\,
	datac => R7(5),
	datad => \RF_D2[5]~25_combout\,
	combout => \RF_D2[5]~26_combout\);

-- Location: LCCOMB_X42_Y22_N8
\RF_D2[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[5]~29_combout\ = (\RF_A2[0]~input_o\ & ((\RF_D2[5]~26_combout\))) # (!\RF_A2[0]~input_o\ & (\RF_D2[5]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[5]~28_combout\,
	datac => \RF_A2[0]~input_o\,
	datad => \RF_D2[5]~26_combout\,
	combout => \RF_D2[5]~29_combout\);

-- Location: LCCOMB_X41_Y23_N18
\RF_D2[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[6]~30_combout\ = (\RF_A2[1]~input_o\ & (((R3(6)) # (\RF_A2[2]~input_o\)))) # (!\RF_A2[1]~input_o\ & (R1(6) & ((!\RF_A2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[1]~input_o\,
	datab => R1(6),
	datac => R3(6),
	datad => \RF_A2[2]~input_o\,
	combout => \RF_D2[6]~30_combout\);

-- Location: LCCOMB_X40_Y23_N6
\RF_D2[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[6]~31_combout\ = (\RF_A2[2]~input_o\ & ((\RF_D2[6]~30_combout\ & (R7(6))) # (!\RF_D2[6]~30_combout\ & ((R5(6)))))) # (!\RF_A2[2]~input_o\ & (\RF_D2[6]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => \RF_D2[6]~30_combout\,
	datac => R7(6),
	datad => R5(6),
	combout => \RF_D2[6]~31_combout\);

-- Location: LCCOMB_X41_Y24_N16
\RF_D2[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[6]~32_combout\ = (\RF_A2[2]~input_o\ & ((R4(6)) # ((\RF_A2[1]~input_o\)))) # (!\RF_A2[2]~input_o\ & (((R0(6) & !\RF_A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R4(6),
	datab => \RF_A2[2]~input_o\,
	datac => R0(6),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[6]~32_combout\);

-- Location: LCCOMB_X42_Y22_N0
\RF_D2[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[6]~33_combout\ = (\RF_D2[6]~32_combout\ & ((R6(6)) # ((!\RF_A2[1]~input_o\)))) # (!\RF_D2[6]~32_combout\ & (((R2(6) & \RF_A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R6(6),
	datab => \RF_D2[6]~32_combout\,
	datac => R2(6),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[6]~33_combout\);

-- Location: LCCOMB_X42_Y22_N2
\RF_D2[6]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[6]~34_combout\ = (\RF_A2[0]~input_o\ & (\RF_D2[6]~31_combout\)) # (!\RF_A2[0]~input_o\ & ((\RF_D2[6]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF_D2[6]~31_combout\,
	datac => \RF_A2[0]~input_o\,
	datad => \RF_D2[6]~33_combout\,
	combout => \RF_D2[6]~34_combout\);

-- Location: LCCOMB_X40_Y22_N14
\RF_D2[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[7]~35_combout\ = (\RF_A2[2]~input_o\ & (((\RF_A2[1]~input_o\)))) # (!\RF_A2[2]~input_o\ & ((\RF_A2[1]~input_o\ & ((R3(7)))) # (!\RF_A2[1]~input_o\ & (R1(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => R1(7),
	datac => R3(7),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[7]~35_combout\);

-- Location: LCCOMB_X41_Y21_N10
\RF_D2[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[7]~36_combout\ = (\RF_A2[2]~input_o\ & ((\RF_D2[7]~35_combout\ & (R7(7))) # (!\RF_D2[7]~35_combout\ & ((R5(7)))))) # (!\RF_A2[2]~input_o\ & (\RF_D2[7]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => \RF_D2[7]~35_combout\,
	datac => R7(7),
	datad => R5(7),
	combout => \RF_D2[7]~36_combout\);

-- Location: LCCOMB_X41_Y24_N26
\RF_D2[7]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[7]~37_combout\ = (\RF_A2[2]~input_o\ & ((R4(7)) # ((\RF_A2[1]~input_o\)))) # (!\RF_A2[2]~input_o\ & (((R0(7) & !\RF_A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R4(7),
	datab => \RF_A2[2]~input_o\,
	datac => R0(7),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[7]~37_combout\);

-- Location: LCCOMB_X42_Y22_N18
\RF_D2[7]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[7]~38_combout\ = (\RF_A2[1]~input_o\ & ((\RF_D2[7]~37_combout\ & (R6(7))) # (!\RF_D2[7]~37_combout\ & ((R2(7)))))) # (!\RF_A2[1]~input_o\ & (((\RF_D2[7]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R6(7),
	datab => \RF_A2[1]~input_o\,
	datac => R2(7),
	datad => \RF_D2[7]~37_combout\,
	combout => \RF_D2[7]~38_combout\);

-- Location: LCCOMB_X42_Y22_N20
\RF_D2[7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[7]~39_combout\ = (\RF_A2[0]~input_o\ & (\RF_D2[7]~36_combout\)) # (!\RF_A2[0]~input_o\ & ((\RF_D2[7]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[7]~36_combout\,
	datac => \RF_A2[0]~input_o\,
	datad => \RF_D2[7]~38_combout\,
	combout => \RF_D2[7]~39_combout\);

-- Location: LCCOMB_X39_Y24_N10
\RF_D2[8]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[8]~40_combout\ = (\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\) # ((R3(8))))) # (!\RF_A2[1]~input_o\ & (!\RF_A2[2]~input_o\ & ((R1(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[1]~input_o\,
	datab => \RF_A2[2]~input_o\,
	datac => R3(8),
	datad => R1(8),
	combout => \RF_D2[8]~40_combout\);

-- Location: LCCOMB_X40_Y23_N26
\RF_D2[8]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[8]~41_combout\ = (\RF_A2[2]~input_o\ & ((\RF_D2[8]~40_combout\ & (R7(8))) # (!\RF_D2[8]~40_combout\ & ((R5(8)))))) # (!\RF_A2[2]~input_o\ & (\RF_D2[8]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => \RF_D2[8]~40_combout\,
	datac => R7(8),
	datad => R5(8),
	combout => \RF_D2[8]~41_combout\);

-- Location: LCCOMB_X41_Y24_N14
\RF_D2[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[8]~42_combout\ = (\RF_A2[2]~input_o\ & ((R4(8)) # ((\RF_A2[1]~input_o\)))) # (!\RF_A2[2]~input_o\ & (((R0(8) & !\RF_A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => R4(8),
	datac => R0(8),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[8]~42_combout\);

-- Location: LCCOMB_X40_Y24_N18
\RF_D2[8]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[8]~43_combout\ = (\RF_A2[1]~input_o\ & ((\RF_D2[8]~42_combout\ & (R6(8))) # (!\RF_D2[8]~42_combout\ & ((R2(8)))))) # (!\RF_A2[1]~input_o\ & (((\RF_D2[8]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R6(8),
	datab => \RF_A2[1]~input_o\,
	datac => R2(8),
	datad => \RF_D2[8]~42_combout\,
	combout => \RF_D2[8]~43_combout\);

-- Location: LCCOMB_X40_Y24_N16
\RF_D2[8]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[8]~44_combout\ = (\RF_A2[0]~input_o\ & (\RF_D2[8]~41_combout\)) # (!\RF_A2[0]~input_o\ & ((\RF_D2[8]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[8]~41_combout\,
	datab => \RF_A2[0]~input_o\,
	datad => \RF_D2[8]~43_combout\,
	combout => \RF_D2[8]~44_combout\);

-- Location: LCCOMB_X41_Y24_N2
\RF_D2[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[9]~47_combout\ = (\RF_A2[1]~input_o\ & (((\RF_A2[2]~input_o\)))) # (!\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\ & (R4(9))) # (!\RF_A2[2]~input_o\ & ((R0(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[1]~input_o\,
	datab => R4(9),
	datac => R0(9),
	datad => \RF_A2[2]~input_o\,
	combout => \RF_D2[9]~47_combout\);

-- Location: LCCOMB_X42_Y22_N22
\RF_D2[9]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[9]~48_combout\ = (\RF_D2[9]~47_combout\ & ((R6(9)) # ((!\RF_A2[1]~input_o\)))) # (!\RF_D2[9]~47_combout\ & (((R2(9) & \RF_A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[9]~47_combout\,
	datab => R6(9),
	datac => R2(9),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[9]~48_combout\);

-- Location: LCCOMB_X41_Y23_N10
\RF_D2[9]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[9]~45_combout\ = (\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\) # ((R3(9))))) # (!\RF_A2[1]~input_o\ & (!\RF_A2[2]~input_o\ & ((R1(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[1]~input_o\,
	datab => \RF_A2[2]~input_o\,
	datac => R3(9),
	datad => R1(9),
	combout => \RF_D2[9]~45_combout\);

-- Location: LCCOMB_X40_Y23_N30
\RF_D2[9]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[9]~46_combout\ = (\RF_A2[2]~input_o\ & ((\RF_D2[9]~45_combout\ & ((R7(9)))) # (!\RF_D2[9]~45_combout\ & (R5(9))))) # (!\RF_A2[2]~input_o\ & (((\RF_D2[9]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => R5(9),
	datac => R7(9),
	datad => \RF_D2[9]~45_combout\,
	combout => \RF_D2[9]~46_combout\);

-- Location: LCCOMB_X42_Y22_N6
\RF_D2[9]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[9]~49_combout\ = (\RF_A2[0]~input_o\ & ((\RF_D2[9]~46_combout\))) # (!\RF_A2[0]~input_o\ & (\RF_D2[9]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[9]~48_combout\,
	datac => \RF_A2[0]~input_o\,
	datad => \RF_D2[9]~46_combout\,
	combout => \RF_D2[9]~49_combout\);

-- Location: LCCOMB_X41_Y24_N22
\RF_D2[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[10]~52_combout\ = (\RF_A2[1]~input_o\ & (\RF_A2[2]~input_o\)) # (!\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\ & ((R4(10)))) # (!\RF_A2[2]~input_o\ & (R0(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[1]~input_o\,
	datab => \RF_A2[2]~input_o\,
	datac => R0(10),
	datad => R4(10),
	combout => \RF_D2[10]~52_combout\);

-- Location: LCCOMB_X40_Y24_N22
\RF_D2[10]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[10]~53_combout\ = (\RF_A2[1]~input_o\ & ((\RF_D2[10]~52_combout\ & (R6(10))) # (!\RF_D2[10]~52_combout\ & ((R2(10)))))) # (!\RF_A2[1]~input_o\ & (((\RF_D2[10]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R6(10),
	datab => \RF_A2[1]~input_o\,
	datac => R2(10),
	datad => \RF_D2[10]~52_combout\,
	combout => \RF_D2[10]~53_combout\);

-- Location: LCCOMB_X39_Y24_N26
\RF_D2[10]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[10]~50_combout\ = (\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\) # ((R3(10))))) # (!\RF_A2[1]~input_o\ & (!\RF_A2[2]~input_o\ & ((R1(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[1]~input_o\,
	datab => \RF_A2[2]~input_o\,
	datac => R3(10),
	datad => R1(10),
	combout => \RF_D2[10]~50_combout\);

-- Location: LCCOMB_X40_Y23_N10
\RF_D2[10]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[10]~51_combout\ = (\RF_D2[10]~50_combout\ & (((R7(10)) # (!\RF_A2[2]~input_o\)))) # (!\RF_D2[10]~50_combout\ & (R5(10) & ((\RF_A2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[10]~50_combout\,
	datab => R5(10),
	datac => R7(10),
	datad => \RF_A2[2]~input_o\,
	combout => \RF_D2[10]~51_combout\);

-- Location: LCCOMB_X40_Y23_N14
\RF_D2[10]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[10]~54_combout\ = (\RF_A2[0]~input_o\ & ((\RF_D2[10]~51_combout\))) # (!\RF_A2[0]~input_o\ & (\RF_D2[10]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[10]~53_combout\,
	datac => \RF_A2[0]~input_o\,
	datad => \RF_D2[10]~51_combout\,
	combout => \RF_D2[10]~54_combout\);

-- Location: LCCOMB_X41_Y24_N18
\RF_D2[11]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[11]~57_combout\ = (\RF_A2[1]~input_o\ & (\RF_A2[2]~input_o\)) # (!\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\ & ((R4(11)))) # (!\RF_A2[2]~input_o\ & (R0(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[1]~input_o\,
	datab => \RF_A2[2]~input_o\,
	datac => R0(11),
	datad => R4(11),
	combout => \RF_D2[11]~57_combout\);

-- Location: LCCOMB_X40_Y24_N2
\RF_D2[11]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[11]~58_combout\ = (\RF_A2[1]~input_o\ & ((\RF_D2[11]~57_combout\ & (R6(11))) # (!\RF_D2[11]~57_combout\ & ((R2(11)))))) # (!\RF_A2[1]~input_o\ & (((\RF_D2[11]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R6(11),
	datab => \RF_A2[1]~input_o\,
	datac => R2(11),
	datad => \RF_D2[11]~57_combout\,
	combout => \RF_D2[11]~58_combout\);

-- Location: LCCOMB_X39_Y24_N18
\RF_D2[11]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[11]~55_combout\ = (\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\) # ((R3(11))))) # (!\RF_A2[1]~input_o\ & (!\RF_A2[2]~input_o\ & ((R1(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[1]~input_o\,
	datab => \RF_A2[2]~input_o\,
	datac => R3(11),
	datad => R1(11),
	combout => \RF_D2[11]~55_combout\);

-- Location: LCCOMB_X40_Y23_N22
\RF_D2[11]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[11]~56_combout\ = (\RF_A2[2]~input_o\ & ((\RF_D2[11]~55_combout\ & (R7(11))) # (!\RF_D2[11]~55_combout\ & ((R5(11)))))) # (!\RF_A2[2]~input_o\ & (\RF_D2[11]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => \RF_D2[11]~55_combout\,
	datac => R7(11),
	datad => R5(11),
	combout => \RF_D2[11]~56_combout\);

-- Location: LCCOMB_X40_Y24_N26
\RF_D2[11]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[11]~59_combout\ = (\RF_A2[0]~input_o\ & ((\RF_D2[11]~56_combout\))) # (!\RF_A2[0]~input_o\ & (\RF_D2[11]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF_D2[11]~58_combout\,
	datac => \RF_D2[11]~56_combout\,
	datad => \RF_A2[0]~input_o\,
	combout => \RF_D2[11]~59_combout\);

-- Location: LCCOMB_X39_Y24_N2
\RF_D2[12]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[12]~60_combout\ = (\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\) # ((R3(12))))) # (!\RF_A2[1]~input_o\ & (!\RF_A2[2]~input_o\ & ((R1(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[1]~input_o\,
	datab => \RF_A2[2]~input_o\,
	datac => R3(12),
	datad => R1(12),
	combout => \RF_D2[12]~60_combout\);

-- Location: LCCOMB_X41_Y21_N18
\RF_D2[12]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[12]~61_combout\ = (\RF_A2[2]~input_o\ & ((\RF_D2[12]~60_combout\ & (R7(12))) # (!\RF_D2[12]~60_combout\ & ((R5(12)))))) # (!\RF_A2[2]~input_o\ & (\RF_D2[12]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => \RF_D2[12]~60_combout\,
	datac => R7(12),
	datad => R5(12),
	combout => \RF_D2[12]~61_combout\);

-- Location: LCCOMB_X41_Y24_N6
\RF_D2[12]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[12]~62_combout\ = (\RF_A2[1]~input_o\ & (((\RF_A2[2]~input_o\)))) # (!\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\ & (R4(12))) # (!\RF_A2[2]~input_o\ & ((R0(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[1]~input_o\,
	datab => R4(12),
	datac => R0(12),
	datad => \RF_A2[2]~input_o\,
	combout => \RF_D2[12]~62_combout\);

-- Location: LCCOMB_X40_Y24_N14
\RF_D2[12]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[12]~63_combout\ = (\RF_A2[1]~input_o\ & ((\RF_D2[12]~62_combout\ & (R6(12))) # (!\RF_D2[12]~62_combout\ & ((R2(12)))))) # (!\RF_A2[1]~input_o\ & (((\RF_D2[12]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R6(12),
	datab => \RF_A2[1]~input_o\,
	datac => R2(12),
	datad => \RF_D2[12]~62_combout\,
	combout => \RF_D2[12]~63_combout\);

-- Location: LCCOMB_X40_Y24_N28
\RF_D2[12]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[12]~64_combout\ = (\RF_A2[0]~input_o\ & (\RF_D2[12]~61_combout\)) # (!\RF_A2[0]~input_o\ & ((\RF_D2[12]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[12]~61_combout\,
	datac => \RF_D2[12]~63_combout\,
	datad => \RF_A2[0]~input_o\,
	combout => \RF_D2[12]~64_combout\);

-- Location: LCCOMB_X41_Y23_N26
\RF_D2[13]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[13]~65_combout\ = (\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\) # ((R3(13))))) # (!\RF_A2[1]~input_o\ & (!\RF_A2[2]~input_o\ & ((R1(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[1]~input_o\,
	datab => \RF_A2[2]~input_o\,
	datac => R3(13),
	datad => R1(13),
	combout => \RF_D2[13]~65_combout\);

-- Location: LCCOMB_X40_Y23_N18
\RF_D2[13]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[13]~66_combout\ = (\RF_A2[2]~input_o\ & ((\RF_D2[13]~65_combout\ & ((R7(13)))) # (!\RF_D2[13]~65_combout\ & (R5(13))))) # (!\RF_A2[2]~input_o\ & (((\RF_D2[13]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => R5(13),
	datac => R7(13),
	datad => \RF_D2[13]~65_combout\,
	combout => \RF_D2[13]~66_combout\);

-- Location: LCCOMB_X41_Y24_N10
\RF_D2[13]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[13]~67_combout\ = (\RF_A2[1]~input_o\ & (\RF_A2[2]~input_o\)) # (!\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\ & ((R4(13)))) # (!\RF_A2[2]~input_o\ & (R0(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[1]~input_o\,
	datab => \RF_A2[2]~input_o\,
	datac => R0(13),
	datad => R4(13),
	combout => \RF_D2[13]~67_combout\);

-- Location: LCCOMB_X40_Y24_N10
\RF_D2[13]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[13]~68_combout\ = (\RF_D2[13]~67_combout\ & (((R6(13))) # (!\RF_A2[1]~input_o\))) # (!\RF_D2[13]~67_combout\ & (\RF_A2[1]~input_o\ & (R2(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[13]~67_combout\,
	datab => \RF_A2[1]~input_o\,
	datac => R2(13),
	datad => R6(13),
	combout => \RF_D2[13]~68_combout\);

-- Location: LCCOMB_X40_Y24_N30
\RF_D2[13]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[13]~69_combout\ = (\RF_A2[0]~input_o\ & (\RF_D2[13]~66_combout\)) # (!\RF_A2[0]~input_o\ & ((\RF_D2[13]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[13]~66_combout\,
	datab => \RF_D2[13]~68_combout\,
	datad => \RF_A2[0]~input_o\,
	combout => \RF_D2[13]~69_combout\);

-- Location: LCCOMB_X41_Y24_N30
\RF_D2[14]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[14]~72_combout\ = (\RF_A2[1]~input_o\ & (\RF_A2[2]~input_o\)) # (!\RF_A2[1]~input_o\ & ((\RF_A2[2]~input_o\ & ((R4(14)))) # (!\RF_A2[2]~input_o\ & (R0(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[1]~input_o\,
	datab => \RF_A2[2]~input_o\,
	datac => R0(14),
	datad => R4(14),
	combout => \RF_D2[14]~72_combout\);

-- Location: LCCOMB_X42_Y22_N10
\RF_D2[14]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[14]~73_combout\ = (\RF_D2[14]~72_combout\ & ((R6(14)) # ((!\RF_A2[1]~input_o\)))) # (!\RF_D2[14]~72_combout\ & (((R2(14) & \RF_A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[14]~72_combout\,
	datab => R6(14),
	datac => R2(14),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[14]~73_combout\);

-- Location: LCCOMB_X41_Y23_N14
\RF_D2[14]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[14]~70_combout\ = (\RF_A2[2]~input_o\ & (((\RF_A2[1]~input_o\)))) # (!\RF_A2[2]~input_o\ & ((\RF_A2[1]~input_o\ & ((R3(14)))) # (!\RF_A2[1]~input_o\ & (R1(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R1(14),
	datab => \RF_A2[2]~input_o\,
	datac => R3(14),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[14]~70_combout\);

-- Location: LCCOMB_X41_Y21_N22
\RF_D2[14]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[14]~71_combout\ = (\RF_A2[2]~input_o\ & ((\RF_D2[14]~70_combout\ & ((R7(14)))) # (!\RF_D2[14]~70_combout\ & (R5(14))))) # (!\RF_A2[2]~input_o\ & (((\RF_D2[14]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => R5(14),
	datac => R7(14),
	datad => \RF_D2[14]~70_combout\,
	combout => \RF_D2[14]~71_combout\);

-- Location: LCCOMB_X41_Y21_N14
\RF_D2[14]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[14]~74_combout\ = (\RF_A2[0]~input_o\ & ((\RF_D2[14]~71_combout\))) # (!\RF_A2[0]~input_o\ & (\RF_D2[14]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[14]~73_combout\,
	datac => \RF_D2[14]~71_combout\,
	datad => \RF_A2[0]~input_o\,
	combout => \RF_D2[14]~74_combout\);

-- Location: LCCOMB_X41_Y23_N2
\RF_D2[15]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[15]~75_combout\ = (\RF_A2[2]~input_o\ & (((\RF_A2[1]~input_o\)))) # (!\RF_A2[2]~input_o\ & ((\RF_A2[1]~input_o\ & ((R3(15)))) # (!\RF_A2[1]~input_o\ & (R1(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R1(15),
	datab => \RF_A2[2]~input_o\,
	datac => R3(15),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[15]~75_combout\);

-- Location: LCCOMB_X40_Y23_N4
\RF_D2[15]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[15]~76_combout\ = (\RF_A2[2]~input_o\ & ((\RF_D2[15]~75_combout\ & (R7(15))) # (!\RF_D2[15]~75_combout\ & ((R5(15)))))) # (!\RF_A2[2]~input_o\ & (\RF_D2[15]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => \RF_D2[15]~75_combout\,
	datac => R7(15),
	datad => R5(15),
	combout => \RF_D2[15]~76_combout\);

-- Location: LCCOMB_X38_Y22_N30
\RF_D2[15]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[15]~77_combout\ = (\RF_A2[2]~input_o\ & ((R4(15)) # ((\RF_A2[1]~input_o\)))) # (!\RF_A2[2]~input_o\ & (((R0(15) & !\RF_A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_A2[2]~input_o\,
	datab => R4(15),
	datac => R0(15),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[15]~77_combout\);

-- Location: LCCOMB_X38_Y22_N4
\RF_D2[15]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[15]~78_combout\ = (\RF_D2[15]~77_combout\ & ((R6(15)) # ((!\RF_A2[1]~input_o\)))) # (!\RF_D2[15]~77_combout\ & (((R2(15) & \RF_A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_D2[15]~77_combout\,
	datab => R6(15),
	datac => R2(15),
	datad => \RF_A2[1]~input_o\,
	combout => \RF_D2[15]~78_combout\);

-- Location: LCCOMB_X38_Y22_N12
\RF_D2[15]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RF_D2[15]~79_combout\ = (\RF_A2[0]~input_o\ & (\RF_D2[15]~76_combout\)) # (!\RF_A2[0]~input_o\ & ((\RF_D2[15]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF_D2[15]~76_combout\,
	datac => \RF_D2[15]~78_combout\,
	datad => \RF_A2[0]~input_o\,
	combout => \RF_D2[15]~79_combout\);

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_RF_D1(0) <= \RF_D1[0]~output_o\;

ww_RF_D1(1) <= \RF_D1[1]~output_o\;

ww_RF_D1(2) <= \RF_D1[2]~output_o\;

ww_RF_D1(3) <= \RF_D1[3]~output_o\;

ww_RF_D1(4) <= \RF_D1[4]~output_o\;

ww_RF_D1(5) <= \RF_D1[5]~output_o\;

ww_RF_D1(6) <= \RF_D1[6]~output_o\;

ww_RF_D1(7) <= \RF_D1[7]~output_o\;

ww_RF_D1(8) <= \RF_D1[8]~output_o\;

ww_RF_D1(9) <= \RF_D1[9]~output_o\;

ww_RF_D1(10) <= \RF_D1[10]~output_o\;

ww_RF_D1(11) <= \RF_D1[11]~output_o\;

ww_RF_D1(12) <= \RF_D1[12]~output_o\;

ww_RF_D1(13) <= \RF_D1[13]~output_o\;

ww_RF_D1(14) <= \RF_D1[14]~output_o\;

ww_RF_D1(15) <= \RF_D1[15]~output_o\;

ww_RF_D2(0) <= \RF_D2[0]~output_o\;

ww_RF_D2(1) <= \RF_D2[1]~output_o\;

ww_RF_D2(2) <= \RF_D2[2]~output_o\;

ww_RF_D2(3) <= \RF_D2[3]~output_o\;

ww_RF_D2(4) <= \RF_D2[4]~output_o\;

ww_RF_D2(5) <= \RF_D2[5]~output_o\;

ww_RF_D2(6) <= \RF_D2[6]~output_o\;

ww_RF_D2(7) <= \RF_D2[7]~output_o\;

ww_RF_D2(8) <= \RF_D2[8]~output_o\;

ww_RF_D2(9) <= \RF_D2[9]~output_o\;

ww_RF_D2(10) <= \RF_D2[10]~output_o\;

ww_RF_D2(11) <= \RF_D2[11]~output_o\;

ww_RF_D2(12) <= \RF_D2[12]~output_o\;

ww_RF_D2(13) <= \RF_D2[13]~output_o\;

ww_RF_D2(14) <= \RF_D2[14]~output_o\;

ww_RF_D2(15) <= \RF_D2[15]~output_o\;
END structure;


