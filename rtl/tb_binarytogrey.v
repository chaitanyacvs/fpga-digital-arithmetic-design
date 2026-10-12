`timescale 1ns/1ps
module tb_binarytogrey;
  reg [7:0] bin;
  wire [7:0] grey;
  reg [7:0] expected;
  integer i;
  binarytogrey dut(.bin(bin), .grey(grey));
  initial begin
    for (i=0; i<256; i=i+1) begin
      bin=i; expected=(i ^ (i >> 1)); #1;
      if (grey !== expected) $fatal(1, "binary-to-gray failed for %0d", i);
    end
    $display("PASS: binary-to-gray exhaustive test");
    $finish;
  end
endmodule
