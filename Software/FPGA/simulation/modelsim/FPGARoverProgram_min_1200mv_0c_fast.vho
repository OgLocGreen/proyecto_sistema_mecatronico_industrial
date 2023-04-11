-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/10/2023 18:30:19"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	GeneralControlScheme IS
    PORT (
	step : OUT std_logic;
	reloj : IN std_logic;
	paro : IN std_logic;
	dir_motor : IN std_logic;
	dir : OUT std_logic;
	leddir : OUT std_logic;
	ledstep : OUT std_logic
	);
END GeneralControlScheme;

-- Design Ports Information
-- step	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leddir	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledstep	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_motor	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- paro	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF GeneralControlScheme IS
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
SIGNAL ww_paro : std_logic;
SIGNAL ww_dir_motor : std_logic;
SIGNAL ww_dir : std_logic;
SIGNAL ww_leddir : std_logic;
SIGNAL ww_ledstep : std_logic;
SIGNAL \reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \step~output_o\ : std_logic;
SIGNAL \dir~output_o\ : std_logic;
SIGNAL \leddir~output_o\ : std_logic;
SIGNAL \ledstep~output_o\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \paro~input_o\ : std_logic;
SIGNAL \inst|prescaler:cnt[31]~q\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|LessThan2~2_combout\ : std_logic;
SIGNAL \inst|LessThan2~3_combout\ : std_logic;
SIGNAL \inst|LessThan2~6_combout\ : std_logic;
SIGNAL \inst|LessThan2~4_combout\ : std_logic;
SIGNAL \inst|LessThan2~5_combout\ : std_logic;
SIGNAL \inst|LessThan2~7_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[16]~0_combout\ : std_logic;
SIGNAL \inst|cnt~16_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[0]~q\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|cnt~15_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[1]~q\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|cnt~14_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[2]~q\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|cnt~13_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[3]~q\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|cnt~12_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[4]~q\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|cnt~11_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[5]~q\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|cnt~10_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[6]~q\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|cnt~9_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[7]~q\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|cnt~8_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[8]~q\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|cnt~7_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[9]~q\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|cnt~6_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[10]~q\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|cnt~5_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[11]~q\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|cnt~4_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[12]~q\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|cnt~3_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[13]~q\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|cnt~2_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[14]~q\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|cnt~1_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[15]~q\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|cnt~0_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[16]~q\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|cnt~29_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[17]~q\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|cnt~28_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[18]~q\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|cnt~27_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[19]~q\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|cnt~26_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[20]~q\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|cnt~25_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[21]~q\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|cnt~24_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[22]~q\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|cnt~23_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[23]~q\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|cnt~22_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[24]~q\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst|cnt~21_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[25]~q\ : std_logic;
SIGNAL \inst|Add0~51\ : std_logic;
SIGNAL \inst|Add0~52_combout\ : std_logic;
SIGNAL \inst|cnt~20_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[26]~q\ : std_logic;
SIGNAL \inst|Add0~53\ : std_logic;
SIGNAL \inst|Add0~54_combout\ : std_logic;
SIGNAL \inst|cnt~19_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[27]~q\ : std_logic;
SIGNAL \inst|Add0~55\ : std_logic;
SIGNAL \inst|Add0~56_combout\ : std_logic;
SIGNAL \inst|cnt~18_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[28]~q\ : std_logic;
SIGNAL \inst|Add0~57\ : std_logic;
SIGNAL \inst|Add0~58_combout\ : std_logic;
SIGNAL \inst|cnt~17_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[29]~q\ : std_logic;
SIGNAL \inst|Add0~59\ : std_logic;
SIGNAL \inst|Add0~60_combout\ : std_logic;
SIGNAL \inst|cnt~30_combout\ : std_logic;
SIGNAL \inst|prescaler:cnt[30]~q\ : std_logic;
SIGNAL \inst|Add0~61\ : std_logic;
SIGNAL \inst|Add0~62_combout\ : std_logic;
SIGNAL \inst|prescaler:bffer_clk~q\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~3_combout\ : std_logic;
SIGNAL \inst|LessThan1~4_combout\ : std_logic;
SIGNAL \inst|LessThan1~5_combout\ : std_logic;
SIGNAL \inst|LessThan1~6_combout\ : std_logic;
SIGNAL \inst|bffer_clk~0_combout\ : std_logic;
SIGNAL \inst|bffer_clk~1_combout\ : std_logic;
SIGNAL \inst|step~q\ : std_logic;
SIGNAL \dir_motor~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_step~q\ : std_logic;

