-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "01/26/2018 13:28:35"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
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

ENTITY 	LogicalStep_Lab1_top IS
    PORT (
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic;
	leds : OUT std_logic_vector(7 DOWNTO 0);
	sw : IN std_logic_vector(1 DOWNTO 0);
	clkin_50 : IN std_logic;
	PB : IN std_logic_vector(1 DOWNTO 0)
	);
END LogicalStep_Lab1_top;

-- Design Ports Information
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- PB[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- PB[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab1_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_PB : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \PB[0]~input_o\ : std_logic;
SIGNAL \PB[1]~input_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita24~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita24~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita25~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita25~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita26~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita26~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita27~combout\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \inst9|OUT_4~combout\ : std_logic;
SIGNAL \inst10|inst3~combout\ : std_logic;
SIGNAL \inst10|inst2~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_reg_bit\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst9|ALT_INV_OUT_4~combout\ : std_logic;

BEGIN

seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
leds <= ww_leds;
ww_sw <= sw;
ww_clkin_50 <= clkin_50;
ww_PB <= PB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);
\inst9|ALT_INV_OUT_4~combout\ <= NOT \inst9|OUT_4~combout\;

-- Location: LCCOMB_X11_Y20_N20
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

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|OUT_4~combout\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|OUT_4~combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|OUT_4~combout\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|OUT_4~combout\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst3~combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst2~combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_OUT_4~combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|OUT_4~combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOIBUF_X9_Y0_N1
\PB[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(0),
	o => \PB[0]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\PB[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(1),
	o => \PB[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X10_Y9_N4
\inst5|auto_generated|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita0~combout\ = \inst5|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst5|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst5|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst5|auto_generated|counter_comb_bita0~combout\,
	cout => \inst5|auto_generated|counter_comb_bita0~COUT\);

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: FF_X10_Y9_N5
\inst5|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita0~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X10_Y9_N6
\inst5|auto_generated|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita1~combout\ = (\inst5|auto_generated|counter_reg_bit\(1) & (!\inst5|auto_generated|counter_comb_bita0~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(1) & ((\inst5|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst5|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita0~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita1~combout\,
	cout => \inst5|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X10_Y9_N7
\inst5|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita1~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X10_Y9_N8
\inst5|auto_generated|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita2~combout\ = (\inst5|auto_generated|counter_reg_bit\(2) & (\inst5|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(2) & (!\inst5|auto_generated|counter_comb_bita1~COUT\ & 
-- VCC))
-- \inst5|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(2) & !\inst5|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita2~combout\,
	cout => \inst5|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X10_Y9_N9
\inst5|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita2~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X10_Y9_N10
\inst5|auto_generated|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita3~combout\ = (\inst5|auto_generated|counter_reg_bit\(3) & (!\inst5|auto_generated|counter_comb_bita2~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(3) & ((\inst5|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst5|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita2~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita3~combout\,
	cout => \inst5|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X10_Y9_N11
\inst5|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita3~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X10_Y9_N12
\inst5|auto_generated|counter_comb_bita4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita4~combout\ = (\inst5|auto_generated|counter_reg_bit\(4) & (\inst5|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(4) & (!\inst5|auto_generated|counter_comb_bita3~COUT\ & 
-- VCC))
-- \inst5|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(4) & !\inst5|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita4~combout\,
	cout => \inst5|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X10_Y9_N13
\inst5|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita4~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X10_Y9_N14
\inst5|auto_generated|counter_comb_bita5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita5~combout\ = (\inst5|auto_generated|counter_reg_bit\(5) & (!\inst5|auto_generated|counter_comb_bita4~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(5) & ((\inst5|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst5|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita4~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita5~combout\,
	cout => \inst5|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X10_Y9_N15
\inst5|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita5~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X10_Y9_N16
\inst5|auto_generated|counter_comb_bita6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita6~combout\ = (\inst5|auto_generated|counter_reg_bit\(6) & (\inst5|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(6) & (!\inst5|auto_generated|counter_comb_bita5~COUT\ & 
-- VCC))
-- \inst5|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(6) & !\inst5|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita6~combout\,
	cout => \inst5|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X10_Y9_N17
\inst5|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita6~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X10_Y9_N18
\inst5|auto_generated|counter_comb_bita7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita7~combout\ = (\inst5|auto_generated|counter_reg_bit\(7) & (!\inst5|auto_generated|counter_comb_bita6~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(7) & ((\inst5|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst5|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita6~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita7~combout\,
	cout => \inst5|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X10_Y9_N19
\inst5|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita7~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X10_Y9_N20
\inst5|auto_generated|counter_comb_bita8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita8~combout\ = (\inst5|auto_generated|counter_reg_bit\(8) & (\inst5|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(8) & (!\inst5|auto_generated|counter_comb_bita7~COUT\ & 
-- VCC))
-- \inst5|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(8) & !\inst5|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita8~combout\,
	cout => \inst5|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X10_Y9_N21
\inst5|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita8~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X10_Y9_N22
\inst5|auto_generated|counter_comb_bita9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita9~combout\ = (\inst5|auto_generated|counter_reg_bit\(9) & (!\inst5|auto_generated|counter_comb_bita8~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(9) & ((\inst5|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst5|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita8~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita9~combout\,
	cout => \inst5|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X10_Y9_N23
\inst5|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita9~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X10_Y9_N24
\inst5|auto_generated|counter_comb_bita10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita10~combout\ = (\inst5|auto_generated|counter_reg_bit\(10) & (\inst5|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(10) & (!\inst5|auto_generated|counter_comb_bita9~COUT\ 
-- & VCC))
-- \inst5|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(10) & !\inst5|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita10~combout\,
	cout => \inst5|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X10_Y9_N25
\inst5|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita10~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X10_Y9_N26
\inst5|auto_generated|counter_comb_bita11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita11~combout\ = (\inst5|auto_generated|counter_reg_bit\(11) & (!\inst5|auto_generated|counter_comb_bita10~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(11) & ((\inst5|auto_generated|counter_comb_bita10~COUT\) # 
-- (GND)))
-- \inst5|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita10~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita11~combout\,
	cout => \inst5|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X10_Y9_N27
\inst5|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita11~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X10_Y9_N28
\inst5|auto_generated|counter_comb_bita12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita12~combout\ = (\inst5|auto_generated|counter_reg_bit\(12) & (\inst5|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(12) & 
-- (!\inst5|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst5|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(12) & !\inst5|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita12~combout\,
	cout => \inst5|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X10_Y9_N29
\inst5|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita12~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X10_Y9_N30
\inst5|auto_generated|counter_comb_bita13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita13~combout\ = (\inst5|auto_generated|counter_reg_bit\(13) & (!\inst5|auto_generated|counter_comb_bita12~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(13) & ((\inst5|auto_generated|counter_comb_bita12~COUT\) # 
-- (GND)))
-- \inst5|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita12~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita13~combout\,
	cout => \inst5|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X10_Y9_N31
\inst5|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita13~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X10_Y8_N0
\inst5|auto_generated|counter_comb_bita14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita14~combout\ = (\inst5|auto_generated|counter_reg_bit\(14) & (\inst5|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(14) & 
-- (!\inst5|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst5|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(14) & !\inst5|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita14~combout\,
	cout => \inst5|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X10_Y8_N1
\inst5|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita14~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X10_Y8_N2
\inst5|auto_generated|counter_comb_bita15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita15~combout\ = (\inst5|auto_generated|counter_reg_bit\(15) & (!\inst5|auto_generated|counter_comb_bita14~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(15) & ((\inst5|auto_generated|counter_comb_bita14~COUT\) # 
-- (GND)))
-- \inst5|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita14~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(15),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita15~combout\,
	cout => \inst5|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X10_Y8_N3
\inst5|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita15~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(15));

-- Location: LCCOMB_X10_Y8_N4
\inst5|auto_generated|counter_comb_bita16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita16~combout\ = (\inst5|auto_generated|counter_reg_bit\(16) & (\inst5|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(16) & 
-- (!\inst5|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst5|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(16) & !\inst5|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(16),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita16~combout\,
	cout => \inst5|auto_generated|counter_comb_bita16~COUT\);

-- Location: FF_X10_Y8_N5
\inst5|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita16~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(16));

-- Location: LCCOMB_X10_Y8_N6
\inst5|auto_generated|counter_comb_bita17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita17~combout\ = (\inst5|auto_generated|counter_reg_bit\(17) & (!\inst5|auto_generated|counter_comb_bita16~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(17) & ((\inst5|auto_generated|counter_comb_bita16~COUT\) # 
-- (GND)))
-- \inst5|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita16~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(17),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita17~combout\,
	cout => \inst5|auto_generated|counter_comb_bita17~COUT\);

-- Location: FF_X10_Y8_N7
\inst5|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita17~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(17));

-- Location: LCCOMB_X10_Y8_N8
\inst5|auto_generated|counter_comb_bita18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita18~combout\ = (\inst5|auto_generated|counter_reg_bit\(18) & (\inst5|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(18) & 
-- (!\inst5|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \inst5|auto_generated|counter_comb_bita18~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(18) & !\inst5|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(18),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita18~combout\,
	cout => \inst5|auto_generated|counter_comb_bita18~COUT\);

-- Location: FF_X10_Y8_N9
\inst5|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita18~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(18));

-- Location: LCCOMB_X10_Y8_N10
\inst5|auto_generated|counter_comb_bita19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita19~combout\ = (\inst5|auto_generated|counter_reg_bit\(19) & (!\inst5|auto_generated|counter_comb_bita18~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(19) & ((\inst5|auto_generated|counter_comb_bita18~COUT\) # 
-- (GND)))
-- \inst5|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita18~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(19),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita18~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita19~combout\,
	cout => \inst5|auto_generated|counter_comb_bita19~COUT\);

-- Location: FF_X10_Y8_N11
\inst5|auto_generated|counter_reg_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita19~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(19));

-- Location: LCCOMB_X10_Y8_N12
\inst5|auto_generated|counter_comb_bita20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita20~combout\ = (\inst5|auto_generated|counter_reg_bit\(20) & (\inst5|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(20) & 
-- (!\inst5|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \inst5|auto_generated|counter_comb_bita20~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(20) & !\inst5|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(20),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita19~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita20~combout\,
	cout => \inst5|auto_generated|counter_comb_bita20~COUT\);

-- Location: FF_X10_Y8_N13
\inst5|auto_generated|counter_reg_bit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita20~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(20));

-- Location: LCCOMB_X10_Y8_N14
\inst5|auto_generated|counter_comb_bita21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita21~combout\ = (\inst5|auto_generated|counter_reg_bit\(21) & (!\inst5|auto_generated|counter_comb_bita20~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(21) & ((\inst5|auto_generated|counter_comb_bita20~COUT\) # 
-- (GND)))
-- \inst5|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita20~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(21),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita20~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita21~combout\,
	cout => \inst5|auto_generated|counter_comb_bita21~COUT\);

-- Location: FF_X10_Y8_N15
\inst5|auto_generated|counter_reg_bit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita21~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(21));

-- Location: LCCOMB_X10_Y8_N16
\inst5|auto_generated|counter_comb_bita22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita22~combout\ = (\inst5|auto_generated|counter_reg_bit\(22) & (\inst5|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(22) & 
-- (!\inst5|auto_generated|counter_comb_bita21~COUT\ & VCC))
-- \inst5|auto_generated|counter_comb_bita22~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(22) & !\inst5|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(22),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita21~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita22~combout\,
	cout => \inst5|auto_generated|counter_comb_bita22~COUT\);

-- Location: FF_X10_Y8_N17
\inst5|auto_generated|counter_reg_bit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita22~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(22));

-- Location: LCCOMB_X10_Y8_N18
\inst5|auto_generated|counter_comb_bita23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita23~combout\ = (\inst5|auto_generated|counter_reg_bit\(23) & (!\inst5|auto_generated|counter_comb_bita22~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(23) & ((\inst5|auto_generated|counter_comb_bita22~COUT\) # 
-- (GND)))
-- \inst5|auto_generated|counter_comb_bita23~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita22~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(23),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita22~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita23~combout\,
	cout => \inst5|auto_generated|counter_comb_bita23~COUT\);

-- Location: FF_X10_Y8_N19
\inst5|auto_generated|counter_reg_bit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita23~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(23));

-- Location: LCCOMB_X10_Y8_N20
\inst5|auto_generated|counter_comb_bita24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita24~combout\ = (\inst5|auto_generated|counter_reg_bit\(24) & (\inst5|auto_generated|counter_comb_bita23~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(24) & 
-- (!\inst5|auto_generated|counter_comb_bita23~COUT\ & VCC))
-- \inst5|auto_generated|counter_comb_bita24~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(24) & !\inst5|auto_generated|counter_comb_bita23~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(24),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita23~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita24~combout\,
	cout => \inst5|auto_generated|counter_comb_bita24~COUT\);

-- Location: FF_X10_Y8_N21
\inst5|auto_generated|counter_reg_bit[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita24~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(24));

-- Location: LCCOMB_X10_Y8_N22
\inst5|auto_generated|counter_comb_bita25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita25~combout\ = (\inst5|auto_generated|counter_reg_bit\(25) & (!\inst5|auto_generated|counter_comb_bita24~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(25) & ((\inst5|auto_generated|counter_comb_bita24~COUT\) # 
-- (GND)))
-- \inst5|auto_generated|counter_comb_bita25~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita24~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(25),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita24~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita25~combout\,
	cout => \inst5|auto_generated|counter_comb_bita25~COUT\);

-- Location: FF_X10_Y8_N23
\inst5|auto_generated|counter_reg_bit[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita25~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(25));

-- Location: LCCOMB_X10_Y8_N24
\inst5|auto_generated|counter_comb_bita26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita26~combout\ = (\inst5|auto_generated|counter_reg_bit\(26) & (\inst5|auto_generated|counter_comb_bita25~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(26) & 
-- (!\inst5|auto_generated|counter_comb_bita25~COUT\ & VCC))
-- \inst5|auto_generated|counter_comb_bita26~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(26) & !\inst5|auto_generated|counter_comb_bita25~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(26),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita25~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita26~combout\,
	cout => \inst5|auto_generated|counter_comb_bita26~COUT\);

-- Location: FF_X10_Y8_N25
\inst5|auto_generated|counter_reg_bit[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita26~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(26));

-- Location: LCCOMB_X10_Y8_N26
\inst5|auto_generated|counter_comb_bita27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita27~combout\ = \inst5|auto_generated|counter_reg_bit\(27) $ (\inst5|auto_generated|counter_comb_bita26~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(27),
	cin => \inst5|auto_generated|counter_comb_bita26~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita27~combout\);

-- Location: FF_X10_Y8_N27
\inst5|auto_generated|counter_reg_bit[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita27~combout\,
	clrn => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(27));

-- Location: LCCOMB_X9_Y8_N28
inst7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7~combout\ = (\inst5|auto_generated|counter_reg_bit\(27)) # (!\PB[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PB[1]~input_o\,
	datad => \inst5|auto_generated|counter_reg_bit\(27),
	combout => \inst7~combout\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X9_Y8_N30
\inst9|OUT_4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|OUT_4~combout\ = \sw[1]~input_o\ $ (((\inst7~combout\ & ((\inst5|auto_generated|counter_reg_bit\(26)) # (!\PB[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[0]~input_o\,
	datab => \inst7~combout\,
	datac => \sw[1]~input_o\,
	datad => \inst5|auto_generated|counter_reg_bit\(26),
	combout => \inst9|OUT_4~combout\);

-- Location: LCCOMB_X9_Y8_N0
\inst10|inst3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst3~combout\ = \inst7~combout\ $ (\sw[1]~input_o\ $ (((\inst5|auto_generated|counter_reg_bit\(26)) # (!\PB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[0]~input_o\,
	datab => \inst7~combout\,
	datac => \sw[1]~input_o\,
	datad => \inst5|auto_generated|counter_reg_bit\(26),
	combout => \inst10|inst3~combout\);

-- Location: LCCOMB_X9_Y8_N14
\inst10|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst2~combout\ = \sw[1]~input_o\ $ ((((\inst7~combout\) # (\inst5|auto_generated|counter_reg_bit\(26))) # (!\PB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[0]~input_o\,
	datab => \inst7~combout\,
	datac => \sw[1]~input_o\,
	datad => \inst5|auto_generated|counter_reg_bit\(26),
	combout => \inst10|inst2~combout\);

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

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(0) <= \leds[0]~output_o\;
END structure;


