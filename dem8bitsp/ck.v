`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:18 04/17/2025 
// Design Name: 
// Module Name:    ck 
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
// module chia xung
module CLK_DIV( input clk50m, output reg clkout);
reg [24:0] count ; 
initial begin
clkout <=0 ;
count <=1 ;
end
always @( posedge clk50m)
begin
if(count == 250)
	begin
		clkout <= ~clkout ;
		count <= 1;
	end
	else count = count +1 ; 
end
endmodule

// module dem8bit

module DEM8BIT( input rst, ud, sp, clk, output reg [7:0] led8_out
    );
always @(posedge clk)
begin 
	if(rst)	led8_out <= 8'h00 ;
	else 
		if(sp==0)	led8_out <= led8_out ;
		else 
			if(ud)   led8_out <= led8_out + 1 ;
			else     led8_out <= led8_out - 1 ;
end
endmodule
//noi day
module DEM8BIT_1Hz( input clk50M, SP, UD, RST, output [7:0] LED8_OUT
    );
wire CLK1Hz ;
CLK_DIV MD1( .clk50m(clk50M), .clkout(CLK1Hz)) ;
DEM8BIT MD2( .clk(CLK1Hz), .sp(SP), .rst(RST), .ud(UD), .led8_out(LED8_OUT)) ; 

endmodule