BEGIN

step <= ww_step;
ww_reloj <= reloj;
ww_paro <= paro;
ww_dir_motor <= dir_motor;
dir <= ww_dir;
leddir <= ww_leddir;
ledstep <= ww_ledstep;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj~input_o\);
\inst|ALT_INV_step~q\ <= NOT \inst|step~q\;

-- Location: IOOBUF_X1_Y0_N9
\step~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_step~q\,
	devoe => ww_devoe,
	o => \step~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\dir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dir_motor~input_o\,
	devoe => ww_devoe,
	o => \dir~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\leddir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dir_motor~input_o\,
	devoe => ww_devoe,
	o => \leddir~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\ledstep~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_step~q\,
	devoe => ww_devoe,
	o => \ledstep~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\reloj~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj,
	o => \reloj~input_o\);

-- Location: CLKCTRL_G9
\reloj~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X0_Y24_N1
\paro~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_paro,
	o => \paro~input_o\);

-- Location: FF_X32_Y13_N31
\inst|prescaler:cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|Add0~62_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[31]~q\);

-- Location: LCCOMB_X32_Y14_N0
\inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|prescaler:cnt[0]~q\ $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|prescaler:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[0]~q\,
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X31_Y13_N24
\inst|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = (!\inst|Add0~38_combout\ & (!\inst|Add0~34_combout\ & (!\inst|Add0~40_combout\ & !\inst|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~38_combout\,
	datab => \inst|Add0~34_combout\,
	datac => \inst|Add0~40_combout\,
	datad => \inst|Add0~36_combout\,
	combout => \inst|LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y13_N2
\inst|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_combout\ = (!\inst|Add0~42_combout\ & (!\inst|Add0~46_combout\ & (!\inst|Add0~44_combout\ & \inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~42_combout\,
	datab => \inst|Add0~46_combout\,
	datac => \inst|Add0~44_combout\,
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|LessThan2~1_combout\);

-- Location: LCCOMB_X31_Y13_N12
\inst|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~2_combout\ = (!\inst|Add0~50_combout\ & (!\inst|Add0~48_combout\ & (!\inst|Add0~52_combout\ & \inst|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~50_combout\,
	datab => \inst|Add0~48_combout\,
	datac => \inst|Add0~52_combout\,
	datad => \inst|LessThan2~1_combout\,
	combout => \inst|LessThan2~2_combout\);

-- Location: LCCOMB_X31_Y13_N6
\inst|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~3_combout\ = (!\inst|Add0~56_combout\ & (!\inst|Add0~54_combout\ & (!\inst|Add0~58_combout\ & \inst|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~56_combout\,
	datab => \inst|Add0~54_combout\,
	datac => \inst|Add0~58_combout\,
	datad => \inst|LessThan2~2_combout\,
	combout => \inst|LessThan2~3_combout\);

-- Location: LCCOMB_X31_Y14_N12
\inst|LessThan2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~6_combout\ = (!\inst|Add0~24_combout\ & (!\inst|Add0~22_combout\ & (!\inst|Add0~28_combout\ & !\inst|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~24_combout\,
	datab => \inst|Add0~22_combout\,
	datac => \inst|Add0~28_combout\,
	datad => \inst|Add0~26_combout\,
	combout => \inst|LessThan2~6_combout\);

-- Location: LCCOMB_X31_Y14_N8
\inst|LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~4_combout\ = ((!\inst|Add0~10_combout\ & !\inst|Add0~12_combout\)) # (!\inst|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~10_combout\,
	datac => \inst|Add0~12_combout\,
	datad => \inst|Add0~14_combout\,
	combout => \inst|LessThan2~4_combout\);

-- Location: LCCOMB_X31_Y14_N2
\inst|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~5_combout\ = (((\inst|LessThan2~4_combout\ & !\inst|Add0~16_combout\)) # (!\inst|Add0~18_combout\)) # (!\inst|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~20_combout\,
	datab => \inst|Add0~18_combout\,
	datac => \inst|LessThan2~4_combout\,
	datad => \inst|Add0~16_combout\,
	combout => \inst|LessThan2~5_combout\);

-- Location: LCCOMB_X31_Y14_N6
\inst|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~7_combout\ = (((\inst|LessThan2~6_combout\ & \inst|LessThan2~5_combout\)) # (!\inst|Add0~32_combout\)) # (!\inst|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan2~6_combout\,
	datab => \inst|LessThan2~5_combout\,
	datac => \inst|Add0~30_combout\,
	datad => \inst|Add0~32_combout\,
	combout => \inst|LessThan2~7_combout\);

-- Location: LCCOMB_X31_Y13_N0
\inst|prescaler:cnt[16]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|prescaler:cnt[16]~0_combout\ = (\inst|Add0~62_combout\) # ((!\inst|Add0~60_combout\ & (\inst|LessThan2~3_combout\ & \inst|LessThan2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~62_combout\,
	datab => \inst|Add0~60_combout\,
	datac => \inst|LessThan2~3_combout\,
	datad => \inst|LessThan2~7_combout\,
	combout => \inst|prescaler:cnt[16]~0_combout\);

-- Location: LCCOMB_X33_Y14_N6
\inst|cnt~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~16_combout\ = (\inst|Add0~0_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~0_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~16_combout\);

-- Location: FF_X33_Y14_N7
\inst|prescaler:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~16_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[0]~q\);

-- Location: LCCOMB_X32_Y14_N2
\inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|prescaler:cnt[1]~q\ & (!\inst|Add0~1\)) # (!\inst|prescaler:cnt[1]~q\ & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|prescaler:cnt[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[1]~q\,
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X31_Y14_N16
\inst|cnt~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~15_combout\ = (\inst|Add0~2_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~15_combout\);

-- Location: FF_X31_Y14_N17
\inst|prescaler:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~15_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[1]~q\);

-- Location: LCCOMB_X32_Y14_N4
\inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|prescaler:cnt[2]~q\ & (\inst|Add0~3\ $ (GND))) # (!\inst|prescaler:cnt[2]~q\ & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|prescaler:cnt[2]~q\ & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[2]~q\,
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X33_Y14_N4
\inst|cnt~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~14_combout\ = (\inst|Add0~4_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~4_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~14_combout\);

-- Location: FF_X33_Y14_N5
\inst|prescaler:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~14_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[2]~q\);

-- Location: LCCOMB_X32_Y14_N6
\inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|prescaler:cnt[3]~q\ & (!\inst|Add0~5\)) # (!\inst|prescaler:cnt[3]~q\ & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|prescaler:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[3]~q\,
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X31_Y13_N14
\inst|cnt~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~13_combout\ = (\inst|Add0~6_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~6_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~13_combout\);

-- Location: FF_X31_Y13_N15
\inst|prescaler:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~13_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[3]~q\);

-- Location: LCCOMB_X32_Y14_N8
\inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|prescaler:cnt[4]~q\ & (\inst|Add0~7\ $ (GND))) # (!\inst|prescaler:cnt[4]~q\ & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|prescaler:cnt[4]~q\ & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[4]~q\,
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X31_Y14_N14
\inst|cnt~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~12_combout\ = (\inst|Add0~8_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~8_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~12_combout\);

-- Location: FF_X31_Y14_N15
\inst|prescaler:cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~12_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[4]~q\);

