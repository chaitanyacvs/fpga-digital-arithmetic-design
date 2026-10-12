`timescale 1ns/1ps
module tb_fourbitmux;
  reg [3:0] A, B;
  wire [7:0] P;
  integer i, j;
  fourbitmux dut(.A(A), .B(B), .P(P));
  initial begin
    for (i=0; i<16; i=i+1)
      for (j=0; j<16; j=j+1) begin
        A=i; B=j; #1;
        if (P !== (i*j)) $fatal(1, "multiplier failed: %0d * %0d = %0d", i,j,P);
      end
    $display("PASS: 4-bit multiplier exhaustive test");
    $finish;
  end
endmodule
