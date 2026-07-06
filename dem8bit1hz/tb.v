module tb_dem8bitwire;
  reg ck50M, reset, ud, ss;
  wire [7:0] led8out;

  // Khởi tạo module cần test
  dem8bitwire uut(
    .ck50M(ck50M),
    .reset(reset),
    .ud(ud),
    .ss(ss),
    .led8out(led8out)
  );

  // Tạo xung clock 50MHz giả lập (chu kỳ 20ns)
  initial begin
    ck50M = 0;
    forever #100 ck50M = ~ck50M;
  end

  // Các test case
  initial begin
    // Khởi tạo
    reset = 1; 
    #100;
	 reset = 0; ss = 1; ud=1;
	 #100;
	 ud=0;
	 #100;
	 ss=0;
	 #100;

   
  end
endmodule