-- Location: LCCOMB_X32_Y14_N10
\inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|prescaler:cnt[5]~q\ & (!\inst|Add0~9\)) # (!\inst|prescaler:cnt[5]~q\ & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|prescaler:cnt[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[5]~q\,
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X31_Y13_N20
\inst|cnt~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~11_combout\ = (\inst|Add0~10_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~10_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~11_combout\);

-- Location: FF_X31_Y13_N21
\inst|prescaler:cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~11_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[5]~q\);

-- Location: LCCOMB_X32_Y14_N12
\inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|prescaler:cnt[6]~q\ & (\inst|Add0~11\ $ (GND))) # (!\inst|prescaler:cnt[6]~q\ & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|prescaler:cnt[6]~q\ & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[6]~q\,
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X31_Y14_N20
\inst|cnt~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~10_combout\ = (\inst|Add0~12_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~12_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~10_combout\);

-- Location: FF_X31_Y14_N21
\inst|prescaler:cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~10_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[6]~q\);

-- Location: LCCOMB_X32_Y14_N14
\inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|prescaler:cnt[7]~q\ & (!\inst|Add0~13\)) # (!\inst|prescaler:cnt[7]~q\ & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|prescaler:cnt[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[7]~q\,
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X31_Y13_N22
\inst|cnt~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~9_combout\ = (\inst|Add0~14_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~14_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~9_combout\);

