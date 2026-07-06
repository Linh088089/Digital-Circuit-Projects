`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:54:07 04/16/2025
// Design Name:   Mux_4_to_1_EN
// Module Name:   /home/ise/CODE/Mux_4_to_1_EN/Mux_4_to_1_EN_TB.v
// Project Name:  Mux_4_to_1_EN
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux_4_to_1_EN
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux_4_to_1_EN_TB;

	// Inputs
	reg [3:0] I;
	reg [1:0] SEL;
	reg EN;

	// Outputs
	wire O;

	// Instantiate the Unit Under Test (UUT)
	Mux_4_to_1_EN uut (
		.I(I), 
		.SEL(SEL), 
		.EN(EN), 
		.O(O)
	);

	initial begin
		EN=1'b0;
		#100;
		I=4'b1010;
		EN=1'b1;
		SEL=2'b00;
		#100;
		EN=1'b1;
		SEL=2'b01;
		#100;
		EN=1'b1;
		SEL=2'b10;
		#100;
		EN=1'b1;
		SEL=2'b11;
		#100;
	end
      
endmodule

