module div_cnt_tb;

  reg clk, rst;
  wire [6:0] clk_divn;

  dcount clk_cnt_u0 (.clk(clk),.rst(rst),.out(clk_divn));

  initial begin

	rst = 0;
	#10;
    	rst = 1;
    	#10;
    	rst = 0;
	#10;    
	clk = 0;
    
	repeat (200) begin
      		#5;
      		clk = ~clk;
    	end
    	
	$finish;
  	end

endmodule