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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/06/2023 19:52:43"

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

ENTITY 	BloquesPruebaControl IS
    PORT (
	tx : OUT std_logic;
	reloj : IN std_logic;
	reset : IN std_logic;
	rx : IN std_logic;
	dato : OUT std_logic_vector(7 DOWNTO 0)
	);
END BloquesPruebaControl;

-- Design Ports Information
-- tx	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BloquesPruebaControl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_reloj : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_rx : std_logic;
SIGNAL ww_dato : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7|current_state.idle~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|Equal0~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst6|cnt[0]~21_combout\ : std_logic;
SIGNAL \inst6|cnt[5]~31_combout\ : std_logic;
SIGNAL \inst6|cnt[9]~39_combout\ : std_logic;
SIGNAL \inst6|cnt[10]~41_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Equal0~2_combout\ : std_logic;
SIGNAL \inst|current_state.idle~q\ : std_logic;
SIGNAL \inst|current_state.receive_data~0_combout\ : std_logic;
SIGNAL \inst|ticker~2_combout\ : std_logic;
SIGNAL \inst|current_state.stop_bit~q\ : std_logic;
SIGNAL \inst|current_state.reset_state~q\ : std_logic;
SIGNAL \inst|current_state.idle~0_combout\ : std_logic;
SIGNAL \inst|current_state.idle~1_combout\ : std_logic;
SIGNAL \inst|data_counter~2_combout\ : std_logic;
SIGNAL \inst|Selector3~1_combout\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|current_state.reset_state~feeder_combout\ : std_logic;
SIGNAL \inst7|data_counter~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst7|ticker~2_combout\ : std_logic;
SIGNAL \inst7|ticker~3_combout\ : std_logic;
SIGNAL \inst7|ticker~1_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|ticker~0_combout\ : std_logic;
SIGNAL \inst7|current_state.idle~0_combout\ : std_logic;
SIGNAL \inst7|current_state.idle~q\ : std_logic;
SIGNAL \inst7|current_state.idle~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|next_state.idle_156~combout\ : std_logic;
SIGNAL \inst7|clkgen_115k2~1_combout\ : std_logic;
SIGNAL \inst7|data_counter~3_combout\ : std_logic;
SIGNAL \inst7|Selector3~0_combout\ : std_logic;
SIGNAL \inst7|next_state.send_data_144~combout\ : std_logic;
SIGNAL \inst7|current_state.send_data~q\ : std_logic;
SIGNAL \inst7|data_counter~1_combout\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \inst|rx_state[1]~1_combout\ : std_logic;
SIGNAL \inst|rx_state[0]~0_combout\ : std_logic;
SIGNAL \inst|rx_filtered~0_combout\ : std_logic;
SIGNAL \inst|rx_filtered~q\ : std_logic;
SIGNAL \inst|data_buffer[7]~3_combout\ : std_logic;
SIGNAL \inst|ticker~3_combout\ : std_logic;
SIGNAL \inst|ticker~1_combout\ : std_logic;
SIGNAL \inst|data_buffer[7]~1_combout\ : std_logic;
SIGNAL \inst|ticker~0_combout\ : std_logic;
SIGNAL \inst|clkgen_115k2~1_combout\ : std_logic;
SIGNAL \inst|data_counter~1_combout\ : std_logic;
SIGNAL \inst|data_counter~0_combout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|current_state.receive_data~1_combout\ : std_logic;
SIGNAL \inst|current_state.receive_data~q\ : std_logic;
SIGNAL \inst|data_buffer[7]~2_combout\ : std_logic;
SIGNAL \inst7|Mux0~1_combout\ : std_logic;
SIGNAL \inst|data_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \inst7|Mux0~2_combout\ : std_logic;
SIGNAL \inst7|Mux0~3_combout\ : std_logic;
SIGNAL \inst7|Selector6~0_combout\ : std_logic;
SIGNAL \inst6|cnt[0]~22\ : std_logic;
SIGNAL \inst6|cnt[1]~23_combout\ : std_logic;
SIGNAL \inst6|cnt[1]~24\ : std_logic;
SIGNAL \inst6|cnt[2]~26\ : std_logic;
SIGNAL \inst6|cnt[3]~27_combout\ : std_logic;
SIGNAL \inst6|cnt[3]~28\ : std_logic;
SIGNAL \inst6|cnt[4]~29_combout\ : std_logic;
SIGNAL \inst6|cnt[4]~30\ : std_logic;
SIGNAL \inst6|cnt[5]~32\ : std_logic;
SIGNAL \inst6|cnt[6]~34\ : std_logic;
SIGNAL \inst6|cnt[7]~36\ : std_logic;
SIGNAL \inst6|cnt[8]~37_combout\ : std_logic;
SIGNAL \inst6|cnt[8]~38\ : std_logic;
SIGNAL \inst6|cnt[9]~40\ : std_logic;
SIGNAL \inst6|cnt[10]~42\ : std_logic;
SIGNAL \inst6|cnt[11]~43_combout\ : std_logic;
SIGNAL \inst6|cnt[11]~44\ : std_logic;
SIGNAL \inst6|cnt[12]~45_combout\ : std_logic;
SIGNAL \inst6|cnt[12]~46\ : std_logic;
SIGNAL \inst6|cnt[13]~47_combout\ : std_logic;
SIGNAL \inst6|cnt[13]~48\ : std_logic;
SIGNAL \inst6|cnt[14]~49_combout\ : std_logic;
SIGNAL \inst6|cnt[14]~50\ : std_logic;
SIGNAL \inst6|cnt[15]~51_combout\ : std_logic;
SIGNAL \inst6|Equal0~3_combout\ : std_logic;
SIGNAL \inst6|cnt[2]~25_combout\ : std_logic;
SIGNAL \inst6|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|cnt[6]~33_combout\ : std_logic;
SIGNAL \inst6|cnt[7]~35_combout\ : std_logic;
SIGNAL \inst6|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|Equal0~4_combout\ : std_logic;
SIGNAL \inst6|cnt[15]~52\ : std_logic;
SIGNAL \inst6|cnt[16]~53_combout\ : std_logic;
SIGNAL \inst6|cnt[16]~54\ : std_logic;
SIGNAL \inst6|cnt[17]~55_combout\ : std_logic;
SIGNAL \inst6|cnt[17]~56\ : std_logic;
SIGNAL \inst6|cnt[18]~57_combout\ : std_logic;
SIGNAL \inst6|cnt[18]~58\ : std_logic;
SIGNAL \inst6|cnt[19]~59_combout\ : std_logic;
SIGNAL \inst6|Equal0~5_combout\ : std_logic;
SIGNAL \inst6|cnt[19]~60\ : std_logic;
SIGNAL \inst6|cnt[20]~61_combout\ : std_logic;
SIGNAL \inst6|Equal0~6_combout\ : std_logic;
SIGNAL \inst6|Equal0~6clkctrl_outclk\ : std_logic;
SIGNAL \inst|ticker\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|rx_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|data_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|data_buffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|dataOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|cnt\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \inst7|ticker\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|data_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

