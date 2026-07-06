`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:47:53 04/16/2025 
// Design Name: 
// Module Name:    demux_1_to_4 
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
module demux_1_to_4(i,o,en);
input i;
input [1:0] en;
output reg [3:0] o;
always @(i,en)
begin
     if(en==2'b00) o={3'b000,i};
else if(en==2'b01) o={2'b00,i,1'b0};
else if(en==2'b10) o={1'b0,i,2'b00};
else if(en==2'b11) o={i,3'b000};
end
endmodule

