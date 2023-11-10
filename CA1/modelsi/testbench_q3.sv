`timescale 1ns/1ns
module tb3();

    logic aa, bb, cc;
    wire q2y1, q2y0;
    wire q3y1, q3y0;

    OC1_q2 q2(.y1(q2y1), .y0(q2y0), .a(aa), .b(bb), .c(cc));
    OC1_q3 q3(.y1(q3y1), .y0(q3y0), .a(aa), .b(bb), .c(cc));

    initial begin

        // logic table
        #200 aa=0;bb=0;cc=0;
        #200 aa=0;bb=0;cc=1;
        #200 aa=0;bb=1;cc=0;
        #200 aa=0;bb=1;cc=1;
        #200 aa=1;bb=0;cc=0;
        #200 aa=1;bb=0;cc=1;
        #200 aa=1;bb=1;cc=0;
        #200 aa=1;bb=1;cc=1;

        // next test
        #200 {aa, bb, cc} = 3'bzzz;

        // some of worstcases

        // y1 to1 & y0 to0
        #200 aa=0;bb=1;cc=1;
        // y1 to0 & y0 to1
        #200 aa=0;bb=0;cc=1;

        #200 $stop;

    end

endmodule