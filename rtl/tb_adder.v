`timescale 1ns/1ps
module tb_adder;
  reg [3:0] a, b;
  wire [4:0] c;
  integer i, j;
  adder dut(.a(a), .b(b), .c(c));
  initial begin
    for (i=0; i<16; i=i+1)
      for (j=0; j<16; j=j+1) begin
        a=i; b=j; #1;
        if (c !== (i+j)) $fatal(1, "adder failed: %0d + %0d = %0d", i,j,c);
      end
    $display("PASS: adder exhaustive test");
    $finish;
  end
endmodule