-- Location: FF_X31_Y13_N23
\inst|prescaler:cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~9_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[7]~q\);

-- Location: LCCOMB_X32_Y14_N16
\inst|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|prescaler:cnt[8]~q\ & (\inst|Add0~15\ $ (GND))) # (!\inst|prescaler:cnt[8]~q\ & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|prescaler:cnt[8]~q\ & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[8]~q\,
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X31_Y13_N16
\inst|cnt~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~8_combout\ = (\inst|Add0~16_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~16_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~8_combout\);

-- Location: FF_X31_Y13_N17
\inst|prescaler:cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~8_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[8]~q\);

-- Location: LCCOMB_X32_Y14_N18
\inst|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|prescaler:cnt[9]~q\ & (!\inst|Add0~17\)) # (!\inst|prescaler:cnt[9]~q\ & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|prescaler:cnt[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[9]~q\,
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X31_Y14_N22
\inst|cnt~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~7_combout\ = (\inst|Add0~18_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~18_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~7_combout\);

-- Location: FF_X31_Y14_N23
\inst|prescaler:cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~7_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[9]~q\);

-- Location: LCCOMB_X32_Y14_N20
\inst|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|prescaler:cnt[10]~q\ & (\inst|Add0~19\ $ (GND))) # (!\inst|prescaler:cnt[10]~q\ & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|prescaler:cnt[10]~q\ & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[10]~q\,
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X31_Y14_N0
\inst|cnt~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~6_combout\ = (\inst|Add0~20_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~20_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~6_combout\);

-- Location: FF_X31_Y14_N1
\inst|prescaler:cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~6_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[10]~q\);

-- Location: LCCOMB_X32_Y14_N22
\inst|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|prescaler:cnt[11]~q\ & (!\inst|Add0~21\)) # (!\inst|prescaler:cnt[11]~q\ & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|prescaler:cnt[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[11]~q\,
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X31_Y14_N18
\inst|cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~5_combout\ = (\inst|Add0~22_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~22_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~5_combout\);

-- Location: FF_X31_Y14_N19
\inst|prescaler:cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~5_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[11]~q\);

-- Location: LCCOMB_X32_Y14_N24
\inst|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|prescaler:cnt[12]~q\ & (\inst|Add0~23\ $ (GND))) # (!\inst|prescaler:cnt[12]~q\ & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|prescaler:cnt[12]~q\ & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[12]~q\,
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X31_Y14_N28
\inst|cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~4_combout\ = (\inst|Add0~24_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~24_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~4_combout\);

-- Location: FF_X31_Y14_N29
\inst|prescaler:cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~4_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[12]~q\);

-- Location: LCCOMB_X32_Y14_N26
\inst|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|prescaler:cnt[13]~q\ & (!\inst|Add0~25\)) # (!\inst|prescaler:cnt[13]~q\ & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|prescaler:cnt[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[13]~q\,
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X31_Y13_N18
\inst|cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~3_combout\ = (\inst|Add0~26_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~26_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~3_combout\);

-- Location: FF_X31_Y13_N19
\inst|prescaler:cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~3_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[13]~q\);

-- Location: LCCOMB_X32_Y14_N28
\inst|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|prescaler:cnt[14]~q\ & (\inst|Add0~27\ $ (GND))) # (!\inst|prescaler:cnt[14]~q\ & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|prescaler:cnt[14]~q\ & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[14]~q\,
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X31_Y13_N8
\inst|cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~2_combout\ = (\inst|Add0~28_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~28_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~2_combout\);

-- Location: FF_X31_Y13_N9
\inst|prescaler:cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~2_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[14]~q\);

-- Location: LCCOMB_X32_Y14_N30
\inst|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|prescaler:cnt[15]~q\ & (!\inst|Add0~29\)) # (!\inst|prescaler:cnt[15]~q\ & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|prescaler:cnt[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[15]~q\,
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X31_Y13_N30
\inst|cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~1_combout\ = (\inst|Add0~30_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~30_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~1_combout\);