tx <= ww_tx;
ww_reloj <= reloj;
ww_reset <= reset;
ww_rx <= rx;
dato <= ww_dato;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \reloj~input_o\);

\inst1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst7|current_state.idle~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|current_state.idle~q\);

\inst6|Equal0~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|Equal0~6_combout\);

\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|altpll_component|auto_generated|wire_pll1_clk\(0));
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: PLL_2
\inst1|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 161,
	c0_initial => 1,
	c0_low => 160,
	c0_mode => "odd",
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
	clk0_divide_by => 1926,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 71,
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
	loop_filter_r_bits => 16,
	m => 71,
	m_initial => 1,
	m_ph => 0,
	n => 6,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5052,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 211,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \reset~input_o\,
	fbin => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: FF_X1_Y23_N13
\inst6|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[0]~21_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(0));

-- Location: FF_X1_Y23_N23
\inst6|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[5]~31_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(5));

-- Location: FF_X1_Y23_N31
\inst6|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[9]~39_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(9));

-- Location: FF_X1_Y22_N1
\inst6|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[10]~41_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(10));

-- Location: LCCOMB_X1_Y23_N12
\inst6|cnt[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[0]~21_combout\ = \inst6|cnt\(0) $ (VCC)
-- \inst6|cnt[0]~22\ = CARRY(\inst6|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(0),
	datad => VCC,
	combout => \inst6|cnt[0]~21_combout\,
	cout => \inst6|cnt[0]~22\);

-- Location: LCCOMB_X1_Y23_N22
\inst6|cnt[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[5]~31_combout\ = (\inst6|cnt\(5) & (!\inst6|cnt[4]~30\)) # (!\inst6|cnt\(5) & ((\inst6|cnt[4]~30\) # (GND)))
-- \inst6|cnt[5]~32\ = CARRY((!\inst6|cnt[4]~30\) # (!\inst6|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(5),
	datad => VCC,
	cin => \inst6|cnt[4]~30\,
	combout => \inst6|cnt[5]~31_combout\,
	cout => \inst6|cnt[5]~32\);

-- Location: LCCOMB_X1_Y23_N30
\inst6|cnt[9]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[9]~39_combout\ = (\inst6|cnt\(9) & (!\inst6|cnt[8]~38\)) # (!\inst6|cnt\(9) & ((\inst6|cnt[8]~38\) # (GND)))
-- \inst6|cnt[9]~40\ = CARRY((!\inst6|cnt[8]~38\) # (!\inst6|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(9),
	datad => VCC,
	cin => \inst6|cnt[8]~38\,
	combout => \inst6|cnt[9]~39_combout\,
	cout => \inst6|cnt[9]~40\);

-- Location: LCCOMB_X1_Y22_N0
\inst6|cnt[10]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[10]~41_combout\ = (\inst6|cnt\(10) & (\inst6|cnt[9]~40\ $ (GND))) # (!\inst6|cnt\(10) & (!\inst6|cnt[9]~40\ & VCC))
-- \inst6|cnt[10]~42\ = CARRY((\inst6|cnt\(10) & !\inst6|cnt[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(10),
	datad => VCC,
	cin => \inst6|cnt[9]~40\,
	combout => \inst6|cnt[10]~41_combout\,
	cout => \inst6|cnt[10]~42\);

-- Location: LCCOMB_X1_Y21_N18
\inst7|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst7|data_counter\(0) & ((\inst7|data_counter\(1)) # ((\inst|data_buffer\(5))))) # (!\inst7|data_counter\(0) & (!\inst7|data_counter\(1) & (\inst|data_buffer\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|data_counter\(0),
	datab => \inst7|data_counter\(1),
	datac => \inst|data_buffer\(4),
	datad => \inst|data_buffer\(5),
	combout => \inst7|Mux0~0_combout\);

-- Location: FF_X1_Y23_N11
\inst|ticker[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|ticker~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ticker\(1));

-- Location: LCCOMB_X1_Y22_N26
\inst6|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~2_combout\ = (\inst6|cnt\(9) & (!\inst6|cnt\(10) & (\inst6|cnt\(8) & !\inst6|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(9),
	datab => \inst6|cnt\(10),
	datac => \inst6|cnt\(8),
	datad => \inst6|cnt\(11),
	combout => \inst6|Equal0~2_combout\);

-- Location: FF_X2_Y23_N13
\inst|current_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|current_state.idle~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.idle~q\);

-- Location: LCCOMB_X2_Y23_N30
\inst|current_state.receive_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|current_state.receive_data~0_combout\ = (\inst|current_state.idle~q\ & \inst|rx_filtered~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.idle~q\,
	datad => \inst|rx_filtered~q\,
	combout => \inst|current_state.receive_data~0_combout\);

-- Location: FF_X2_Y23_N11
\inst|data_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|data_counter~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|clkgen_115k2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_counter\(0));

-- Location: LCCOMB_X1_Y23_N10
\inst|ticker~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ticker~2_combout\ = (!\inst|clkgen_115k2~1_combout\ & (\inst|ticker\(0) $ (\inst|ticker\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ticker\(0),
	datac => \inst|ticker\(1),
	datad => \inst|clkgen_115k2~1_combout\,
	combout => \inst|ticker~2_combout\);

-- Location: FF_X2_Y23_N7
\inst|current_state.stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector3~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|clkgen_115k2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.stop_bit~q\);

-- Location: FF_X2_Y23_N9
\inst|current_state.reset_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|current_state.reset_state~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|clkgen_115k2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.reset_state~q\);

-- Location: LCCOMB_X2_Y23_N26
\inst|current_state.idle~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|current_state.idle~0_combout\ = ((\inst|current_state.stop_bit~q\ & !\inst|rx_filtered~q\)) # (!\inst|current_state.reset_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.stop_bit~q\,
	datac => \inst|current_state.reset_state~q\,
	datad => \inst|rx_filtered~q\,
	combout => \inst|current_state.idle~0_combout\);

-- Location: LCCOMB_X2_Y23_N12
\inst|current_state.idle~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|current_state.idle~1_combout\ = (\inst|clkgen_115k2~1_combout\ & ((\inst|current_state.idle~0_combout\) # ((\inst|current_state.idle~q\ & !\inst|rx_filtered~q\)))) # (!\inst|clkgen_115k2~1_combout\ & (((\inst|current_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.idle~0_combout\,
	datab => \inst|clkgen_115k2~1_combout\,
	datac => \inst|current_state.idle~q\,
	datad => \inst|rx_filtered~q\,
	combout => \inst|current_state.idle~1_combout\);

-- Location: LCCOMB_X2_Y23_N10
\inst|data_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data_counter~2_combout\ = (!\inst|data_counter\(0) & \inst|current_state.receive_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data_counter\(0),
	datad => \inst|current_state.receive_data~q\,
	combout => \inst|data_counter~2_combout\);

-- Location: LCCOMB_X2_Y23_N6
\inst|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector3~1_combout\ = (\inst|rx_filtered~q\ & ((\inst|current_state.stop_bit~q\) # ((\inst|Selector3~0_combout\ & \inst|current_state.receive_data~q\)))) # (!\inst|rx_filtered~q\ & (\inst|Selector3~0_combout\ & 
-- ((\inst|current_state.receive_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rx_filtered~q\,
	datab => \inst|Selector3~0_combout\,
	datac => \inst|current_state.stop_bit~q\,
	datad => \inst|current_state.receive_data~q\,
	combout => \inst|Selector3~1_combout\);

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

-- Location: CLKCTRL_G8
\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X2_Y23_N8
\inst|current_state.reset_state~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|current_state.reset_state~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|current_state.reset_state~feeder_combout\);

-- Location: IOOBUF_X35_Y0_N23
\tx~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Selector6~0_combout\,
	devoe => ww_devoe,
	o => ww_tx);

-- Location: IOOBUF_X0_Y26_N16
\dato[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dataOut\(7),
	devoe => ww_devoe,
	o => ww_dato(7));

-- Location: IOOBUF_X0_Y26_N23
\dato[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dataOut\(6),
	devoe => ww_devoe,
	o => ww_dato(6));

-- Location: IOOBUF_X0_Y24_N16
\dato[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dataOut\(5),
	devoe => ww_devoe,
	o => ww_dato(5));

-- Location: IOOBUF_X0_Y24_N23
\dato[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dataOut\(4),
	devoe => ww_devoe,
	o => ww_dato(4));

-- Location: IOOBUF_X0_Y21_N16
\dato[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dataOut\(3),
	devoe => ww_devoe,
	o => ww_dato(3));

-- Location: IOOBUF_X0_Y21_N23
\dato[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dataOut\(2),
	devoe => ww_devoe,
	o => ww_dato(2));

-- Location: IOOBUF_X0_Y20_N2
\dato[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dataOut\(1),
	devoe => ww_devoe,
	o => ww_dato(1));

-- Location: IOOBUF_X0_Y20_N9
\dato[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dataOut\(0),
	devoe => ww_devoe,
	o => ww_dato(0));

-- Location: LCCOMB_X1_Y14_N4
\inst7|data_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|data_counter~2_combout\ = (\inst7|current_state.send_data~q\ & !\inst7|data_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|current_state.send_data~q\,
	datac => \inst7|data_counter\(0),
	combout => \inst7|data_counter~2_combout\);

-- Location: IOIBUF_X0_Y24_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X1_Y14_N8
\inst7|ticker~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|ticker~2_combout\ = (!\inst7|clkgen_115k2~1_combout\ & (\inst7|ticker\(0) $ (\inst7|ticker\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ticker\(0),
	datac => \inst7|ticker\(1),
	datad => \inst7|clkgen_115k2~1_combout\,
	combout => \inst7|ticker~2_combout\);

-- Location: FF_X1_Y14_N9
\inst7|ticker[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|ticker~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ticker\(1));

-- Location: LCCOMB_X1_Y14_N16
\inst7|ticker~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|ticker~3_combout\ = (!\inst7|ticker\(0) & !\inst7|clkgen_115k2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|ticker\(0),
	datad => \inst7|clkgen_115k2~1_combout\,
	combout => \inst7|ticker~3_combout\);

-- Location: FF_X1_Y14_N17
\inst7|ticker[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|ticker~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ticker\(0));

-- Location: LCCOMB_X1_Y14_N12
\inst7|ticker~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|ticker~1_combout\ = (!\inst7|clkgen_115k2~1_combout\ & (\inst7|ticker\(2) $ (((\inst7|ticker\(1) & \inst7|ticker\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ticker\(1),
	datab => \inst7|ticker\(0),
	datac => \inst7|ticker\(2),
	datad => \inst7|clkgen_115k2~1_combout\,
	combout => \inst7|ticker~1_combout\);

-- Location: FF_X1_Y14_N13
\inst7|ticker[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|ticker~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ticker\(2));

-- Location: LCCOMB_X1_Y14_N22
\inst7|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (\inst7|ticker\(0) & (\inst7|ticker\(1) & \inst7|ticker\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ticker\(0),
	datab => \inst7|ticker\(1),
	datad => \inst7|ticker\(2),
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y14_N20
\inst7|ticker~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|ticker~0_combout\ = (\inst7|next_state.idle_156~combout\ & (!\inst7|current_state.idle~q\ & (\inst7|Equal0~0_combout\ $ (\inst7|ticker\(3))))) # (!\inst7|next_state.idle_156~combout\ & (\inst7|Equal0~0_combout\ $ ((\inst7|ticker\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|next_state.idle_156~combout\,
	datab => \inst7|Equal0~0_combout\,
	datac => \inst7|ticker\(3),
	datad => \inst7|current_state.idle~q\,
	combout => \inst7|ticker~0_combout\);

-- Location: FF_X1_Y14_N21
\inst7|ticker[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|ticker~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ticker\(3));

-- Location: LCCOMB_X1_Y14_N6
\inst7|current_state.idle~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|current_state.idle~0_combout\ = (\inst7|Equal0~0_combout\ & ((\inst7|ticker\(3) & (\inst7|next_state.idle_156~combout\)) # (!\inst7|ticker\(3) & ((\inst7|current_state.idle~q\))))) # (!\inst7|Equal0~0_combout\ & (((\inst7|current_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|next_state.idle_156~combout\,
	datab => \inst7|Equal0~0_combout\,
	datac => \inst7|current_state.idle~q\,
	datad => \inst7|ticker\(3),
	combout => \inst7|current_state.idle~0_combout\);

-- Location: FF_X1_Y14_N7
\inst7|current_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|current_state.idle~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|current_state.idle~q\);

-- Location: CLKCTRL_G1
\inst7|current_state.idle~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|current_state.idle~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|current_state.idle~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y14_N30
\inst7|next_state.idle_156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|next_state.idle_156~combout\ = (GLOBAL(\inst7|current_state.idle~clkctrl_outclk\) & ((\inst7|next_state.idle_156~combout\))) # (!GLOBAL(\inst7|current_state.idle~clkctrl_outclk\) & (!\inst7|current_state.send_data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|current_state.send_data~q\,
	datac => \inst7|next_state.idle_156~combout\,
	datad => \inst7|current_state.idle~clkctrl_outclk\,
	combout => \inst7|next_state.idle_156~combout\);

-- Location: LCCOMB_X1_Y14_N28
\inst7|clkgen_115k2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|clkgen_115k2~1_combout\ = (\inst7|ticker\(3) & ((\inst7|Equal0~0_combout\) # ((\inst7|next_state.idle_156~combout\ & \inst7|current_state.idle~q\)))) # (!\inst7|ticker\(3) & (((\inst7|next_state.idle_156~combout\ & \inst7|current_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ticker\(3),
	datab => \inst7|Equal0~0_combout\,
	datac => \inst7|next_state.idle_156~combout\,
	datad => \inst7|current_state.idle~q\,
	combout => \inst7|clkgen_115k2~1_combout\);

-- Location: FF_X1_Y14_N5
\inst7|data_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|data_counter~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst7|clkgen_115k2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|data_counter\(0));

-- Location: LCCOMB_X1_Y14_N10
\inst7|data_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|data_counter~3_combout\ = (\inst7|current_state.send_data~q\ & (\inst7|data_counter\(2) $ (((\inst7|data_counter\(1) & \inst7|data_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|current_state.send_data~q\,
	datab => \inst7|data_counter\(1),
	datac => \inst7|data_counter\(2),
	datad => \inst7|data_counter\(0),
	combout => \inst7|data_counter~3_combout\);

-- Location: FF_X1_Y14_N11
\inst7|data_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|data_counter~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst7|clkgen_115k2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|data_counter\(2));

-- Location: LCCOMB_X1_Y14_N14
\inst7|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Selector3~0_combout\ = (\inst7|current_state.send_data~q\ & (((!\inst7|data_counter\(2)) # (!\inst7|data_counter\(1))) # (!\inst7|data_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|current_state.send_data~q\,
	datab => \inst7|data_counter\(0),
	datac => \inst7|data_counter\(1),
	datad => \inst7|data_counter\(2),
	combout => \inst7|Selector3~0_combout\);

-- Location: LCCOMB_X1_Y14_N26
\inst7|next_state.send_data_144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|next_state.send_data_144~combout\ = (GLOBAL(\inst7|current_state.idle~clkctrl_outclk\) & ((\inst7|next_state.send_data_144~combout\))) # (!GLOBAL(\inst7|current_state.idle~clkctrl_outclk\) & (\inst7|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Selector3~0_combout\,
	datac => \inst7|next_state.send_data_144~combout\,
	datad => \inst7|current_state.idle~clkctrl_outclk\,
	combout => \inst7|next_state.send_data_144~combout\);

-- Location: FF_X1_Y14_N27
\inst7|current_state.send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|next_state.send_data_144~combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst7|clkgen_115k2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|current_state.send_data~q\);

-- Location: LCCOMB_X1_Y14_N18
\inst7|data_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|data_counter~1_combout\ = (\inst7|current_state.send_data~q\ & (\inst7|data_counter\(1) $ (\inst7|data_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|current_state.send_data~q\,
	datac => \inst7|data_counter\(1),
	datad => \inst7|data_counter\(0),
	combout => \inst7|data_counter~1_combout\);

-- Location: FF_X1_Y14_N19
\inst7|data_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|data_counter~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst7|clkgen_115k2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|data_counter\(1));

-- Location: IOIBUF_X35_Y0_N29
\rx~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: LCCOMB_X2_Y23_N16
\inst|rx_state[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|rx_state[1]~1_combout\ = (\inst|rx_state\(0) & ((\inst|rx_state\(1)) # (!\rx~input_o\))) # (!\inst|rx_state\(0) & (\inst|rx_state\(1) & !\rx~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|rx_state\(0),
	datac => \inst|rx_state\(1),
	datad => \rx~input_o\,
	combout => \inst|rx_state[1]~1_combout\);

-- Location: FF_X2_Y23_N17
\inst|rx_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|rx_state[1]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rx_state\(1));

-- Location: LCCOMB_X2_Y23_N14
\inst|rx_state[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|rx_state[0]~0_combout\ = (\inst|rx_state\(1) & ((!\rx~input_o\) # (!\inst|rx_state\(0)))) # (!\inst|rx_state\(1) & (!\inst|rx_state\(0) & !\rx~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|rx_state\(1),
	datac => \inst|rx_state\(0),
	datad => \rx~input_o\,
	combout => \inst|rx_state[0]~0_combout\);

-- Location: FF_X2_Y23_N15
\inst|rx_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|rx_state[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rx_state\(0));

-- Location: LCCOMB_X2_Y23_N2
\inst|rx_filtered~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|rx_filtered~0_combout\ = (\rx~input_o\ & (\inst|rx_filtered~q\ & ((\inst|rx_state\(1)) # (!\inst|rx_state\(0))))) # (!\rx~input_o\ & ((\inst|rx_filtered~q\) # ((!\inst|rx_state\(0) & \inst|rx_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \inst|rx_state\(0),
	datac => \inst|rx_filtered~q\,
	datad => \inst|rx_state\(1),
	combout => \inst|rx_filtered~0_combout\);

-- Location: FF_X2_Y23_N3
\inst|rx_filtered\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|rx_filtered~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rx_filtered~q\);

-- Location: LCCOMB_X1_Y21_N6
\inst|data_buffer[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data_buffer[7]~3_combout\ = !\inst|rx_filtered~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|rx_filtered~q\,
	combout => \inst|data_buffer[7]~3_combout\);

-- Location: LCCOMB_X1_Y23_N4
\inst|ticker~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ticker~3_combout\ = (!\inst|ticker\(0) & !\inst|clkgen_115k2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ticker\(0),
	datad => \inst|clkgen_115k2~1_combout\,
	combout => \inst|ticker~3_combout\);

-- Location: FF_X1_Y23_N5
\inst|ticker[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|ticker~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ticker\(0));

-- Location: LCCOMB_X1_Y23_N0
\inst|ticker~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ticker~1_combout\ = (!\inst|clkgen_115k2~1_combout\ & (\inst|ticker\(2) $ (((\inst|ticker\(1) & \inst|ticker\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ticker\(1),
	datab => \inst|ticker\(0),
	datac => \inst|ticker\(2),
	datad => \inst|clkgen_115k2~1_combout\,
	combout => \inst|ticker~1_combout\);

-- Location: FF_X1_Y23_N1
\inst|ticker[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|ticker~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ticker\(2));

-- Location: LCCOMB_X1_Y23_N2
\inst|data_buffer[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data_buffer[7]~1_combout\ = (\inst|ticker\(1) & (\inst|ticker\(0) & \inst|ticker\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ticker\(1),
	datac => \inst|ticker\(0),
	datad => \inst|ticker\(2),
	combout => \inst|data_buffer[7]~1_combout\);

-- Location: LCCOMB_X2_Y23_N18
\inst|ticker~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ticker~0_combout\ = (\inst|current_state.idle~q\ & (!\inst|data_buffer[7]~1_combout\ & (\inst|ticker\(3) & \inst|rx_filtered~q\))) # (!\inst|current_state.idle~q\ & (\inst|data_buffer[7]~1_combout\ $ ((\inst|ticker\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.idle~q\,
	datab => \inst|data_buffer[7]~1_combout\,
	datac => \inst|ticker\(3),
	datad => \inst|rx_filtered~q\,
	combout => \inst|ticker~0_combout\);

-- Location: FF_X2_Y23_N19
\inst|ticker[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|ticker~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ticker\(3));

-- Location: LCCOMB_X2_Y23_N4
\inst|clkgen_115k2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|clkgen_115k2~1_combout\ = (\inst|current_state.idle~q\ & (((\inst|data_buffer[7]~1_combout\) # (!\inst|rx_filtered~q\)))) # (!\inst|current_state.idle~q\ & (\inst|ticker\(3) & (\inst|data_buffer[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.idle~q\,
	datab => \inst|ticker\(3),
	datac => \inst|data_buffer[7]~1_combout\,
	datad => \inst|rx_filtered~q\,
	combout => \inst|clkgen_115k2~1_combout\);

-- Location: LCCOMB_X2_Y23_N20
\inst|data_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data_counter~1_combout\ = (\inst|current_state.receive_data~q\ & (\inst|data_counter\(0) $ (\inst|data_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_counter\(0),
	datac => \inst|data_counter\(1),
	datad => \inst|current_state.receive_data~q\,
	combout => \inst|data_counter~1_combout\);

-- Location: FF_X2_Y23_N21
\inst|data_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|data_counter~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|clkgen_115k2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_counter\(1));

-- Location: LCCOMB_X2_Y23_N22
\inst|data_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data_counter~0_combout\ = (\inst|current_state.receive_data~q\ & (\inst|data_counter\(2) $ (((\inst|data_counter\(0) & \inst|data_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_counter\(0),
	datab => \inst|data_counter\(1),
	datac => \inst|data_counter\(2),
	datad => \inst|current_state.receive_data~q\,
	combout => \inst|data_counter~0_combout\);

-- Location: FF_X2_Y23_N23
\inst|data_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|data_counter~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|clkgen_115k2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_counter\(2));

-- Location: LCCOMB_X2_Y23_N0
\inst|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst|data_counter\(0) & (\inst|data_counter\(2) & \inst|data_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_counter\(0),
	datac => \inst|data_counter\(2),
	datad => \inst|data_counter\(1),
	combout => \inst|Selector3~0_combout\);

-- Location: LCCOMB_X2_Y23_N28
\inst|current_state.receive_data~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|current_state.receive_data~1_combout\ = (\inst|clkgen_115k2~1_combout\ & ((\inst|current_state.receive_data~0_combout\) # ((\inst|current_state.receive_data~q\ & !\inst|Selector3~0_combout\)))) # (!\inst|clkgen_115k2~1_combout\ & 
-- (((\inst|current_state.receive_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.receive_data~0_combout\,
	datab => \inst|clkgen_115k2~1_combout\,
	datac => \inst|current_state.receive_data~q\,
	datad => \inst|Selector3~0_combout\,
	combout => \inst|current_state.receive_data~1_combout\);

-- Location: FF_X2_Y23_N29
\inst|current_state.receive_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|current_state.receive_data~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.receive_data~q\);

-- Location: LCCOMB_X2_Y23_N24
\inst|data_buffer[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data_buffer[7]~2_combout\ = (\inst|current_state.receive_data~q\ & (\inst|data_buffer[7]~1_combout\ & \inst|ticker\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_state.receive_data~q\,
	datac => \inst|data_buffer[7]~1_combout\,
	datad => \inst|ticker\(3),
	combout => \inst|data_buffer[7]~2_combout\);

-- Location: FF_X1_Y21_N7
\inst|data_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|data_buffer[7]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|data_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(7));

-- Location: FF_X1_Y21_N17
\inst|data_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|data_buffer\(7),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|data_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(6));

-- Location: LCCOMB_X1_Y21_N2
\inst7|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~1_combout\ = (\inst7|Mux0~0_combout\ & (((\inst|data_buffer\(7))) # (!\inst7|data_counter\(1)))) # (!\inst7|Mux0~0_combout\ & (\inst7|data_counter\(1) & (\inst|data_buffer\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux0~0_combout\,
	datab => \inst7|data_counter\(1),
	datac => \inst|data_buffer\(6),
	datad => \inst|data_buffer\(7),
	combout => \inst7|Mux0~1_combout\);

-- Location: FF_X1_Y21_N1
\inst|data_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|data_buffer\(6),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|data_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(5));

-- Location: LCCOMB_X1_Y21_N4
\inst|data_buffer[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data_buffer[4]~feeder_combout\ = \inst|data_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data_buffer\(5),
	combout => \inst|data_buffer[4]~feeder_combout\);

-- Location: FF_X1_Y21_N5
\inst|data_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|data_buffer[4]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|data_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(4));

-- Location: FF_X1_Y21_N15
\inst|data_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|data_buffer\(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|data_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(3));

-- Location: FF_X1_Y21_N23
\inst|data_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|data_buffer\(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|data_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(2));

-- Location: FF_X1_Y21_N9
\inst|data_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|data_buffer\(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|data_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(1));

-- Location: FF_X1_Y21_N13
\inst|data_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|data_buffer\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|data_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(0));

-- Location: LCCOMB_X1_Y21_N24
\inst7|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~2_combout\ = (\inst7|data_counter\(0) & ((\inst7|data_counter\(1)) # ((\inst|data_buffer\(1))))) # (!\inst7|data_counter\(0) & (!\inst7|data_counter\(1) & ((\inst|data_buffer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|data_counter\(0),
	datab => \inst7|data_counter\(1),
	datac => \inst|data_buffer\(1),
	datad => \inst|data_buffer\(0),
	combout => \inst7|Mux0~2_combout\);

-- Location: LCCOMB_X1_Y21_N28
\inst7|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~3_combout\ = (\inst7|data_counter\(1) & ((\inst7|Mux0~2_combout\ & ((\inst|data_buffer\(3)))) # (!\inst7|Mux0~2_combout\ & (\inst|data_buffer\(2))))) # (!\inst7|data_counter\(1) & (((\inst7|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_buffer\(2),
	datab => \inst7|data_counter\(1),
	datac => \inst|data_buffer\(3),
	datad => \inst7|Mux0~2_combout\,
	combout => \inst7|Mux0~3_combout\);

-- Location: LCCOMB_X1_Y14_N24
\inst7|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Selector6~0_combout\ = ((\inst7|data_counter\(2) & (\inst7|Mux0~1_combout\)) # (!\inst7|data_counter\(2) & ((\inst7|Mux0~3_combout\)))) # (!\inst7|current_state.send_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux0~1_combout\,
	datab => \inst7|data_counter\(2),
	datac => \inst7|current_state.send_data~q\,
	datad => \inst7|Mux0~3_combout\,
	combout => \inst7|Selector6~0_combout\);

-- Location: LCCOMB_X1_Y23_N14
\inst6|cnt[1]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[1]~23_combout\ = (\inst6|cnt\(1) & (!\inst6|cnt[0]~22\)) # (!\inst6|cnt\(1) & ((\inst6|cnt[0]~22\) # (GND)))
-- \inst6|cnt[1]~24\ = CARRY((!\inst6|cnt[0]~22\) # (!\inst6|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt\(1),
	datad => VCC,
	cin => \inst6|cnt[0]~22\,
	combout => \inst6|cnt[1]~23_combout\,
	cout => \inst6|cnt[1]~24\);

-- Location: FF_X1_Y23_N15
\inst6|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[1]~23_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(1));

-- Location: LCCOMB_X1_Y23_N16
\inst6|cnt[2]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[2]~25_combout\ = (\inst6|cnt\(2) & (\inst6|cnt[1]~24\ $ (GND))) # (!\inst6|cnt\(2) & (!\inst6|cnt[1]~24\ & VCC))
-- \inst6|cnt[2]~26\ = CARRY((\inst6|cnt\(2) & !\inst6|cnt[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(2),
	datad => VCC,
	cin => \inst6|cnt[1]~24\,
	combout => \inst6|cnt[2]~25_combout\,
	cout => \inst6|cnt[2]~26\);

-- Location: LCCOMB_X1_Y23_N18
\inst6|cnt[3]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[3]~27_combout\ = (\inst6|cnt\(3) & (!\inst6|cnt[2]~26\)) # (!\inst6|cnt\(3) & ((\inst6|cnt[2]~26\) # (GND)))
-- \inst6|cnt[3]~28\ = CARRY((!\inst6|cnt[2]~26\) # (!\inst6|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt\(3),
	datad => VCC,
	cin => \inst6|cnt[2]~26\,
	combout => \inst6|cnt[3]~27_combout\,
	cout => \inst6|cnt[3]~28\);

-- Location: FF_X1_Y23_N19
\inst6|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[3]~27_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(3));

-- Location: LCCOMB_X1_Y23_N20
\inst6|cnt[4]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[4]~29_combout\ = (\inst6|cnt\(4) & (\inst6|cnt[3]~28\ $ (GND))) # (!\inst6|cnt\(4) & (!\inst6|cnt[3]~28\ & VCC))
-- \inst6|cnt[4]~30\ = CARRY((\inst6|cnt\(4) & !\inst6|cnt[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt\(4),
	datad => VCC,
	cin => \inst6|cnt[3]~28\,
	combout => \inst6|cnt[4]~29_combout\,
	cout => \inst6|cnt[4]~30\);

-- Location: FF_X1_Y23_N21
\inst6|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[4]~29_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(4));

-- Location: LCCOMB_X1_Y23_N24
\inst6|cnt[6]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[6]~33_combout\ = (\inst6|cnt\(6) & (\inst6|cnt[5]~32\ $ (GND))) # (!\inst6|cnt\(6) & (!\inst6|cnt[5]~32\ & VCC))
-- \inst6|cnt[6]~34\ = CARRY((\inst6|cnt\(6) & !\inst6|cnt[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(6),
	datad => VCC,
	cin => \inst6|cnt[5]~32\,
	combout => \inst6|cnt[6]~33_combout\,
	cout => \inst6|cnt[6]~34\);

-- Location: LCCOMB_X1_Y23_N26
\inst6|cnt[7]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[7]~35_combout\ = (\inst6|cnt\(7) & (!\inst6|cnt[6]~34\)) # (!\inst6|cnt\(7) & ((\inst6|cnt[6]~34\) # (GND)))
-- \inst6|cnt[7]~36\ = CARRY((!\inst6|cnt[6]~34\) # (!\inst6|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(7),
	datad => VCC,
	cin => \inst6|cnt[6]~34\,
	combout => \inst6|cnt[7]~35_combout\,
	cout => \inst6|cnt[7]~36\);

-- Location: LCCOMB_X1_Y23_N28
\inst6|cnt[8]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[8]~37_combout\ = (\inst6|cnt\(8) & (\inst6|cnt[7]~36\ $ (GND))) # (!\inst6|cnt\(8) & (!\inst6|cnt[7]~36\ & VCC))
-- \inst6|cnt[8]~38\ = CARRY((\inst6|cnt\(8) & !\inst6|cnt[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt\(8),
	datad => VCC,
	cin => \inst6|cnt[7]~36\,
	combout => \inst6|cnt[8]~37_combout\,
	cout => \inst6|cnt[8]~38\);

-- Location: FF_X1_Y23_N29
\inst6|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[8]~37_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(8));

-- Location: LCCOMB_X1_Y22_N2
\inst6|cnt[11]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[11]~43_combout\ = (\inst6|cnt\(11) & (!\inst6|cnt[10]~42\)) # (!\inst6|cnt\(11) & ((\inst6|cnt[10]~42\) # (GND)))
-- \inst6|cnt[11]~44\ = CARRY((!\inst6|cnt[10]~42\) # (!\inst6|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt\(11),
	datad => VCC,
	cin => \inst6|cnt[10]~42\,
	combout => \inst6|cnt[11]~43_combout\,
	cout => \inst6|cnt[11]~44\);

-- Location: FF_X1_Y22_N3
\inst6|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[11]~43_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(11));

-- Location: LCCOMB_X1_Y22_N4
\inst6|cnt[12]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[12]~45_combout\ = (\inst6|cnt\(12) & (\inst6|cnt[11]~44\ $ (GND))) # (!\inst6|cnt\(12) & (!\inst6|cnt[11]~44\ & VCC))
-- \inst6|cnt[12]~46\ = CARRY((\inst6|cnt\(12) & !\inst6|cnt[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt\(12),
	datad => VCC,
	cin => \inst6|cnt[11]~44\,
	combout => \inst6|cnt[12]~45_combout\,
	cout => \inst6|cnt[12]~46\);

-- Location: FF_X1_Y22_N5
\inst6|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[12]~45_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(12));

-- Location: LCCOMB_X1_Y22_N6
\inst6|cnt[13]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[13]~47_combout\ = (\inst6|cnt\(13) & (!\inst6|cnt[12]~46\)) # (!\inst6|cnt\(13) & ((\inst6|cnt[12]~46\) # (GND)))
-- \inst6|cnt[13]~48\ = CARRY((!\inst6|cnt[12]~46\) # (!\inst6|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt\(13),
	datad => VCC,
	cin => \inst6|cnt[12]~46\,
	combout => \inst6|cnt[13]~47_combout\,
	cout => \inst6|cnt[13]~48\);

-- Location: FF_X1_Y22_N7
\inst6|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[13]~47_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(13));

-- Location: LCCOMB_X1_Y22_N8
\inst6|cnt[14]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[14]~49_combout\ = (\inst6|cnt\(14) & (\inst6|cnt[13]~48\ $ (GND))) # (!\inst6|cnt\(14) & (!\inst6|cnt[13]~48\ & VCC))
-- \inst6|cnt[14]~50\ = CARRY((\inst6|cnt\(14) & !\inst6|cnt[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt\(14),
	datad => VCC,
	cin => \inst6|cnt[13]~48\,
	combout => \inst6|cnt[14]~49_combout\,
	cout => \inst6|cnt[14]~50\);

-- Location: FF_X1_Y22_N9
\inst6|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[14]~49_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(14));

-- Location: LCCOMB_X1_Y22_N10
\inst6|cnt[15]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[15]~51_combout\ = (\inst6|cnt\(15) & (!\inst6|cnt[14]~50\)) # (!\inst6|cnt\(15) & ((\inst6|cnt[14]~50\) # (GND)))
-- \inst6|cnt[15]~52\ = CARRY((!\inst6|cnt[14]~50\) # (!\inst6|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt\(15),
	datad => VCC,
	cin => \inst6|cnt[14]~50\,
	combout => \inst6|cnt[15]~51_combout\,
	cout => \inst6|cnt[15]~52\);

-- Location: FF_X1_Y22_N11
\inst6|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[15]~51_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(15));

-- Location: LCCOMB_X1_Y22_N28
\inst6|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~3_combout\ = (!\inst6|cnt\(13) & (\inst6|cnt\(12) & (!\inst6|cnt\(14) & !\inst6|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(13),
	datab => \inst6|cnt\(12),
	datac => \inst6|cnt\(14),
	datad => \inst6|cnt\(15),
	combout => \inst6|Equal0~3_combout\);

-- Location: FF_X1_Y23_N17
\inst6|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[2]~25_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(2));

-- Location: LCCOMB_X1_Y23_N8
\inst6|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~0_combout\ = (!\inst6|cnt\(0) & (!\inst6|cnt\(3) & (!\inst6|cnt\(1) & !\inst6|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(0),
	datab => \inst6|cnt\(3),
	datac => \inst6|cnt\(1),
	datad => \inst6|cnt\(2),
	combout => \inst6|Equal0~0_combout\);

-- Location: FF_X1_Y23_N25
\inst6|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[6]~33_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(6));

-- Location: FF_X1_Y23_N27
\inst6|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[7]~35_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(7));

-- Location: LCCOMB_X1_Y23_N6
\inst6|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~1_combout\ = (!\inst6|cnt\(5) & (!\inst6|cnt\(6) & (\inst6|cnt\(7) & !\inst6|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(5),
	datab => \inst6|cnt\(6),
	datac => \inst6|cnt\(7),
	datad => \inst6|cnt\(4),
	combout => \inst6|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y22_N24
\inst6|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~4_combout\ = (\inst6|Equal0~2_combout\ & (\inst6|Equal0~3_combout\ & (\inst6|Equal0~0_combout\ & \inst6|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~2_combout\,
	datab => \inst6|Equal0~3_combout\,
	datac => \inst6|Equal0~0_combout\,
	datad => \inst6|Equal0~1_combout\,
	combout => \inst6|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y22_N12
\inst6|cnt[16]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[16]~53_combout\ = (\inst6|cnt\(16) & (\inst6|cnt[15]~52\ $ (GND))) # (!\inst6|cnt\(16) & (!\inst6|cnt[15]~52\ & VCC))
-- \inst6|cnt[16]~54\ = CARRY((\inst6|cnt\(16) & !\inst6|cnt[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt\(16),
	datad => VCC,
	cin => \inst6|cnt[15]~52\,
	combout => \inst6|cnt[16]~53_combout\,
	cout => \inst6|cnt[16]~54\);

-- Location: FF_X1_Y22_N13
\inst6|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[16]~53_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(16));

-- Location: LCCOMB_X1_Y22_N14
\inst6|cnt[17]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[17]~55_combout\ = (\inst6|cnt\(17) & (!\inst6|cnt[16]~54\)) # (!\inst6|cnt\(17) & ((\inst6|cnt[16]~54\) # (GND)))
-- \inst6|cnt[17]~56\ = CARRY((!\inst6|cnt[16]~54\) # (!\inst6|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt\(17),
	datad => VCC,
	cin => \inst6|cnt[16]~54\,
	combout => \inst6|cnt[17]~55_combout\,
	cout => \inst6|cnt[17]~56\);

-- Location: FF_X1_Y22_N15
\inst6|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[17]~55_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(17));

-- Location: LCCOMB_X1_Y22_N16
\inst6|cnt[18]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[18]~57_combout\ = (\inst6|cnt\(18) & (\inst6|cnt[17]~56\ $ (GND))) # (!\inst6|cnt\(18) & (!\inst6|cnt[17]~56\ & VCC))
-- \inst6|cnt[18]~58\ = CARRY((\inst6|cnt\(18) & !\inst6|cnt[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt\(18),
	datad => VCC,
	cin => \inst6|cnt[17]~56\,
	combout => \inst6|cnt[18]~57_combout\,
	cout => \inst6|cnt[18]~58\);

-- Location: FF_X1_Y22_N17
\inst6|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[18]~57_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(18));

-- Location: LCCOMB_X1_Y22_N18
\inst6|cnt[19]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[19]~59_combout\ = (\inst6|cnt\(19) & (!\inst6|cnt[18]~58\)) # (!\inst6|cnt\(19) & ((\inst6|cnt[18]~58\) # (GND)))
-- \inst6|cnt[19]~60\ = CARRY((!\inst6|cnt[18]~58\) # (!\inst6|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(19),
	datad => VCC,
	cin => \inst6|cnt[18]~58\,
	combout => \inst6|cnt[19]~59_combout\,
	cout => \inst6|cnt[19]~60\);

-- Location: FF_X1_Y22_N19
\inst6|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[19]~59_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(19));

-- Location: LCCOMB_X1_Y22_N22
\inst6|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~5_combout\ = (!\inst6|cnt\(16) & (\inst6|cnt\(18) & (!\inst6|cnt\(17) & \inst6|cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt\(16),
	datab => \inst6|cnt\(18),
	datac => \inst6|cnt\(17),
	datad => \inst6|cnt\(19),
	combout => \inst6|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y22_N20
\inst6|cnt[20]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|cnt[20]~61_combout\ = \inst6|cnt[19]~60\ $ (!\inst6|cnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|cnt\(20),
	cin => \inst6|cnt[19]~60\,
	combout => \inst6|cnt[20]~61_combout\);

-- Location: FF_X1_Y22_N21
\inst6|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|cnt[20]~61_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|cnt\(20));

-- Location: LCCOMB_X1_Y22_N30
\inst6|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~6_combout\ = (\inst6|Equal0~4_combout\ & (\inst6|Equal0~5_combout\ & \inst6|cnt\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~4_combout\,
	datac => \inst6|Equal0~5_combout\,
	datad => \inst6|cnt\(20),
	combout => \inst6|Equal0~6_combout\);

-- Location: CLKCTRL_G2
\inst6|Equal0~6clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|Equal0~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|Equal0~6clkctrl_outclk\);

-- Location: LCCOMB_X1_Y21_N30
\inst6|dataOut[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|dataOut\(7) = (GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & (\inst|data_buffer\(7))) # (!GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & ((\inst6|dataOut\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|data_buffer\(7),
	datac => \inst6|dataOut\(7),
	datad => \inst6|Equal0~6clkctrl_outclk\,
	combout => \inst6|dataOut\(7));

-- Location: LCCOMB_X1_Y21_N10
\inst6|dataOut[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|dataOut\(6) = (GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & ((\inst|data_buffer\(6)))) # (!GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & (\inst6|dataOut\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|dataOut\(6),
	datac => \inst|data_buffer\(6),
	datad => \inst6|Equal0~6clkctrl_outclk\,
	combout => \inst6|dataOut\(6));

-- Location: LCCOMB_X1_Y21_N26
\inst6|dataOut[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|dataOut\(5) = (GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & (\inst|data_buffer\(5))) # (!GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & ((\inst6|dataOut\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|data_buffer\(5),
	datac => \inst6|dataOut\(5),
	datad => \inst6|Equal0~6clkctrl_outclk\,
	combout => \inst6|dataOut\(5));

-- Location: LCCOMB_X1_Y21_N20
\inst6|dataOut[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|dataOut\(4) = (GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & ((\inst|data_buffer\(4)))) # (!GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & (\inst6|dataOut\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|dataOut\(4),
	datac => \inst|data_buffer\(4),
	datad => \inst6|Equal0~6clkctrl_outclk\,
	combout => \inst6|dataOut\(4));

-- Location: LCCOMB_X1_Y21_N14
\inst6|dataOut[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|dataOut\(3) = (GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & ((\inst|data_buffer\(3)))) # (!GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & (\inst6|dataOut\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|dataOut\(3),
	datac => \inst|data_buffer\(3),
	datad => \inst6|Equal0~6clkctrl_outclk\,
	combout => \inst6|dataOut\(3));

-- Location: LCCOMB_X1_Y21_N22
\inst6|dataOut[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|dataOut\(2) = (GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & ((\inst|data_buffer\(2)))) # (!GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & (\inst6|dataOut\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|dataOut\(2),
	datac => \inst|data_buffer\(2),
	datad => \inst6|Equal0~6clkctrl_outclk\,
	combout => \inst6|dataOut\(2));

-- Location: LCCOMB_X1_Y21_N8
\inst6|dataOut[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|dataOut\(1) = (GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & ((\inst|data_buffer\(1)))) # (!GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & (\inst6|dataOut\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|dataOut\(1),
	datac => \inst|data_buffer\(1),
	datad => \inst6|Equal0~6clkctrl_outclk\,
	combout => \inst6|dataOut\(1));

-- Location: LCCOMB_X1_Y21_N12
\inst6|dataOut[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|dataOut\(0) = (GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & ((\inst|data_buffer\(0)))) # (!GLOBAL(\inst6|Equal0~6clkctrl_outclk\) & (\inst6|dataOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|dataOut\(0),
	datac => \inst|data_buffer\(0),
	datad => \inst6|Equal0~6clkctrl_outclk\,
	combout => \inst6|dataOut\(0));
END structure;


