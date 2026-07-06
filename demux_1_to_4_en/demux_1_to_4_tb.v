`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:53:22 04/16/2025
// Design Name:   demux_1_to_4
// Module Name:   /home/ise/CodeISE/demux_1_to_4_en/demux_1_to_4_tb.v
// Project Name:  demux_1_to_4_en
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux_1_to_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux_1_to_4_tb;

	// Inputs
	reg i;
	reg [1:0] en;

	// Outputs
	wire [3:0] o;

	// Instantiate the Unit Under Test (UUT)
	demux_1_to_4 uut (
		.i(i), 
		.o(o), 
		.en(en)
	);

	initial begin
	   i=1;
		en=2'b00;
		#100;
		en=2'b01;
		#100;
		en=2'b10;
		#100;
		en=2'b11;
		#100;

	end
      
endmodule

