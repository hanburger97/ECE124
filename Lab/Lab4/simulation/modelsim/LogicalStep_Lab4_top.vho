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

-- DATE "03/22/2018 09:36:26"

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

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(7 DOWNTO 0);
	seg7_data : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_char1 : BUFFER std_logic;
	seg7_char2 : BUFFER std_logic
	);
END LogicalStep_Lab4_top;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst_n	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mealysmInstance|curr.s1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bin_counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \bin_counter[0]~69_combout\ : std_logic;
SIGNAL \bin_counter[1]~23_combout\ : std_logic;
SIGNAL \bin_counter[1]~24\ : std_logic;
SIGNAL \bin_counter[2]~25_combout\ : std_logic;
SIGNAL \bin_counter[2]~26\ : std_logic;
SIGNAL \bin_counter[3]~27_combout\ : std_logic;
SIGNAL \bin_counter[3]~28\ : std_logic;
SIGNAL \bin_counter[4]~29_combout\ : std_logic;
SIGNAL \bin_counter[4]~30\ : std_logic;
SIGNAL \bin_counter[5]~31_combout\ : std_logic;
SIGNAL \bin_counter[5]~32\ : std_logic;
SIGNAL \bin_counter[6]~33_combout\ : std_logic;
SIGNAL \bin_counter[6]~34\ : std_logic;
SIGNAL \bin_counter[7]~35_combout\ : std_logic;
SIGNAL \bin_counter[7]~36\ : std_logic;
SIGNAL \bin_counter[8]~37_combout\ : std_logic;
SIGNAL \bin_counter[8]~38\ : std_logic;
SIGNAL \bin_counter[9]~39_combout\ : std_logic;
SIGNAL \bin_counter[9]~40\ : std_logic;
SIGNAL \bin_counter[10]~41_combout\ : std_logic;
SIGNAL \bin_counter[10]~42\ : std_logic;
SIGNAL \bin_counter[11]~43_combout\ : std_logic;
SIGNAL \bin_counter[11]~44\ : std_logic;
SIGNAL \bin_counter[12]~45_combout\ : std_logic;
SIGNAL \bin_counter[12]~46\ : std_logic;
SIGNAL \bin_counter[13]~47_combout\ : std_logic;
SIGNAL \bin_counter[13]~48\ : std_logic;
SIGNAL \bin_counter[14]~49_combout\ : std_logic;
SIGNAL \bin_counter[14]~50\ : std_logic;
SIGNAL \bin_counter[15]~51_combout\ : std_logic;
SIGNAL \bin_counter[15]~52\ : std_logic;
SIGNAL \bin_counter[16]~53_combout\ : std_logic;
SIGNAL \bin_counter[16]~54\ : std_logic;
SIGNAL \bin_counter[17]~55_combout\ : std_logic;
SIGNAL \bin_counter[17]~56\ : std_logic;
SIGNAL \bin_counter[18]~57_combout\ : std_logic;
SIGNAL \bin_counter[18]~58\ : std_logic;
SIGNAL \bin_counter[19]~59_combout\ : std_logic;
SIGNAL \bin_counter[19]~60\ : std_logic;
SIGNAL \bin_counter[20]~61_combout\ : std_logic;
SIGNAL \bin_counter[20]~62\ : std_logic;
SIGNAL \bin_counter[21]~63_combout\ : std_logic;
SIGNAL \bin_counter[21]~64\ : std_logic;
SIGNAL \bin_counter[22]~65_combout\ : std_logic;
SIGNAL \bin_counter[22]~66\ : std_logic;
SIGNAL \bin_counter[23]~67_combout\ : std_logic;
SIGNAL \bin_counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \extenderInstance|nxt.EXT1~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \mealysmInstance|Selector0~0_combout\ : std_logic;
SIGNAL \mealysmInstance|curr.s0~q\ : std_logic;
SIGNAL \mealysmInstance|Selector1~0_combout\ : std_logic;
SIGNAL \mealysmInstance|curr.s1~q\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \mealysmInstance|curr.s1~clkctrl_outclk\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \xCompInstance|EQ~0_combout\ : std_logic;
SIGNAL \mealysmInstance|xClkEn~0_combout\ : std_logic;
SIGNAL \mealysmInstance|xClkEn~combout\ : std_logic;
SIGNAL \xCountInstance|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \xCountInstance|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \xCountInstance|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \xCountInstance|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \xCountInstance|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \xCountInstance|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \xCompInstance|LE~1_combout\ : std_logic;
SIGNAL \xCompInstance|LE~2_combout\ : std_logic;
SIGNAL \xCompInstance|LE~3_combout\ : std_logic;
SIGNAL \mealysmInstance|xUD~combout\ : std_logic;
SIGNAL \xCountInstance|process_0~0_combout\ : std_logic;
SIGNAL \xCountInstance|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \xCompInstance|LE~0_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \yCompInstance|EQ~0_combout\ : std_logic;
SIGNAL \mealysmInstance|yClkEn~0_combout\ : std_logic;
SIGNAL \mealysmInstance|yClkEn~combout\ : std_logic;
SIGNAL \yCountInstance|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \yCountInstance|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \yCountInstance|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \yCountInstance|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \yCountInstance|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \yCompInstance|LE~1_combout\ : std_logic;
SIGNAL \yCompInstance|LE~2_combout\ : std_logic;
SIGNAL \yCompInstance|LE~3_combout\ : std_logic;
SIGNAL \mealysmInstance|yUD~combout\ : std_logic;
SIGNAL \yCountInstance|process_0~0_combout\ : std_logic;
SIGNAL \yCountInstance|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \yCountInstance|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \yCompInstance|LE~0_combout\ : std_logic;
SIGNAL \mealysmInstance|e_en~0_combout\ : std_logic;
SIGNAL \mealysmInstance|e_en~1_combout\ : std_logic;
SIGNAL \extenderInstance|curr.EXT1~q\ : std_logic;
SIGNAL \extenderInstance|curr.EXT2~q\ : std_logic;
SIGNAL \extenderInstance|curr.EXT3~q\ : std_logic;
SIGNAL \extenderInstance|Selector0~0_combout\ : std_logic;
SIGNAL \extenderInstance|curr.EXTENDED~q\ : std_logic;
SIGNAL \extenderInstance|nxt.RET3~0_combout\ : std_logic;
SIGNAL \extenderInstance|curr.RET3~q\ : std_logic;
SIGNAL \extenderInstance|curr.RET2~feeder_combout\ : std_logic;
SIGNAL \extenderInstance|curr.RET2~q\ : std_logic;
SIGNAL \extenderInstance|curr.RET1~feeder_combout\ : std_logic;
SIGNAL \extenderInstance|curr.RET1~q\ : std_logic;
SIGNAL \extenderInstance|Selector1~0_combout\ : std_logic;
SIGNAL \extenderInstance|curr.RETRACTED~q\ : std_logic;
SIGNAL \mealysmInstance|Selector2~0_combout\ : std_logic;
SIGNAL \mealysmInstance|curr.s2~q\ : std_logic;
SIGNAL \blinkingMux|Mux4~0_combout\ : std_logic;
SIGNAL \blinkingMux|Mux3~0_combout\ : std_logic;
SIGNAL \blinkingMux|Mux1~0_combout\ : std_logic;
SIGNAL \blinkingMux|Mux0~0_combout\ : std_logic;
SIGNAL \blinkingMux|Mux2~0_combout\ : std_logic;
SIGNAL \sevenX|Mux5~0_combout\ : std_logic;
SIGNAL \blinkingMux|Mux6~0_combout\ : std_logic;
SIGNAL \blinkingMux|Mux5~0_combout\ : std_logic;
SIGNAL \blinkingMux|Mux4~1_combout\ : std_logic;
SIGNAL \blinkingMux|Mux7~0_combout\ : std_logic;
SIGNAL \sevenY|Mux5~0_combout\ : std_logic;
SIGNAL \display|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \sevenX|Mux1~0_combout\ : std_logic;
SIGNAL \sevenY|Mux1~0_combout\ : std_logic;
SIGNAL \display|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \sevenX|Mux0~0_combout\ : std_logic;
SIGNAL \sevenY|Mux0~0_combout\ : std_logic;
SIGNAL \display|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \grapplerInstance|curr~0_combout\ : std_logic;
SIGNAL \grapplerInstance|curr~q\ : std_logic;
SIGNAL \extenderInstance|LR~0_combout\ : std_logic;
SIGNAL \bidirShiftInstance|sreg~3_combout\ : std_logic;
SIGNAL \bidirShiftInstance|sreg~2_combout\ : std_logic;
SIGNAL \bidirShiftInstance|sreg~1_combout\ : std_logic;
SIGNAL \bidirShiftInstance|sreg~0_combout\ : std_logic;
SIGNAL \sevenX|Mux6~0_combout\ : std_logic;
SIGNAL \sevenY|Mux6~0_combout\ : std_logic;
SIGNAL \display|DOUT[0]~0_combout\ : std_logic;
SIGNAL \sevenY|Mux4~0_combout\ : std_logic;
SIGNAL \sevenX|Mux4~0_combout\ : std_logic;
SIGNAL \display|DOUT[2]~2_combout\ : std_logic;
SIGNAL \sevenX|Mux3~0_combout\ : std_logic;
SIGNAL \sevenY|Mux3~0_combout\ : std_logic;
SIGNAL \display|DOUT[3]~3_combout\ : std_logic;
SIGNAL \sevenX|Mux2~0_combout\ : std_logic;
SIGNAL \sevenY|Mux2~0_combout\ : std_logic;
SIGNAL \display|DOUT[4]~4_combout\ : std_logic;
SIGNAL bin_counter : std_logic_vector(25 DOWNTO 0);
SIGNAL \xCountInstance|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \yCountInstance|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bidirShiftInstance|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \display|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \display|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \display|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \grapplerInstance|ALT_INV_curr~q\ : std_logic;
SIGNAL ALT_INV_bin_counter : std_logic_vector(10 DOWNTO 10);

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\mealysmInstance|curr.s1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mealysmInstance|curr.s1~q\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\bin_counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & bin_counter(23));
\display|ALT_INV_DOUT[4]~4_combout\ <= NOT \display|DOUT[4]~4_combout\;
\display|ALT_INV_DOUT[3]~3_combout\ <= NOT \display|DOUT[3]~3_combout\;
\display|ALT_INV_DOUT[2]~2_combout\ <= NOT \display|DOUT[2]~2_combout\;
\display|ALT_INV_DOUT[0]~0_combout\ <= NOT \display|DOUT[0]~0_combout\;
\grapplerInstance|ALT_INV_curr~q\ <= NOT \grapplerInstance|curr~q\;
ALT_INV_bin_counter(10) <= NOT bin_counter(10);

