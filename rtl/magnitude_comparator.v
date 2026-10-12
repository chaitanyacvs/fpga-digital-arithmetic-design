`timescale 1ns/1ps
module twobitmagcomp (
    input  [1:0] a,
    input  [1:0] b,
    output equal,
    output greater,
    output lower
);
    assign equal   = (a == b);
    assign greater = (a > b);
    assign lower   = (a < b);
endmodule
