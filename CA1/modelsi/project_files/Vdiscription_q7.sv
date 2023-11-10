`timescale 1ns/1ns
module OC1_q6 (output [3:0] out, input [14:0] in);

    wire [6:0] w;

    OC1_q5 oc1 (.out(w[2:0]), .in(in[6:0]));
    OC1_q5 oc2 (.out(w[5:3]), .in(in[13:7]));
    OC1_q5 oc3 (.out[2](w[6]), .out[1](out[1]), .out[0](out[0]), .in({w[5:0], w[1], w[4], w[14])});
    OC1_q2 oc4 (.out(out[3:2]), .in({w[6], w[3], w[0]}));

endmodule