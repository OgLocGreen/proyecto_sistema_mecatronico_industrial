-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "05/04/2023 19:48:44"

-- 
-- Device: Altera 10M08SAU169C8GES Package UFBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	GeneralControlScheme_v2 IS
    PORT (
	step : OUT std_logic;
	reloj : IN std_logic;
	pin_serial : IN std_logic;
	dir : OUT std_logic;
	enable : OUT std_logic;
	pwm_servo : OUT std_logic;
	leds : OUT std_logic_vector(7 DOWNTO 0)
	);
END GeneralControlScheme_v2;

-- Design Ports Information
-- step	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_servo	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_serial	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF GeneralControlScheme_v2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_step : std_logic;
SIGNAL ww_reloj : std_logic;
SIGNAL ww_pin_serial : std_logic;
SIGNAL ww_dir : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_pwm_servo : std_logic;
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|cnt[0]~31_combout\ : std_logic;
SIGNAL \inst|cnt[0]~32\ : std_logic;
SIGNAL \inst|cnt[1]~33_combout\ : std_logic;
SIGNAL \inst|cnt[1]~34\ : std_logic;
SIGNAL \inst|cnt[2]~35_combout\ : std_logic;
SIGNAL \inst|cnt[2]~36\ : std_logic;
SIGNAL \inst|cnt[3]~37_combout\ : std_logic;
SIGNAL \inst|cnt[3]~38\ : std_logic;
SIGNAL \inst|cnt[4]~39_combout\ : std_logic;
SIGNAL \inst|cnt[4]~40\ : std_logic;
SIGNAL \inst|cnt[5]~41_combout\ : std_logic;
SIGNAL \inst|cnt[5]~42\ : std_logic;
SIGNAL \inst|cnt[6]~43_combout\ : std_logic;
SIGNAL \inst|cnt[6]~44\ : std_logic;
SIGNAL \inst|cnt[7]~45_combout\ : std_logic;
SIGNAL \inst|cnt[7]~46\ : std_logic;
SIGNAL \inst|cnt[8]~47_combout\ : std_logic;
SIGNAL \inst|cnt[8]~48\ : std_logic;
SIGNAL \inst|cnt[9]~49_combout\ : std_logic;
SIGNAL \inst|cnt[9]~50\ : std_logic;
SIGNAL \inst|cnt[10]~51_combout\ : std_logic;
SIGNAL \inst|cnt[10]~52\ : std_logic;
SIGNAL \inst|cnt[11]~53_combout\ : std_logic;
SIGNAL \inst|cnt[11]~54\ : std_logic;
SIGNAL \inst|cnt[12]~55_combout\ : std_logic;
SIGNAL \inst|cnt[12]~56\ : std_logic;
SIGNAL \inst|cnt[13]~57_combout\ : std_logic;
SIGNAL \inst|cnt[13]~58\ : std_logic;
SIGNAL \inst|cnt[14]~59_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|LessThan0~7_combout\ : std_logic;
SIGNAL \inst|cnt[14]~60\ : std_logic;
SIGNAL \inst|cnt[15]~61_combout\ : std_logic;
SIGNAL \inst|cnt[15]~62\ : std_logic;
SIGNAL \inst|cnt[16]~63_combout\ : std_logic;
SIGNAL \inst|cnt[16]~64\ : std_logic;
SIGNAL \inst|cnt[17]~65_combout\ : std_logic;
SIGNAL \inst|cnt[17]~66\ : std_logic;
SIGNAL \inst|cnt[18]~67_combout\ : std_logic;
SIGNAL \inst|cnt[18]~68\ : std_logic;
SIGNAL \inst|cnt[19]~69_combout\ : std_logic;
SIGNAL \inst|cnt[19]~70\ : std_logic;
SIGNAL \inst|cnt[20]~71_combout\ : std_logic;
SIGNAL \inst|cnt[20]~72\ : std_logic;
SIGNAL \inst|cnt[21]~73_combout\ : std_logic;
SIGNAL \inst|cnt[21]~74\ : std_logic;
SIGNAL \inst|cnt[22]~75_combout\ : std_logic;
SIGNAL \inst|cnt[22]~76\ : std_logic;
SIGNAL \inst|cnt[23]~77_combout\ : std_logic;
SIGNAL \inst|cnt[23]~78\ : std_logic;
SIGNAL \inst|cnt[24]~79_combout\ : std_logic;
SIGNAL \inst|cnt[24]~80\ : std_logic;
SIGNAL \inst|cnt[25]~81_combout\ : std_logic;
SIGNAL \inst|cnt[25]~82\ : std_logic;
SIGNAL \inst|cnt[26]~83_combout\ : std_logic;
SIGNAL \inst|cnt[26]~84\ : std_logic;
SIGNAL \inst|cnt[27]~85_combout\ : std_logic;
SIGNAL \inst|cnt[27]~86\ : std_logic;
SIGNAL \inst|cnt[28]~87_combout\ : std_logic;
SIGNAL \inst|cnt[28]~88\ : std_logic;
SIGNAL \inst|cnt[29]~89_combout\ : std_logic;
SIGNAL \inst|cnt[29]~90\ : std_logic;
SIGNAL \inst|cnt[30]~91_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~8_combout\ : std_logic;
SIGNAL \inst|bffer_clk~0_combout\ : std_logic;
SIGNAL \inst|bffer_clk~q\ : std_logic;
SIGNAL \inst|step~0_combout\ : std_logic;
SIGNAL \inst|step~q\ : std_logic;
SIGNAL \pin_serial~input_o\ : std_logic;
SIGNAL \inst4|r_Clk_Count[0]~13_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count[0]~14\ : std_logic;
SIGNAL \inst4|r_Clk_Count[1]~15_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count[7]~41_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count[1]~16\ : std_logic;
SIGNAL \inst4|r_Clk_Count[2]~17_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count[2]~18\ : std_logic;
SIGNAL \inst4|r_Clk_Count[3]~19_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count[3]~20\ : std_logic;
SIGNAL \inst4|r_Clk_Count[4]~21_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count[4]~22\ : std_logic;
SIGNAL \inst4|r_Clk_Count[5]~23_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count[5]~24\ : std_logic;
SIGNAL \inst4|r_Clk_Count[6]~25_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count[6]~26\ : std_logic;
SIGNAL \inst4|r_Clk_Count[7]~27_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count[7]~28\ : std_logic;
SIGNAL \inst4|r_Clk_Count[8]~29_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count[8]~30\ : std_logic;
SIGNAL \inst4|r_Clk_Count[9]~31_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count[9]~32\ : std_logic;
SIGNAL \inst4|r_Clk_Count[10]~33_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count[10]~34\ : std_logic;
SIGNAL \inst4|r_Clk_Count[11]~35_combout\ : std_logic;
SIGNAL \inst4|LessThan1~3_combout\ : std_logic;
SIGNAL \inst4|LessThan1~0_combout\ : std_logic;
SIGNAL \inst4|LessThan1~1_combout\ : std_logic;
SIGNAL \inst4|LessThan1~2_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count[11]~36\ : std_logic;
SIGNAL \inst4|r_Clk_Count[12]~37_combout\ : std_logic;
SIGNAL \inst4|LessThan1~4_combout\ : std_logic;
SIGNAL \inst4|Decoder0~0_combout\ : std_logic;
SIGNAL \inst4|Selector15~0_combout\ : std_logic;
SIGNAL \inst4|Selector15~1_combout\ : std_logic;
SIGNAL \inst4|Selector14~1_combout\ : std_logic;
SIGNAL \inst4|Selector14~0_combout\ : std_logic;
SIGNAL \inst4|Selector14~2_combout\ : std_logic;
SIGNAL \inst4|r_SM_Main.s_RX_Stop_Bit~0_combout\ : std_logic;
SIGNAL \inst4|r_SM_Main.s_RX_Stop_Bit~1_combout\ : std_logic;
SIGNAL \inst4|r_SM_Main.s_RX_Stop_Bit~q\ : std_logic;
SIGNAL \inst4|r_SM_Main~7_combout\ : std_logic;
SIGNAL \inst4|r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \inst4|Selector17~0_combout\ : std_logic;
SIGNAL \inst4|r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \inst4|Selector18~0_combout\ : std_logic;
SIGNAL \inst4|r_SM_Main.s_RX_Start_Bit~q\ : std_logic;
SIGNAL \inst4|Selector19~0_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count[7]~39_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count[7]~40_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|Equal0~2_combout\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst4|Equal0~3_combout\ : std_logic;
SIGNAL \inst4|Selector19~1_combout\ : std_logic;
SIGNAL \inst4|Selector19~2_combout\ : std_logic;
SIGNAL \inst4|r_SM_Main.s_RX_Data_Bits~q\ : std_logic;
SIGNAL \inst4|Selector16~0_combout\ : std_logic;
SIGNAL \inst4|LessThan1~5_combout\ : std_logic;
SIGNAL \inst4|Selector16~1_combout\ : std_logic;
SIGNAL \inst4|Decoder0~1_combout\ : std_logic;
SIGNAL \inst4|r_RX_Byte[6]~0_combout\ : std_logic;
SIGNAL \inst4|Decoder0~2_combout\ : std_logic;
SIGNAL \inst4|r_RX_Byte[7]~1_combout\ : std_logic;
SIGNAL \inst9|dir~combout\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|count~5_combout\ : std_logic;
SIGNAL \inst2|Add1~1\ : std_logic;
SIGNAL \inst2|Add1~2_combout\ : std_logic;
SIGNAL \inst2|Add1~3\ : std_logic;
SIGNAL \inst2|Add1~4_combout\ : std_logic;
SIGNAL \inst2|Add1~5\ : std_logic;
SIGNAL \inst2|Add1~6_combout\ : std_logic;
SIGNAL \inst2|Add1~7\ : std_logic;
SIGNAL \inst2|Add1~8_combout\ : std_logic;
SIGNAL \inst2|Add1~9\ : std_logic;
SIGNAL \inst2|Add1~10_combout\ : std_logic;
SIGNAL \inst2|count~4_combout\ : std_logic;
SIGNAL \inst2|Add1~11\ : std_logic;
SIGNAL \inst2|Add1~12_combout\ : std_logic;
SIGNAL \inst2|Add1~13\ : std_logic;
SIGNAL \inst2|Add1~14_combout\ : std_logic;
SIGNAL \inst2|Add1~15\ : std_logic;
SIGNAL \inst2|Add1~16_combout\ : std_logic;
SIGNAL \inst2|Add1~17\ : std_logic;
SIGNAL \inst2|Add1~18_combout\ : std_logic;
SIGNAL \inst2|count~3_combout\ : std_logic;
SIGNAL \inst2|Add1~19\ : std_logic;
SIGNAL \inst2|Add1~20_combout\ : std_logic;
SIGNAL \inst2|count~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Add1~25\ : std_logic;
SIGNAL \inst2|Add1~26_combout\ : std_logic;
SIGNAL \inst2|Add1~27\ : std_logic;
SIGNAL \inst2|Add1~28_combout\ : std_logic;
SIGNAL \inst2|count~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Add1~21\ : std_logic;
SIGNAL \inst2|Add1~22_combout\ : std_logic;
SIGNAL \inst2|count~1_combout\ : std_logic;
SIGNAL \inst2|Add1~23\ : std_logic;
SIGNAL \inst2|Add1~24_combout\ : std_logic;
SIGNAL \inst4|Decoder0~4_combout\ : std_logic;
SIGNAL \inst4|r_RX_Byte[4]~3_combout\ : std_logic;
SIGNAL \inst4|Decoder0~6_combout\ : std_logic;
SIGNAL \inst4|r_RX_Byte[2]~5_combout\ : std_logic;
SIGNAL \inst4|Decoder0~5_combout\ : std_logic;
SIGNAL \inst4|r_RX_Byte[3]~4_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[1][5]~0_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|_~3_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|_~2_combout\ : std_logic;
SIGNAL \inst4|Decoder0~8_combout\ : std_logic;
SIGNAL \inst4|r_RX_Byte[0]~7_combout\ : std_logic;
SIGNAL \inst4|Decoder0~7_combout\ : std_logic;
SIGNAL \inst4|r_RX_Byte[1]~6_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|_~4_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[1][3]~1_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[1][2]~2_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|_~5_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[1][1]~3_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|_~6_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[0][3]~4_combout\ : std_logic;
SIGNAL \inst2|Add0~1_cout\ : std_logic;
SIGNAL \inst2|Add0~3_cout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|LessThan1~2_cout\ : std_logic;
SIGNAL \inst2|LessThan1~4_cout\ : std_logic;
SIGNAL \inst2|LessThan1~6_cout\ : std_logic;
SIGNAL \inst2|LessThan1~8_cout\ : std_logic;
SIGNAL \inst2|LessThan1~10_cout\ : std_logic;
SIGNAL \inst2|LessThan1~12_cout\ : std_logic;
SIGNAL \inst2|LessThan1~14_cout\ : std_logic;
SIGNAL \inst2|LessThan1~16_cout\ : std_logic;
SIGNAL \inst2|LessThan1~18_cout\ : std_logic;
SIGNAL \inst2|LessThan1~20_cout\ : std_logic;
SIGNAL \inst2|LessThan1~21_combout\ : std_logic;
SIGNAL \inst2|LessThan1~23_combout\ : std_logic;
SIGNAL \inst2|pwm~q\ : std_logic;
SIGNAL \inst4|Decoder0~3_combout\ : std_logic;
SIGNAL \inst4|r_RX_Byte[5]~2_combout\ : std_logic;
SIGNAL \inst4|r_Clk_Count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|count\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst|cnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst4|r_RX_Byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|ALT_INV_step~q\ : std_logic;

