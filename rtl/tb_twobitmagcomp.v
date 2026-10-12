`timescale 1ns/1ps
module tb_twobitmagcomp;
  reg [1:0] a, b;
  wire equal, greater, lower;
  integer i, j;
  twobitmagcomp dut(.a(a), .b(b), .equal(equal), .greater(greater), .lower(lower));
  initial begin
    for (i=0; i<4; i=i+1)
      for (j=0; j<4; j=j+1) begin
        a=i; b=j; #1;
        if (equal !== (i==j) || greater !== (i>j) || lower !== (i<j))
          $fatal(1, "comparator failed: a=%0d b=%0d", i,j);
      end
    $display("PASS: comparator exhaustive test");
    $finish;
  end
endmodule
