`timescale 1ns/1ns
module OC1_q7 (output [3:0] out, input [14:0] in);

    wire [6:0] w;

    OC1_q5 oc1 (.out(w[2:0]), .in(in[6:0]));
    OC1_q5 oc2 (.out(w[5:3]), .in(in[13:7]));
    OC1_q2 oc4 (.y0(out[2]), .y1(out[3]), .a(w[6]), .b(w[0]), .c(w[3]));
    OC1_q5 oc3 (.in({w[1], w[2], w[4], w[5], w[1], w[4], in[14]}), .out({w[6], out[1:0]}));

endmodule