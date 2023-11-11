`timescale 1ns/1ns
module tb6();

    logic [6:0] in;
    wire [2:0] out;

    OC1_q5 q5(.out(out), .in(in));

    initial begin

        #200 in = 7'b0;

        // logic table
        repeat (128) #200 in = in + 1;

        #200 in = 7'bz;

        // To0 -> To1 y0
        #200 in = 7'b0;
        #200 in = 7'b1000000;

        #200 in = 7'bz;
        // To0 -> To1 y1
        #200 in = 7'b0;
        #200 in = 7'b0000011;

        #200 in = 7'bz;
        // To0 -> To1 y2
        #200 in = 7'b0;
        #200 in = 7'b0110110;

        #200 $stop;

    end

endmodule