BEGIN

step <= ww_step;
ww_reloj <= reloj;
ww_pin_serial <= pin_serial;
dir <= ww_dir;
enable <= ww_enable;
pwm_servo <= ww_pwm_servo;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \reloj~inputclkctrl_outclk\);

\inst1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|altpll_component|auto_generated|wire_pll1_clk\(0));

\reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj~input_o\);
\inst|ALT_INV_step~q\ <= NOT \inst|step~q\;

-- Location: LCCOMB_X11_Y17_N20
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

-- Location: IOOBUF_X15_Y0_N16
\step~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_step~q\,
	devoe => ww_devoe,
	o => ww_step);

-- Location: IOOBUF_X15_Y0_N23
\dir~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|dir~combout\,
	devoe => ww_devoe,
	o => ww_dir);

-- Location: IOOBUF_X13_Y0_N9
\enable~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|r_RX_Byte\(6),
	devoe => ww_devoe,
	o => ww_enable);

-- Location: IOOBUF_X13_Y0_N16
\pwm_servo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|pwm~q\,
	devoe => ww_devoe,
	o => ww_pwm_servo);

-- Location: IOOBUF_X31_Y5_N2
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|r_RX_Byte\(7),
	devoe => ww_devoe,
	o => ww_leds(7));

-- Location: IOOBUF_X31_Y6_N9
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|r_RX_Byte\(6),
	devoe => ww_devoe,
	o => ww_leds(6));

-- Location: IOOBUF_X31_Y6_N2
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|r_RX_Byte\(5),
	devoe => ww_devoe,
	o => ww_leds(5));

-- Location: IOOBUF_X31_Y6_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|r_RX_Byte\(4),
	devoe => ww_devoe,
	o => ww_leds(4));

-- Location: IOOBUF_X31_Y5_N16
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|r_RX_Byte\(3),
	devoe => ww_devoe,
	o => ww_leds(3));

-- Location: IOOBUF_X31_Y4_N23
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|r_RX_Byte\(2),
	devoe => ww_devoe,
	o => ww_leds(2));

-- Location: IOOBUF_X31_Y5_N9
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|r_RX_Byte\(1),
	devoe => ww_devoe,
	o => ww_leds(1));

-- Location: IOOBUF_X31_Y4_N9
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|r_RX_Byte\(0),
	devoe => ww_devoe,
	o => ww_leds(0));

-- Location: IOIBUF_X31_Y11_N22
\reloj~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj,
	o => \reloj~input_o\);

-- Location: CLKCTRL_G9
\reloj~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reloj~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reloj~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y2_N2
\inst|cnt[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[0]~31_combout\ = \inst|cnt\(0) $ (VCC)
-- \inst|cnt[0]~32\ = CARRY(\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(0),
	datad => VCC,
	combout => \inst|cnt[0]~31_combout\,
	cout => \inst|cnt[0]~32\);

-- Location: FF_X13_Y2_N3
\inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[0]~31_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(0));

-- Location: LCCOMB_X13_Y2_N4
\inst|cnt[1]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[1]~33_combout\ = (\inst|cnt\(1) & (!\inst|cnt[0]~32\)) # (!\inst|cnt\(1) & ((\inst|cnt[0]~32\) # (GND)))
-- \inst|cnt[1]~34\ = CARRY((!\inst|cnt[0]~32\) # (!\inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(1),
	datad => VCC,
	cin => \inst|cnt[0]~32\,
	combout => \inst|cnt[1]~33_combout\,
	cout => \inst|cnt[1]~34\);

-- Location: FF_X13_Y2_N5
\inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[1]~33_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(1));

-- Location: LCCOMB_X13_Y2_N6
\inst|cnt[2]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[2]~35_combout\ = (\inst|cnt\(2) & (\inst|cnt[1]~34\ $ (GND))) # (!\inst|cnt\(2) & (!\inst|cnt[1]~34\ & VCC))
-- \inst|cnt[2]~36\ = CARRY((\inst|cnt\(2) & !\inst|cnt[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(2),
	datad => VCC,
	cin => \inst|cnt[1]~34\,
	combout => \inst|cnt[2]~35_combout\,
	cout => \inst|cnt[2]~36\);

-- Location: FF_X13_Y2_N7
\inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[2]~35_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(2));

-- Location: LCCOMB_X13_Y2_N8
\inst|cnt[3]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[3]~37_combout\ = (\inst|cnt\(3) & (!\inst|cnt[2]~36\)) # (!\inst|cnt\(3) & ((\inst|cnt[2]~36\) # (GND)))
-- \inst|cnt[3]~38\ = CARRY((!\inst|cnt[2]~36\) # (!\inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(3),
	datad => VCC,
	cin => \inst|cnt[2]~36\,
	combout => \inst|cnt[3]~37_combout\,
	cout => \inst|cnt[3]~38\);

-- Location: FF_X13_Y2_N9
\inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[3]~37_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(3));

-- Location: LCCOMB_X13_Y2_N10
\inst|cnt[4]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[4]~39_combout\ = (\inst|cnt\(4) & (\inst|cnt[3]~38\ $ (GND))) # (!\inst|cnt\(4) & (!\inst|cnt[3]~38\ & VCC))
-- \inst|cnt[4]~40\ = CARRY((\inst|cnt\(4) & !\inst|cnt[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datad => VCC,
	cin => \inst|cnt[3]~38\,
	combout => \inst|cnt[4]~39_combout\,
	cout => \inst|cnt[4]~40\);

-- Location: FF_X13_Y2_N11
\inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[4]~39_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(4));

-- Location: LCCOMB_X13_Y2_N12
\inst|cnt[5]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[5]~41_combout\ = (\inst|cnt\(5) & (!\inst|cnt[4]~40\)) # (!\inst|cnt\(5) & ((\inst|cnt[4]~40\) # (GND)))
-- \inst|cnt[5]~42\ = CARRY((!\inst|cnt[4]~40\) # (!\inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datad => VCC,
	cin => \inst|cnt[4]~40\,
	combout => \inst|cnt[5]~41_combout\,
	cout => \inst|cnt[5]~42\);

-- Location: FF_X13_Y2_N13
\inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[5]~41_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(5));

-- Location: LCCOMB_X13_Y2_N14
\inst|cnt[6]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[6]~43_combout\ = (\inst|cnt\(6) & (\inst|cnt[5]~42\ $ (GND))) # (!\inst|cnt\(6) & (!\inst|cnt[5]~42\ & VCC))
-- \inst|cnt[6]~44\ = CARRY((\inst|cnt\(6) & !\inst|cnt[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(6),
	datad => VCC,
	cin => \inst|cnt[5]~42\,
	combout => \inst|cnt[6]~43_combout\,
	cout => \inst|cnt[6]~44\);

-- Location: FF_X13_Y2_N15
\inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[6]~43_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(6));

-- Location: LCCOMB_X13_Y2_N16
\inst|cnt[7]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[7]~45_combout\ = (\inst|cnt\(7) & (!\inst|cnt[6]~44\)) # (!\inst|cnt\(7) & ((\inst|cnt[6]~44\) # (GND)))
-- \inst|cnt[7]~46\ = CARRY((!\inst|cnt[6]~44\) # (!\inst|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(7),
	datad => VCC,
	cin => \inst|cnt[6]~44\,
	combout => \inst|cnt[7]~45_combout\,
	cout => \inst|cnt[7]~46\);

-- Location: FF_X13_Y2_N17
\inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[7]~45_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(7));

-- Location: LCCOMB_X13_Y2_N18
\inst|cnt[8]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[8]~47_combout\ = (\inst|cnt\(8) & (\inst|cnt[7]~46\ $ (GND))) # (!\inst|cnt\(8) & (!\inst|cnt[7]~46\ & VCC))
-- \inst|cnt[8]~48\ = CARRY((\inst|cnt\(8) & !\inst|cnt[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(8),
	datad => VCC,
	cin => \inst|cnt[7]~46\,
	combout => \inst|cnt[8]~47_combout\,
	cout => \inst|cnt[8]~48\);

-- Location: FF_X13_Y2_N19
\inst|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[8]~47_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(8));

-- Location: LCCOMB_X13_Y2_N20
\inst|cnt[9]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[9]~49_combout\ = (\inst|cnt\(9) & (!\inst|cnt[8]~48\)) # (!\inst|cnt\(9) & ((\inst|cnt[8]~48\) # (GND)))
-- \inst|cnt[9]~50\ = CARRY((!\inst|cnt[8]~48\) # (!\inst|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(9),
	datad => VCC,
	cin => \inst|cnt[8]~48\,
	combout => \inst|cnt[9]~49_combout\,
	cout => \inst|cnt[9]~50\);

-- Location: FF_X13_Y2_N21
\inst|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[9]~49_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(9));

-- Location: LCCOMB_X13_Y2_N22
\inst|cnt[10]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[10]~51_combout\ = (\inst|cnt\(10) & (\inst|cnt[9]~50\ $ (GND))) # (!\inst|cnt\(10) & (!\inst|cnt[9]~50\ & VCC))
-- \inst|cnt[10]~52\ = CARRY((\inst|cnt\(10) & !\inst|cnt[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(10),
	datad => VCC,
	cin => \inst|cnt[9]~50\,
	combout => \inst|cnt[10]~51_combout\,
	cout => \inst|cnt[10]~52\);

-- Location: FF_X13_Y2_N23
\inst|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[10]~51_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(10));

-- Location: LCCOMB_X13_Y2_N24
\inst|cnt[11]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[11]~53_combout\ = (\inst|cnt\(11) & (!\inst|cnt[10]~52\)) # (!\inst|cnt\(11) & ((\inst|cnt[10]~52\) # (GND)))
-- \inst|cnt[11]~54\ = CARRY((!\inst|cnt[10]~52\) # (!\inst|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(11),
	datad => VCC,
	cin => \inst|cnt[10]~52\,
	combout => \inst|cnt[11]~53_combout\,
	cout => \inst|cnt[11]~54\);

-- Location: FF_X13_Y2_N25
\inst|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[11]~53_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(11));

-- Location: LCCOMB_X13_Y2_N26
\inst|cnt[12]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[12]~55_combout\ = (\inst|cnt\(12) & (\inst|cnt[11]~54\ $ (GND))) # (!\inst|cnt\(12) & (!\inst|cnt[11]~54\ & VCC))
-- \inst|cnt[12]~56\ = CARRY((\inst|cnt\(12) & !\inst|cnt[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(12),
	datad => VCC,
	cin => \inst|cnt[11]~54\,
	combout => \inst|cnt[12]~55_combout\,
	cout => \inst|cnt[12]~56\);

-- Location: FF_X13_Y2_N27
\inst|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[12]~55_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(12));

-- Location: LCCOMB_X13_Y2_N28
\inst|cnt[13]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[13]~57_combout\ = (\inst|cnt\(13) & (!\inst|cnt[12]~56\)) # (!\inst|cnt\(13) & ((\inst|cnt[12]~56\) # (GND)))
-- \inst|cnt[13]~58\ = CARRY((!\inst|cnt[12]~56\) # (!\inst|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(13),
	datad => VCC,
	cin => \inst|cnt[12]~56\,
	combout => \inst|cnt[13]~57_combout\,
	cout => \inst|cnt[13]~58\);

-- Location: FF_X13_Y2_N29
\inst|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[13]~57_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(13));

