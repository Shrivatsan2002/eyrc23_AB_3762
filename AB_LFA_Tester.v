// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Wed Dec 27 17:23:30 2023"

module AB_LFA_Tester(
	dout,
	clk_50M,
	reset,
	adc_sclk,
	adc_cs_n,
	din,
	d,
	c,
	b,
	a
);


input wire	dout;
input wire	clk_50M;
input wire	reset;
output wire	adc_sclk;
output wire	adc_cs_n;
output wire	din;
output wire	d;
output wire	c;
output wire	b;
output wire	a;

wire	SYNTHESIZED_WIRE_5;
wire	[11:0] SYNTHESIZED_WIRE_2;
wire	[11:0] SYNTHESIZED_WIRE_3;
wire	[11:0] SYNTHESIZED_WIRE_4;

assign	adc_sclk = SYNTHESIZED_WIRE_5;




ADC_Controller	b2v_inst(
	.dout(dout),
	.adc_sck(SYNTHESIZED_WIRE_5),
	.adc_cs_n(adc_cs_n),
	.din(din),
	.center_value(SYNTHESIZED_WIRE_2),
	.left_value(SYNTHESIZED_WIRE_3),
	.right_value(SYNTHESIZED_WIRE_4));


motor_control	b2v_inst1(
	.clk(SYNTHESIZED_WIRE_5),
	.reset(reset),
	.center1(SYNTHESIZED_WIRE_2),
	.left1(SYNTHESIZED_WIRE_3),
	.right1(SYNTHESIZED_WIRE_4),
	.a(a),
	.b(b),
	.c(c),
	.d(d));
	defparam	b2v_inst1.forward = 0;
	defparam	b2v_inst1.junction = 4;
	defparam	b2v_inst1.left = 1;
	defparam	b2v_inst1.right = 2;
	defparam	b2v_inst1.stop = 3;


Frequency_Scaling	b2v_inst2(
	.clk_50M(clk_50M),
	.adc_clk_out(SYNTHESIZED_WIRE_5));


endmodule
