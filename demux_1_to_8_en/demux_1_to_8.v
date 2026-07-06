`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:51 04/16/2025 
// Design Name: 
// Module Name:    demux_1_to_8 
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
module DEMUX_1_TO_8(I, O, sel, EN);
  input I, EN;
  input [2:0] sel;
  output reg [7:0] O;

  always @(I, EN, sel)
  begin
    if (EN == 0)
      O = 8'b00000000;
    else
      case (sel)
		3'b000: O = {7'b0000000, I};
        3'b001: O = {6'b000000, I, 1'b0};
        3'b010: O = {5'b00000, I, 2'b00};
        3'b011: O = {4'b0000, I, 3'b000};
        3'b100: O = {3'b000, I, 4'b0000};
        3'b101: O = {2'b00, I, 5'b00000};
        3'b110: O = {1'b0, I, 6'b000000};
        3'b111: O = {I, 7'b0000000};
        default: O = 8'b00000000;
      endcase
  end
endmodule
