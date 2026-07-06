`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:42:41 04/16/2025 
// Design Name: 
// Module Name:    Mux_4_to_1_EN 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux_4_to_1_EN(I,SEL,EN,O);
input [3:0] I;
input [1:0] SEL;
input EN;
output reg O;
always @(I,SEL,EN)
begin
     if(EN==1'b0) O=1'b0;
	  else
	      begin
			     if(SEL==2'b00) O=I[0];
			else if(SEL==2'b01) O=I[1];
			else if(SEL==2'b10) O=I[2];
			else                O=I[3];
			end
end
endmodule
