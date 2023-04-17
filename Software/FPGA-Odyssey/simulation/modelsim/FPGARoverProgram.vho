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

-- DATE "04/17/2023 19:17:25"

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

ENTITY 	GeneralControlScheme IS
    PORT (
	step : OUT std_logic;
	reloj : IN std_logic;
	dir_motor : IN std_logic;
	paro : IN std_logic;
	dir : OUT std_logic;
	leddir : OUT std_logic;
	ledstep : OUT std_logic;
	enable : OUT std_logic;
	ledenable : OUT std_logic;
	pwm_servo : OUT std_logic;
	selec_ang : IN std_logic
	);
END GeneralControlScheme;

-- Design Ports Information
-- step	=>  Location: PIN_L11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- dir	=>  Location: PIN_M11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leddir	=>  Location: PIN_L13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ledstep	=>  Location: PIN_K12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- enable	=>  Location: PIN_M12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ledenable	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- pwm_servo	=>  Location: PIN_M13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- dir_motor	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- paro	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- reloj	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- selec_ang	=>  Location: PIN_K13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


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
SIGNAL ww_dir_motor : std_logic;
SIGNAL ww_paro : std_logic;
SIGNAL ww_dir : std_logic;
SIGNAL ww_leddir : std_logic;
SIGNAL ww_ledstep : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_ledenable : std_logic;
SIGNAL ww_pwm_servo : std_logic;
SIGNAL ww_selec_ang : std_logic;
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
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|cnt[22]~76\ : std_logic;
SIGNAL \inst|cnt[23]~77_combout\ : std_logic;
SIGNAL \inst|cnt[23]~78\ : std_logic;
SIGNAL \inst|cnt[24]~79_combout\ : std_logic;
SIGNAL \inst|cnt[24]~80\ : std_logic;
SIGNAL \inst|cnt[25]~81_combout\ : std_logic;
SIGNAL \inst|cnt[25]~82\ : std_logic;
SIGNAL \inst|cnt[26]~83_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|cnt[26]~84\ : std_logic;
SIGNAL \inst|cnt[27]~85_combout\ : std_logic;
SIGNAL \inst|cnt[27]~86\ : std_logic;
SIGNAL \inst|cnt[28]~87_combout\ : std_logic;
SIGNAL \inst|cnt[28]~88\ : std_logic;
SIGNAL \inst|cnt[29]~89_combout\ : std_logic;
SIGNAL \inst|cnt[29]~90\ : std_logic;
SIGNAL \inst|cnt[30]~91_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|LessThan0~7_combout\ : std_logic;
SIGNAL \inst|LessThan0~8_combout\ : std_logic;
SIGNAL \inst|bffer_clk~0_combout\ : std_logic;
SIGNAL \inst|bffer_clk~q\ : std_logic;
SIGNAL \inst|step~0_combout\ : std_logic;
SIGNAL \inst|step~q\ : std_logic;
SIGNAL \dir_motor~input_o\ : std_logic;
SIGNAL \paro~input_o\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|count~4_combout\ : std_logic;
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
SIGNAL \inst2|count~5_combout\ : std_logic;
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
SIGNAL \inst2|Add1~21\ : std_logic;
SIGNAL \inst2|Add1~22_combout\ : std_logic;
SIGNAL \inst2|count~2_combout\ : std_logic;
SIGNAL \inst2|Add1~23\ : std_logic;
SIGNAL \inst2|Add1~24_combout\ : std_logic;
SIGNAL \inst2|Add1~25\ : std_logic;
SIGNAL \inst2|Add1~26_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Add1~27\ : std_logic;
SIGNAL \inst2|Add1~28_combout\ : std_logic;
SIGNAL \inst2|count~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Add1~20_combout\ : std_logic;
SIGNAL \inst2|count~1_combout\ : std_logic;
SIGNAL \selec_ang~input_o\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|LessThan1~1_combout\ : std_logic;
SIGNAL \inst2|LessThan1~2_combout\ : std_logic;
SIGNAL \inst2|LessThan1~3_combout\ : std_logic;
SIGNAL \inst2|LessThan1~4_combout\ : std_logic;
SIGNAL \inst2|LessThan1~5_combout\ : std_logic;
SIGNAL \inst2|LessThan1~6_combout\ : std_logic;
SIGNAL \inst2|pwm~q\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|cnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst2|count\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst|ALT_INV_step~q\ : std_logic;

