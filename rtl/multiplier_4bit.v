`timescale 1ns/1ps
// The source document labels this "4bit mux", but the logic performs multiplication.
module fourbitmux (
    input  [3:0] A,
    input  [3:0] B,
    output reg [7:0] P
);
    always @(*) begin
        P = A * B;
    end
endmodule
