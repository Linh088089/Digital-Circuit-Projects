`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:10:59 04/16/2025 
// Design Name: 
// Module Name:    Mux_4_to_1_EN_HL 
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
module Mux_4_to_1_EN_HL(i,sel,en,hl,o);
input [3:0] i;
input [1:0] sel;
input en;
input hl;
output o;
reg temp;
always @(i,sel,en,hl)
begin
     if(en==0) temp=0;
	  else
	      begin 
			     if(sel==2'b00) temp=i[0];
			else if(sel==2'b01) temp=i[1];
			else if(sel==2'b10) temp=i[2];
			else                temp=i[3];
			end
end
assign o=(hl==1'b1)?temp:~temp;
endmodule