-- Location: LCCOMB_X11_Y24_N20
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

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \display|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \display|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \display|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mealysmInstance|curr.s2~q\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \grapplerInstance|ALT_INV_curr~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bidirShiftInstance|sreg\(0),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bidirShiftInstance|sreg\(1),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bidirShiftInstance|sreg\(2),
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bidirShiftInstance|sreg\(3),
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bin_counter(10),
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
	i => ALT_INV_bin_counter(10),
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X6_Y0_N15
\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

-- Location: LCCOMB_X6_Y7_N8
\comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\pb[3]~input_o\ & \pb[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb[3]~input_o\,
	datad => \pb[2]~input_o\,
	combout => \comb~0_combout\);

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

-- Location: LCCOMB_X3_Y8_N4
\bin_counter[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[0]~69_combout\ = !bin_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bin_counter(0),
	combout => \bin_counter[0]~69_combout\);

-- Location: FF_X3_Y8_N5
\bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(0));

-- Location: LCCOMB_X3_Y8_N10
\bin_counter[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[1]~23_combout\ = (bin_counter(1) & (bin_counter(0) $ (VCC))) # (!bin_counter(1) & (bin_counter(0) & VCC))
-- \bin_counter[1]~24\ = CARRY((bin_counter(1) & bin_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(1),
	datab => bin_counter(0),
	datad => VCC,
	combout => \bin_counter[1]~23_combout\,
	cout => \bin_counter[1]~24\);

-- Location: FF_X3_Y8_N11
\bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(1));

-- Location: LCCOMB_X3_Y8_N12
\bin_counter[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[2]~25_combout\ = (bin_counter(2) & (!\bin_counter[1]~24\)) # (!bin_counter(2) & ((\bin_counter[1]~24\) # (GND)))
-- \bin_counter[2]~26\ = CARRY((!\bin_counter[1]~24\) # (!bin_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(2),
	datad => VCC,
	cin => \bin_counter[1]~24\,
	combout => \bin_counter[2]~25_combout\,
	cout => \bin_counter[2]~26\);

-- Location: FF_X3_Y8_N13
\bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(2));

-- Location: LCCOMB_X3_Y8_N14
\bin_counter[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[3]~27_combout\ = (bin_counter(3) & (\bin_counter[2]~26\ $ (GND))) # (!bin_counter(3) & (!\bin_counter[2]~26\ & VCC))
-- \bin_counter[3]~28\ = CARRY((bin_counter(3) & !\bin_counter[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(3),
	datad => VCC,
	cin => \bin_counter[2]~26\,
	combout => \bin_counter[3]~27_combout\,
	cout => \bin_counter[3]~28\);

-- Location: FF_X3_Y8_N15
\bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(3));

-- Location: LCCOMB_X3_Y8_N16
\bin_counter[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[4]~29_combout\ = (bin_counter(4) & (!\bin_counter[3]~28\)) # (!bin_counter(4) & ((\bin_counter[3]~28\) # (GND)))
-- \bin_counter[4]~30\ = CARRY((!\bin_counter[3]~28\) # (!bin_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(4),
	datad => VCC,
	cin => \bin_counter[3]~28\,
	combout => \bin_counter[4]~29_combout\,
	cout => \bin_counter[4]~30\);

-- Location: FF_X3_Y8_N17
\bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(4));

-- Location: LCCOMB_X3_Y8_N18
\bin_counter[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[5]~31_combout\ = (bin_counter(5) & (\bin_counter[4]~30\ $ (GND))) # (!bin_counter(5) & (!\bin_counter[4]~30\ & VCC))
-- \bin_counter[5]~32\ = CARRY((bin_counter(5) & !\bin_counter[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(5),
	datad => VCC,
	cin => \bin_counter[4]~30\,
	combout => \bin_counter[5]~31_combout\,
	cout => \bin_counter[5]~32\);

-- Location: FF_X3_Y8_N19
\bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(5));

-- Location: LCCOMB_X3_Y8_N20
\bin_counter[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[6]~33_combout\ = (bin_counter(6) & (!\bin_counter[5]~32\)) # (!bin_counter(6) & ((\bin_counter[5]~32\) # (GND)))
-- \bin_counter[6]~34\ = CARRY((!\bin_counter[5]~32\) # (!bin_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(6),
	datad => VCC,
	cin => \bin_counter[5]~32\,
	combout => \bin_counter[6]~33_combout\,
	cout => \bin_counter[6]~34\);

-- Location: FF_X3_Y8_N21
\bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(6));

-- Location: LCCOMB_X3_Y8_N22
\bin_counter[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[7]~35_combout\ = (bin_counter(7) & (\bin_counter[6]~34\ $ (GND))) # (!bin_counter(7) & (!\bin_counter[6]~34\ & VCC))
-- \bin_counter[7]~36\ = CARRY((bin_counter(7) & !\bin_counter[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(7),
	datad => VCC,
	cin => \bin_counter[6]~34\,
	combout => \bin_counter[7]~35_combout\,
	cout => \bin_counter[7]~36\);

-- Location: FF_X3_Y8_N23
\bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(7));

-- Location: LCCOMB_X3_Y8_N24
\bin_counter[8]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[8]~37_combout\ = (bin_counter(8) & (!\bin_counter[7]~36\)) # (!bin_counter(8) & ((\bin_counter[7]~36\) # (GND)))
-- \bin_counter[8]~38\ = CARRY((!\bin_counter[7]~36\) # (!bin_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(8),
	datad => VCC,
	cin => \bin_counter[7]~36\,
	combout => \bin_counter[8]~37_combout\,
	cout => \bin_counter[8]~38\);

-- Location: FF_X3_Y8_N25
\bin_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(8));

-- Location: LCCOMB_X3_Y8_N26
\bin_counter[9]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[9]~39_combout\ = (bin_counter(9) & (\bin_counter[8]~38\ $ (GND))) # (!bin_counter(9) & (!\bin_counter[8]~38\ & VCC))
-- \bin_counter[9]~40\ = CARRY((bin_counter(9) & !\bin_counter[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(9),
	datad => VCC,
	cin => \bin_counter[8]~38\,
	combout => \bin_counter[9]~39_combout\,
	cout => \bin_counter[9]~40\);

-- Location: FF_X3_Y8_N27
\bin_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[9]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(9));

-- Location: LCCOMB_X3_Y8_N28
\bin_counter[10]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[10]~41_combout\ = (bin_counter(10) & (!\bin_counter[9]~40\)) # (!bin_counter(10) & ((\bin_counter[9]~40\) # (GND)))
-- \bin_counter[10]~42\ = CARRY((!\bin_counter[9]~40\) # (!bin_counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(10),
	datad => VCC,
	cin => \bin_counter[9]~40\,
	combout => \bin_counter[10]~41_combout\,
	cout => \bin_counter[10]~42\);

-- Location: FF_X3_Y8_N29
\bin_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(10));

-- Location: LCCOMB_X3_Y8_N30
\bin_counter[11]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[11]~43_combout\ = (bin_counter(11) & (\bin_counter[10]~42\ $ (GND))) # (!bin_counter(11) & (!\bin_counter[10]~42\ & VCC))
-- \bin_counter[11]~44\ = CARRY((bin_counter(11) & !\bin_counter[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(11),
	datad => VCC,
	cin => \bin_counter[10]~42\,
	combout => \bin_counter[11]~43_combout\,
	cout => \bin_counter[11]~44\);

-- Location: FF_X3_Y8_N31
\bin_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[11]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(11));

-- Location: LCCOMB_X3_Y7_N0
\bin_counter[12]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[12]~45_combout\ = (bin_counter(12) & (!\bin_counter[11]~44\)) # (!bin_counter(12) & ((\bin_counter[11]~44\) # (GND)))
-- \bin_counter[12]~46\ = CARRY((!\bin_counter[11]~44\) # (!bin_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(12),
	datad => VCC,
	cin => \bin_counter[11]~44\,
	combout => \bin_counter[12]~45_combout\,
	cout => \bin_counter[12]~46\);

-- Location: FF_X3_Y7_N1
\bin_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[12]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(12));

-- Location: LCCOMB_X3_Y7_N2
\bin_counter[13]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[13]~47_combout\ = (bin_counter(13) & (\bin_counter[12]~46\ $ (GND))) # (!bin_counter(13) & (!\bin_counter[12]~46\ & VCC))
-- \bin_counter[13]~48\ = CARRY((bin_counter(13) & !\bin_counter[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(13),
	datad => VCC,
	cin => \bin_counter[12]~46\,
	combout => \bin_counter[13]~47_combout\,
	cout => \bin_counter[13]~48\);

-- Location: FF_X3_Y7_N3
\bin_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[13]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(13));

-- Location: LCCOMB_X3_Y7_N4
\bin_counter[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[14]~49_combout\ = (bin_counter(14) & (!\bin_counter[13]~48\)) # (!bin_counter(14) & ((\bin_counter[13]~48\) # (GND)))
-- \bin_counter[14]~50\ = CARRY((!\bin_counter[13]~48\) # (!bin_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(14),
	datad => VCC,
	cin => \bin_counter[13]~48\,
	combout => \bin_counter[14]~49_combout\,
	cout => \bin_counter[14]~50\);

-- Location: FF_X3_Y7_N5
\bin_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(14));

-- Location: LCCOMB_X3_Y7_N6
\bin_counter[15]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[15]~51_combout\ = (bin_counter(15) & (\bin_counter[14]~50\ $ (GND))) # (!bin_counter(15) & (!\bin_counter[14]~50\ & VCC))
-- \bin_counter[15]~52\ = CARRY((bin_counter(15) & !\bin_counter[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(15),
	datad => VCC,
	cin => \bin_counter[14]~50\,
	combout => \bin_counter[15]~51_combout\,
	cout => \bin_counter[15]~52\);

-- Location: FF_X3_Y7_N7
\bin_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(15));

-- Location: LCCOMB_X3_Y7_N8
\bin_counter[16]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[16]~53_combout\ = (bin_counter(16) & (!\bin_counter[15]~52\)) # (!bin_counter(16) & ((\bin_counter[15]~52\) # (GND)))
-- \bin_counter[16]~54\ = CARRY((!\bin_counter[15]~52\) # (!bin_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(16),
	datad => VCC,
	cin => \bin_counter[15]~52\,
	combout => \bin_counter[16]~53_combout\,
	cout => \bin_counter[16]~54\);

-- Location: FF_X3_Y7_N9
\bin_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[16]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(16));

-- Location: LCCOMB_X3_Y7_N10
\bin_counter[17]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[17]~55_combout\ = (bin_counter(17) & (\bin_counter[16]~54\ $ (GND))) # (!bin_counter(17) & (!\bin_counter[16]~54\ & VCC))
-- \bin_counter[17]~56\ = CARRY((bin_counter(17) & !\bin_counter[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(17),
	datad => VCC,
	cin => \bin_counter[16]~54\,
	combout => \bin_counter[17]~55_combout\,
	cout => \bin_counter[17]~56\);

-- Location: FF_X3_Y7_N11
\bin_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[17]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(17));

-- Location: LCCOMB_X3_Y7_N12
\bin_counter[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[18]~57_combout\ = (bin_counter(18) & (!\bin_counter[17]~56\)) # (!bin_counter(18) & ((\bin_counter[17]~56\) # (GND)))
-- \bin_counter[18]~58\ = CARRY((!\bin_counter[17]~56\) # (!bin_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(18),
	datad => VCC,
	cin => \bin_counter[17]~56\,
	combout => \bin_counter[18]~57_combout\,
	cout => \bin_counter[18]~58\);

-- Location: FF_X3_Y7_N13
\bin_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[18]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(18));

-- Location: LCCOMB_X3_Y7_N14
\bin_counter[19]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[19]~59_combout\ = (bin_counter(19) & (\bin_counter[18]~58\ $ (GND))) # (!bin_counter(19) & (!\bin_counter[18]~58\ & VCC))
-- \bin_counter[19]~60\ = CARRY((bin_counter(19) & !\bin_counter[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(19),
	datad => VCC,
	cin => \bin_counter[18]~58\,
	combout => \bin_counter[19]~59_combout\,
	cout => \bin_counter[19]~60\);

-- Location: FF_X3_Y7_N15
\bin_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[19]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(19));

-- Location: LCCOMB_X3_Y7_N16
\bin_counter[20]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[20]~61_combout\ = (bin_counter(20) & (!\bin_counter[19]~60\)) # (!bin_counter(20) & ((\bin_counter[19]~60\) # (GND)))
-- \bin_counter[20]~62\ = CARRY((!\bin_counter[19]~60\) # (!bin_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(20),
	datad => VCC,
	cin => \bin_counter[19]~60\,
	combout => \bin_counter[20]~61_combout\,
	cout => \bin_counter[20]~62\);

-- Location: FF_X3_Y7_N17
\bin_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[20]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(20));

-- Location: LCCOMB_X3_Y7_N18
\bin_counter[21]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[21]~63_combout\ = (bin_counter(21) & (\bin_counter[20]~62\ $ (GND))) # (!bin_counter(21) & (!\bin_counter[20]~62\ & VCC))
-- \bin_counter[21]~64\ = CARRY((bin_counter(21) & !\bin_counter[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(21),
	datad => VCC,
	cin => \bin_counter[20]~62\,
	combout => \bin_counter[21]~63_combout\,
	cout => \bin_counter[21]~64\);

-- Location: FF_X3_Y7_N19
\bin_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[21]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(21));

-- Location: LCCOMB_X3_Y7_N20
\bin_counter[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[22]~65_combout\ = (bin_counter(22) & (!\bin_counter[21]~64\)) # (!bin_counter(22) & ((\bin_counter[21]~64\) # (GND)))
-- \bin_counter[22]~66\ = CARRY((!\bin_counter[21]~64\) # (!bin_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(22),
	datad => VCC,
	cin => \bin_counter[21]~64\,
	combout => \bin_counter[22]~65_combout\,
	cout => \bin_counter[22]~66\);

-- Location: FF_X3_Y7_N21
\bin_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[22]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(22));

-- Location: LCCOMB_X3_Y7_N22
\bin_counter[23]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[23]~67_combout\ = \bin_counter[22]~66\ $ (!bin_counter(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bin_counter(23),
	cin => \bin_counter[22]~66\,
	combout => \bin_counter[23]~67_combout\);

-- Location: FF_X3_Y7_N23
\bin_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[23]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(23));

-- Location: CLKCTRL_G1
\bin_counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bin_counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bin_counter[23]~clkctrl_outclk\);

-- Location: IOIBUF_X9_Y0_N22
\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

-- Location: LCCOMB_X7_Y7_N30
\extenderInstance|nxt.EXT1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extenderInstance|nxt.EXT1~0_combout\ = (!\extenderInstance|curr.RETRACTED~q\ & !\pb[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \extenderInstance|curr.RETRACTED~q\,
	datad => \pb[1]~input_o\,
	combout => \extenderInstance|nxt.EXT1~0_combout\);

-- Location: IOIBUF_X0_Y2_N15
\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: LCCOMB_X3_Y7_N28
\mealysmInstance|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealysmInstance|Selector0~0_combout\ = (((\mealysmInstance|curr.s2~q\ & \extenderInstance|curr.RETRACTED~q\)) # (!\pb[2]~input_o\)) # (!\pb[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \pb[2]~input_o\,
	datac => \mealysmInstance|curr.s2~q\,
	datad => \extenderInstance|curr.RETRACTED~q\,
	combout => \mealysmInstance|Selector0~0_combout\);

-- Location: FF_X3_Y7_N29
\mealysmInstance|curr.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \mealysmInstance|Selector0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mealysmInstance|curr.s0~q\);

-- Location: LCCOMB_X3_Y7_N30
\mealysmInstance|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealysmInstance|Selector1~0_combout\ = (!\comb~0_combout\ & (!\extenderInstance|curr.RETRACTED~q\ & ((\mealysmInstance|curr.s1~q\) # (!\mealysmInstance|curr.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealysmInstance|curr.s0~q\,
	datab => \mealysmInstance|curr.s1~q\,
	datac => \comb~0_combout\,
	datad => \extenderInstance|curr.RETRACTED~q\,
	combout => \mealysmInstance|Selector1~0_combout\);

-- Location: FF_X1_Y9_N31
\mealysmInstance|curr.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	asdata => \mealysmInstance|Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mealysmInstance|curr.s1~q\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: CLKCTRL_G2
\mealysmInstance|curr.s1~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mealysmInstance|curr.s1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mealysmInstance|curr.s1~clkctrl_outclk\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X10_Y7_N8
\xCompInstance|EQ~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCompInstance|EQ~0_combout\ = (\sw[5]~input_o\ & (\xCountInstance|ud_bin_counter\(1) & (\sw[4]~input_o\ $ (!\xCountInstance|ud_bin_counter\(0))))) # (!\sw[5]~input_o\ & (!\xCountInstance|ud_bin_counter\(1) & (\sw[4]~input_o\ $ 
-- (!\xCountInstance|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[4]~input_o\,
	datac => \xCountInstance|ud_bin_counter\(1),
	datad => \xCountInstance|ud_bin_counter\(0),
	combout => \xCompInstance|EQ~0_combout\);

-- Location: LCCOMB_X10_Y7_N16
\mealysmInstance|xClkEn~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealysmInstance|xClkEn~0_combout\ = (\pb[3]~input_o\) # ((\xCompInstance|EQ~0_combout\ & \xCompInstance|LE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb[3]~input_o\,
	datac => \xCompInstance|EQ~0_combout\,
	datad => \xCompInstance|LE~0_combout\,
	combout => \mealysmInstance|xClkEn~0_combout\);

-- Location: LCCOMB_X10_Y7_N20
\mealysmInstance|xClkEn\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealysmInstance|xClkEn~combout\ = (GLOBAL(\mealysmInstance|curr.s1~clkctrl_outclk\) & ((!\mealysmInstance|xClkEn~0_combout\))) # (!GLOBAL(\mealysmInstance|curr.s1~clkctrl_outclk\) & (\mealysmInstance|xClkEn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealysmInstance|xClkEn~combout\,
	datac => \mealysmInstance|curr.s1~clkctrl_outclk\,
	datad => \mealysmInstance|xClkEn~0_combout\,
	combout => \mealysmInstance|xClkEn~combout\);

-- Location: LCCOMB_X10_Y7_N24
\xCountInstance|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCountInstance|ud_bin_counter[0]~3_combout\ = \mealysmInstance|xClkEn~combout\ $ (\xCountInstance|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealysmInstance|xClkEn~combout\,
	datac => \xCountInstance|ud_bin_counter\(0),
	combout => \xCountInstance|ud_bin_counter[0]~3_combout\);

-- Location: FF_X10_Y7_N25
\xCountInstance|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \xCountInstance|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xCountInstance|ud_bin_counter\(0));

-- Location: LCCOMB_X10_Y7_N0
\xCountInstance|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCountInstance|ud_bin_counter[1]~5_cout\ = CARRY(\xCountInstance|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xCountInstance|ud_bin_counter\(0),
	datad => VCC,
	cout => \xCountInstance|ud_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X10_Y7_N2
\xCountInstance|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCountInstance|ud_bin_counter[1]~6_combout\ = (\xCountInstance|process_0~0_combout\ & ((\xCountInstance|ud_bin_counter\(1) & (!\xCountInstance|ud_bin_counter[1]~5_cout\)) # (!\xCountInstance|ud_bin_counter\(1) & 
-- ((\xCountInstance|ud_bin_counter[1]~5_cout\) # (GND))))) # (!\xCountInstance|process_0~0_combout\ & ((\xCountInstance|ud_bin_counter\(1) & (\xCountInstance|ud_bin_counter[1]~5_cout\ & VCC)) # (!\xCountInstance|ud_bin_counter\(1) & 
-- (!\xCountInstance|ud_bin_counter[1]~5_cout\))))
-- \xCountInstance|ud_bin_counter[1]~7\ = CARRY((\xCountInstance|process_0~0_combout\ & ((!\xCountInstance|ud_bin_counter[1]~5_cout\) # (!\xCountInstance|ud_bin_counter\(1)))) # (!\xCountInstance|process_0~0_combout\ & (!\xCountInstance|ud_bin_counter\(1) & 
-- !\xCountInstance|ud_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xCountInstance|process_0~0_combout\,
	datab => \xCountInstance|ud_bin_counter\(1),
	datad => VCC,
	cin => \xCountInstance|ud_bin_counter[1]~5_cout\,
	combout => \xCountInstance|ud_bin_counter[1]~6_combout\,
	cout => \xCountInstance|ud_bin_counter[1]~7\);

-- Location: FF_X10_Y7_N3
\xCountInstance|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \xCountInstance|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealysmInstance|xClkEn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xCountInstance|ud_bin_counter\(1));

-- Location: LCCOMB_X10_Y7_N4
\xCountInstance|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCountInstance|ud_bin_counter[2]~8_combout\ = ((\xCountInstance|process_0~0_combout\ $ (\xCountInstance|ud_bin_counter\(2) $ (\xCountInstance|ud_bin_counter[1]~7\)))) # (GND)
-- \xCountInstance|ud_bin_counter[2]~9\ = CARRY((\xCountInstance|process_0~0_combout\ & (\xCountInstance|ud_bin_counter\(2) & !\xCountInstance|ud_bin_counter[1]~7\)) # (!\xCountInstance|process_0~0_combout\ & ((\xCountInstance|ud_bin_counter\(2)) # 
-- (!\xCountInstance|ud_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xCountInstance|process_0~0_combout\,
	datab => \xCountInstance|ud_bin_counter\(2),
	datad => VCC,
	cin => \xCountInstance|ud_bin_counter[1]~7\,
	combout => \xCountInstance|ud_bin_counter[2]~8_combout\,
	cout => \xCountInstance|ud_bin_counter[2]~9\);

-- Location: LCCOMB_X10_Y7_N6
\xCountInstance|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCountInstance|ud_bin_counter[3]~10_combout\ = \xCountInstance|ud_bin_counter\(3) $ (\xCountInstance|ud_bin_counter[2]~9\ $ (!\xCountInstance|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xCountInstance|ud_bin_counter\(3),
	datad => \xCountInstance|process_0~0_combout\,
	cin => \xCountInstance|ud_bin_counter[2]~9\,
	combout => \xCountInstance|ud_bin_counter[3]~10_combout\);

-- Location: FF_X10_Y7_N7
\xCountInstance|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \xCountInstance|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealysmInstance|xClkEn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xCountInstance|ud_bin_counter\(3));

-- Location: LCCOMB_X10_Y7_N22
\xCompInstance|LE~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCompInstance|LE~1_combout\ = (\sw[7]~input_o\ & (((\sw[6]~input_o\ & !\xCountInstance|ud_bin_counter\(2))) # (!\xCountInstance|ud_bin_counter\(3)))) # (!\sw[7]~input_o\ & (\sw[6]~input_o\ & (!\xCountInstance|ud_bin_counter\(2) & 
-- !\xCountInstance|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \xCountInstance|ud_bin_counter\(2),
	datad => \xCountInstance|ud_bin_counter\(3),
	combout => \xCompInstance|LE~1_combout\);

-- Location: LCCOMB_X10_Y7_N28
\xCompInstance|LE~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCompInstance|LE~2_combout\ = (\sw[5]~input_o\ & (((\sw[4]~input_o\ & !\xCountInstance|ud_bin_counter\(0))) # (!\xCountInstance|ud_bin_counter\(1)))) # (!\sw[5]~input_o\ & (\sw[4]~input_o\ & (!\xCountInstance|ud_bin_counter\(1) & 
-- !\xCountInstance|ud_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[4]~input_o\,
	datac => \xCountInstance|ud_bin_counter\(1),
	datad => \xCountInstance|ud_bin_counter\(0),
	combout => \xCompInstance|LE~2_combout\);

-- Location: LCCOMB_X10_Y7_N26
\xCompInstance|LE~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCompInstance|LE~3_combout\ = (\xCompInstance|LE~1_combout\) # ((\xCompInstance|LE~0_combout\ & \xCompInstance|LE~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xCompInstance|LE~0_combout\,
	datac => \xCompInstance|LE~1_combout\,
	datad => \xCompInstance|LE~2_combout\,
	combout => \xCompInstance|LE~3_combout\);

-- Location: LCCOMB_X10_Y7_N30
\mealysmInstance|xUD\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealysmInstance|xUD~combout\ = (GLOBAL(\mealysmInstance|curr.s1~clkctrl_outclk\) & ((\xCompInstance|LE~3_combout\))) # (!GLOBAL(\mealysmInstance|curr.s1~clkctrl_outclk\) & (\mealysmInstance|xUD~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealysmInstance|xUD~combout\,
	datac => \xCompInstance|LE~3_combout\,
	datad => \mealysmInstance|curr.s1~clkctrl_outclk\,
	combout => \mealysmInstance|xUD~combout\);

-- Location: LCCOMB_X10_Y7_N12
\xCountInstance|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCountInstance|process_0~0_combout\ = (\mealysmInstance|xUD~combout\ & \mealysmInstance|xClkEn~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mealysmInstance|xUD~combout\,
	datad => \mealysmInstance|xClkEn~combout\,
	combout => \xCountInstance|process_0~0_combout\);

-- Location: FF_X10_Y7_N5
\xCountInstance|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \xCountInstance|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealysmInstance|xClkEn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xCountInstance|ud_bin_counter\(2));

-- Location: LCCOMB_X10_Y7_N10
\xCompInstance|LE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCompInstance|LE~0_combout\ = (\sw[7]~input_o\ & (\xCountInstance|ud_bin_counter\(3) & (\sw[6]~input_o\ $ (!\xCountInstance|ud_bin_counter\(2))))) # (!\sw[7]~input_o\ & (!\xCountInstance|ud_bin_counter\(3) & (\sw[6]~input_o\ $ 
-- (!\xCountInstance|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \xCountInstance|ud_bin_counter\(2),
	datad => \xCountInstance|ud_bin_counter\(3),
	combout => \xCompInstance|LE~0_combout\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

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

-- Location: LCCOMB_X9_Y7_N2
\yCompInstance|EQ~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCompInstance|EQ~0_combout\ = (\sw[1]~input_o\ & (\yCountInstance|ud_bin_counter\(1) & (\sw[0]~input_o\ $ (!\yCountInstance|ud_bin_counter\(0))))) # (!\sw[1]~input_o\ & (!\yCountInstance|ud_bin_counter\(1) & (\sw[0]~input_o\ $ 
-- (!\yCountInstance|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \yCountInstance|ud_bin_counter\(1),
	datad => \yCountInstance|ud_bin_counter\(0),
	combout => \yCompInstance|EQ~0_combout\);

-- Location: LCCOMB_X9_Y7_N20
\mealysmInstance|yClkEn~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealysmInstance|yClkEn~0_combout\ = (\pb[2]~input_o\) # ((\yCompInstance|LE~0_combout\ & \yCompInstance|EQ~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datac => \yCompInstance|LE~0_combout\,
	datad => \yCompInstance|EQ~0_combout\,
	combout => \mealysmInstance|yClkEn~0_combout\);

-- Location: LCCOMB_X9_Y7_N0
\mealysmInstance|yClkEn\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealysmInstance|yClkEn~combout\ = (GLOBAL(\mealysmInstance|curr.s1~clkctrl_outclk\) & ((!\mealysmInstance|yClkEn~0_combout\))) # (!GLOBAL(\mealysmInstance|curr.s1~clkctrl_outclk\) & (\mealysmInstance|yClkEn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealysmInstance|yClkEn~combout\,
	datac => \mealysmInstance|curr.s1~clkctrl_outclk\,
	datad => \mealysmInstance|yClkEn~0_combout\,
	combout => \mealysmInstance|yClkEn~combout\);

-- Location: LCCOMB_X9_Y7_N16
\yCountInstance|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCountInstance|ud_bin_counter[0]~3_combout\ = \mealysmInstance|yClkEn~combout\ $ (\yCountInstance|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealysmInstance|yClkEn~combout\,
	datac => \yCountInstance|ud_bin_counter\(0),
	combout => \yCountInstance|ud_bin_counter[0]~3_combout\);

-- Location: FF_X9_Y7_N17
\yCountInstance|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \yCountInstance|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yCountInstance|ud_bin_counter\(0));

-- Location: LCCOMB_X9_Y7_N6
\yCountInstance|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCountInstance|ud_bin_counter[1]~5_cout\ = CARRY(\yCountInstance|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yCountInstance|ud_bin_counter\(0),
	datad => VCC,
	cout => \yCountInstance|ud_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X9_Y7_N8
\yCountInstance|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCountInstance|ud_bin_counter[1]~6_combout\ = (\yCountInstance|process_0~0_combout\ & ((\yCountInstance|ud_bin_counter\(1) & (!\yCountInstance|ud_bin_counter[1]~5_cout\)) # (!\yCountInstance|ud_bin_counter\(1) & 
-- ((\yCountInstance|ud_bin_counter[1]~5_cout\) # (GND))))) # (!\yCountInstance|process_0~0_combout\ & ((\yCountInstance|ud_bin_counter\(1) & (\yCountInstance|ud_bin_counter[1]~5_cout\ & VCC)) # (!\yCountInstance|ud_bin_counter\(1) & 
-- (!\yCountInstance|ud_bin_counter[1]~5_cout\))))
-- \yCountInstance|ud_bin_counter[1]~7\ = CARRY((\yCountInstance|process_0~0_combout\ & ((!\yCountInstance|ud_bin_counter[1]~5_cout\) # (!\yCountInstance|ud_bin_counter\(1)))) # (!\yCountInstance|process_0~0_combout\ & (!\yCountInstance|ud_bin_counter\(1) & 
-- !\yCountInstance|ud_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \yCountInstance|process_0~0_combout\,
	datab => \yCountInstance|ud_bin_counter\(1),
	datad => VCC,
	cin => \yCountInstance|ud_bin_counter[1]~5_cout\,
	combout => \yCountInstance|ud_bin_counter[1]~6_combout\,
	cout => \yCountInstance|ud_bin_counter[1]~7\);

-- Location: FF_X9_Y7_N9
\yCountInstance|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \yCountInstance|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealysmInstance|yClkEn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yCountInstance|ud_bin_counter\(1));

-- Location: LCCOMB_X9_Y7_N10
\yCountInstance|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCountInstance|ud_bin_counter[2]~8_combout\ = ((\yCountInstance|process_0~0_combout\ $ (\yCountInstance|ud_bin_counter\(2) $ (\yCountInstance|ud_bin_counter[1]~7\)))) # (GND)
-- \yCountInstance|ud_bin_counter[2]~9\ = CARRY((\yCountInstance|process_0~0_combout\ & (\yCountInstance|ud_bin_counter\(2) & !\yCountInstance|ud_bin_counter[1]~7\)) # (!\yCountInstance|process_0~0_combout\ & ((\yCountInstance|ud_bin_counter\(2)) # 
-- (!\yCountInstance|ud_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \yCountInstance|process_0~0_combout\,
	datab => \yCountInstance|ud_bin_counter\(2),
	datad => VCC,
	cin => \yCountInstance|ud_bin_counter[1]~7\,
	combout => \yCountInstance|ud_bin_counter[2]~8_combout\,
	cout => \yCountInstance|ud_bin_counter[2]~9\);

-- Location: FF_X9_Y7_N11
\yCountInstance|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \yCountInstance|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealysmInstance|yClkEn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yCountInstance|ud_bin_counter\(2));

-- Location: LCCOMB_X9_Y7_N14
\yCompInstance|LE~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCompInstance|LE~1_combout\ = (\sw[3]~input_o\ & (((\sw[2]~input_o\ & !\yCountInstance|ud_bin_counter\(2))) # (!\yCountInstance|ud_bin_counter\(3)))) # (!\sw[3]~input_o\ & (\sw[2]~input_o\ & (!\yCountInstance|ud_bin_counter\(2) & 
-- !\yCountInstance|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \yCountInstance|ud_bin_counter\(2),
	datad => \yCountInstance|ud_bin_counter\(3),
	combout => \yCompInstance|LE~1_combout\);

-- Location: LCCOMB_X9_Y7_N24
\yCompInstance|LE~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCompInstance|LE~2_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\ & !\yCountInstance|ud_bin_counter\(0))) # (!\yCountInstance|ud_bin_counter\(1)))) # (!\sw[1]~input_o\ & (\sw[0]~input_o\ & (!\yCountInstance|ud_bin_counter\(1) & 
-- !\yCountInstance|ud_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \yCountInstance|ud_bin_counter\(1),
	datad => \yCountInstance|ud_bin_counter\(0),
	combout => \yCompInstance|LE~2_combout\);

-- Location: LCCOMB_X9_Y7_N22
\yCompInstance|LE~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCompInstance|LE~3_combout\ = (\yCompInstance|LE~1_combout\) # ((\yCompInstance|LE~0_combout\ & \yCompInstance|LE~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \yCompInstance|LE~1_combout\,
	datac => \yCompInstance|LE~0_combout\,
	datad => \yCompInstance|LE~2_combout\,
	combout => \yCompInstance|LE~3_combout\);

-- Location: LCCOMB_X9_Y7_N30
\mealysmInstance|yUD\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealysmInstance|yUD~combout\ = (GLOBAL(\mealysmInstance|curr.s1~clkctrl_outclk\) & ((\yCompInstance|LE~3_combout\))) # (!GLOBAL(\mealysmInstance|curr.s1~clkctrl_outclk\) & (\mealysmInstance|yUD~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealysmInstance|yUD~combout\,
	datac => \yCompInstance|LE~3_combout\,
	datad => \mealysmInstance|curr.s1~clkctrl_outclk\,
	combout => \mealysmInstance|yUD~combout\);

-- Location: LCCOMB_X9_Y7_N26
\yCountInstance|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCountInstance|process_0~0_combout\ = (\mealysmInstance|yUD~combout\ & \mealysmInstance|yClkEn~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mealysmInstance|yUD~combout\,
	datad => \mealysmInstance|yClkEn~combout\,
	combout => \yCountInstance|process_0~0_combout\);

-- Location: LCCOMB_X9_Y7_N12
\yCountInstance|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCountInstance|ud_bin_counter[3]~10_combout\ = \yCountInstance|process_0~0_combout\ $ (\yCountInstance|ud_bin_counter[2]~9\ $ (!\yCountInstance|ud_bin_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \yCountInstance|process_0~0_combout\,
	datad => \yCountInstance|ud_bin_counter\(3),
	cin => \yCountInstance|ud_bin_counter[2]~9\,
	combout => \yCountInstance|ud_bin_counter[3]~10_combout\);

-- Location: FF_X9_Y7_N13
\yCountInstance|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \yCountInstance|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealysmInstance|yClkEn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yCountInstance|ud_bin_counter\(3));

-- Location: LCCOMB_X9_Y7_N4
\yCompInstance|LE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCompInstance|LE~0_combout\ = (\yCountInstance|ud_bin_counter\(3) & (\sw[3]~input_o\ & (\sw[2]~input_o\ $ (!\yCountInstance|ud_bin_counter\(2))))) # (!\yCountInstance|ud_bin_counter\(3) & (!\sw[3]~input_o\ & (\sw[2]~input_o\ $ 
-- (!\yCountInstance|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yCountInstance|ud_bin_counter\(3),
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \yCountInstance|ud_bin_counter\(2),
	combout => \yCompInstance|LE~0_combout\);

-- Location: LCCOMB_X10_Y7_N18
\mealysmInstance|e_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealysmInstance|e_en~0_combout\ = (((!\yCompInstance|EQ~0_combout\) # (!\yCompInstance|LE~0_combout\)) # (!\xCompInstance|EQ~0_combout\)) # (!\xCompInstance|LE~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xCompInstance|LE~0_combout\,
	datab => \xCompInstance|EQ~0_combout\,
	datac => \yCompInstance|LE~0_combout\,
	datad => \yCompInstance|EQ~0_combout\,
	combout => \mealysmInstance|e_en~0_combout\);

-- Location: LCCOMB_X7_Y7_N2
\mealysmInstance|e_en~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealysmInstance|e_en~1_combout\ = (\mealysmInstance|curr.s0~q\ & (!\mealysmInstance|curr.s1~q\)) # (!\mealysmInstance|curr.s0~q\ & ((!\mealysmInstance|e_en~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealysmInstance|curr.s1~q\,
	datab => \mealysmInstance|curr.s0~q\,
	datad => \mealysmInstance|e_en~0_combout\,
	combout => \mealysmInstance|e_en~1_combout\);

-- Location: FF_X7_Y7_N31
\extenderInstance|curr.EXT1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \extenderInstance|nxt.EXT1~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealysmInstance|e_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extenderInstance|curr.EXT1~q\);

-- Location: FF_X7_Y7_N3
\extenderInstance|curr.EXT2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	asdata => \extenderInstance|curr.EXT1~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \mealysmInstance|e_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extenderInstance|curr.EXT2~q\);

-- Location: FF_X7_Y7_N29
\extenderInstance|curr.EXT3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	asdata => \extenderInstance|curr.EXT2~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \mealysmInstance|e_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extenderInstance|curr.EXT3~q\);

-- Location: LCCOMB_X7_Y7_N12
\extenderInstance|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extenderInstance|Selector0~0_combout\ = (\extenderInstance|curr.EXT3~q\) # ((\extenderInstance|curr.EXTENDED~q\ & \pb[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \extenderInstance|curr.EXT3~q\,
	datac => \extenderInstance|curr.EXTENDED~q\,
	datad => \pb[1]~input_o\,
	combout => \extenderInstance|Selector0~0_combout\);

-- Location: FF_X7_Y7_N13
\extenderInstance|curr.EXTENDED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \extenderInstance|Selector0~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealysmInstance|e_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extenderInstance|curr.EXTENDED~q\);

