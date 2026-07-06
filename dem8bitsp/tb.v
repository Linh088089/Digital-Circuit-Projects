`timescale 1ns / 1ps

module tb_DEM8BIT_1Hz;

    // Inputs
    reg clk50M;
    reg SP;
    reg UD;
    reg RST;

    // Outputs
    wire [7:0] LED8_OUT;

    // Instantiate the Unit Under Test (UUT)
    DEM8BIT_1Hz uut (
        .clk50M(clk50M),
        .SP(SP),
        .UD(UD),
        .RST(RST),
        .LED8_OUT(LED8_OUT)
    );
    initial begin
	 clk50M=0; 
	 forever clk50M=~clk50M;
	 end
       initial begin
		 RST=1;
		 #100;
		 RST=0;
		 SP=0;
		 SS=1;
		 UD=0;
		 #100
		 UD=1;
		 #100;
		 SS=0;
		 #100;
		 RST=0;
		 SP=1;
		 SS=1;
		 UD=0;
		 #100
		 UD=1;
		 #100;
		 SS=0;
		 #100;
		 
		 
    end
      
endmodule