-- Location: FF_X31_Y13_N31
\inst|prescaler:cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~1_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[15]~q\);

-- Location: LCCOMB_X32_Y13_N0
\inst|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|prescaler:cnt[16]~q\ & (\inst|Add0~31\ $ (GND))) # (!\inst|prescaler:cnt[16]~q\ & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|prescaler:cnt[16]~q\ & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[16]~q\,
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X33_Y13_N20
\inst|cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~0_combout\ = (\inst|Add0~32_combout\ & \inst|prescaler:cnt[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~32_combout\,
	datad => \inst|prescaler:cnt[16]~0_combout\,
	combout => \inst|cnt~0_combout\);

-- Location: FF_X33_Y13_N21
\inst|prescaler:cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~0_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[16]~q\);

-- Location: LCCOMB_X32_Y13_N2
\inst|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|prescaler:cnt[17]~q\ & (!\inst|Add0~33\)) # (!\inst|prescaler:cnt[17]~q\ & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|prescaler:cnt[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[17]~q\,
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X33_Y13_N12
\inst|cnt~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~29_combout\ = (\inst|Add0~34_combout\ & \inst|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~34_combout\,
	datad => \inst|Add0~62_combout\,
	combout => \inst|cnt~29_combout\);

-- Location: FF_X32_Y13_N17
\inst|prescaler:cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \inst|cnt~29_combout\,
	sload => VCC,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[17]~q\);

-- Location: LCCOMB_X32_Y13_N4
\inst|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|prescaler:cnt[18]~q\ & (\inst|Add0~35\ $ (GND))) # (!\inst|prescaler:cnt[18]~q\ & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|prescaler:cnt[18]~q\ & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[18]~q\,
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X33_Y13_N4
\inst|cnt~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~28_combout\ = (\inst|Add0~36_combout\ & \inst|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~36_combout\,
	datad => \inst|Add0~62_combout\,
	combout => \inst|cnt~28_combout\);

-- Location: FF_X33_Y13_N5
\inst|prescaler:cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~28_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[18]~q\);

-- Location: LCCOMB_X32_Y13_N6
\inst|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|prescaler:cnt[19]~q\ & (!\inst|Add0~37\)) # (!\inst|prescaler:cnt[19]~q\ & ((\inst|Add0~37\) # (GND)))
-- \inst|Add0~39\ = CARRY((!\inst|Add0~37\) # (!\inst|prescaler:cnt[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[19]~q\,
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: LCCOMB_X33_Y13_N6
\inst|cnt~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~27_combout\ = (\inst|Add0~38_combout\ & \inst|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~38_combout\,
	datad => \inst|Add0~62_combout\,
	combout => \inst|cnt~27_combout\);

-- Location: FF_X33_Y13_N7
\inst|prescaler:cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~27_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[19]~q\);

-- Location: LCCOMB_X32_Y13_N8
\inst|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|prescaler:cnt[20]~q\ & (\inst|Add0~39\ $ (GND))) # (!\inst|prescaler:cnt[20]~q\ & (!\inst|Add0~39\ & VCC))
-- \inst|Add0~41\ = CARRY((\inst|prescaler:cnt[20]~q\ & !\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[20]~q\,
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X33_Y13_N24
\inst|cnt~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~26_combout\ = (\inst|Add0~40_combout\ & \inst|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~40_combout\,
	datad => \inst|Add0~62_combout\,
	combout => \inst|cnt~26_combout\);

-- Location: FF_X33_Y13_N25
\inst|prescaler:cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~26_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[20]~q\);

-- Location: LCCOMB_X32_Y13_N10
\inst|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|prescaler:cnt[21]~q\ & (!\inst|Add0~41\)) # (!\inst|prescaler:cnt[21]~q\ & ((\inst|Add0~41\) # (GND)))
-- \inst|Add0~43\ = CARRY((!\inst|Add0~41\) # (!\inst|prescaler:cnt[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[21]~q\,
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X33_Y13_N30
\inst|cnt~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~25_combout\ = (\inst|Add0~42_combout\ & \inst|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~42_combout\,
	datad => \inst|Add0~62_combout\,
	combout => \inst|cnt~25_combout\);

-- Location: FF_X32_Y13_N27
\inst|prescaler:cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \inst|cnt~25_combout\,
	sload => VCC,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[21]~q\);

