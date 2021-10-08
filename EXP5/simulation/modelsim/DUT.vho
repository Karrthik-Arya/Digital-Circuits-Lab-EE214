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

-- DATE "09/27/2021 12:33:32"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(9 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu_instance|op[4]~0_combout\ : std_logic;
SIGNAL \alu_instance|op[0]~1_combout\ : std_logic;
SIGNAL \alu_instance|shift~1_combout\ : std_logic;
SIGNAL \alu_instance|shift~0_combout\ : std_logic;
SIGNAL \alu_instance|Mux5~0_combout\ : std_logic;
SIGNAL \alu_instance|shift~2_combout\ : std_logic;
SIGNAL \alu_instance|Selector15~0_combout\ : std_logic;
SIGNAL \alu_instance|shift~3_combout\ : std_logic;
SIGNAL \alu_instance|shift~4_combout\ : std_logic;
SIGNAL \alu_instance|Selector15~1_combout\ : std_logic;
SIGNAL \alu_instance|op[0]~2_combout\ : std_logic;
SIGNAL \alu_instance|op[0]~3_combout\ : std_logic;
SIGNAL \alu_instance|op[0]~26_combout\ : std_logic;
SIGNAL \alu_instance|op[0]~27_combout\ : std_logic;
SIGNAL \alu_instance|Mux5~1_combout\ : std_logic;
SIGNAL \alu_instance|op[5]~4_combout\ : std_logic;
SIGNAL \alu_instance|op[1]~5_combout\ : std_logic;
SIGNAL \alu_instance|op[1]~6_combout\ : std_logic;
SIGNAL \alu_instance|op[1]~7_combout\ : std_logic;
SIGNAL \alu_instance|op[1]~8_combout\ : std_logic;
SIGNAL \alu_instance|n1~0_combout\ : std_logic;
SIGNAL \alu_instance|shift~5_combout\ : std_logic;
SIGNAL \alu_instance|shift~6_combout\ : std_logic;
SIGNAL \alu_instance|shift~7_combout\ : std_logic;
SIGNAL \alu_instance|carry~0_combout\ : std_logic;
SIGNAL \alu_instance|diff~0_combout\ : std_logic;
SIGNAL \alu_instance|op[2]~9_combout\ : std_logic;
SIGNAL \alu_instance|op[2]~10_combout\ : std_logic;
SIGNAL \alu_instance|carry~1_combout\ : std_logic;
SIGNAL \alu_instance|op[3]~11_combout\ : std_logic;
SIGNAL \alu_instance|shift~8_combout\ : std_logic;
SIGNAL \alu_instance|shift~9_combout\ : std_logic;
SIGNAL \alu_instance|op[3]~12_combout\ : std_logic;
SIGNAL \alu_instance|op[3]~13_combout\ : std_logic;
SIGNAL \alu_instance|carry~2_combout\ : std_logic;
SIGNAL \alu_instance|op[4]~14_combout\ : std_logic;
SIGNAL \alu_instance|op[4]~15_combout\ : std_logic;
SIGNAL \alu_instance|op[4]~16_combout\ : std_logic;
SIGNAL \alu_instance|op[4]~17_combout\ : std_logic;
SIGNAL \alu_instance|op[5]~18_combout\ : std_logic;
SIGNAL \alu_instance|op[5]~19_combout\ : std_logic;
SIGNAL \alu_instance|op[5]~20_combout\ : std_logic;
SIGNAL \alu_instance|op[6]~21_combout\ : std_logic;
SIGNAL \alu_instance|op[6]~22_combout\ : std_logic;
SIGNAL \alu_instance|op[6]~23_combout\ : std_logic;
SIGNAL \alu_instance|op[7]~24_combout\ : std_logic;
SIGNAL \alu_instance|op[7]~25_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X8_Y7_N3
\alu_instance|op[4]~0\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[4]~0_combout\ = (((!\input_vector~combout\(0) & !\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[4]~0_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X8_Y7_N9
\alu_instance|op[0]~1\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[0]~1_combout\ = (\alu_instance|op[4]~0_combout\ & (!\input_vector~combout\(2) & (!\input_vector~combout\(8) & \input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|op[4]~0_combout\,
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[0]~1_combout\);

-- Location: LC_X9_Y7_N9
\alu_instance|shift~1\ : maxv_lcell
-- Equation(s):
-- \alu_instance|shift~1_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|shift~1_combout\);

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X8_Y7_N1
\alu_instance|shift~0\ : maxv_lcell
-- Equation(s):
-- \alu_instance|shift~0_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(4))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(1),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|shift~0_combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X9_Y7_N6
\alu_instance|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \alu_instance|Mux5~0_combout\ = (\input_vector~combout\(0) & (!\input_vector~combout\(1) & ((\input_vector~combout\(5))))) # (!\input_vector~combout\(0) & (((\alu_instance|shift~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7430",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(0),
	datac => \alu_instance|shift~0_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|Mux5~0_combout\);

-- Location: LC_X9_Y7_N5
\alu_instance|shift~2\ : maxv_lcell
-- Equation(s):
-- \alu_instance|shift~2_combout\ = (\input_vector~combout\(2) & (((\input_vector~combout\(6))))) # (!\input_vector~combout\(2) & ((\alu_instance|shift~1_combout\ & ((\input_vector~combout\(6)))) # (!\alu_instance|shift~1_combout\ & 
-- (\alu_instance|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \alu_instance|shift~1_combout\,
	datac => \alu_instance|Mux5~0_combout\,
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|shift~2_combout\);

-- Location: LC_X9_Y7_N1
\alu_instance|Selector15~0\ : maxv_lcell
-- Equation(s):
-- \alu_instance|Selector15~0_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(0) & ((\input_vector~combout\(5)))) # (!\input_vector~combout\(0) & (\alu_instance|shift~2_combout\)))) # (!\input_vector~combout\(1) & 
-- (!\input_vector~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b931",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(0),
	datac => \alu_instance|shift~2_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|Selector15~0_combout\);

-- Location: LC_X8_Y7_N5
\alu_instance|shift~3\ : maxv_lcell
-- Equation(s):
-- \alu_instance|shift~3_combout\ = (!\input_vector~combout\(1) & (((\input_vector~combout\(0) & \input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|shift~3_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X8_Y7_N6
\alu_instance|shift~4\ : maxv_lcell
-- Equation(s):
-- \alu_instance|shift~4_combout\ = (\input_vector~combout\(2) & (((\input_vector~combout\(7))))) # (!\input_vector~combout\(2) & ((\alu_instance|shift~3_combout\) # ((\alu_instance|op[4]~0_combout\ & \input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|op[4]~0_combout\,
	datab => \input_vector~combout\(2),
	datac => \alu_instance|shift~3_combout\,
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|shift~4_combout\);

-- Location: LC_X8_Y7_N4
\alu_instance|Selector15~1\ : maxv_lcell
-- Equation(s):
-- \alu_instance|Selector15~1_combout\ = (\input_vector~combout\(1) & (\alu_instance|Selector15~0_combout\)) # (!\input_vector~combout\(1) & ((\alu_instance|Selector15~0_combout\ & ((\input_vector~combout\(4)))) # (!\alu_instance|Selector15~0_combout\ & 
-- (\alu_instance|shift~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \alu_instance|Selector15~0_combout\,
	datac => \alu_instance|shift~4_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|Selector15~1_combout\);

-- Location: LC_X8_Y8_N3
\alu_instance|op[0]~2\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[0]~2_combout\ = ((\input_vector~combout\(2) & ((!\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(2),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[0]~2_combout\);

-- Location: LC_X8_Y7_N2
\alu_instance|op[0]~3\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[0]~3_combout\ = (\alu_instance|op[0]~1_combout\) # ((!\alu_instance|op[4]~0_combout\ & (\alu_instance|Selector15~1_combout\ & \alu_instance|op[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|op[4]~0_combout\,
	datab => \alu_instance|op[0]~1_combout\,
	datac => \alu_instance|Selector15~1_combout\,
	datad => \alu_instance|op[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[0]~3_combout\);

-- Location: LC_X7_Y7_N6
\alu_instance|op[0]~26\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[0]~26_combout\ = (\input_vector~combout\(9) & (!\input_vector~combout\(0) & (!\input_vector~combout\(4) & !\input_vector~combout\(8)))) # (!\input_vector~combout\(9) & (\input_vector~combout\(8) & (\input_vector~combout\(0) $ 
-- (\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1402",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[0]~26_combout\);

-- Location: LC_X7_Y7_N8
\alu_instance|op[0]~27\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[0]~27_combout\ = (\input_vector~combout\(9) & (((!\input_vector~combout\(4) & \alu_instance|op[0]~26_combout\)))) # (!\input_vector~combout\(9) & ((\alu_instance|op[0]~3_combout\) # ((\alu_instance|op[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \alu_instance|op[0]~3_combout\,
	datac => \input_vector~combout\(4),
	datad => \alu_instance|op[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[0]~27_combout\);

-- Location: LC_X7_Y7_N5
\alu_instance|Mux5~1\ : maxv_lcell
-- Equation(s):
-- \alu_instance|Mux5~1_combout\ = (\input_vector~combout\(0) & (\input_vector~combout\(4))) # (!\input_vector~combout\(0) & (((\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|Mux5~1_combout\);

-- Location: LC_X9_Y7_N8
\alu_instance|op[5]~4\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[5]~4_combout\ = ((\input_vector~combout\(0) & ((\input_vector~combout\(6)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[5]~4_combout\);

-- Location: LC_X8_Y8_N8
\alu_instance|op[1]~5\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[1]~5_combout\ = (\input_vector~combout\(2) & (((\input_vector~combout\(1) & \alu_instance|op[5]~4_combout\)))) # (!\input_vector~combout\(2) & (\alu_instance|Mux5~1_combout\ & (!\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|Mux5~1_combout\,
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(1),
	datad => \alu_instance|op[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[1]~5_combout\);

-- Location: LC_X7_Y7_N7
\alu_instance|op[1]~6\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[1]~6_combout\ = \input_vector~combout\(5) $ (((\input_vector~combout\(0) & (!\input_vector~combout\(4) & !\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[1]~6_combout\);

-- Location: LC_X7_Y7_N2
\alu_instance|op[1]~7\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[1]~7_combout\ = (\input_vector~combout\(1) & (((!\input_vector~combout\(8)) # (!\alu_instance|op[1]~6_combout\)))) # (!\input_vector~combout\(1) & (((\alu_instance|op[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5afa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \alu_instance|op[1]~6_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[1]~7_combout\);

-- Location: LC_X8_Y8_N2
\alu_instance|op[1]~8\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[1]~8_combout\ = (\input_vector~combout\(9) & (((!\alu_instance|op[1]~7_combout\ & !\input_vector~combout\(8))))) # (!\input_vector~combout\(9) & ((\input_vector~combout\(8) & ((\alu_instance|op[1]~7_combout\))) # 
-- (!\input_vector~combout\(8) & (\alu_instance|op[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c3a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|op[1]~5_combout\,
	datab => \alu_instance|op[1]~7_combout\,
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[1]~8_combout\);

-- Location: LC_X10_Y7_N2
\alu_instance|n1~0\ : maxv_lcell
-- Equation(s):
-- \alu_instance|n1~0_combout\ = (((\input_vector~combout\(2)) # (\input_vector~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|n1~0_combout\);

-- Location: LC_X9_Y7_N3
\alu_instance|shift~5\ : maxv_lcell
-- Equation(s):
-- \alu_instance|shift~5_combout\ = ((\input_vector~combout\(0) & (\input_vector~combout\(5))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|shift~5_combout\);

-- Location: LC_X9_Y7_N0
\alu_instance|shift~6\ : maxv_lcell
-- Equation(s):
-- \alu_instance|shift~6_combout\ = (\input_vector~combout\(1) & (!\input_vector~combout\(0) & (\input_vector~combout\(4)))) # (!\input_vector~combout\(1) & (((\alu_instance|shift~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(4),
	datad => \alu_instance|shift~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|shift~6_combout\);

-- Location: LC_X9_Y7_N2
\alu_instance|shift~7\ : maxv_lcell
-- Equation(s):
-- \alu_instance|shift~7_combout\ = (\input_vector~combout\(2) & (\input_vector~combout\(7) & ((\alu_instance|shift~1_combout\)))) # (!\input_vector~combout\(2) & (((\alu_instance|shift~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b830",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(2),
	datac => \alu_instance|shift~6_combout\,
	datad => \alu_instance|shift~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|shift~7_combout\);

-- Location: LC_X7_Y7_N1
\alu_instance|carry~0\ : maxv_lcell
-- Equation(s):
-- \alu_instance|carry~0_combout\ = (\input_vector~combout\(5) & (\input_vector~combout\(0) & (!\input_vector~combout\(4) & \input_vector~combout\(1)))) # (!\input_vector~combout\(5) & ((\input_vector~combout\(1)) # ((\input_vector~combout\(0) & 
-- !\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|carry~0_combout\);

-- Location: LC_X10_Y7_N7
\alu_instance|diff~0\ : maxv_lcell
-- Equation(s):
-- \alu_instance|diff~0_combout\ = \input_vector~combout\(2) $ (((\alu_instance|carry~0_combout\ $ (\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datac => \alu_instance|carry~0_combout\,
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|diff~0_combout\);

-- Location: LC_X10_Y7_N6
\alu_instance|op[2]~9\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[2]~9_combout\ = (\input_vector~combout\(9) & (((\input_vector~combout\(8))))) # (!\input_vector~combout\(9) & ((\input_vector~combout\(8) & ((\alu_instance|diff~0_combout\))) # (!\input_vector~combout\(8) & 
-- (\alu_instance|shift~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \alu_instance|shift~7_combout\,
	datac => \alu_instance|diff~0_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[2]~9_combout\);

-- Location: LC_X10_Y7_N5
\alu_instance|op[2]~10\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[2]~10_combout\ = (\input_vector~combout\(9) & ((\alu_instance|op[2]~9_combout\ & ((\input_vector~combout\(4)))) # (!\alu_instance|op[2]~9_combout\ & (!\alu_instance|n1~0_combout\)))) # (!\input_vector~combout\(9) & 
-- (((\alu_instance|op[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f252",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \alu_instance|n1~0_combout\,
	datac => \alu_instance|op[2]~9_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[2]~10_combout\);

-- Location: LC_X10_Y7_N8
\alu_instance|carry~1\ : maxv_lcell
-- Equation(s):
-- \alu_instance|carry~1_combout\ = (\input_vector~combout\(2) & (((\alu_instance|carry~0_combout\) # (!\input_vector~combout\(6))))) # (!\input_vector~combout\(2) & (((\alu_instance|carry~0_combout\ & !\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datac => \alu_instance|carry~0_combout\,
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|carry~1_combout\);

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X8_Y8_N9
\alu_instance|op[3]~11\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[3]~11_combout\ = (\input_vector~combout\(8) & (\input_vector~combout\(7) $ (\alu_instance|carry~1_combout\ $ (\input_vector~combout\(3))))) # (!\input_vector~combout\(8) & ((\input_vector~combout\(7)) # ((\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \alu_instance|carry~1_combout\,
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[3]~11_combout\);

-- Location: LC_X8_Y7_N7
\alu_instance|shift~8\ : maxv_lcell
-- Equation(s):
-- \alu_instance|shift~8_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(5))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(5),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|shift~8_combout\);

-- Location: LC_X7_Y7_N9
\alu_instance|shift~9\ : maxv_lcell
-- Equation(s):
-- \alu_instance|shift~9_combout\ = (!\input_vector~combout\(2) & ((\input_vector~combout\(0) & ((\alu_instance|shift~0_combout\))) # (!\input_vector~combout\(0) & (\alu_instance|shift~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|shift~8_combout\,
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(2),
	datad => \alu_instance|shift~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|shift~9_combout\);

-- Location: LC_X7_Y7_N4
\alu_instance|op[3]~12\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[3]~12_combout\ = (\input_vector~combout\(9) & (((\input_vector~combout\(5))))) # (!\input_vector~combout\(9) & (((\alu_instance|shift~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datac => \input_vector~combout\(5),
	datad => \alu_instance|shift~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[3]~12_combout\);

-- Location: LC_X7_Y7_N3
\alu_instance|op[3]~13\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[3]~13_combout\ = (\input_vector~combout\(9) & ((\input_vector~combout\(8) & ((\alu_instance|op[3]~12_combout\))) # (!\input_vector~combout\(8) & (!\alu_instance|op[3]~11_combout\)))) # (!\input_vector~combout\(9) & 
-- ((\input_vector~combout\(8) & (\alu_instance|op[3]~11_combout\)) # (!\input_vector~combout\(8) & ((\alu_instance|op[3]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e472",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \alu_instance|op[3]~11_combout\,
	datac => \alu_instance|op[3]~12_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[3]~13_combout\);

-- Location: LC_X8_Y8_N5
\alu_instance|carry~2\ : maxv_lcell
-- Equation(s):
-- \alu_instance|carry~2_combout\ = (\input_vector~combout\(7) & (\alu_instance|carry~1_combout\ & (\input_vector~combout\(3)))) # (!\input_vector~combout\(7) & ((\alu_instance|carry~1_combout\) # ((\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \alu_instance|carry~1_combout\,
	datac => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|carry~2_combout\);

-- Location: LC_X10_Y7_N9
\alu_instance|op[4]~14\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[4]~14_combout\ = (\input_vector~combout\(9) & (((\input_vector~combout\(6))))) # (!\input_vector~combout\(9) & (((\alu_instance|carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datac => \alu_instance|carry~2_combout\,
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[4]~14_combout\);

-- Location: LC_X8_Y7_N0
\alu_instance|op[4]~15\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[4]~15_combout\ = (\input_vector~combout\(0) & (((\alu_instance|shift~8_combout\)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(1) & ((\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \alu_instance|shift~8_combout\,
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[4]~15_combout\);

-- Location: LC_X8_Y7_N8
\alu_instance|op[4]~16\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[4]~16_combout\ = (\input_vector~combout\(2) & (\alu_instance|op[4]~0_combout\ & ((\input_vector~combout\(4))))) # (!\input_vector~combout\(2) & (((\alu_instance|op[4]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b830",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|op[4]~0_combout\,
	datab => \input_vector~combout\(2),
	datac => \alu_instance|op[4]~15_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[4]~16_combout\);

-- Location: LC_X10_Y7_N3
\alu_instance|op[4]~17\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[4]~17_combout\ = (\input_vector~combout\(8) & (((\alu_instance|op[4]~14_combout\)))) # (!\input_vector~combout\(8) & (!\input_vector~combout\(9) & ((\alu_instance|op[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \alu_instance|op[4]~14_combout\,
	datac => \alu_instance|op[4]~16_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[4]~17_combout\);

-- Location: LC_X8_Y8_N6
\alu_instance|op[5]~18\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[5]~18_combout\ = (\input_vector~combout\(7) & ((\input_vector~combout\(9)) # ((\input_vector~combout\(3) & \alu_instance|carry~1_combout\)))) # (!\input_vector~combout\(7) & (!\input_vector~combout\(9) & ((\input_vector~combout\(3)) # 
-- (\alu_instance|carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f08e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \alu_instance|carry~1_combout\,
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[5]~18_combout\);

-- Location: LC_X8_Y8_N0
\alu_instance|op[5]~19\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[5]~19_combout\ = (\input_vector~combout\(2) & (\alu_instance|Mux5~1_combout\ & (!\input_vector~combout\(1)))) # (!\input_vector~combout\(2) & (((\input_vector~combout\(1) & \alu_instance|op[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|Mux5~1_combout\,
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(1),
	datad => \alu_instance|op[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[5]~19_combout\);

-- Location: LC_X8_Y8_N1
\alu_instance|op[5]~20\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[5]~20_combout\ = (\input_vector~combout\(8) & (\alu_instance|op[5]~18_combout\)) # (!\input_vector~combout\(8) & (((\alu_instance|op[5]~19_combout\ & !\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|op[5]~18_combout\,
	datab => \alu_instance|op[5]~19_combout\,
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[5]~20_combout\);

-- Location: LC_X9_Y7_N7
\alu_instance|op[6]~21\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[6]~21_combout\ = (\input_vector~combout\(1) & (!\input_vector~combout\(0) & (\alu_instance|Mux5~0_combout\))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(0) & (\alu_instance|Mux5~0_combout\)) # (!\input_vector~combout\(0) & 
-- ((\input_vector~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7160",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(0),
	datac => \alu_instance|Mux5~0_combout\,
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[6]~21_combout\);

-- Location: LC_X9_Y7_N4
\alu_instance|op[6]~22\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[6]~22_combout\ = (\input_vector~combout\(2) & (((\alu_instance|op[6]~21_combout\)))) # (!\input_vector~combout\(2) & (\input_vector~combout\(7) & ((\alu_instance|shift~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(2),
	datac => \alu_instance|op[6]~21_combout\,
	datad => \alu_instance|shift~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[6]~22_combout\);

-- Location: LC_X10_Y7_N4
\alu_instance|op[6]~23\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[6]~23_combout\ = (!\input_vector~combout\(9) & ((\input_vector~combout\(8) & ((\alu_instance|carry~2_combout\))) # (!\input_vector~combout\(8) & (\alu_instance|op[6]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \alu_instance|op[6]~22_combout\,
	datac => \alu_instance|carry~2_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[6]~23_combout\);

-- Location: LC_X8_Y8_N7
\alu_instance|op[7]~24\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[7]~24_combout\ = (\alu_instance|op[0]~2_combout\ & ((\input_vector~combout\(1) & (\alu_instance|Mux5~1_combout\)) # (!\input_vector~combout\(1) & ((\alu_instance|op[5]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|op[0]~2_combout\,
	datab => \alu_instance|Mux5~1_combout\,
	datac => \input_vector~combout\(1),
	datad => \alu_instance|op[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[7]~24_combout\);

-- Location: LC_X8_Y8_N4
\alu_instance|op[7]~25\ : maxv_lcell
-- Equation(s):
-- \alu_instance|op[7]~25_combout\ = (!\input_vector~combout\(9) & ((\alu_instance|op[7]~24_combout\) # ((\alu_instance|carry~2_combout\ & \input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|carry~2_combout\,
	datab => \alu_instance|op[7]~24_combout\,
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_instance|op[7]~25_combout\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_instance|op[0]~27_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_instance|op[1]~8_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_instance|op[2]~10_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_instance|op[3]~13_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_instance|op[4]~17_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_instance|op[5]~20_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_instance|op[6]~23_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_instance|op[7]~25_combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


