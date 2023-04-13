module dcount #(
  parameter counter_size = 4
) (
  input clk,
  input rst,
  output reg [6:0] out
);

  reg [counter_size-1:0] cnt;

  always @(posedge clk or posedge rst) begin
    if (rst || (cnt == (1 << counter_size) - 1)) 
      cnt <= 0;
    else
      cnt <= cnt + 1;
  end

  always @(*) begin
    case (cnt)
      0: out = ~7'b0111111;
      1: out = ~7'b0000110;
      2: out = ~7'b1011011;
      3: out = ~7'b1001111;
      4: out = ~7'b1100110;
      5: out = ~7'b1101101;
      6: out = ~7'b1111101;
      7: out = ~7'b0000111;
      8: out = ~7'b1111111;
      9: out = ~7'b1101111;
      default: out = ~7'b0000000;
    endcase
  end

endmodule