-- Location: LCCOMB_X32_Y13_N12
\inst|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|prescaler:cnt[22]~q\ & (\inst|Add0~43\ $ (GND))) # (!\inst|prescaler:cnt[22]~q\ & (!\inst|Add0~43\ & VCC))
-- \inst|Add0~45\ = CARRY((\inst|prescaler:cnt[22]~q\ & !\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[22]~q\,
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: LCCOMB_X33_Y13_N22
\inst|cnt~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~24_combout\ = (\inst|Add0~44_combout\ & \inst|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~44_combout\,
	datad => \inst|Add0~62_combout\,
	combout => \inst|cnt~24_combout\);

-- Location: FF_X33_Y13_N23
\inst|prescaler:cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~24_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[22]~q\);

-- Location: LCCOMB_X32_Y13_N14
\inst|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|prescaler:cnt[23]~q\ & (!\inst|Add0~45\)) # (!\inst|prescaler:cnt[23]~q\ & ((\inst|Add0~45\) # (GND)))
-- \inst|Add0~47\ = CARRY((!\inst|Add0~45\) # (!\inst|prescaler:cnt[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[23]~q\,
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: LCCOMB_X33_Y13_N0
\inst|cnt~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~23_combout\ = (\inst|Add0~46_combout\ & \inst|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~46_combout\,
	datad => \inst|Add0~62_combout\,
	combout => \inst|cnt~23_combout\);

-- Location: FF_X33_Y13_N1
\inst|prescaler:cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~23_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[23]~q\);

-- Location: LCCOMB_X32_Y13_N16
\inst|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\inst|prescaler:cnt[24]~q\ & (\inst|Add0~47\ $ (GND))) # (!\inst|prescaler:cnt[24]~q\ & (!\inst|Add0~47\ & VCC))
-- \inst|Add0~49\ = CARRY((\inst|prescaler:cnt[24]~q\ & !\inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[24]~q\,
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: LCCOMB_X33_Y13_N10
\inst|cnt~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~22_combout\ = (\inst|Add0~48_combout\ & \inst|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~48_combout\,
	datad => \inst|Add0~62_combout\,
	combout => \inst|cnt~22_combout\);

-- Location: FF_X33_Y13_N11
\inst|prescaler:cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~22_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[24]~q\);

-- Location: LCCOMB_X32_Y13_N18
\inst|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = (\inst|prescaler:cnt[25]~q\ & (!\inst|Add0~49\)) # (!\inst|prescaler:cnt[25]~q\ & ((\inst|Add0~49\) # (GND)))
-- \inst|Add0~51\ = CARRY((!\inst|Add0~49\) # (!\inst|prescaler:cnt[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[25]~q\,
	datad => VCC,
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\,
	cout => \inst|Add0~51\);

-- Location: LCCOMB_X33_Y13_N8
\inst|cnt~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~21_combout\ = (\inst|Add0~50_combout\ & \inst|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~50_combout\,
	datad => \inst|Add0~62_combout\,
	combout => \inst|cnt~21_combout\);

-- Location: FF_X32_Y13_N29
\inst|prescaler:cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \inst|cnt~21_combout\,
	sload => VCC,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[25]~q\);

-- Location: LCCOMB_X32_Y13_N20
\inst|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~52_combout\ = (\inst|prescaler:cnt[26]~q\ & (\inst|Add0~51\ $ (GND))) # (!\inst|prescaler:cnt[26]~q\ & (!\inst|Add0~51\ & VCC))
-- \inst|Add0~53\ = CARRY((\inst|prescaler:cnt[26]~q\ & !\inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[26]~q\,
	datad => VCC,
	cin => \inst|Add0~51\,
	combout => \inst|Add0~52_combout\,
	cout => \inst|Add0~53\);

-- Location: LCCOMB_X33_Y13_N16
\inst|cnt~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~20_combout\ = (\inst|Add0~52_combout\ & \inst|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~52_combout\,
	datad => \inst|Add0~62_combout\,
	combout => \inst|cnt~20_combout\);

-- Location: FF_X33_Y13_N17
\inst|prescaler:cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~20_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[26]~q\);