BEGIN

step <= ww_step;
ww_reloj <= reloj;
ww_dir_motor <= dir_motor;
ww_paro <= paro;
dir <= ww_dir;
leddir <= ww_leddir;
ledstep <= ww_ledstep;
enable <= ww_enable;
ledenable <= ww_ledenable;
pwm_servo <= ww_pwm_servo;
ww_selec_ang <= selec_ang;
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

-- Location: LCCOMB_X11_Y12_N16
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
	i => \dir_motor~input_o\,
	devoe => ww_devoe,
	o => ww_dir);

-- Location: IOOBUF_X31_Y4_N9
\leddir~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dir_motor~input_o\,
	devoe => ww_devoe,
	o => ww_leddir);

-- Location: IOOBUF_X31_Y4_N23
\ledstep~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_step~q\,
	devoe => ww_devoe,
	o => ww_ledstep);

-- Location: IOOBUF_X13_Y0_N9
\enable~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \paro~input_o\,
	devoe => ww_devoe,
	o => ww_enable);

-- Location: IOOBUF_X31_Y5_N9
\ledenable~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \paro~input_o\,
	devoe => ww_devoe,
	o => ww_ledenable);

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

-- Location: LCCOMB_X24_Y4_N2
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

-- Location: FF_X24_Y4_N3
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

-- Location: LCCOMB_X24_Y4_N4
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

-- Location: FF_X24_Y4_N5
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

-- Location: LCCOMB_X24_Y4_N6
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

-- Location: FF_X24_Y4_N7
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

-- Location: LCCOMB_X24_Y4_N8
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

-- Location: FF_X24_Y4_N9
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

-- Location: LCCOMB_X24_Y4_N10
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

-- Location: FF_X24_Y4_N11
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

-- Location: LCCOMB_X24_Y4_N12
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

-- Location: FF_X24_Y4_N13
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

-- Location: LCCOMB_X24_Y4_N14
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

-- Location: FF_X24_Y4_N15
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

-- Location: LCCOMB_X24_Y4_N16
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

-- Location: FF_X24_Y4_N17
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

-- Location: LCCOMB_X24_Y4_N18
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

-- Location: FF_X24_Y4_N19
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

-- Location: LCCOMB_X24_Y4_N20
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

-- Location: FF_X24_Y4_N21
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

-- Location: LCCOMB_X24_Y4_N22
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

-- Location: FF_X24_Y4_N23
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

-- Location: LCCOMB_X24_Y4_N24
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

-- Location: FF_X24_Y4_N25
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

-- Location: LCCOMB_X24_Y4_N26
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

-- Location: FF_X24_Y4_N27
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

-- Location: LCCOMB_X24_Y4_N28
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

-- Location: FF_X24_Y4_N29
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

-- Location: LCCOMB_X24_Y4_N30
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

-- Location: FF_X24_Y4_N31
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

-- Location: LCCOMB_X24_Y3_N0
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

-- Location: FF_X24_Y3_N1
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

-- Location: LCCOMB_X24_Y3_N2
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

-- Location: FF_X24_Y3_N3
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

-- Location: LCCOMB_X24_Y3_N4
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

-- Location: FF_X24_Y3_N5
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

-- Location: LCCOMB_X24_Y3_N6
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

-- Location: FF_X24_Y3_N7
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

-- Location: LCCOMB_X24_Y3_N8
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

-- Location: FF_X24_Y3_N9
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

-- Location: LCCOMB_X24_Y3_N10
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

-- Location: FF_X24_Y3_N11
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

-- Location: LCCOMB_X24_Y3_N12
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

-- Location: FF_X24_Y3_N13
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

-- Location: LCCOMB_X24_Y3_N14
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

-- Location: FF_X24_Y3_N15
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

