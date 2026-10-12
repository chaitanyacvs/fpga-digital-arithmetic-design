`timescale 1ns/1ps
module tb_fulladder;
  reg a, b, c;
  wire sum, carry;
  integer i;
  fulladder dut(.a(a), .b(b), .c(c), .sum(sum), .carry(carry));
  initial begin
    for (i=0; i<8; i=i+1) begin
      {a,b,c}=i; #1;
      if ({carry,sum} !== (a+b+c)) $fatal(1, "full adder failed for inputs %b%b%b",a,b,c);
    end
    $display("PASS: full adder exhaustive test");
    $finish;
  end
endmodule
