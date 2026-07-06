`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:25:56 04/17/2025 
// Design Name: 
// Module Name:    code 
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
// bo chia xung 50->1
module ck(ck50M,ckout);
input ck50M;
output reg ckout;
reg [24:0] count;
initial
begin 
count<=1;
ckout<=0;
end
always @(posedge ck50M)
begin
if(count==25000000)
                  begin
						     ckout<=~ckout;
							  count<=1;
						end
else
count<=count+1;
end
endmodule
//bo dem 8 bit 
module dem8bit(ck,reset,ud,ss,out);
input ck,reset,ud,ss;
output reg [7:0] out;
always @(posedge ck)
begin
     if(reset==1)
	  out<=0;
	  else
	      if(ss==1)
			   if(ud==1)
			         out<=out+1;
			   else
			         out<=out-1;
			else
			         out<=out;
end
endmodule
//noi day
module dem8bitwire(ck50M,reset,ud,ss,led8out);
input ck50M,reset,ud,ss;
output [7:0] led8out;
wire ck1hz;
ck md_1(.ck50M(ck50M),.ckout(ck1hz));
dem8bit md_2(.ck(ck1hz),.reset(reset),.ud(ud),.ss(ss),.out(led8out));
endmodule