-- Location: LCCOMB_X7_Y7_N0
\extenderInstance|nxt.RET3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extenderInstance|nxt.RET3~0_combout\ = (\extenderInstance|curr.EXTENDED~q\ & !\pb[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extenderInstance|curr.EXTENDED~q\,
	datad => \pb[1]~input_o\,
	combout => \extenderInstance|nxt.RET3~0_combout\);

-- Location: FF_X7_Y7_N1
\extenderInstance|curr.RET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \extenderInstance|nxt.RET3~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealysmInstance|e_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extenderInstance|curr.RET3~q\);

-- Location: LCCOMB_X7_Y7_N14
\extenderInstance|curr.RET2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extenderInstance|curr.RET2~feeder_combout\ = \extenderInstance|curr.RET3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \extenderInstance|curr.RET3~q\,
	combout => \extenderInstance|curr.RET2~feeder_combout\);

-- Location: FF_X7_Y7_N15
\extenderInstance|curr.RET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \extenderInstance|curr.RET2~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealysmInstance|e_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extenderInstance|curr.RET2~q\);

-- Location: LCCOMB_X7_Y7_N24
\extenderInstance|curr.RET1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extenderInstance|curr.RET1~feeder_combout\ = \extenderInstance|curr.RET2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \extenderInstance|curr.RET2~q\,
	combout => \extenderInstance|curr.RET1~feeder_combout\);

