`timescale 1ns/1ns
module tb7();

    logic [14:0] in;
    wire [3:0] out;

    OC1_q7 q5(.out(out), .in(in));

    initial begin

        #300 in = 14'b0;

        // test table
        repeat (15) #300 in = (in * 2) + 1;

        #300 $stop;

    end

endmodule