-- Location: LCCOMB_X32_Y13_N22
\inst|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~54_combout\ = (\inst|prescaler:cnt[27]~q\ & (!\inst|Add0~53\)) # (!\inst|prescaler:cnt[27]~q\ & ((\inst|Add0~53\) # (GND)))
-- \inst|Add0~55\ = CARRY((!\inst|Add0~53\) # (!\inst|prescaler:cnt[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[27]~q\,
	datad => VCC,
	cin => \inst|Add0~53\,
	combout => \inst|Add0~54_combout\,
	cout => \inst|Add0~55\);

-- Location: LCCOMB_X33_Y13_N14
\inst|cnt~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~19_combout\ = (\inst|Add0~54_combout\ & \inst|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~54_combout\,
	datad => \inst|Add0~62_combout\,
	combout => \inst|cnt~19_combout\);

-- Location: FF_X33_Y13_N15
\inst|prescaler:cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~19_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[27]~q\);

-- Location: LCCOMB_X32_Y13_N24
\inst|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~56_combout\ = (\inst|prescaler:cnt[28]~q\ & (\inst|Add0~55\ $ (GND))) # (!\inst|prescaler:cnt[28]~q\ & (!\inst|Add0~55\ & VCC))
-- \inst|Add0~57\ = CARRY((\inst|prescaler:cnt[28]~q\ & !\inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[28]~q\,
	datad => VCC,
	cin => \inst|Add0~55\,
	combout => \inst|Add0~56_combout\,
	cout => \inst|Add0~57\);

-- Location: LCCOMB_X33_Y13_N28
\inst|cnt~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~18_combout\ = (\inst|Add0~56_combout\ & \inst|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~56_combout\,
	datad => \inst|Add0~62_combout\,
	combout => \inst|cnt~18_combout\);

-- Location: FF_X33_Y13_N29
\inst|prescaler:cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~18_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[28]~q\);

-- Location: LCCOMB_X32_Y13_N26
\inst|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~58_combout\ = (\inst|prescaler:cnt[29]~q\ & (!\inst|Add0~57\)) # (!\inst|prescaler:cnt[29]~q\ & ((\inst|Add0~57\) # (GND)))
-- \inst|Add0~59\ = CARRY((!\inst|Add0~57\) # (!\inst|prescaler:cnt[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|prescaler:cnt[29]~q\,
	datad => VCC,
	cin => \inst|Add0~57\,
	combout => \inst|Add0~58_combout\,
	cout => \inst|Add0~59\);

-- Location: LCCOMB_X33_Y13_N18
\inst|cnt~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~17_combout\ = (\inst|Add0~58_combout\ & \inst|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~58_combout\,
	datad => \inst|Add0~62_combout\,
	combout => \inst|cnt~17_combout\);

-- Location: FF_X33_Y13_N19
\inst|prescaler:cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~17_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[29]~q\);

-- Location: LCCOMB_X32_Y13_N28
\inst|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~60_combout\ = (\inst|prescaler:cnt[30]~q\ & (\inst|Add0~59\ $ (GND))) # (!\inst|prescaler:cnt[30]~q\ & (!\inst|Add0~59\ & VCC))
-- \inst|Add0~61\ = CARRY((\inst|prescaler:cnt[30]~q\ & !\inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[30]~q\,
	datad => VCC,
	cin => \inst|Add0~59\,
	combout => \inst|Add0~60_combout\,
	cout => \inst|Add0~61\);

-- Location: LCCOMB_X33_Y13_N2
\inst|cnt~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt~30_combout\ = (\inst|Add0~62_combout\ & \inst|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~62_combout\,
	datad => \inst|Add0~60_combout\,
	combout => \inst|cnt~30_combout\);

-- Location: FF_X33_Y13_N3
\inst|prescaler:cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|cnt~30_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:cnt[30]~q\);

-- Location: LCCOMB_X32_Y13_N30
\inst|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~62_combout\ = \inst|prescaler:cnt[31]~q\ $ (\inst|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:cnt[31]~q\,
	cin => \inst|Add0~61\,
	combout => \inst|Add0~62_combout\);

-- Location: FF_X31_Y13_N27
\inst|prescaler:bffer_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \inst|bffer_clk~1_combout\,
	ena => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prescaler:bffer_clk~q\);

