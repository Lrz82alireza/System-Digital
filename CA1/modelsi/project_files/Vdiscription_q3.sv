`timescale 1ns/1ns
module OC1_q3 (output y0, y1, input a, b, c);

    wire x1, a1, a2;

    xor #(17, 19) xor1 (x1, b, c);
    xor #(17, 19) xor2 (y0, x1, a);

    nand #(10, 8) nand1 (a1, x1, a);
    nand #(10, 8) nand2 (a2, b, c);
    nand #(10, 8) nand3 (y1, a1, a2);

endmodule