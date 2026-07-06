`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:17:03 04/16/2025
// Design Name:   Mux_4_to_1_EN_HL
// Module Name:   /home/ise/CodeISE/Mux_4_to_1_EN_HL/MUX_4_TO_EN_HL_TB.v
// Project Name:  Mux_4_to_1_EN_HL
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux_4_to_1_EN_HL
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX_4_TO_EN_HL_TB;

	// Inputs
	reg [3:0] i;
	reg [1:0] sel;
	reg en;
	reg hl;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	Mux_4_to_1_EN_HL uut (
		.i(i), 
		.sel(sel), 
		.en(en), 
		.hl(hl), 
		.o(o)
	);

	initial begin
	i=4'b1010;
	en=0;
	hl=1;
	#100;
	en=0;
	hl=0;
	#100;
	en=1;
	hl=1;
	sel=2'b00;
	#100;
	sel=2'b01;
	#100;
	sel=2'b10;
	#100;
	sel=2'b11;
	#100;
	en=1;
	hl=0;
	sel=2'b00;
	#100;
	sel=2'b01;
	#100;
	sel=2'b10;
	#100;
	sel=2'b11;
	#100;
	end
      
endmodule