-- Location: LCCOMB_X31_Y14_N26
\inst|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (\inst|Add0~24_combout\) # ((\inst|Add0~22_combout\) # ((\inst|Add0~20_combout\) # (\inst|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~24_combout\,
	datab => \inst|Add0~22_combout\,
	datac => \inst|Add0~20_combout\,
	datad => \inst|Add0~26_combout\,
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y14_N10
\inst|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = (\inst|Add0~6_combout\) # ((\inst|Add0~4_combout\) # ((\inst|Add0~0_combout\) # (\inst|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~6_combout\,
	datab => \inst|Add0~4_combout\,
	datac => \inst|Add0~0_combout\,
	datad => \inst|Add0~2_combout\,
	combout => \inst|LessThan1~2_combout\);

-- Location: LCCOMB_X31_Y14_N24
\inst|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (\inst|Add0~14_combout\) # ((\inst|Add0~10_combout\ & \inst|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~10_combout\,
	datac => \inst|Add0~12_combout\,
	datad => \inst|Add0~14_combout\,
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y14_N4
\inst|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_combout\ = (\inst|LessThan1~1_combout\) # ((\inst|LessThan1~2_combout\ & (\inst|Add0~8_combout\ & \inst|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~2_combout\,
	datab => \inst|Add0~8_combout\,
	datac => \inst|Add0~12_combout\,
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|LessThan1~3_combout\);

-- Location: LCCOMB_X31_Y14_N30
\inst|LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~4_combout\ = (\inst|LessThan1~0_combout\) # ((\inst|Add0~16_combout\ & (\inst|LessThan1~3_combout\ & \inst|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~0_combout\,
	datab => \inst|Add0~16_combout\,
	datac => \inst|LessThan1~3_combout\,
	datad => \inst|Add0~18_combout\,
	combout => \inst|LessThan1~4_combout\);

-- Location: LCCOMB_X31_Y13_N4
\inst|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~5_combout\ = (\inst|Add0~30_combout\ & \inst|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~30_combout\,
	datad => \inst|Add0~28_combout\,
	combout => \inst|LessThan1~5_combout\);

-- Location: LCCOMB_X31_Y13_N28
\inst|LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~6_combout\ = (\inst|Add0~32_combout\) # (((\inst|LessThan1~4_combout\ & \inst|LessThan1~5_combout\)) # (!\inst|LessThan2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~4_combout\,
	datab => \inst|Add0~32_combout\,
	datac => \inst|LessThan1~5_combout\,
	datad => \inst|LessThan2~3_combout\,
	combout => \inst|LessThan1~6_combout\);

-- Location: LCCOMB_X31_Y13_N10
\inst|bffer_clk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bffer_clk~0_combout\ = (\inst|Add0~60_combout\ & (!\inst|prescaler:bffer_clk~q\)) # (!\inst|Add0~60_combout\ & (\inst|LessThan1~6_combout\ & ((\inst|LessThan2~3_combout\) # (!\inst|prescaler:bffer_clk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|prescaler:bffer_clk~q\,
	datab => \inst|Add0~60_combout\,
	datac => \inst|LessThan2~3_combout\,
	datad => \inst|LessThan1~6_combout\,
	combout => \inst|bffer_clk~0_combout\);

-- Location: LCCOMB_X31_Y13_N26
\inst|bffer_clk~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bffer_clk~1_combout\ = (\inst|Add0~62_combout\) # (((!\inst|LessThan2~7_combout\ & \inst|prescaler:bffer_clk~q\)) # (!\inst|bffer_clk~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~62_combout\,
	datab => \inst|LessThan2~7_combout\,
	datac => \inst|prescaler:bffer_clk~q\,
	datad => \inst|bffer_clk~0_combout\,
	combout => \inst|bffer_clk~1_combout\);

-- Location: FF_X31_Y13_N5
\inst|step\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \inst|bffer_clk~1_combout\,
	clrn => \paro~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|step~q\);

-- Location: IOIBUF_X0_Y27_N1
\dir_motor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dir_motor,
	o => \dir_motor~input_o\);

ww_step <= \step~output_o\;

ww_dir <= \dir~output_o\;

ww_leddir <= \leddir~output_o\;

ww_ledstep <= \ledstep~output_o\;
END structure;