-- Location: FF_X7_Y7_N25
\extenderInstance|curr.RET1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \extenderInstance|curr.RET1~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealysmInstance|e_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extenderInstance|curr.RET1~q\);

-- Location: LCCOMB_X7_Y7_N18
\extenderInstance|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extenderInstance|Selector1~0_combout\ = (!\extenderInstance|curr.RET1~q\ & ((\extenderInstance|curr.RETRACTED~q\) # (!\pb[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \extenderInstance|curr.RET1~q\,
	datac => \extenderInstance|curr.RETRACTED~q\,
	datad => \pb[1]~input_o\,
	combout => \extenderInstance|Selector1~0_combout\);

-- Location: FF_X7_Y7_N19
\extenderInstance|curr.RETRACTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \extenderInstance|Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealysmInstance|e_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extenderInstance|curr.RETRACTED~q\);

-- Location: LCCOMB_X3_Y7_N26
\mealysmInstance|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealysmInstance|Selector2~0_combout\ = (\mealysmInstance|curr.s2~q\ & (((\extenderInstance|curr.RETRACTED~q\) # (!\pb[2]~input_o\)) # (!\pb[3]~input_o\))) # (!\mealysmInstance|curr.s2~q\ & (\extenderInstance|curr.RETRACTED~q\ & ((!\pb[2]~input_o\) # 
-- (!\pb[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \pb[2]~input_o\,
	datac => \mealysmInstance|curr.s2~q\,
	datad => \extenderInstance|curr.RETRACTED~q\,
	combout => \mealysmInstance|Selector2~0_combout\);

-- Location: FF_X3_Y7_N27
\mealysmInstance|curr.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \mealysmInstance|Selector2~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mealysmInstance|curr.s2~q\);

-- Location: LCCOMB_X3_Y7_N24
\blinkingMux|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blinkingMux|Mux4~0_combout\ = (\mealysmInstance|curr.s2~q\ & bin_counter(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealysmInstance|curr.s2~q\,
	datac => bin_counter(23),
	combout => \blinkingMux|Mux4~0_combout\);

-- Location: LCCOMB_X10_Y7_N14
\blinkingMux|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blinkingMux|Mux3~0_combout\ = (!\blinkingMux|Mux4~0_combout\ & ((\comb~0_combout\ & ((\sw[4]~input_o\))) # (!\comb~0_combout\ & (\xCountInstance|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \blinkingMux|Mux4~0_combout\,
	datac => \xCountInstance|ud_bin_counter\(0),
	datad => \sw[4]~input_o\,
	combout => \blinkingMux|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y7_N18
\blinkingMux|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blinkingMux|Mux1~0_combout\ = (!\blinkingMux|Mux4~0_combout\ & ((\comb~0_combout\ & ((\sw[6]~input_o\))) # (!\comb~0_combout\ & (\xCountInstance|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xCountInstance|ud_bin_counter\(2),
	datab => \sw[6]~input_o\,
	datac => \blinkingMux|Mux4~0_combout\,
	datad => \comb~0_combout\,
	combout => \blinkingMux|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y7_N4
\blinkingMux|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blinkingMux|Mux0~0_combout\ = (!\blinkingMux|Mux4~0_combout\ & ((\comb~0_combout\ & (\sw[7]~input_o\)) # (!\comb~0_combout\ & ((\xCountInstance|ud_bin_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \blinkingMux|Mux4~0_combout\,
	datac => \xCountInstance|ud_bin_counter\(3),
	datad => \comb~0_combout\,
	combout => \blinkingMux|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y7_N20
\blinkingMux|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blinkingMux|Mux2~0_combout\ = (!\blinkingMux|Mux4~0_combout\ & ((\comb~0_combout\ & ((\sw[5]~input_o\))) # (!\comb~0_combout\ & (\xCountInstance|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xCountInstance|ud_bin_counter\(1),
	datab => \sw[5]~input_o\,
	datac => \blinkingMux|Mux4~0_combout\,
	datad => \comb~0_combout\,
	combout => \blinkingMux|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y7_N30
\sevenX|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenX|Mux5~0_combout\ = (\blinkingMux|Mux0~0_combout\ & ((\blinkingMux|Mux3~0_combout\ & ((\blinkingMux|Mux2~0_combout\))) # (!\blinkingMux|Mux3~0_combout\ & (\blinkingMux|Mux1~0_combout\)))) # (!\blinkingMux|Mux0~0_combout\ & 
-- (\blinkingMux|Mux1~0_combout\ & (\blinkingMux|Mux3~0_combout\ $ (\blinkingMux|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkingMux|Mux3~0_combout\,
	datab => \blinkingMux|Mux1~0_combout\,
	datac => \blinkingMux|Mux0~0_combout\,
	datad => \blinkingMux|Mux2~0_combout\,
	combout => \sevenX|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y7_N10
\blinkingMux|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blinkingMux|Mux6~0_combout\ = (!\blinkingMux|Mux4~0_combout\ & ((\comb~0_combout\ & ((\sw[1]~input_o\))) # (!\comb~0_combout\ & (\yCountInstance|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \blinkingMux|Mux4~0_combout\,
	datac => \yCountInstance|ud_bin_counter\(1),
	datad => \sw[1]~input_o\,
	combout => \blinkingMux|Mux6~0_combout\);

-- Location: LCCOMB_X9_Y7_N18
\blinkingMux|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blinkingMux|Mux5~0_combout\ = (!\blinkingMux|Mux4~0_combout\ & ((\comb~0_combout\ & (\sw[2]~input_o\)) # (!\comb~0_combout\ & ((\yCountInstance|ud_bin_counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \blinkingMux|Mux4~0_combout\,
	datac => \yCountInstance|ud_bin_counter\(2),
	datad => \comb~0_combout\,
	combout => \blinkingMux|Mux5~0_combout\);

-- Location: LCCOMB_X9_Y7_N28
\blinkingMux|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blinkingMux|Mux4~1_combout\ = (!\blinkingMux|Mux4~0_combout\ & ((\comb~0_combout\ & ((\sw[3]~input_o\))) # (!\comb~0_combout\ & (\yCountInstance|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yCountInstance|ud_bin_counter\(3),
	datab => \blinkingMux|Mux4~0_combout\,
	datac => \sw[3]~input_o\,
	datad => \comb~0_combout\,
	combout => \blinkingMux|Mux4~1_combout\);

-- Location: LCCOMB_X11_Y7_N8
\blinkingMux|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blinkingMux|Mux7~0_combout\ = (!\blinkingMux|Mux4~0_combout\ & ((\comb~0_combout\ & ((\sw[0]~input_o\))) # (!\comb~0_combout\ & (\yCountInstance|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yCountInstance|ud_bin_counter\(0),
	datab => \sw[0]~input_o\,
	datac => \blinkingMux|Mux4~0_combout\,
	datad => \comb~0_combout\,
	combout => \blinkingMux|Mux7~0_combout\);

-- Location: LCCOMB_X11_Y10_N12
\sevenY|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenY|Mux5~0_combout\ = (\blinkingMux|Mux6~0_combout\ & ((\blinkingMux|Mux7~0_combout\ & ((\blinkingMux|Mux4~1_combout\))) # (!\blinkingMux|Mux7~0_combout\ & (\blinkingMux|Mux5~0_combout\)))) # (!\blinkingMux|Mux6~0_combout\ & 
-- (\blinkingMux|Mux5~0_combout\ & (\blinkingMux|Mux4~1_combout\ $ (\blinkingMux|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkingMux|Mux6~0_combout\,
	datab => \blinkingMux|Mux5~0_combout\,
	datac => \blinkingMux|Mux4~1_combout\,
	datad => \blinkingMux|Mux7~0_combout\,
	combout => \sevenY|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y10_N10
\display|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display|DOUT_TEMP[1]~0_combout\ = (bin_counter(10) & (!\sevenX|Mux5~0_combout\)) # (!bin_counter(10) & ((!\sevenY|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenX|Mux5~0_combout\,
	datac => bin_counter(10),
	datad => \sevenY|Mux5~0_combout\,
	combout => \display|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X11_Y7_N12
\sevenX|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenX|Mux1~0_combout\ = (\blinkingMux|Mux1~0_combout\ & ((\blinkingMux|Mux0~0_combout\ & ((!\blinkingMux|Mux2~0_combout\))) # (!\blinkingMux|Mux0~0_combout\ & (\blinkingMux|Mux3~0_combout\ & \blinkingMux|Mux2~0_combout\)))) # 
-- (!\blinkingMux|Mux1~0_combout\ & (!\blinkingMux|Mux0~0_combout\ & ((\blinkingMux|Mux3~0_combout\) # (\blinkingMux|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkingMux|Mux3~0_combout\,
	datab => \blinkingMux|Mux1~0_combout\,
	datac => \blinkingMux|Mux0~0_combout\,
	datad => \blinkingMux|Mux2~0_combout\,
	combout => \sevenX|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y10_N24
\sevenY|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenY|Mux1~0_combout\ = (\blinkingMux|Mux6~0_combout\ & (!\blinkingMux|Mux4~1_combout\ & ((\blinkingMux|Mux7~0_combout\) # (!\blinkingMux|Mux5~0_combout\)))) # (!\blinkingMux|Mux6~0_combout\ & ((\blinkingMux|Mux5~0_combout\ & 
-- (\blinkingMux|Mux4~1_combout\)) # (!\blinkingMux|Mux5~0_combout\ & (!\blinkingMux|Mux4~1_combout\ & \blinkingMux|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkingMux|Mux6~0_combout\,
	datab => \blinkingMux|Mux5~0_combout\,
	datac => \blinkingMux|Mux4~1_combout\,
	datad => \blinkingMux|Mux7~0_combout\,
	combout => \sevenY|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y10_N30
\display|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display|DOUT_TEMP[5]~1_combout\ = (bin_counter(10) & (!\sevenX|Mux1~0_combout\)) # (!bin_counter(10) & ((!\sevenY|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevenX|Mux1~0_combout\,
	datac => bin_counter(10),
	datad => \sevenY|Mux1~0_combout\,
	combout => \display|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X11_Y7_N26
\sevenX|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenX|Mux0~0_combout\ = (\blinkingMux|Mux0~0_combout\) # ((\blinkingMux|Mux1~0_combout\ & ((!\blinkingMux|Mux2~0_combout\) # (!\blinkingMux|Mux3~0_combout\))) # (!\blinkingMux|Mux1~0_combout\ & ((\blinkingMux|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkingMux|Mux3~0_combout\,
	datab => \blinkingMux|Mux1~0_combout\,
	datac => \blinkingMux|Mux0~0_combout\,
	datad => \blinkingMux|Mux2~0_combout\,
	combout => \sevenX|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y10_N20
\sevenY|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenY|Mux0~0_combout\ = (\blinkingMux|Mux4~1_combout\) # ((\blinkingMux|Mux6~0_combout\ & ((!\blinkingMux|Mux7~0_combout\) # (!\blinkingMux|Mux5~0_combout\))) # (!\blinkingMux|Mux6~0_combout\ & (\blinkingMux|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkingMux|Mux6~0_combout\,
	datab => \blinkingMux|Mux5~0_combout\,
	datac => \blinkingMux|Mux4~1_combout\,
	datad => \blinkingMux|Mux7~0_combout\,
	combout => \sevenY|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y10_N18
\display|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display|DOUT_TEMP[6]~2_combout\ = (bin_counter(10) & (\sevenX|Mux0~0_combout\)) # (!bin_counter(10) & ((\sevenY|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenX|Mux0~0_combout\,
	datac => bin_counter(10),
	datad => \sevenY|Mux0~0_combout\,
	combout => \display|DOUT_TEMP[6]~2_combout\);

-- Location: IOIBUF_X9_Y0_N1
\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

-- Location: LCCOMB_X7_Y7_N16
\grapplerInstance|curr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \grapplerInstance|curr~0_combout\ = \grapplerInstance|curr~q\ $ (((\extenderInstance|curr.EXTENDED~q\ & !\pb[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extenderInstance|curr.EXTENDED~q\,
	datac => \grapplerInstance|curr~q\,
	datad => \pb[0]~input_o\,
	combout => \grapplerInstance|curr~0_combout\);

-- Location: FF_X7_Y7_N17
\grapplerInstance|curr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \grapplerInstance|curr~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \grapplerInstance|curr~q\);

-- Location: LCCOMB_X7_Y7_N28
\extenderInstance|LR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extenderInstance|LR~0_combout\ = (\extenderInstance|curr.EXT1~q\) # ((\extenderInstance|curr.EXT2~q\) # ((\extenderInstance|curr.EXT3~q\) # (\extenderInstance|curr.EXTENDED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extenderInstance|curr.EXT1~q\,
	datab => \extenderInstance|curr.EXT2~q\,
	datac => \extenderInstance|curr.EXT3~q\,
	datad => \extenderInstance|curr.EXTENDED~q\,
	combout => \extenderInstance|LR~0_combout\);

-- Location: LCCOMB_X7_Y7_N20
\bidirShiftInstance|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bidirShiftInstance|sreg~3_combout\ = (\bidirShiftInstance|sreg\(2)) # ((\extenderInstance|curr.RETRACTED~q\ & \extenderInstance|LR~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extenderInstance|curr.RETRACTED~q\,
	datac => \bidirShiftInstance|sreg\(2),
	datad => \extenderInstance|LR~0_combout\,
	combout => \bidirShiftInstance|sreg~3_combout\);

-- Location: FF_X7_Y7_N21
\bidirShiftInstance|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \bidirShiftInstance|sreg~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bidirShiftInstance|sreg\(3));

-- Location: LCCOMB_X7_Y7_N22
\bidirShiftInstance|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bidirShiftInstance|sreg~2_combout\ = (\extenderInstance|curr.RETRACTED~q\ & ((\extenderInstance|LR~0_combout\ & ((\bidirShiftInstance|sreg\(3)))) # (!\extenderInstance|LR~0_combout\ & (\bidirShiftInstance|sreg\(1))))) # 
-- (!\extenderInstance|curr.RETRACTED~q\ & (((\bidirShiftInstance|sreg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extenderInstance|curr.RETRACTED~q\,
	datab => \extenderInstance|LR~0_combout\,
	datac => \bidirShiftInstance|sreg\(1),
	datad => \bidirShiftInstance|sreg\(3),
	combout => \bidirShiftInstance|sreg~2_combout\);

-- Location: FF_X7_Y7_N23
\bidirShiftInstance|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \bidirShiftInstance|sreg~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bidirShiftInstance|sreg\(2));

-- Location: LCCOMB_X7_Y7_N8
\bidirShiftInstance|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bidirShiftInstance|sreg~1_combout\ = (\extenderInstance|curr.RETRACTED~q\ & ((\extenderInstance|LR~0_combout\ & ((\bidirShiftInstance|sreg\(2)))) # (!\extenderInstance|LR~0_combout\ & (\bidirShiftInstance|sreg\(0))))) # 
-- (!\extenderInstance|curr.RETRACTED~q\ & (\bidirShiftInstance|sreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extenderInstance|curr.RETRACTED~q\,
	datab => \bidirShiftInstance|sreg\(0),
	datac => \bidirShiftInstance|sreg\(2),
	datad => \extenderInstance|LR~0_combout\,
	combout => \bidirShiftInstance|sreg~1_combout\);

-- Location: FF_X7_Y7_N9
\bidirShiftInstance|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \bidirShiftInstance|sreg~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bidirShiftInstance|sreg\(1));

-- Location: LCCOMB_X7_Y7_N26
\bidirShiftInstance|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bidirShiftInstance|sreg~0_combout\ = (\extenderInstance|curr.RETRACTED~q\ & (\bidirShiftInstance|sreg\(1) & \extenderInstance|LR~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extenderInstance|curr.RETRACTED~q\,
	datac => \bidirShiftInstance|sreg\(1),
	datad => \extenderInstance|LR~0_combout\,
	combout => \bidirShiftInstance|sreg~0_combout\);

-- Location: FF_X7_Y7_N27
\bidirShiftInstance|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \bidirShiftInstance|sreg~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bidirShiftInstance|sreg\(0));

-- Location: LCCOMB_X11_Y7_N22
\sevenX|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenX|Mux6~0_combout\ = (\blinkingMux|Mux1~0_combout\ & (!\blinkingMux|Mux2~0_combout\ & ((\blinkingMux|Mux0~0_combout\) # (!\blinkingMux|Mux3~0_combout\)))) # (!\blinkingMux|Mux1~0_combout\ & (\blinkingMux|Mux3~0_combout\ & 
-- (\blinkingMux|Mux0~0_combout\ $ (!\blinkingMux|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkingMux|Mux3~0_combout\,
	datab => \blinkingMux|Mux1~0_combout\,
	datac => \blinkingMux|Mux0~0_combout\,
	datad => \blinkingMux|Mux2~0_combout\,
	combout => \sevenX|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y10_N28
\sevenY|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenY|Mux6~0_combout\ = (\blinkingMux|Mux6~0_combout\ & (!\blinkingMux|Mux5~0_combout\ & (\blinkingMux|Mux4~1_combout\ & \blinkingMux|Mux7~0_combout\))) # (!\blinkingMux|Mux6~0_combout\ & (\blinkingMux|Mux5~0_combout\ $ (((!\blinkingMux|Mux4~1_combout\ 
-- & \blinkingMux|Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkingMux|Mux6~0_combout\,
	datab => \blinkingMux|Mux5~0_combout\,
	datac => \blinkingMux|Mux4~1_combout\,
	datad => \blinkingMux|Mux7~0_combout\,
	combout => \sevenY|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y10_N14
\display|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display|DOUT[0]~0_combout\ = (bin_counter(10) & (\sevenX|Mux6~0_combout\)) # (!bin_counter(10) & ((\sevenY|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevenX|Mux6~0_combout\,
	datac => bin_counter(10),
	datad => \sevenY|Mux6~0_combout\,
	combout => \display|DOUT[0]~0_combout\);

-- Location: LCCOMB_X11_Y10_N4
\sevenY|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenY|Mux4~0_combout\ = (\blinkingMux|Mux5~0_combout\ & (\blinkingMux|Mux4~1_combout\ & ((\blinkingMux|Mux6~0_combout\) # (!\blinkingMux|Mux7~0_combout\)))) # (!\blinkingMux|Mux5~0_combout\ & (\blinkingMux|Mux6~0_combout\ & 
-- (!\blinkingMux|Mux4~1_combout\ & !\blinkingMux|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkingMux|Mux6~0_combout\,
	datab => \blinkingMux|Mux5~0_combout\,
	datac => \blinkingMux|Mux4~1_combout\,
	datad => \blinkingMux|Mux7~0_combout\,
	combout => \sevenY|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y7_N24
\sevenX|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenX|Mux4~0_combout\ = (\blinkingMux|Mux1~0_combout\ & (\blinkingMux|Mux0~0_combout\ & ((\blinkingMux|Mux2~0_combout\) # (!\blinkingMux|Mux3~0_combout\)))) # (!\blinkingMux|Mux1~0_combout\ & (!\blinkingMux|Mux3~0_combout\ & 
-- (!\blinkingMux|Mux0~0_combout\ & \blinkingMux|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkingMux|Mux3~0_combout\,
	datab => \blinkingMux|Mux1~0_combout\,
	datac => \blinkingMux|Mux0~0_combout\,
	datad => \blinkingMux|Mux2~0_combout\,
	combout => \sevenX|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y10_N6
\display|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display|DOUT[2]~2_combout\ = (bin_counter(10) & ((\sevenX|Mux4~0_combout\))) # (!bin_counter(10) & (\sevenY|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(10),
	datac => \sevenY|Mux4~0_combout\,
	datad => \sevenX|Mux4~0_combout\,
	combout => \display|DOUT[2]~2_combout\);

-- Location: LCCOMB_X11_Y7_N6
\sevenX|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenX|Mux3~0_combout\ = (\blinkingMux|Mux2~0_combout\ & ((\blinkingMux|Mux3~0_combout\ & (\blinkingMux|Mux1~0_combout\)) # (!\blinkingMux|Mux3~0_combout\ & (!\blinkingMux|Mux1~0_combout\ & \blinkingMux|Mux0~0_combout\)))) # 
-- (!\blinkingMux|Mux2~0_combout\ & (!\blinkingMux|Mux0~0_combout\ & (\blinkingMux|Mux3~0_combout\ $ (\blinkingMux|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkingMux|Mux3~0_combout\,
	datab => \blinkingMux|Mux1~0_combout\,
	datac => \blinkingMux|Mux0~0_combout\,
	datad => \blinkingMux|Mux2~0_combout\,
	combout => \sevenX|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y10_N8
\sevenY|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenY|Mux3~0_combout\ = (\blinkingMux|Mux6~0_combout\ & ((\blinkingMux|Mux5~0_combout\ & ((\blinkingMux|Mux7~0_combout\))) # (!\blinkingMux|Mux5~0_combout\ & (\blinkingMux|Mux4~1_combout\ & !\blinkingMux|Mux7~0_combout\)))) # 
-- (!\blinkingMux|Mux6~0_combout\ & (!\blinkingMux|Mux4~1_combout\ & (\blinkingMux|Mux5~0_combout\ $ (\blinkingMux|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkingMux|Mux6~0_combout\,
	datab => \blinkingMux|Mux5~0_combout\,
	datac => \blinkingMux|Mux4~1_combout\,
	datad => \blinkingMux|Mux7~0_combout\,
	combout => \sevenY|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y10_N22
\display|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display|DOUT[3]~3_combout\ = (bin_counter(10) & (\sevenX|Mux3~0_combout\)) # (!bin_counter(10) & ((\sevenY|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenX|Mux3~0_combout\,
	datab => \sevenY|Mux3~0_combout\,
	datac => bin_counter(10),
	combout => \display|DOUT[3]~3_combout\);

-- Location: LCCOMB_X11_Y7_N16
\sevenX|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenX|Mux2~0_combout\ = (\blinkingMux|Mux2~0_combout\ & (\blinkingMux|Mux3~0_combout\ & ((!\blinkingMux|Mux0~0_combout\)))) # (!\blinkingMux|Mux2~0_combout\ & ((\blinkingMux|Mux1~0_combout\ & ((!\blinkingMux|Mux0~0_combout\))) # 
-- (!\blinkingMux|Mux1~0_combout\ & (\blinkingMux|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkingMux|Mux3~0_combout\,
	datab => \blinkingMux|Mux1~0_combout\,
	datac => \blinkingMux|Mux0~0_combout\,
	datad => \blinkingMux|Mux2~0_combout\,
	combout => \sevenX|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y10_N16
\sevenY|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenY|Mux2~0_combout\ = (\blinkingMux|Mux6~0_combout\ & (((!\blinkingMux|Mux4~1_combout\ & \blinkingMux|Mux7~0_combout\)))) # (!\blinkingMux|Mux6~0_combout\ & ((\blinkingMux|Mux5~0_combout\ & (!\blinkingMux|Mux4~1_combout\)) # 
-- (!\blinkingMux|Mux5~0_combout\ & ((\blinkingMux|Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinkingMux|Mux6~0_combout\,
	datab => \blinkingMux|Mux5~0_combout\,
	datac => \blinkingMux|Mux4~1_combout\,
	datad => \blinkingMux|Mux7~0_combout\,
	combout => \sevenY|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y10_N26
\display|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display|DOUT[4]~4_combout\ = (bin_counter(10) & (\sevenX|Mux2~0_combout\)) # (!bin_counter(10) & ((\sevenY|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenX|Mux2~0_combout\,
	datac => bin_counter(10),
	datad => \sevenY|Mux2~0_combout\,
	combout => \display|DOUT[4]~4_combout\);

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

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