-- Location: LCCOMB_X13_Y2_N30
\inst|cnt[14]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[14]~59_combout\ = (\inst|cnt\(14) & (\inst|cnt[13]~58\ $ (GND))) # (!\inst|cnt\(14) & (!\inst|cnt[13]~58\ & VCC))
-- \inst|cnt[14]~60\ = CARRY((\inst|cnt\(14) & !\inst|cnt[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(14),
	datad => VCC,
	cin => \inst|cnt[13]~58\,
	combout => \inst|cnt[14]~59_combout\,
	cout => \inst|cnt[14]~60\);

-- Location: FF_X13_Y2_N31
\inst|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[14]~59_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(14));

-- Location: LCCOMB_X13_Y2_N0
\inst|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = (!\inst|cnt\(12) & (!\inst|cnt\(9) & (!\inst|cnt\(10) & !\inst|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(12),
	datab => \inst|cnt\(9),
	datac => \inst|cnt\(10),
	datad => \inst|cnt\(11),
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X14_Y2_N28
\inst|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (!\inst|cnt\(6) & (((!\inst|cnt\(3) & !\inst|cnt\(4))) # (!\inst|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst|cnt\(6),
	datac => \inst|cnt\(5),
	datad => \inst|cnt\(4),
	combout => \inst|LessThan0~6_combout\);

-- Location: LCCOMB_X14_Y2_N30
\inst|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_combout\ = (\inst|LessThan0~5_combout\ & (((\inst|LessThan0~6_combout\) # (!\inst|cnt\(7))) # (!\inst|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~5_combout\,
	datab => \inst|cnt\(8),
	datac => \inst|cnt\(7),
	datad => \inst|LessThan0~6_combout\,
	combout => \inst|LessThan0~7_combout\);

-- Location: LCCOMB_X13_Y1_N0
\inst|cnt[15]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[15]~61_combout\ = (\inst|cnt\(15) & (!\inst|cnt[14]~60\)) # (!\inst|cnt\(15) & ((\inst|cnt[14]~60\) # (GND)))
-- \inst|cnt[15]~62\ = CARRY((!\inst|cnt[14]~60\) # (!\inst|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(15),
	datad => VCC,
	cin => \inst|cnt[14]~60\,
	combout => \inst|cnt[15]~61_combout\,
	cout => \inst|cnt[15]~62\);

-- Location: FF_X13_Y1_N1
\inst|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[15]~61_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(15));

-- Location: LCCOMB_X13_Y1_N2
\inst|cnt[16]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[16]~63_combout\ = (\inst|cnt\(16) & (\inst|cnt[15]~62\ $ (GND))) # (!\inst|cnt\(16) & (!\inst|cnt[15]~62\ & VCC))
-- \inst|cnt[16]~64\ = CARRY((\inst|cnt\(16) & !\inst|cnt[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(16),
	datad => VCC,
	cin => \inst|cnt[15]~62\,
	combout => \inst|cnt[16]~63_combout\,
	cout => \inst|cnt[16]~64\);

-- Location: FF_X13_Y1_N3
\inst|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[16]~63_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(16));

-- Location: LCCOMB_X13_Y1_N4
\inst|cnt[17]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[17]~65_combout\ = (\inst|cnt\(17) & (!\inst|cnt[16]~64\)) # (!\inst|cnt\(17) & ((\inst|cnt[16]~64\) # (GND)))
-- \inst|cnt[17]~66\ = CARRY((!\inst|cnt[16]~64\) # (!\inst|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(17),
	datad => VCC,
	cin => \inst|cnt[16]~64\,
	combout => \inst|cnt[17]~65_combout\,
	cout => \inst|cnt[17]~66\);

-- Location: FF_X13_Y1_N5
\inst|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[17]~65_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(17));

-- Location: LCCOMB_X13_Y1_N6
\inst|cnt[18]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[18]~67_combout\ = (\inst|cnt\(18) & (\inst|cnt[17]~66\ $ (GND))) # (!\inst|cnt\(18) & (!\inst|cnt[17]~66\ & VCC))
-- \inst|cnt[18]~68\ = CARRY((\inst|cnt\(18) & !\inst|cnt[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(18),
	datad => VCC,
	cin => \inst|cnt[17]~66\,
	combout => \inst|cnt[18]~67_combout\,
	cout => \inst|cnt[18]~68\);

-- Location: FF_X13_Y1_N7
\inst|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[18]~67_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(18));

-- Location: LCCOMB_X13_Y1_N8
\inst|cnt[19]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[19]~69_combout\ = (\inst|cnt\(19) & (!\inst|cnt[18]~68\)) # (!\inst|cnt\(19) & ((\inst|cnt[18]~68\) # (GND)))
-- \inst|cnt[19]~70\ = CARRY((!\inst|cnt[18]~68\) # (!\inst|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(19),
	datad => VCC,
	cin => \inst|cnt[18]~68\,
	combout => \inst|cnt[19]~69_combout\,
	cout => \inst|cnt[19]~70\);

-- Location: FF_X13_Y1_N9
\inst|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[19]~69_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(19));

-- Location: LCCOMB_X13_Y1_N10
\inst|cnt[20]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[20]~71_combout\ = (\inst|cnt\(20) & (\inst|cnt[19]~70\ $ (GND))) # (!\inst|cnt\(20) & (!\inst|cnt[19]~70\ & VCC))
-- \inst|cnt[20]~72\ = CARRY((\inst|cnt\(20) & !\inst|cnt[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(20),
	datad => VCC,
	cin => \inst|cnt[19]~70\,
	combout => \inst|cnt[20]~71_combout\,
	cout => \inst|cnt[20]~72\);

-- Location: FF_X13_Y1_N11
\inst|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[20]~71_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(20));

-- Location: LCCOMB_X13_Y1_N12
\inst|cnt[21]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[21]~73_combout\ = (\inst|cnt\(21) & (!\inst|cnt[20]~72\)) # (!\inst|cnt\(21) & ((\inst|cnt[20]~72\) # (GND)))
-- \inst|cnt[21]~74\ = CARRY((!\inst|cnt[20]~72\) # (!\inst|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(21),
	datad => VCC,
	cin => \inst|cnt[20]~72\,
	combout => \inst|cnt[21]~73_combout\,
	cout => \inst|cnt[21]~74\);

-- Location: FF_X13_Y1_N13
\inst|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[21]~73_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(21));

-- Location: LCCOMB_X13_Y1_N14
\inst|cnt[22]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[22]~75_combout\ = (\inst|cnt\(22) & (\inst|cnt[21]~74\ $ (GND))) # (!\inst|cnt\(22) & (!\inst|cnt[21]~74\ & VCC))
-- \inst|cnt[22]~76\ = CARRY((\inst|cnt\(22) & !\inst|cnt[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(22),
	datad => VCC,
	cin => \inst|cnt[21]~74\,
	combout => \inst|cnt[22]~75_combout\,
	cout => \inst|cnt[22]~76\);

-- Location: FF_X13_Y1_N15
\inst|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[22]~75_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(22));

-- Location: LCCOMB_X13_Y1_N16
\inst|cnt[23]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[23]~77_combout\ = (\inst|cnt\(23) & (!\inst|cnt[22]~76\)) # (!\inst|cnt\(23) & ((\inst|cnt[22]~76\) # (GND)))
-- \inst|cnt[23]~78\ = CARRY((!\inst|cnt[22]~76\) # (!\inst|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(23),
	datad => VCC,
	cin => \inst|cnt[22]~76\,
	combout => \inst|cnt[23]~77_combout\,
	cout => \inst|cnt[23]~78\);

-- Location: FF_X13_Y1_N17
\inst|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[23]~77_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(23));

-- Location: LCCOMB_X13_Y1_N18
\inst|cnt[24]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[24]~79_combout\ = (\inst|cnt\(24) & (\inst|cnt[23]~78\ $ (GND))) # (!\inst|cnt\(24) & (!\inst|cnt[23]~78\ & VCC))
-- \inst|cnt[24]~80\ = CARRY((\inst|cnt\(24) & !\inst|cnt[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(24),
	datad => VCC,
	cin => \inst|cnt[23]~78\,
	combout => \inst|cnt[24]~79_combout\,
	cout => \inst|cnt[24]~80\);

-- Location: FF_X13_Y1_N19
\inst|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[24]~79_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(24));

-- Location: LCCOMB_X13_Y1_N20
\inst|cnt[25]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[25]~81_combout\ = (\inst|cnt\(25) & (!\inst|cnt[24]~80\)) # (!\inst|cnt\(25) & ((\inst|cnt[24]~80\) # (GND)))
-- \inst|cnt[25]~82\ = CARRY((!\inst|cnt[24]~80\) # (!\inst|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(25),
	datad => VCC,
	cin => \inst|cnt[24]~80\,
	combout => \inst|cnt[25]~81_combout\,
	cout => \inst|cnt[25]~82\);

-- Location: FF_X13_Y1_N21
\inst|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[25]~81_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(25));

-- Location: LCCOMB_X13_Y1_N22
\inst|cnt[26]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[26]~83_combout\ = (\inst|cnt\(26) & (\inst|cnt[25]~82\ $ (GND))) # (!\inst|cnt\(26) & (!\inst|cnt[25]~82\ & VCC))
-- \inst|cnt[26]~84\ = CARRY((\inst|cnt\(26) & !\inst|cnt[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(26),
	datad => VCC,
	cin => \inst|cnt[25]~82\,
	combout => \inst|cnt[26]~83_combout\,
	cout => \inst|cnt[26]~84\);

-- Location: FF_X13_Y1_N23
\inst|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[26]~83_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(26));

-- Location: LCCOMB_X13_Y1_N24
\inst|cnt[27]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[27]~85_combout\ = (\inst|cnt\(27) & (!\inst|cnt[26]~84\)) # (!\inst|cnt\(27) & ((\inst|cnt[26]~84\) # (GND)))
-- \inst|cnt[27]~86\ = CARRY((!\inst|cnt[26]~84\) # (!\inst|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(27),
	datad => VCC,
	cin => \inst|cnt[26]~84\,
	combout => \inst|cnt[27]~85_combout\,
	cout => \inst|cnt[27]~86\);

-- Location: FF_X13_Y1_N25
\inst|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[27]~85_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(27));

-- Location: LCCOMB_X13_Y1_N26
\inst|cnt[28]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[28]~87_combout\ = (\inst|cnt\(28) & (\inst|cnt[27]~86\ $ (GND))) # (!\inst|cnt\(28) & (!\inst|cnt[27]~86\ & VCC))
-- \inst|cnt[28]~88\ = CARRY((\inst|cnt\(28) & !\inst|cnt[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(28),
	datad => VCC,
	cin => \inst|cnt[27]~86\,
	combout => \inst|cnt[28]~87_combout\,
	cout => \inst|cnt[28]~88\);

-- Location: FF_X13_Y1_N27
\inst|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[28]~87_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(28));

-- Location: LCCOMB_X13_Y1_N28
\inst|cnt[29]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[29]~89_combout\ = (\inst|cnt\(29) & (!\inst|cnt[28]~88\)) # (!\inst|cnt\(29) & ((\inst|cnt[28]~88\) # (GND)))
-- \inst|cnt[29]~90\ = CARRY((!\inst|cnt[28]~88\) # (!\inst|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(29),
	datad => VCC,
	cin => \inst|cnt[28]~88\,
	combout => \inst|cnt[29]~89_combout\,
	cout => \inst|cnt[29]~90\);

-- Location: FF_X13_Y1_N29
\inst|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[29]~89_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(29));

-- Location: LCCOMB_X13_Y1_N30
\inst|cnt[30]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cnt[30]~91_combout\ = \inst|cnt\(30) $ (!\inst|cnt[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(30),
	cin => \inst|cnt[29]~90\,
	combout => \inst|cnt[30]~91_combout\);

-- Location: FF_X13_Y1_N31
\inst|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt[30]~91_combout\,
	sclr => \inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(30));

-- Location: LCCOMB_X14_Y1_N12
\inst|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (!\inst|cnt\(29) & (!\inst|cnt\(30) & (!\inst|cnt\(28) & !\inst|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(29),
	datab => \inst|cnt\(30),
	datac => \inst|cnt\(28),
	datad => \inst|cnt\(27),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X14_Y1_N18
\inst|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|cnt\(25) & (!\inst|cnt\(24) & (!\inst|cnt\(23) & !\inst|cnt\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(25),
	datab => \inst|cnt\(24),
	datac => \inst|cnt\(23),
	datad => \inst|cnt\(26),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X14_Y1_N8
\inst|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (!\inst|cnt\(20) & (!\inst|cnt\(19) & (!\inst|cnt\(21) & !\inst|cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(20),
	datab => \inst|cnt\(19),
	datac => \inst|cnt\(21),
	datad => \inst|cnt\(22),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X15_Y1_N4
\inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|cnt\(15) & (!\inst|cnt\(18) & (!\inst|cnt\(17) & !\inst|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(15),
	datab => \inst|cnt\(18),
	datac => \inst|cnt\(17),
	datad => \inst|cnt\(16),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y1_N10
\inst|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (\inst|LessThan0~3_combout\ & (\inst|LessThan0~2_combout\ & (\inst|LessThan0~1_combout\ & \inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~3_combout\,
	datab => \inst|LessThan0~2_combout\,
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X14_Y1_N0
\inst|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~8_combout\ = ((\inst|cnt\(13) & (\inst|cnt\(14) & !\inst|LessThan0~7_combout\))) # (!\inst|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(13),
	datab => \inst|cnt\(14),
	datac => \inst|LessThan0~7_combout\,
	datad => \inst|LessThan0~4_combout\,
	combout => \inst|LessThan0~8_combout\);

-- Location: LCCOMB_X15_Y1_N18
\inst|bffer_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|bffer_clk~0_combout\ = \inst|LessThan0~8_combout\ $ (\inst|bffer_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~8_combout\,
	datac => \inst|bffer_clk~q\,
	combout => \inst|bffer_clk~0_combout\);

-- Location: FF_X15_Y1_N19
\inst|bffer_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|bffer_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bffer_clk~q\);

-- Location: LCCOMB_X15_Y1_N24
\inst|step~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|step~0_combout\ = !\inst|bffer_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|bffer_clk~q\,
	combout => \inst|step~0_combout\);

-- Location: FF_X15_Y1_N25
\inst|step\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|step~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|step~q\);

-- Location: IOIBUF_X17_Y0_N22
\pin_serial~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_serial,
	o => \pin_serial~input_o\);

-- Location: LCCOMB_X30_Y3_N2
\inst4|r_Clk_Count[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[0]~13_combout\ = \inst4|r_Clk_Count\(0) $ (VCC)
-- \inst4|r_Clk_Count[0]~14\ = CARRY(\inst4|r_Clk_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|r_Clk_Count\(0),
	datad => VCC,
	combout => \inst4|r_Clk_Count[0]~13_combout\,
	cout => \inst4|r_Clk_Count[0]~14\);

-- Location: LCCOMB_X30_Y3_N4
\inst4|r_Clk_Count[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[1]~15_combout\ = (\inst4|r_Clk_Count\(1) & (!\inst4|r_Clk_Count[0]~14\)) # (!\inst4|r_Clk_Count\(1) & ((\inst4|r_Clk_Count[0]~14\) # (GND)))
-- \inst4|r_Clk_Count[1]~16\ = CARRY((!\inst4|r_Clk_Count[0]~14\) # (!\inst4|r_Clk_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|r_Clk_Count\(1),
	datad => VCC,
	cin => \inst4|r_Clk_Count[0]~14\,
	combout => \inst4|r_Clk_Count[1]~15_combout\,
	cout => \inst4|r_Clk_Count[1]~16\);

-- Location: LCCOMB_X28_Y5_N10
\inst4|r_Clk_Count[7]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[7]~41_combout\ = (!\inst4|r_SM_Main.s_Cleanup~q\ & (((!\inst4|Equal0~3_combout\) # (!\inst4|r_SM_Main.s_RX_Start_Bit~q\)) # (!\pin_serial~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_serial~input_o\,
	datab => \inst4|r_SM_Main.s_RX_Start_Bit~q\,
	datac => \inst4|Equal0~3_combout\,
	datad => \inst4|r_SM_Main.s_Cleanup~q\,
	combout => \inst4|r_Clk_Count[7]~41_combout\);

-- Location: FF_X30_Y3_N5
\inst4|r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_Clk_Count[1]~15_combout\,
	sclr => \inst4|r_Clk_Count[7]~40_combout\,
	ena => \inst4|r_Clk_Count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Clk_Count\(1));

-- Location: LCCOMB_X30_Y3_N6
\inst4|r_Clk_Count[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[2]~17_combout\ = (\inst4|r_Clk_Count\(2) & (\inst4|r_Clk_Count[1]~16\ $ (GND))) # (!\inst4|r_Clk_Count\(2) & (!\inst4|r_Clk_Count[1]~16\ & VCC))
-- \inst4|r_Clk_Count[2]~18\ = CARRY((\inst4|r_Clk_Count\(2) & !\inst4|r_Clk_Count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Clk_Count\(2),
	datad => VCC,
	cin => \inst4|r_Clk_Count[1]~16\,
	combout => \inst4|r_Clk_Count[2]~17_combout\,
	cout => \inst4|r_Clk_Count[2]~18\);

-- Location: FF_X30_Y3_N7
\inst4|r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_Clk_Count[2]~17_combout\,
	sclr => \inst4|r_Clk_Count[7]~40_combout\,
	ena => \inst4|r_Clk_Count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Clk_Count\(2));

-- Location: LCCOMB_X30_Y3_N8
\inst4|r_Clk_Count[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[3]~19_combout\ = (\inst4|r_Clk_Count\(3) & (!\inst4|r_Clk_Count[2]~18\)) # (!\inst4|r_Clk_Count\(3) & ((\inst4|r_Clk_Count[2]~18\) # (GND)))
-- \inst4|r_Clk_Count[3]~20\ = CARRY((!\inst4|r_Clk_Count[2]~18\) # (!\inst4|r_Clk_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|r_Clk_Count\(3),
	datad => VCC,
	cin => \inst4|r_Clk_Count[2]~18\,
	combout => \inst4|r_Clk_Count[3]~19_combout\,
	cout => \inst4|r_Clk_Count[3]~20\);

-- Location: FF_X30_Y3_N9
\inst4|r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_Clk_Count[3]~19_combout\,
	sclr => \inst4|r_Clk_Count[7]~40_combout\,
	ena => \inst4|r_Clk_Count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Clk_Count\(3));

-- Location: LCCOMB_X30_Y3_N10
\inst4|r_Clk_Count[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[4]~21_combout\ = (\inst4|r_Clk_Count\(4) & (\inst4|r_Clk_Count[3]~20\ $ (GND))) # (!\inst4|r_Clk_Count\(4) & (!\inst4|r_Clk_Count[3]~20\ & VCC))
-- \inst4|r_Clk_Count[4]~22\ = CARRY((\inst4|r_Clk_Count\(4) & !\inst4|r_Clk_Count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Clk_Count\(4),
	datad => VCC,
	cin => \inst4|r_Clk_Count[3]~20\,
	combout => \inst4|r_Clk_Count[4]~21_combout\,
	cout => \inst4|r_Clk_Count[4]~22\);

-- Location: FF_X30_Y3_N11
\inst4|r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_Clk_Count[4]~21_combout\,
	sclr => \inst4|r_Clk_Count[7]~40_combout\,
	ena => \inst4|r_Clk_Count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Clk_Count\(4));

-- Location: LCCOMB_X30_Y3_N12
\inst4|r_Clk_Count[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[5]~23_combout\ = (\inst4|r_Clk_Count\(5) & (!\inst4|r_Clk_Count[4]~22\)) # (!\inst4|r_Clk_Count\(5) & ((\inst4|r_Clk_Count[4]~22\) # (GND)))
-- \inst4|r_Clk_Count[5]~24\ = CARRY((!\inst4|r_Clk_Count[4]~22\) # (!\inst4|r_Clk_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Clk_Count\(5),
	datad => VCC,
	cin => \inst4|r_Clk_Count[4]~22\,
	combout => \inst4|r_Clk_Count[5]~23_combout\,
	cout => \inst4|r_Clk_Count[5]~24\);

-- Location: FF_X30_Y3_N13
\inst4|r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_Clk_Count[5]~23_combout\,
	sclr => \inst4|r_Clk_Count[7]~40_combout\,
	ena => \inst4|r_Clk_Count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Clk_Count\(5));

-- Location: LCCOMB_X30_Y3_N14
\inst4|r_Clk_Count[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[6]~25_combout\ = (\inst4|r_Clk_Count\(6) & (\inst4|r_Clk_Count[5]~24\ $ (GND))) # (!\inst4|r_Clk_Count\(6) & (!\inst4|r_Clk_Count[5]~24\ & VCC))
-- \inst4|r_Clk_Count[6]~26\ = CARRY((\inst4|r_Clk_Count\(6) & !\inst4|r_Clk_Count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|r_Clk_Count\(6),
	datad => VCC,
	cin => \inst4|r_Clk_Count[5]~24\,
	combout => \inst4|r_Clk_Count[6]~25_combout\,
	cout => \inst4|r_Clk_Count[6]~26\);

-- Location: FF_X30_Y3_N15
\inst4|r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_Clk_Count[6]~25_combout\,
	sclr => \inst4|r_Clk_Count[7]~40_combout\,
	ena => \inst4|r_Clk_Count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Clk_Count\(6));

-- Location: LCCOMB_X30_Y3_N16
\inst4|r_Clk_Count[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[7]~27_combout\ = (\inst4|r_Clk_Count\(7) & (!\inst4|r_Clk_Count[6]~26\)) # (!\inst4|r_Clk_Count\(7) & ((\inst4|r_Clk_Count[6]~26\) # (GND)))
-- \inst4|r_Clk_Count[7]~28\ = CARRY((!\inst4|r_Clk_Count[6]~26\) # (!\inst4|r_Clk_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|r_Clk_Count\(7),
	datad => VCC,
	cin => \inst4|r_Clk_Count[6]~26\,
	combout => \inst4|r_Clk_Count[7]~27_combout\,
	cout => \inst4|r_Clk_Count[7]~28\);

-- Location: FF_X30_Y3_N17
\inst4|r_Clk_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_Clk_Count[7]~27_combout\,
	sclr => \inst4|r_Clk_Count[7]~40_combout\,
	ena => \inst4|r_Clk_Count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Clk_Count\(7));

-- Location: LCCOMB_X30_Y3_N18
\inst4|r_Clk_Count[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[8]~29_combout\ = (\inst4|r_Clk_Count\(8) & (\inst4|r_Clk_Count[7]~28\ $ (GND))) # (!\inst4|r_Clk_Count\(8) & (!\inst4|r_Clk_Count[7]~28\ & VCC))
-- \inst4|r_Clk_Count[8]~30\ = CARRY((\inst4|r_Clk_Count\(8) & !\inst4|r_Clk_Count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|r_Clk_Count\(8),
	datad => VCC,
	cin => \inst4|r_Clk_Count[7]~28\,
	combout => \inst4|r_Clk_Count[8]~29_combout\,
	cout => \inst4|r_Clk_Count[8]~30\);

-- Location: FF_X30_Y3_N19
\inst4|r_Clk_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_Clk_Count[8]~29_combout\,
	sclr => \inst4|r_Clk_Count[7]~40_combout\,
	ena => \inst4|r_Clk_Count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Clk_Count\(8));

-- Location: LCCOMB_X30_Y3_N20
\inst4|r_Clk_Count[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[9]~31_combout\ = (\inst4|r_Clk_Count\(9) & (!\inst4|r_Clk_Count[8]~30\)) # (!\inst4|r_Clk_Count\(9) & ((\inst4|r_Clk_Count[8]~30\) # (GND)))
-- \inst4|r_Clk_Count[9]~32\ = CARRY((!\inst4|r_Clk_Count[8]~30\) # (!\inst4|r_Clk_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|r_Clk_Count\(9),
	datad => VCC,
	cin => \inst4|r_Clk_Count[8]~30\,
	combout => \inst4|r_Clk_Count[9]~31_combout\,
	cout => \inst4|r_Clk_Count[9]~32\);

-- Location: FF_X30_Y3_N21
\inst4|r_Clk_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_Clk_Count[9]~31_combout\,
	sclr => \inst4|r_Clk_Count[7]~40_combout\,
	ena => \inst4|r_Clk_Count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Clk_Count\(9));

-- Location: LCCOMB_X30_Y3_N22
\inst4|r_Clk_Count[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[10]~33_combout\ = (\inst4|r_Clk_Count\(10) & (\inst4|r_Clk_Count[9]~32\ $ (GND))) # (!\inst4|r_Clk_Count\(10) & (!\inst4|r_Clk_Count[9]~32\ & VCC))
-- \inst4|r_Clk_Count[10]~34\ = CARRY((\inst4|r_Clk_Count\(10) & !\inst4|r_Clk_Count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Clk_Count\(10),
	datad => VCC,
	cin => \inst4|r_Clk_Count[9]~32\,
	combout => \inst4|r_Clk_Count[10]~33_combout\,
	cout => \inst4|r_Clk_Count[10]~34\);

-- Location: FF_X30_Y3_N23
\inst4|r_Clk_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_Clk_Count[10]~33_combout\,
	sclr => \inst4|r_Clk_Count[7]~40_combout\,
	ena => \inst4|r_Clk_Count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Clk_Count\(10));

-- Location: LCCOMB_X30_Y3_N24
\inst4|r_Clk_Count[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[11]~35_combout\ = (\inst4|r_Clk_Count\(11) & (!\inst4|r_Clk_Count[10]~34\)) # (!\inst4|r_Clk_Count\(11) & ((\inst4|r_Clk_Count[10]~34\) # (GND)))
-- \inst4|r_Clk_Count[11]~36\ = CARRY((!\inst4|r_Clk_Count[10]~34\) # (!\inst4|r_Clk_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|r_Clk_Count\(11),
	datad => VCC,
	cin => \inst4|r_Clk_Count[10]~34\,
	combout => \inst4|r_Clk_Count[11]~35_combout\,
	cout => \inst4|r_Clk_Count[11]~36\);

-- Location: FF_X30_Y3_N25
\inst4|r_Clk_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_Clk_Count[11]~35_combout\,
	sclr => \inst4|r_Clk_Count[7]~40_combout\,
	ena => \inst4|r_Clk_Count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Clk_Count\(11));

-- Location: LCCOMB_X29_Y3_N10
\inst4|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~3_combout\ = (!\inst4|r_Clk_Count\(11) & !\inst4|r_Clk_Count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|r_Clk_Count\(11),
	datad => \inst4|r_Clk_Count\(10),
	combout => \inst4|LessThan1~3_combout\);

-- Location: LCCOMB_X30_Y3_N0
\inst4|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~0_combout\ = (!\inst4|r_Clk_Count\(3) & (((!\inst4|r_Clk_Count\(0)) # (!\inst4|r_Clk_Count\(1))) # (!\inst4|r_Clk_Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Clk_Count\(2),
	datab => \inst4|r_Clk_Count\(3),
	datac => \inst4|r_Clk_Count\(1),
	datad => \inst4|r_Clk_Count\(0),
	combout => \inst4|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y3_N28
\inst4|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~1_combout\ = ((!\inst4|r_Clk_Count\(5) & ((\inst4|LessThan1~0_combout\) # (!\inst4|r_Clk_Count\(4))))) # (!\inst4|r_Clk_Count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Clk_Count\(5),
	datab => \inst4|LessThan1~0_combout\,
	datac => \inst4|r_Clk_Count\(6),
	datad => \inst4|r_Clk_Count\(4),
	combout => \inst4|LessThan1~1_combout\);

-- Location: LCCOMB_X29_Y3_N4
\inst4|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~2_combout\ = (!\inst4|r_Clk_Count\(11) & (!\inst4|r_Clk_Count\(8) & (!\inst4|r_Clk_Count\(9) & !\inst4|r_Clk_Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Clk_Count\(11),
	datab => \inst4|r_Clk_Count\(8),
	datac => \inst4|r_Clk_Count\(9),
	datad => \inst4|r_Clk_Count\(7),
	combout => \inst4|LessThan1~2_combout\);

-- Location: LCCOMB_X30_Y3_N26
\inst4|r_Clk_Count[12]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[12]~37_combout\ = \inst4|r_Clk_Count\(12) $ (!\inst4|r_Clk_Count[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Clk_Count\(12),
	cin => \inst4|r_Clk_Count[11]~36\,
	combout => \inst4|r_Clk_Count[12]~37_combout\);

-- Location: FF_X30_Y3_N27
\inst4|r_Clk_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_Clk_Count[12]~37_combout\,
	sclr => \inst4|r_Clk_Count[7]~40_combout\,
	ena => \inst4|r_Clk_Count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Clk_Count\(12));

-- Location: LCCOMB_X29_Y3_N0
\inst4|LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~4_combout\ = (!\inst4|LessThan1~3_combout\ & (\inst4|r_Clk_Count\(12) & ((!\inst4|LessThan1~2_combout\) # (!\inst4|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan1~3_combout\,
	datab => \inst4|LessThan1~1_combout\,
	datac => \inst4|LessThan1~2_combout\,
	datad => \inst4|r_Clk_Count\(12),
	combout => \inst4|LessThan1~4_combout\);

-- Location: LCCOMB_X28_Y5_N22
\inst4|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~0_combout\ = (\inst4|r_SM_Main.s_RX_Data_Bits~q\ & \inst4|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \inst4|LessThan1~4_combout\,
	combout => \inst4|Decoder0~0_combout\);

-- Location: LCCOMB_X28_Y5_N28
\inst4|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector15~0_combout\ = (\inst4|r_Bit_Index\(1) & ((\inst4|r_SM_Main.s_RX_Data_Bits~q\ & (!\inst4|LessThan1~4_combout\)) # (!\inst4|r_SM_Main.s_RX_Data_Bits~q\ & ((\inst4|r_SM_Main.s_Idle~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \inst4|LessThan1~4_combout\,
	datac => \inst4|r_Bit_Index\(1),
	datad => \inst4|r_SM_Main.s_Idle~q\,
	combout => \inst4|Selector15~0_combout\);

-- Location: LCCOMB_X27_Y5_N26
\inst4|Selector15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector15~1_combout\ = (\inst4|Selector15~0_combout\) # ((\inst4|Decoder0~0_combout\ & (\inst4|r_Bit_Index\(0) $ (\inst4|r_Bit_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Bit_Index\(0),
	datab => \inst4|Decoder0~0_combout\,
	datac => \inst4|r_Bit_Index\(1),
	datad => \inst4|Selector15~0_combout\,
	combout => \inst4|Selector15~1_combout\);

-- Location: FF_X27_Y5_N27
\inst4|r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Bit_Index\(1));

-- Location: LCCOMB_X27_Y5_N4
\inst4|Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector14~1_combout\ = (\inst4|r_Bit_Index\(0) & (\inst4|r_Bit_Index\(1) $ (\inst4|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Bit_Index\(0),
	datab => \inst4|r_Bit_Index\(1),
	datad => \inst4|r_Bit_Index\(2),
	combout => \inst4|Selector14~1_combout\);

-- Location: LCCOMB_X28_Y5_N26
\inst4|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector14~0_combout\ = (\inst4|r_SM_Main.s_RX_Data_Bits~q\ & (((!\inst4|LessThan1~4_combout\) # (!\inst4|r_Bit_Index\(0))))) # (!\inst4|r_SM_Main.s_RX_Data_Bits~q\ & (\inst4|r_SM_Main.s_Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \inst4|r_SM_Main.s_Idle~q\,
	datac => \inst4|r_Bit_Index\(0),
	datad => \inst4|LessThan1~4_combout\,
	combout => \inst4|Selector14~0_combout\);

-- Location: LCCOMB_X27_Y5_N12
\inst4|Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector14~2_combout\ = (\inst4|Selector14~1_combout\ & ((\inst4|Decoder0~0_combout\) # ((\inst4|r_Bit_Index\(2) & \inst4|Selector14~0_combout\)))) # (!\inst4|Selector14~1_combout\ & (((\inst4|r_Bit_Index\(2) & \inst4|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector14~1_combout\,
	datab => \inst4|Decoder0~0_combout\,
	datac => \inst4|r_Bit_Index\(2),
	datad => \inst4|Selector14~0_combout\,
	combout => \inst4|Selector14~2_combout\);

-- Location: FF_X27_Y5_N13
\inst4|r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Bit_Index\(2));

-- Location: LCCOMB_X28_Y5_N18
\inst4|r_SM_Main.s_RX_Stop_Bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_SM_Main.s_RX_Stop_Bit~0_combout\ = (\inst4|r_Bit_Index\(1) & (\inst4|r_Bit_Index\(0) & \inst4|r_Bit_Index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Bit_Index\(1),
	datac => \inst4|r_Bit_Index\(0),
	datad => \inst4|r_Bit_Index\(2),
	combout => \inst4|r_SM_Main.s_RX_Stop_Bit~0_combout\);

-- Location: LCCOMB_X28_Y5_N8
\inst4|r_SM_Main.s_RX_Stop_Bit~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_SM_Main.s_RX_Stop_Bit~1_combout\ = (\inst4|LessThan1~4_combout\ & (\inst4|r_SM_Main.s_RX_Data_Bits~q\ & (\inst4|r_SM_Main.s_RX_Stop_Bit~0_combout\))) # (!\inst4|LessThan1~4_combout\ & (((\inst4|r_SM_Main.s_RX_Stop_Bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \inst4|r_SM_Main.s_RX_Stop_Bit~0_combout\,
	datac => \inst4|r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \inst4|LessThan1~4_combout\,
	combout => \inst4|r_SM_Main.s_RX_Stop_Bit~1_combout\);

-- Location: FF_X28_Y5_N9
\inst4|r_SM_Main.s_RX_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_SM_Main.s_RX_Stop_Bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_SM_Main.s_RX_Stop_Bit~q\);

-- Location: LCCOMB_X28_Y5_N20
\inst4|r_SM_Main~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_SM_Main~7_combout\ = (\inst4|r_SM_Main.s_RX_Stop_Bit~q\ & \inst4|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \inst4|LessThan1~4_combout\,
	combout => \inst4|r_SM_Main~7_combout\);

-- Location: FF_X28_Y5_N21
\inst4|r_SM_Main.s_Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_SM_Main~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_SM_Main.s_Cleanup~q\);

-- Location: LCCOMB_X28_Y5_N24
\inst4|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector17~0_combout\ = (!\inst4|r_SM_Main.s_Cleanup~q\ & (((!\inst4|Selector19~0_combout\ & \inst4|r_SM_Main.s_Idle~q\)) # (!\pin_serial~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_serial~input_o\,
	datab => \inst4|Selector19~0_combout\,
	datac => \inst4|r_SM_Main.s_Idle~q\,
	datad => \inst4|r_SM_Main.s_Cleanup~q\,
	combout => \inst4|Selector17~0_combout\);

-- Location: FF_X28_Y5_N25
\inst4|r_SM_Main.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_SM_Main.s_Idle~q\);

-- Location: LCCOMB_X28_Y5_N4
\inst4|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector18~0_combout\ = (\pin_serial~input_o\ & (!\inst4|Equal0~3_combout\ & (\inst4|r_SM_Main.s_RX_Start_Bit~q\))) # (!\pin_serial~input_o\ & (((!\inst4|Equal0~3_combout\ & \inst4|r_SM_Main.s_RX_Start_Bit~q\)) # (!\inst4|r_SM_Main.s_Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_serial~input_o\,
	datab => \inst4|Equal0~3_combout\,
	datac => \inst4|r_SM_Main.s_RX_Start_Bit~q\,
	datad => \inst4|r_SM_Main.s_Idle~q\,
	combout => \inst4|Selector18~0_combout\);

-- Location: FF_X28_Y5_N5
\inst4|r_SM_Main.s_RX_Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_SM_Main.s_RX_Start_Bit~q\);

-- Location: LCCOMB_X28_Y5_N14
\inst4|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector19~0_combout\ = (\inst4|Equal0~3_combout\ & \inst4|r_SM_Main.s_RX_Start_Bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Equal0~3_combout\,
	datac => \inst4|r_SM_Main.s_RX_Start_Bit~q\,
	combout => \inst4|Selector19~0_combout\);

-- Location: LCCOMB_X28_Y5_N6
\inst4|r_Clk_Count[7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[7]~39_combout\ = (\inst4|r_SM_Main.s_RX_Stop_Bit~q\) # (\inst4|r_SM_Main.s_RX_Data_Bits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \inst4|r_SM_Main.s_RX_Data_Bits~q\,
	combout => \inst4|r_Clk_Count[7]~39_combout\);

-- Location: LCCOMB_X29_Y5_N20
\inst4|r_Clk_Count[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_Clk_Count[7]~40_combout\ = (\inst4|Selector19~0_combout\) # (((\inst4|r_Clk_Count[7]~39_combout\ & \inst4|LessThan1~4_combout\)) # (!\inst4|r_SM_Main.s_Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector19~0_combout\,
	datab => \inst4|r_SM_Main.s_Idle~q\,
	datac => \inst4|r_Clk_Count[7]~39_combout\,
	datad => \inst4|LessThan1~4_combout\,
	combout => \inst4|r_Clk_Count[7]~40_combout\);

-- Location: FF_X30_Y3_N3
\inst4|r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_Clk_Count[0]~13_combout\,
	sclr => \inst4|r_Clk_Count[7]~40_combout\,
	ena => \inst4|r_Clk_Count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Clk_Count\(0));

-- Location: LCCOMB_X29_Y3_N12
\inst4|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (\inst4|r_Clk_Count\(0) & (!\inst4|r_Clk_Count\(7) & (\inst4|r_Clk_Count\(1) & !\inst4|r_Clk_Count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Clk_Count\(0),
	datab => \inst4|r_Clk_Count\(7),
	datac => \inst4|r_Clk_Count\(1),
	datad => \inst4|r_Clk_Count\(8),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y3_N18
\inst4|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~2_combout\ = (\inst4|r_Clk_Count\(11) & (!\inst4|r_Clk_Count\(6) & (\inst4|r_Clk_Count\(9) & !\inst4|r_Clk_Count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Clk_Count\(11),
	datab => \inst4|r_Clk_Count\(6),
	datac => \inst4|r_Clk_Count\(9),
	datad => \inst4|r_Clk_Count\(10),
	combout => \inst4|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y3_N30
\inst4|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = (!\inst4|r_Clk_Count\(4) & (\inst4|r_Clk_Count\(5) & (\inst4|r_Clk_Count\(3) & !\inst4|r_Clk_Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Clk_Count\(4),
	datab => \inst4|r_Clk_Count\(5),
	datac => \inst4|r_Clk_Count\(3),
	datad => \inst4|r_Clk_Count\(2),
	combout => \inst4|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y3_N28
\inst4|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~3_combout\ = (\inst4|Equal0~0_combout\ & (\inst4|Equal0~2_combout\ & (\inst4|Equal0~1_combout\ & !\inst4|r_Clk_Count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~0_combout\,
	datab => \inst4|Equal0~2_combout\,
	datac => \inst4|Equal0~1_combout\,
	datad => \inst4|r_Clk_Count\(12),
	combout => \inst4|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y5_N16
\inst4|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector19~1_combout\ = (!\pin_serial~input_o\ & (\inst4|Equal0~3_combout\ & \inst4|r_SM_Main.s_RX_Start_Bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_serial~input_o\,
	datab => \inst4|Equal0~3_combout\,
	datac => \inst4|r_SM_Main.s_RX_Start_Bit~q\,
	combout => \inst4|Selector19~1_combout\);

-- Location: LCCOMB_X28_Y5_N12
\inst4|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector19~2_combout\ = (\inst4|Selector19~1_combout\) # ((\inst4|r_SM_Main.s_RX_Data_Bits~q\ & ((!\inst4|LessThan1~4_combout\) # (!\inst4|r_SM_Main.s_RX_Stop_Bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector19~1_combout\,
	datab => \inst4|r_SM_Main.s_RX_Stop_Bit~0_combout\,
	datac => \inst4|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \inst4|LessThan1~4_combout\,
	combout => \inst4|Selector19~2_combout\);

-- Location: FF_X28_Y5_N13
\inst4|r_SM_Main.s_RX_Data_Bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|Selector19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_SM_Main.s_RX_Data_Bits~q\);

-- Location: LCCOMB_X28_Y5_N2
\inst4|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector16~0_combout\ = (\inst4|r_SM_Main.s_RX_Data_Bits~q\ & ((\inst4|r_Clk_Count\(12)))) # (!\inst4|r_SM_Main.s_RX_Data_Bits~q\ & (\inst4|r_SM_Main.s_Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \inst4|r_SM_Main.s_Idle~q\,
	datac => \inst4|r_Clk_Count\(12),
	combout => \inst4|Selector16~0_combout\);

-- Location: LCCOMB_X29_Y3_N6
\inst4|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~5_combout\ = (\inst4|r_Clk_Count\(11) & (\inst4|LessThan1~1_combout\ & (\inst4|LessThan1~2_combout\))) # (!\inst4|r_Clk_Count\(11) & (((\inst4|LessThan1~1_combout\ & \inst4|LessThan1~2_combout\)) # (!\inst4|r_Clk_Count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Clk_Count\(11),
	datab => \inst4|LessThan1~1_combout\,
	datac => \inst4|LessThan1~2_combout\,
	datad => \inst4|r_Clk_Count\(10),
	combout => \inst4|LessThan1~5_combout\);

-- Location: LCCOMB_X28_Y5_N30
\inst4|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector16~1_combout\ = (\inst4|r_SM_Main.s_RX_Data_Bits~q\ & (\inst4|r_Bit_Index\(0) $ (((\inst4|Selector16~0_combout\ & !\inst4|LessThan1~5_combout\))))) # (!\inst4|r_SM_Main.s_RX_Data_Bits~q\ & (\inst4|Selector16~0_combout\ & 
-- (\inst4|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \inst4|Selector16~0_combout\,
	datac => \inst4|r_Bit_Index\(0),
	datad => \inst4|LessThan1~5_combout\,
	combout => \inst4|Selector16~1_combout\);

-- Location: FF_X28_Y5_N31
\inst4|r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_Bit_Index\(0));

-- Location: LCCOMB_X27_Y5_N14
\inst4|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~1_combout\ = (!\inst4|r_Bit_Index\(0) & (\inst4|Decoder0~0_combout\ & (\inst4|r_Bit_Index\(1) & \inst4|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Bit_Index\(0),
	datab => \inst4|Decoder0~0_combout\,
	datac => \inst4|r_Bit_Index\(1),
	datad => \inst4|r_Bit_Index\(2),
	combout => \inst4|Decoder0~1_combout\);

-- Location: LCCOMB_X27_Y5_N28
\inst4|r_RX_Byte[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_RX_Byte[6]~0_combout\ = (\inst4|Decoder0~1_combout\ & (\pin_serial~input_o\)) # (!\inst4|Decoder0~1_combout\ & ((\inst4|r_RX_Byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Decoder0~1_combout\,
	datac => \pin_serial~input_o\,
	datad => \inst4|r_RX_Byte\(6),
	combout => \inst4|r_RX_Byte[6]~0_combout\);

-- Location: FF_X27_Y5_N5
\inst4|r_RX_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \inst4|r_RX_Byte[6]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_RX_Byte\(6));

-- Location: LCCOMB_X27_Y5_N20
\inst4|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~2_combout\ = (\inst4|r_Bit_Index\(0) & (\inst4|Decoder0~0_combout\ & (\inst4|r_Bit_Index\(1) & \inst4|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Bit_Index\(0),
	datab => \inst4|Decoder0~0_combout\,
	datac => \inst4|r_Bit_Index\(1),
	datad => \inst4|r_Bit_Index\(2),
	combout => \inst4|Decoder0~2_combout\);

-- Location: LCCOMB_X27_Y5_N18
\inst4|r_RX_Byte[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_RX_Byte[7]~1_combout\ = (\inst4|Decoder0~2_combout\ & (\pin_serial~input_o\)) # (!\inst4|Decoder0~2_combout\ & ((\inst4|r_RX_Byte\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pin_serial~input_o\,
	datac => \inst4|r_RX_Byte\(7),
	datad => \inst4|Decoder0~2_combout\,
	combout => \inst4|r_RX_Byte[7]~1_combout\);

-- Location: FF_X27_Y5_N19
\inst4|r_RX_Byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_RX_Byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_RX_Byte\(7));

-- Location: LCCOMB_X27_Y5_N8
\inst9|dir\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|dir~combout\ = (\inst4|r_RX_Byte\(6) & (\inst9|dir~combout\)) # (!\inst4|r_RX_Byte\(6) & ((\inst4|r_RX_Byte\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|dir~combout\,
	datac => \inst4|r_RX_Byte\(6),
	datad => \inst4|r_RX_Byte\(7),
	combout => \inst9|dir~combout\);

-- Location: PLL_1
\inst1|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 250,
	c0_initial => 1,
	c0_low => 250,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 50,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 10,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 250,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y2_N0
\inst2|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~0_combout\ = \inst2|count\(0) $ (VCC)
-- \inst2|Add1~1\ = CARRY(\inst2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(0),
	datad => VCC,
	combout => \inst2|Add1~0_combout\,
	cout => \inst2|Add1~1\);

-- Location: LCCOMB_X22_Y3_N4
\inst2|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~5_combout\ = (!\inst2|Equal0~4_combout\ & \inst2|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Add1~0_combout\,
	combout => \inst2|count~5_combout\);

-- Location: FF_X22_Y3_N5
\inst2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(0));

-- Location: LCCOMB_X22_Y2_N2
\inst2|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~2_combout\ = (\inst2|count\(1) & (!\inst2|Add1~1\)) # (!\inst2|count\(1) & ((\inst2|Add1~1\) # (GND)))
-- \inst2|Add1~3\ = CARRY((!\inst2|Add1~1\) # (!\inst2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(1),
	datad => VCC,
	cin => \inst2|Add1~1\,
	combout => \inst2|Add1~2_combout\,
	cout => \inst2|Add1~3\);

-- Location: FF_X22_Y2_N3
\inst2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(1));

-- Location: LCCOMB_X22_Y2_N4
\inst2|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~4_combout\ = (\inst2|count\(2) & (\inst2|Add1~3\ $ (GND))) # (!\inst2|count\(2) & (!\inst2|Add1~3\ & VCC))
-- \inst2|Add1~5\ = CARRY((\inst2|count\(2) & !\inst2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(2),
	datad => VCC,
	cin => \inst2|Add1~3\,
	combout => \inst2|Add1~4_combout\,
	cout => \inst2|Add1~5\);

-- Location: FF_X22_Y2_N5
\inst2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(2));

-- Location: LCCOMB_X22_Y2_N6
\inst2|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~6_combout\ = (\inst2|count\(3) & (!\inst2|Add1~5\)) # (!\inst2|count\(3) & ((\inst2|Add1~5\) # (GND)))
-- \inst2|Add1~7\ = CARRY((!\inst2|Add1~5\) # (!\inst2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(3),
	datad => VCC,
	cin => \inst2|Add1~5\,
	combout => \inst2|Add1~6_combout\,
	cout => \inst2|Add1~7\);

-- Location: FF_X22_Y2_N7
\inst2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(3));

-- Location: LCCOMB_X22_Y2_N8
\inst2|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~8_combout\ = (\inst2|count\(4) & (\inst2|Add1~7\ $ (GND))) # (!\inst2|count\(4) & (!\inst2|Add1~7\ & VCC))
-- \inst2|Add1~9\ = CARRY((\inst2|count\(4) & !\inst2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(4),
	datad => VCC,
	cin => \inst2|Add1~7\,
	combout => \inst2|Add1~8_combout\,
	cout => \inst2|Add1~9\);

-- Location: FF_X22_Y2_N9
\inst2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(4));

-- Location: LCCOMB_X22_Y2_N10
\inst2|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~10_combout\ = (\inst2|count\(5) & (!\inst2|Add1~9\)) # (!\inst2|count\(5) & ((\inst2|Add1~9\) # (GND)))
-- \inst2|Add1~11\ = CARRY((!\inst2|Add1~9\) # (!\inst2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(5),
	datad => VCC,
	cin => \inst2|Add1~9\,
	combout => \inst2|Add1~10_combout\,
	cout => \inst2|Add1~11\);

-- Location: LCCOMB_X23_Y2_N0
\inst2|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~4_combout\ = (!\inst2|Equal0~4_combout\ & \inst2|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Add1~10_combout\,
	combout => \inst2|count~4_combout\);

-- Location: FF_X23_Y2_N1
\inst2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(5));

-- Location: LCCOMB_X22_Y2_N12
\inst2|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~12_combout\ = (\inst2|count\(6) & (\inst2|Add1~11\ $ (GND))) # (!\inst2|count\(6) & (!\inst2|Add1~11\ & VCC))
-- \inst2|Add1~13\ = CARRY((\inst2|count\(6) & !\inst2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(6),
	datad => VCC,
	cin => \inst2|Add1~11\,
	combout => \inst2|Add1~12_combout\,
	cout => \inst2|Add1~13\);

-- Location: FF_X22_Y2_N13
\inst2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(6));

-- Location: LCCOMB_X22_Y2_N14
\inst2|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~14_combout\ = (\inst2|count\(7) & (!\inst2|Add1~13\)) # (!\inst2|count\(7) & ((\inst2|Add1~13\) # (GND)))
-- \inst2|Add1~15\ = CARRY((!\inst2|Add1~13\) # (!\inst2|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(7),
	datad => VCC,
	cin => \inst2|Add1~13\,
	combout => \inst2|Add1~14_combout\,
	cout => \inst2|Add1~15\);

-- Location: FF_X22_Y2_N15
\inst2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(7));

-- Location: LCCOMB_X22_Y2_N16
\inst2|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~16_combout\ = (\inst2|count\(8) & (\inst2|Add1~15\ $ (GND))) # (!\inst2|count\(8) & (!\inst2|Add1~15\ & VCC))
-- \inst2|Add1~17\ = CARRY((\inst2|count\(8) & !\inst2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(8),
	datad => VCC,
	cin => \inst2|Add1~15\,
	combout => \inst2|Add1~16_combout\,
	cout => \inst2|Add1~17\);

-- Location: FF_X22_Y2_N17
\inst2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(8));

-- Location: LCCOMB_X22_Y2_N18
\inst2|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~18_combout\ = (\inst2|count\(9) & (!\inst2|Add1~17\)) # (!\inst2|count\(9) & ((\inst2|Add1~17\) # (GND)))
-- \inst2|Add1~19\ = CARRY((!\inst2|Add1~17\) # (!\inst2|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(9),
	datad => VCC,
	cin => \inst2|Add1~17\,
	combout => \inst2|Add1~18_combout\,
	cout => \inst2|Add1~19\);

-- Location: LCCOMB_X23_Y2_N2
\inst2|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~3_combout\ = (!\inst2|Equal0~4_combout\ & \inst2|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Add1~18_combout\,
	combout => \inst2|count~3_combout\);

-- Location: FF_X23_Y2_N3
\inst2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(9));

-- Location: LCCOMB_X22_Y2_N20
\inst2|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~20_combout\ = (\inst2|count\(10) & (\inst2|Add1~19\ $ (GND))) # (!\inst2|count\(10) & (!\inst2|Add1~19\ & VCC))
-- \inst2|Add1~21\ = CARRY((\inst2|count\(10) & !\inst2|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(10),
	datad => VCC,
	cin => \inst2|Add1~19\,
	combout => \inst2|Add1~20_combout\,
	cout => \inst2|Add1~21\);

-- Location: LCCOMB_X23_Y2_N4
\inst2|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~2_combout\ = (!\inst2|Equal0~4_combout\ & \inst2|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Add1~20_combout\,
	combout => \inst2|count~2_combout\);

-- Location: FF_X23_Y2_N5
\inst2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(10));

-- Location: LCCOMB_X23_Y2_N28
\inst2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst2|count\(8) & (\inst2|count\(9) & (\inst2|count\(10) & !\inst2|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(8),
	datab => \inst2|count\(9),
	datac => \inst2|count\(10),
	datad => \inst2|count\(7),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y2_N24
\inst2|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~24_combout\ = (\inst2|count\(12) & (\inst2|Add1~23\ $ (GND))) # (!\inst2|count\(12) & (!\inst2|Add1~23\ & VCC))
-- \inst2|Add1~25\ = CARRY((\inst2|count\(12) & !\inst2|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(12),
	datad => VCC,
	cin => \inst2|Add1~23\,
	combout => \inst2|Add1~24_combout\,
	cout => \inst2|Add1~25\);

-- Location: LCCOMB_X22_Y2_N26
\inst2|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~26_combout\ = (\inst2|count\(13) & (!\inst2|Add1~25\)) # (!\inst2|count\(13) & ((\inst2|Add1~25\) # (GND)))
-- \inst2|Add1~27\ = CARRY((!\inst2|Add1~25\) # (!\inst2|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(13),
	datad => VCC,
	cin => \inst2|Add1~25\,
	combout => \inst2|Add1~26_combout\,
	cout => \inst2|Add1~27\);

-- Location: FF_X22_Y2_N27
\inst2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(13));

-- Location: LCCOMB_X22_Y2_N28
\inst2|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~28_combout\ = \inst2|count\(14) $ (!\inst2|Add1~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(14),
	cin => \inst2|Add1~27\,
	combout => \inst2|Add1~28_combout\);

-- Location: LCCOMB_X22_Y3_N12
\inst2|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~0_combout\ = (!\inst2|Equal0~4_combout\ & \inst2|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Add1~28_combout\,
	combout => \inst2|count~0_combout\);

-- Location: FF_X22_Y3_N13
\inst2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(14));

-- Location: LCCOMB_X20_Y2_N18
\inst2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|count\(12) & (!\inst2|count\(13) & (\inst2|count\(11) & \inst2|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(12),
	datab => \inst2|count\(13),
	datac => \inst2|count\(11),
	datad => \inst2|count\(14),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y2_N30
\inst2|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst2|count\(1) & (!\inst2|count\(2) & !\inst2|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(1),
	datac => \inst2|count\(2),
	datad => \inst2|count\(0),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y2_N30
\inst2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst2|count\(6) & (\inst2|count\(5) & (!\inst2|count\(3) & !\inst2|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(6),
	datab => \inst2|count\(5),
	datac => \inst2|count\(3),
	datad => \inst2|count\(4),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X20_Y2_N28
\inst2|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~1_combout\ & (\inst2|Equal0~0_combout\ & (\inst2|Equal0~3_combout\ & \inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Equal0~3_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y2_N22
\inst2|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~22_combout\ = (\inst2|count\(11) & (!\inst2|Add1~21\)) # (!\inst2|count\(11) & ((\inst2|Add1~21\) # (GND)))
-- \inst2|Add1~23\ = CARRY((!\inst2|Add1~21\) # (!\inst2|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(11),
	datad => VCC,
	cin => \inst2|Add1~21\,
	combout => \inst2|Add1~22_combout\,
	cout => \inst2|Add1~23\);

-- Location: LCCOMB_X22_Y3_N30
\inst2|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~1_combout\ = (!\inst2|Equal0~4_combout\ & \inst2|Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Add1~22_combout\,
	combout => \inst2|count~1_combout\);

-- Location: FF_X22_Y3_N31
\inst2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(11));

-- Location: FF_X22_Y2_N25
\inst2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(12));

-- Location: LCCOMB_X27_Y5_N2
\inst4|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~4_combout\ = (!\inst4|r_Bit_Index\(0) & (\inst4|Decoder0~0_combout\ & (!\inst4|r_Bit_Index\(1) & \inst4|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Bit_Index\(0),
	datab => \inst4|Decoder0~0_combout\,
	datac => \inst4|r_Bit_Index\(1),
	datad => \inst4|r_Bit_Index\(2),
	combout => \inst4|Decoder0~4_combout\);

-- Location: LCCOMB_X28_Y5_N0
\inst4|r_RX_Byte[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_RX_Byte[4]~3_combout\ = (\inst4|Decoder0~4_combout\ & (\pin_serial~input_o\)) # (!\inst4|Decoder0~4_combout\ & ((\inst4|r_RX_Byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_serial~input_o\,
	datac => \inst4|r_RX_Byte\(4),
	datad => \inst4|Decoder0~4_combout\,
	combout => \inst4|r_RX_Byte[4]~3_combout\);

-- Location: FF_X28_Y5_N1
\inst4|r_RX_Byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_RX_Byte[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_RX_Byte\(4));

-- Location: LCCOMB_X27_Y5_N16
\inst4|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~6_combout\ = (!\inst4|r_Bit_Index\(0) & (\inst4|Decoder0~0_combout\ & (\inst4|r_Bit_Index\(1) & !\inst4|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Bit_Index\(0),
	datab => \inst4|Decoder0~0_combout\,
	datac => \inst4|r_Bit_Index\(1),
	datad => \inst4|r_Bit_Index\(2),
	combout => \inst4|Decoder0~6_combout\);

-- Location: LCCOMB_X27_Y2_N20
\inst4|r_RX_Byte[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_RX_Byte[2]~5_combout\ = (\inst4|Decoder0~6_combout\ & (\pin_serial~input_o\)) # (!\inst4|Decoder0~6_combout\ & ((\inst4|r_RX_Byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_serial~input_o\,
	datac => \inst4|r_RX_Byte\(2),
	datad => \inst4|Decoder0~6_combout\,
	combout => \inst4|r_RX_Byte[2]~5_combout\);

-- Location: FF_X27_Y2_N21
\inst4|r_RX_Byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_RX_Byte[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_RX_Byte\(2));

-- Location: LCCOMB_X27_Y5_N24
\inst4|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~5_combout\ = (\inst4|r_Bit_Index\(0) & (\inst4|Decoder0~0_combout\ & (\inst4|r_Bit_Index\(1) & !\inst4|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Bit_Index\(0),
	datab => \inst4|Decoder0~0_combout\,
	datac => \inst4|r_Bit_Index\(1),
	datad => \inst4|r_Bit_Index\(2),
	combout => \inst4|Decoder0~5_combout\);

-- Location: LCCOMB_X27_Y5_N6
\inst4|r_RX_Byte[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_RX_Byte[3]~4_combout\ = (\inst4|Decoder0~5_combout\ & (\pin_serial~input_o\)) # (!\inst4|Decoder0~5_combout\ & ((\inst4|r_RX_Byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pin_serial~input_o\,
	datac => \inst4|r_RX_Byte\(3),
	datad => \inst4|Decoder0~5_combout\,
	combout => \inst4|r_RX_Byte[3]~4_combout\);

-- Location: FF_X27_Y5_N7
\inst4|r_RX_Byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_RX_Byte[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_RX_Byte\(3));

-- Location: LCCOMB_X25_Y2_N24
\inst2|Mult0|mult_core|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|_~1_combout\ = (\inst4|r_RX_Byte\(4) & (\inst4|r_RX_Byte\(2) & \inst4|r_RX_Byte\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|r_RX_Byte\(4),
	datac => \inst4|r_RX_Byte\(2),
	datad => \inst4|r_RX_Byte\(3),
	combout => \inst2|Mult0|mult_core|_~1_combout\);

-- Location: LCCOMB_X25_Y2_N18
\inst2|Mult0|mult_core|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|_~0_combout\ = (\inst4|r_RX_Byte\(4) & (!\inst4|r_RX_Byte\(2) & \inst4|r_RX_Byte\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|r_RX_Byte\(4),
	datac => \inst4|r_RX_Byte\(2),
	datad => \inst4|r_RX_Byte\(3),
	combout => \inst2|Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X25_Y2_N22
\inst2|Mult0|mult_core|romout[1][5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[1][5]~0_combout\ = (\inst4|r_RX_Byte\(4) & ((!\inst4|r_RX_Byte\(3)))) # (!\inst4|r_RX_Byte\(4) & (\inst4|r_RX_Byte\(2) & \inst4|r_RX_Byte\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|r_RX_Byte\(4),
	datac => \inst4|r_RX_Byte\(2),
	datad => \inst4|r_RX_Byte\(3),
	combout => \inst2|Mult0|mult_core|romout[1][5]~0_combout\);

-- Location: LCCOMB_X25_Y2_N30
\inst2|Mult0|mult_core|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|_~3_combout\ = (\inst4|r_RX_Byte\(4) & (\inst4|r_RX_Byte\(2) & !\inst4|r_RX_Byte\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|r_RX_Byte\(4),
	datac => \inst4|r_RX_Byte\(2),
	datad => \inst4|r_RX_Byte\(3),
	combout => \inst2|Mult0|mult_core|_~3_combout\);

-- Location: LCCOMB_X25_Y2_N16
\inst2|Mult0|mult_core|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|_~2_combout\ = (!\inst4|r_RX_Byte\(4) & (!\inst4|r_RX_Byte\(2) & \inst4|r_RX_Byte\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|r_RX_Byte\(4),
	datac => \inst4|r_RX_Byte\(2),
	datad => \inst4|r_RX_Byte\(3),
	combout => \inst2|Mult0|mult_core|_~2_combout\);

-- Location: LCCOMB_X27_Y5_N10
\inst4|Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~8_combout\ = (!\inst4|r_Bit_Index\(0) & (\inst4|Decoder0~0_combout\ & (!\inst4|r_Bit_Index\(1) & !\inst4|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Bit_Index\(0),
	datab => \inst4|Decoder0~0_combout\,
	datac => \inst4|r_Bit_Index\(1),
	datad => \inst4|r_Bit_Index\(2),
	combout => \inst4|Decoder0~8_combout\);

-- Location: LCCOMB_X24_Y2_N26
\inst4|r_RX_Byte[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_RX_Byte[0]~7_combout\ = (\inst4|Decoder0~8_combout\ & (\pin_serial~input_o\)) # (!\inst4|Decoder0~8_combout\ & ((\inst4|r_RX_Byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_serial~input_o\,
	datac => \inst4|r_RX_Byte\(0),
	datad => \inst4|Decoder0~8_combout\,
	combout => \inst4|r_RX_Byte[0]~7_combout\);

-- Location: FF_X24_Y2_N27
\inst4|r_RX_Byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_RX_Byte[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_RX_Byte\(0));

-- Location: LCCOMB_X27_Y5_N22
\inst4|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~7_combout\ = (\inst4|r_Bit_Index\(0) & (\inst4|Decoder0~0_combout\ & (!\inst4|r_Bit_Index\(1) & !\inst4|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Bit_Index\(0),
	datab => \inst4|Decoder0~0_combout\,
	datac => \inst4|r_Bit_Index\(1),
	datad => \inst4|r_Bit_Index\(2),
	combout => \inst4|Decoder0~7_combout\);

-- Location: LCCOMB_X24_Y2_N24
\inst4|r_RX_Byte[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_RX_Byte[1]~6_combout\ = (\inst4|Decoder0~7_combout\ & (\pin_serial~input_o\)) # (!\inst4|Decoder0~7_combout\ & ((\inst4|r_RX_Byte\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_serial~input_o\,
	datac => \inst4|r_RX_Byte\(1),
	datad => \inst4|Decoder0~7_combout\,
	combout => \inst4|r_RX_Byte[1]~6_combout\);

-- Location: FF_X24_Y2_N25
\inst4|r_RX_Byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_RX_Byte[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_RX_Byte\(1));

-- Location: LCCOMB_X24_Y2_N0
\inst2|Mult0|mult_core|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|_~4_combout\ = (\inst4|r_RX_Byte\(0) & \inst4|r_RX_Byte\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|r_RX_Byte\(0),
	datad => \inst4|r_RX_Byte\(1),
	combout => \inst2|Mult0|mult_core|_~4_combout\);

-- Location: LCCOMB_X25_Y2_N20
\inst2|Mult0|mult_core|romout[1][3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[1][3]~1_combout\ = (\inst4|r_RX_Byte\(4) & (\inst4|r_RX_Byte\(2) $ (!\inst4|r_RX_Byte\(3)))) # (!\inst4|r_RX_Byte\(4) & (\inst4|r_RX_Byte\(2) & !\inst4|r_RX_Byte\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|r_RX_Byte\(4),
	datac => \inst4|r_RX_Byte\(2),
	datad => \inst4|r_RX_Byte\(3),
	combout => \inst2|Mult0|mult_core|romout[1][3]~1_combout\);

-- Location: LCCOMB_X25_Y2_N26
\inst2|Mult0|mult_core|romout[1][2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[1][2]~2_combout\ = \inst4|r_RX_Byte\(4) $ (((!\inst4|r_RX_Byte\(2) & \inst4|r_RX_Byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|r_RX_Byte\(4),
	datac => \inst4|r_RX_Byte\(2),
	datad => \inst4|r_RX_Byte\(3),
	combout => \inst2|Mult0|mult_core|romout[1][2]~2_combout\);

-- Location: LCCOMB_X24_Y2_N30
\inst2|Mult0|mult_core|_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|_~5_combout\ = (!\inst4|r_RX_Byte\(0) & \inst4|r_RX_Byte\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|r_RX_Byte\(0),
	datad => \inst4|r_RX_Byte\(1),
	combout => \inst2|Mult0|mult_core|_~5_combout\);

-- Location: LCCOMB_X25_Y2_N28
\inst2|Mult0|mult_core|romout[1][1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[1][1]~3_combout\ = \inst4|r_RX_Byte\(2) $ (\inst4|r_RX_Byte\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|r_RX_Byte\(2),
	datad => \inst4|r_RX_Byte\(3),
	combout => \inst2|Mult0|mult_core|romout[1][1]~3_combout\);

-- Location: LCCOMB_X24_Y2_N28
\inst2|Mult0|mult_core|_~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|_~6_combout\ = (\inst4|r_RX_Byte\(0) & !\inst4|r_RX_Byte\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|r_RX_Byte\(0),
	datad => \inst4|r_RX_Byte\(1),
	combout => \inst2|Mult0|mult_core|_~6_combout\);

-- Location: LCCOMB_X25_Y2_N0
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\inst4|r_RX_Byte\(2) & (\inst2|Mult0|mult_core|_~5_combout\ $ (VCC))) # (!\inst4|r_RX_Byte\(2) & (\inst2|Mult0|mult_core|_~5_combout\ & VCC))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\inst4|r_RX_Byte\(2) & \inst2|Mult0|mult_core|_~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_RX_Byte\(2),
	datab => \inst2|Mult0|mult_core|_~5_combout\,
	datad => VCC,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X25_Y2_N2
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\inst2|Mult0|mult_core|romout[1][1]~3_combout\ & ((\inst2|Mult0|mult_core|_~6_combout\ & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\inst2|Mult0|mult_core|_~6_combout\ & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\inst2|Mult0|mult_core|romout[1][1]~3_combout\ & ((\inst2|Mult0|mult_core|_~6_combout\ & 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\inst2|Mult0|mult_core|_~6_combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\inst2|Mult0|mult_core|romout[1][1]~3_combout\ & (!\inst2|Mult0|mult_core|_~6_combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\inst2|Mult0|mult_core|romout[1][1]~3_combout\ & ((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\inst2|Mult0|mult_core|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|romout[1][1]~3_combout\,
	datab => \inst2|Mult0|mult_core|_~6_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X25_Y2_N4
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\inst2|Mult0|mult_core|romout[1][2]~2_combout\ $ (\inst2|Mult0|mult_core|_~5_combout\ $ (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\inst2|Mult0|mult_core|romout[1][2]~2_combout\ & ((\inst2|Mult0|mult_core|_~5_combout\) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\inst2|Mult0|mult_core|romout[1][2]~2_combout\ & (\inst2|Mult0|mult_core|_~5_combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|romout[1][2]~2_combout\,
	datab => \inst2|Mult0|mult_core|_~5_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X25_Y2_N6
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\inst2|Mult0|mult_core|_~4_combout\ & ((\inst2|Mult0|mult_core|romout[1][3]~1_combout\ & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\inst2|Mult0|mult_core|romout[1][3]~1_combout\ & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\inst2|Mult0|mult_core|_~4_combout\ & ((\inst2|Mult0|mult_core|romout[1][3]~1_combout\ & 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\inst2|Mult0|mult_core|romout[1][3]~1_combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\inst2|Mult0|mult_core|_~4_combout\ & (!\inst2|Mult0|mult_core|romout[1][3]~1_combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\inst2|Mult0|mult_core|_~4_combout\ & ((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\inst2|Mult0|mult_core|romout[1][3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|_~4_combout\,
	datab => \inst2|Mult0|mult_core|romout[1][3]~1_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X25_Y2_N8
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ & (((\inst2|Mult0|mult_core|_~3_combout\) # (\inst2|Mult0|mult_core|_~2_combout\)))) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ & ((((\inst2|Mult0|mult_core|_~3_combout\) # (\inst2|Mult0|mult_core|_~2_combout\)))))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ & ((\inst2|Mult0|mult_core|_~3_combout\) # (\inst2|Mult0|mult_core|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|_~3_combout\,
	datab => \inst2|Mult0|mult_core|_~2_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X25_Y2_N10
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\inst2|Mult0|mult_core|romout[1][5]~0_combout\ & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\inst2|Mult0|mult_core|romout[1][5]~0_combout\ & 
-- ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\inst2|Mult0|mult_core|romout[1][5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|romout[1][5]~0_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X25_Y2_N12
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ $ (((!\inst2|Mult0|mult_core|_~1_combout\ & !\inst2|Mult0|mult_core|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|_~1_combout\,
	datad => \inst2|Mult0|mult_core|_~0_combout\,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\);

-- Location: LCCOMB_X24_Y2_N2
\inst2|Mult0|mult_core|romout[0][3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[0][3]~4_combout\ = \inst4|r_RX_Byte\(0) $ (\inst4|r_RX_Byte\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|r_RX_Byte\(0),
	datad => \inst4|r_RX_Byte\(1),
	combout => \inst2|Mult0|mult_core|romout[0][3]~4_combout\);

-- Location: LCCOMB_X24_Y2_N4
\inst2|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_cout\ = CARRY(\inst4|r_RX_Byte\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_RX_Byte\(0),
	datad => VCC,
	cout => \inst2|Add0~1_cout\);

-- Location: LCCOMB_X24_Y2_N6
\inst2|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~3_cout\ = CARRY((!\inst2|Mult0|mult_core|romout[0][3]~4_combout\ & !\inst2|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|romout[0][3]~4_combout\,
	datad => VCC,
	cin => \inst2|Add0~1_cout\,
	cout => \inst2|Add0~3_cout\);

-- Location: LCCOMB_X24_Y2_N8
\inst2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (\inst2|Add0~3_cout\ $ (GND))) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (!\inst2|Add0~3_cout\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & !\inst2|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~3_cout\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X24_Y2_N10
\inst2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\inst2|Add0~5\ & VCC)) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\inst2|Add0~5\))
-- \inst2|Add0~7\ = CARRY((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & !\inst2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X24_Y2_N12
\inst2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((GND) # (!\inst2|Add0~7\))) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\inst2|Add0~7\ $ (GND)))
-- \inst2|Add0~9\ = CARRY((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\) # (!\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X24_Y2_N14
\inst2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\inst2|Add0~9\ & VCC)) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\inst2|Add0~9\))
-- \inst2|Add0~11\ = CARRY((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & !\inst2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X24_Y2_N16
\inst2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\inst2|Add0~11\ $ (GND))) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X24_Y2_N18
\inst2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (\inst2|Add0~13\ & VCC)) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\inst2|Add0~13\))
-- \inst2|Add0~15\ = CARRY((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & !\inst2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X24_Y2_N20
\inst2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (\inst2|Add0~15\ $ (GND))) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X24_Y2_N22
\inst2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = \inst2|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\);

-- Location: LCCOMB_X22_Y3_N18
\inst2|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = (\inst2|count\(0) & \inst2|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(0),
	datac => \inst2|count\(1),
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y2_N6
\inst2|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~2_cout\ = CARRY(\inst2|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan1~0_combout\,
	datad => VCC,
	cout => \inst2|LessThan1~2_cout\);

-- Location: LCCOMB_X23_Y2_N8
\inst2|LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~4_cout\ = CARRY((\inst4|r_RX_Byte\(0) & (!\inst2|count\(2) & !\inst2|LessThan1~2_cout\)) # (!\inst4|r_RX_Byte\(0) & ((!\inst2|LessThan1~2_cout\) # (!\inst2|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_RX_Byte\(0),
	datab => \inst2|count\(2),
	datad => VCC,
	cin => \inst2|LessThan1~2_cout\,
	cout => \inst2|LessThan1~4_cout\);

-- Location: LCCOMB_X23_Y2_N10
\inst2|LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~6_cout\ = CARRY((\inst2|count\(3) & ((\inst4|r_RX_Byte\(1)) # (!\inst2|LessThan1~4_cout\))) # (!\inst2|count\(3) & (\inst4|r_RX_Byte\(1) & !\inst2|LessThan1~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(3),
	datab => \inst4|r_RX_Byte\(1),
	datad => VCC,
	cin => \inst2|LessThan1~4_cout\,
	cout => \inst2|LessThan1~6_cout\);

-- Location: LCCOMB_X23_Y2_N12
\inst2|LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~8_cout\ = CARRY((\inst2|count\(4) & (\inst2|Add0~4_combout\ & !\inst2|LessThan1~6_cout\)) # (!\inst2|count\(4) & ((\inst2|Add0~4_combout\) # (!\inst2|LessThan1~6_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(4),
	datab => \inst2|Add0~4_combout\,
	datad => VCC,
	cin => \inst2|LessThan1~6_cout\,
	cout => \inst2|LessThan1~8_cout\);

-- Location: LCCOMB_X23_Y2_N14
\inst2|LessThan1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~10_cout\ = CARRY((\inst2|Add0~6_combout\ & (\inst2|count\(5) & !\inst2|LessThan1~8_cout\)) # (!\inst2|Add0~6_combout\ & ((\inst2|count\(5)) # (!\inst2|LessThan1~8_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~6_combout\,
	datab => \inst2|count\(5),
	datad => VCC,
	cin => \inst2|LessThan1~8_cout\,
	cout => \inst2|LessThan1~10_cout\);

-- Location: LCCOMB_X23_Y2_N16
\inst2|LessThan1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~12_cout\ = CARRY((\inst2|count\(6) & (\inst2|Add0~8_combout\ & !\inst2|LessThan1~10_cout\)) # (!\inst2|count\(6) & ((\inst2|Add0~8_combout\) # (!\inst2|LessThan1~10_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(6),
	datab => \inst2|Add0~8_combout\,
	datad => VCC,
	cin => \inst2|LessThan1~10_cout\,
	cout => \inst2|LessThan1~12_cout\);

-- Location: LCCOMB_X23_Y2_N18
\inst2|LessThan1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~14_cout\ = CARRY((\inst2|count\(7) & ((!\inst2|LessThan1~12_cout\) # (!\inst2|Add0~10_combout\))) # (!\inst2|count\(7) & (!\inst2|Add0~10_combout\ & !\inst2|LessThan1~12_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(7),
	datab => \inst2|Add0~10_combout\,
	datad => VCC,
	cin => \inst2|LessThan1~12_cout\,
	cout => \inst2|LessThan1~14_cout\);

-- Location: LCCOMB_X23_Y2_N20
\inst2|LessThan1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~16_cout\ = CARRY((\inst2|count\(8) & (\inst2|Add0~12_combout\ & !\inst2|LessThan1~14_cout\)) # (!\inst2|count\(8) & ((\inst2|Add0~12_combout\) # (!\inst2|LessThan1~14_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(8),
	datab => \inst2|Add0~12_combout\,
	datad => VCC,
	cin => \inst2|LessThan1~14_cout\,
	cout => \inst2|LessThan1~16_cout\);

-- Location: LCCOMB_X23_Y2_N22
\inst2|LessThan1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~18_cout\ = CARRY((\inst2|count\(9) & ((!\inst2|LessThan1~16_cout\) # (!\inst2|Add0~14_combout\))) # (!\inst2|count\(9) & (!\inst2|Add0~14_combout\ & !\inst2|LessThan1~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(9),
	datab => \inst2|Add0~14_combout\,
	datad => VCC,
	cin => \inst2|LessThan1~16_cout\,
	cout => \inst2|LessThan1~18_cout\);

-- Location: LCCOMB_X23_Y2_N24
\inst2|LessThan1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~20_cout\ = CARRY((\inst2|Add0~16_combout\ & ((!\inst2|LessThan1~18_cout\) # (!\inst2|count\(10)))) # (!\inst2|Add0~16_combout\ & (!\inst2|count\(10) & !\inst2|LessThan1~18_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~16_combout\,
	datab => \inst2|count\(10),
	datad => VCC,
	cin => \inst2|LessThan1~18_cout\,
	cout => \inst2|LessThan1~20_cout\);

-- Location: LCCOMB_X23_Y2_N26
\inst2|LessThan1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~21_combout\ = (\inst2|count\(11) & ((!\inst2|Add0~18_combout\) # (!\inst2|LessThan1~20_cout\))) # (!\inst2|count\(11) & (!\inst2|LessThan1~20_cout\ & !\inst2|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(11),
	datad => \inst2|Add0~18_combout\,
	cin => \inst2|LessThan1~20_cout\,
	combout => \inst2|LessThan1~21_combout\);

-- Location: LCCOMB_X20_Y2_N4
\inst2|LessThan1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~23_combout\ = (!\inst2|count\(12) & (!\inst2|count\(13) & (!\inst2|LessThan1~21_combout\ & !\inst2|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(12),
	datab => \inst2|count\(13),
	datac => \inst2|LessThan1~21_combout\,
	datad => \inst2|count\(14),
	combout => \inst2|LessThan1~23_combout\);

-- Location: FF_X20_Y2_N5
\inst2|pwm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|LessThan1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pwm~q\);

-- Location: LCCOMB_X27_Y5_N30
\inst4|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~3_combout\ = (\inst4|r_Bit_Index\(0) & (\inst4|Decoder0~0_combout\ & (!\inst4|r_Bit_Index\(1) & \inst4|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|r_Bit_Index\(0),
	datab => \inst4|Decoder0~0_combout\,
	datac => \inst4|r_Bit_Index\(1),
	datad => \inst4|r_Bit_Index\(2),
	combout => \inst4|Decoder0~3_combout\);

-- Location: LCCOMB_X27_Y5_N0
\inst4|r_RX_Byte[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|r_RX_Byte[5]~2_combout\ = (\inst4|Decoder0~3_combout\ & (\pin_serial~input_o\)) # (!\inst4|Decoder0~3_combout\ & ((\inst4|r_RX_Byte\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Decoder0~3_combout\,
	datab => \pin_serial~input_o\,
	datac => \inst4|r_RX_Byte\(5),
	combout => \inst4|r_RX_Byte[5]~2_combout\);

-- Location: FF_X27_Y5_N1
\inst4|r_RX_Byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst4|r_RX_Byte[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|r_RX_Byte\(5));

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
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

-- Location: ADCBLOCK_X10_Y24_N0
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
END structure;


