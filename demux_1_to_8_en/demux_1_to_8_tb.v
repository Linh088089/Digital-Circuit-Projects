`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:20:06 04/16/2025
// Design Name:   DEMUX_1_TO_8
// Module Name:   /home/ise/CodeISE/demux_1_to_8_en/demux_1_to_8_tb.v
// Project Name:  demux_1_to_8_en
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DEMUX_1_TO_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux_1_to_8_tb;

	// Inputs
	reg I;
	reg [2:0] sel;
	reg EN;

	// Outputs
	wire [7:0] O;

	// Instantiate the Unit Under Test (UUT)
	DEMUX_1_TO_8 uut (
		.I(I), 
		.O(O), 
		.sel(sel), 
		.EN(EN)
	);

	initial begin
		EN=0;
		#100;
		I=1;
		EN=1;
		sel=3'b000;
		#100;
		sel=3'b001;
		#100;
		sel=3'b010;
		#100;
	end
      
endmodule

