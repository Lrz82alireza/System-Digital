`timescale 1ns/1ns
module OC1_q4 (output y0, y1, input a, b, c);

    assign #(36, 38) y0 = a ^ b ^ c;
    assign #(37, 39) y1 = (a ^ b) & a | b & c;

endmodule