-- Location: LCCOMB_X23_Y3_N2
\inst|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (!\inst|cnt\(20) & (!\inst|cnt\(21) & (!\inst|cnt\(19) & !\inst|cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(20),
	datab => \inst|cnt\(21),
	datac => \inst|cnt\(19),
	datad => \inst|cnt\(22),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y3_N0
\inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|cnt\(17) & (!\inst|cnt\(18) & (!\inst|cnt\(15) & !\inst|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(17),
	datab => \inst|cnt\(18),
	datac => \inst|cnt\(15),
	datad => \inst|cnt\(16),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y3_N16
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

-- Location: FF_X24_Y3_N17
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

-- Location: LCCOMB_X24_Y3_N18
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

-- Location: FF_X24_Y3_N19
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

-- Location: LCCOMB_X24_Y3_N20
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

-- Location: FF_X24_Y3_N21
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

-- Location: LCCOMB_X24_Y3_N22
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

-- Location: FF_X24_Y3_N23
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

-- Location: LCCOMB_X23_Y3_N4
\inst|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|cnt\(26) & (!\inst|cnt\(24) & (!\inst|cnt\(25) & !\inst|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(26),
	datab => \inst|cnt\(24),
	datac => \inst|cnt\(25),
	datad => \inst|cnt\(23),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y3_N24
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

-- Location: FF_X24_Y3_N25
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

-- Location: LCCOMB_X24_Y3_N26
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

-- Location: FF_X24_Y3_N27
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

-- Location: LCCOMB_X24_Y3_N28
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

-- Location: FF_X24_Y3_N29
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

-- Location: LCCOMB_X24_Y3_N30
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

-- Location: FF_X24_Y3_N31
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

-- Location: LCCOMB_X23_Y4_N24
\inst|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (!\inst|cnt\(28) & (!\inst|cnt\(29) & (!\inst|cnt\(27) & !\inst|cnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(28),
	datab => \inst|cnt\(29),
	datac => \inst|cnt\(27),
	datad => \inst|cnt\(30),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X22_Y4_N12
\inst|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (\inst|LessThan0~1_combout\ & (\inst|LessThan0~0_combout\ & (\inst|LessThan0~2_combout\ & \inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~1_combout\,
	datab => \inst|LessThan0~0_combout\,
	datac => \inst|LessThan0~2_combout\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X23_Y4_N2
\inst|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (!\inst|cnt\(6) & (((!\inst|cnt\(3) & !\inst|cnt\(4))) # (!\inst|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datab => \inst|cnt\(3),
	datac => \inst|cnt\(6),
	datad => \inst|cnt\(4),
	combout => \inst|LessThan0~6_combout\);

-- Location: LCCOMB_X25_Y4_N24
\inst|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = (!\inst|cnt\(11) & (!\inst|cnt\(10) & (!\inst|cnt\(12) & !\inst|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(11),
	datab => \inst|cnt\(10),
	datac => \inst|cnt\(12),
	datad => \inst|cnt\(9),
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X24_Y4_N0
\inst|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_combout\ = (\inst|LessThan0~5_combout\ & ((\inst|LessThan0~6_combout\) # ((!\inst|cnt\(8)) # (!\inst|cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~6_combout\,
	datab => \inst|cnt\(7),
	datac => \inst|cnt\(8),
	datad => \inst|LessThan0~5_combout\,
	combout => \inst|LessThan0~7_combout\);

-- Location: LCCOMB_X23_Y4_N28
\inst|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan0~8_combout\ = ((!\inst|LessThan0~7_combout\ & (\inst|cnt\(14) & \inst|cnt\(13)))) # (!\inst|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~4_combout\,
	datab => \inst|LessThan0~7_combout\,
	datac => \inst|cnt\(14),
	datad => \inst|cnt\(13),
	combout => \inst|LessThan0~8_combout\);

-- Location: LCCOMB_X22_Y4_N10
\inst|bffer_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|bffer_clk~0_combout\ = \inst|bffer_clk~q\ $ (\inst|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|bffer_clk~q\,
	datad => \inst|LessThan0~8_combout\,
	combout => \inst|bffer_clk~0_combout\);

-- Location: FF_X22_Y4_N11
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

-- Location: LCCOMB_X22_Y4_N24
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

-- Location: FF_X22_Y4_N25
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

-- Location: IOIBUF_X15_Y25_N29
\dir_motor~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dir_motor,
	o => \dir_motor~input_o\);

-- Location: IOIBUF_X13_Y25_N1
\paro~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_paro,
	o => \paro~input_o\);

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

-- Location: LCCOMB_X19_Y20_N0
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

-- Location: LCCOMB_X20_Y20_N16
\inst2|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~4_combout\ = (\inst2|Add1~0_combout\ & !\inst2|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~0_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|count~4_combout\);

-- Location: FF_X20_Y20_N17
\inst2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count~4_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(0));

-- Location: LCCOMB_X19_Y20_N2
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

-- Location: FF_X19_Y20_N3
\inst2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~2_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(1));

-- Location: LCCOMB_X19_Y20_N4
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

-- Location: FF_X19_Y20_N5
\inst2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~4_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(2));

-- Location: LCCOMB_X19_Y20_N6
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

-- Location: FF_X19_Y20_N7
\inst2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~6_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(3));

-- Location: LCCOMB_X19_Y20_N8
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

-- Location: FF_X19_Y20_N9
\inst2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~8_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(4));

-- Location: LCCOMB_X19_Y20_N10
\inst2|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~10_combout\ = (\inst2|count\(5) & (!\inst2|Add1~9\)) # (!\inst2|count\(5) & ((\inst2|Add1~9\) # (GND)))
-- \inst2|Add1~11\ = CARRY((!\inst2|Add1~9\) # (!\inst2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(5),
	datad => VCC,
	cin => \inst2|Add1~9\,
	combout => \inst2|Add1~10_combout\,
	cout => \inst2|Add1~11\);

-- Location: LCCOMB_X22_Y22_N2
\inst2|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~5_combout\ = (\inst2|Add1~10_combout\ & !\inst2|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~10_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|count~5_combout\);

-- Location: FF_X22_Y22_N3
\inst2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count~5_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(5));

-- Location: LCCOMB_X19_Y20_N12
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

-- Location: FF_X19_Y20_N13
\inst2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~12_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(6));

-- Location: LCCOMB_X19_Y20_N14
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

-- Location: FF_X19_Y20_N15
\inst2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~14_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(7));

-- Location: LCCOMB_X19_Y20_N16
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

-- Location: FF_X19_Y20_N17
\inst2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~16_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(8));

-- Location: LCCOMB_X19_Y20_N18
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

-- Location: LCCOMB_X22_Y22_N0
\inst2|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~3_combout\ = (!\inst2|Equal0~4_combout\ & \inst2|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~4_combout\,
	datad => \inst2|Add1~18_combout\,
	combout => \inst2|count~3_combout\);

-- Location: FF_X22_Y22_N1
\inst2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count~3_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(9));

-- Location: LCCOMB_X19_Y20_N20
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

-- Location: LCCOMB_X19_Y20_N22
\inst2|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~22_combout\ = (\inst2|count\(11) & (!\inst2|Add1~21\)) # (!\inst2|count\(11) & ((\inst2|Add1~21\) # (GND)))
-- \inst2|Add1~23\ = CARRY((!\inst2|Add1~21\) # (!\inst2|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(11),
	datad => VCC,
	cin => \inst2|Add1~21\,
	combout => \inst2|Add1~22_combout\,
	cout => \inst2|Add1~23\);

-- Location: LCCOMB_X19_Y19_N4
\inst2|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~2_combout\ = (!\inst2|Equal0~4_combout\ & \inst2|Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Add1~22_combout\,
	combout => \inst2|count~2_combout\);

-- Location: FF_X19_Y19_N5
\inst2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count~2_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(11));

-- Location: LCCOMB_X19_Y20_N24
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

-- Location: FF_X19_Y20_N25
\inst2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~24_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(12));

-- Location: LCCOMB_X19_Y20_N26
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

-- Location: FF_X19_Y20_N27
\inst2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add1~26_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(13));

-- Location: LCCOMB_X19_Y19_N10
\inst2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|count\(2) & (!\inst2|count\(3) & (!\inst2|count\(12) & !\inst2|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(2),
	datab => \inst2|count\(3),
	datac => \inst2|count\(12),
	datad => \inst2|count\(13),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y19_N0
\inst2|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst2|count\(1) & (!\inst2|count\(4) & !\inst2|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(1),
	datac => \inst2|count\(4),
	datad => \inst2|count\(0),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y19_N30
\inst2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst2|count\(6) & (!\inst2|count\(8) & (!\inst2|count\(7) & \inst2|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(6),
	datab => \inst2|count\(8),
	datac => \inst2|count\(7),
	datad => \inst2|count\(5),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y20_N28
\inst2|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Add1~28_combout\ = \inst2|Add1~27\ $ (!\inst2|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|count\(14),
	cin => \inst2|Add1~27\,
	combout => \inst2|Add1~28_combout\);

-- Location: LCCOMB_X19_Y19_N2
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

-- Location: FF_X19_Y19_N3
\inst2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count~0_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(14));

-- Location: LCCOMB_X19_Y19_N28
\inst2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|count\(10) & (\inst2|count\(11) & (\inst2|count\(9) & \inst2|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(10),
	datab => \inst2|count\(11),
	datac => \inst2|count\(9),
	datad => \inst2|count\(14),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y19_N26
\inst2|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~0_combout\ & (\inst2|Equal0~3_combout\ & (\inst2|Equal0~2_combout\ & \inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|Equal0~3_combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y20_N30
\inst2|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~1_combout\ = (!\inst2|Equal0~4_combout\ & \inst2|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Add1~20_combout\,
	combout => \inst2|count~1_combout\);

-- Location: FF_X19_Y20_N31
\inst2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count~1_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(10));

-- Location: IOIBUF_X31_Y4_N1
\selec_ang~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selec_ang,
	o => \selec_ang~input_o\);

-- Location: LCCOMB_X19_Y19_N22
\inst2|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = (\inst2|count\(14)) # ((\inst2|count\(10) & (\inst2|count\(11) $ (\selec_ang~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(10),
	datab => \inst2|count\(14),
	datac => \inst2|count\(11),
	datad => \selec_ang~input_o\,
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y19_N24
\inst2|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~1_combout\ = (\inst2|count\(2) & ((\inst2|count\(4)) # ((\inst2|count\(1) & \inst2|count\(0))))) # (!\inst2|count\(2) & (\inst2|count\(1) & (\inst2|count\(4) & \inst2|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(2),
	datab => \inst2|count\(1),
	datac => \inst2|count\(4),
	datad => \inst2|count\(0),
	combout => \inst2|LessThan1~1_combout\);

-- Location: LCCOMB_X19_Y19_N18
\inst2|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~2_combout\ = (\selec_ang~input_o\ & ((\inst2|count\(4)) # ((\inst2|LessThan1~1_combout\ & \inst2|count\(3))))) # (!\selec_ang~input_o\ & (\inst2|count\(4) & ((\inst2|LessThan1~1_combout\) # (\inst2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec_ang~input_o\,
	datab => \inst2|LessThan1~1_combout\,
	datac => \inst2|count\(4),
	datad => \inst2|count\(3),
	combout => \inst2|LessThan1~2_combout\);

-- Location: LCCOMB_X19_Y19_N20
\inst2|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~3_combout\ = (\inst2|count\(6) & \inst2|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|count\(6),
	datad => \inst2|count\(5),
	combout => \inst2|LessThan1~3_combout\);

-- Location: LCCOMB_X19_Y19_N6
\inst2|LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~4_combout\ = (\inst2|count\(8)) # ((\inst2|LessThan1~2_combout\ & (\inst2|LessThan1~3_combout\ & \inst2|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan1~2_combout\,
	datab => \inst2|LessThan1~3_combout\,
	datac => \inst2|count\(7),
	datad => \inst2|count\(8),
	combout => \inst2|LessThan1~4_combout\);

-- Location: LCCOMB_X19_Y19_N16
\inst2|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~5_combout\ = (\inst2|LessThan1~4_combout\ & ((\inst2|count\(11)) # ((\inst2|count\(9) & \selec_ang~input_o\)))) # (!\inst2|LessThan1~4_combout\ & (\inst2|count\(11) & ((\inst2|count\(9)) # (\selec_ang~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan1~4_combout\,
	datab => \inst2|count\(9),
	datac => \inst2|count\(11),
	datad => \selec_ang~input_o\,
	combout => \inst2|LessThan1~5_combout\);

-- Location: LCCOMB_X19_Y19_N8
\inst2|LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~6_combout\ = (!\inst2|LessThan1~0_combout\ & (!\inst2|LessThan1~5_combout\ & (!\inst2|count\(12) & !\inst2|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan1~0_combout\,
	datab => \inst2|LessThan1~5_combout\,
	datac => \inst2|count\(12),
	datad => \inst2|count\(13),
	combout => \inst2|LessThan1~6_combout\);

-- Location: FF_X19_Y19_N9
\inst2|pwm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|LessThan1~6_combout\,
	clrn => \paro~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pwm~q\);

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


