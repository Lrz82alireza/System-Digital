`timescale 1ns/1ns
module OC1_q6 (output [2:0] out, input [6:0] in);

    wire [4:0] w;

    OC1_q4 oc1 (.y1(w[0]), .y0(w[2]), .a(in[0]), .b(in[1]), .c(in[2]));
    OC1_q4 oc2 (.y1(w[1]), .y0(w[3]), .a(in[3]), .b(in[4]), .c(in[5]));
    OC1_q4 oc3 (.y1(w[4]), .y0(out[0]), .a(w[3]), .b(w[2]), .c(in[6]));
    OC1_q4 oc4 (.y1(out[2]), .y0(out[1]), .a(w[0]), .b(w[2]), .c(w[4]));

endmodule