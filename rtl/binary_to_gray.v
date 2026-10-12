`timescale 1ns/1ps
module binarytogrey (
    input  [7:0] bin,
    output [7:0] grey
);
    always @(*) begin
        grey[7] = bin[7];
        grey[6] = bin[7] ^ bin[6];
        grey[5] = bin[6] ^ bin[5];
        grey[4] = bin[5] ^ bin[4];
        grey[3] = bin[4] ^ bin[3];
        grey[2] = bin[3] ^ bin[2];
        grey[1] = bin[2] ^ bin[1];
        grey[0] = bin[1] ^ bin[0];
    end
endmodule
