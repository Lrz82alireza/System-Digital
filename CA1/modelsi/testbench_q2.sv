`timescale 1ns/1ns
module tb1();

    logic aa, bb, cc;
    wire outy1, outy0;

    OC1 myoc(.y1(outy1), .y0(outy0), .a(aa), .b(bb), .c(cc));

    initial begin

        // logic table
        #100 aa=0;bb=0;cc=0;
        #100 aa=0;bb=0;cc=1;
        #100 aa=0;bb=1;cc=0;
        #100 aa=0;bb=1;cc=1;
        #100 aa=1;bb=0;cc=0;
        #100 aa=1;bb=0;cc=1;
        #100 aa=1;bb=1;cc=0;
        #100 aa=1;bb=1;cc=1;

        // next test
        #100 {aa, bb, cc} = 3'bzzz;

        // some of worstcases

        // y1 to1 & y0 to0
        #100 aa=0;bb=1;cc=1;
        // y1 to0 & y0 to1
        #100 aa=0;bb=0;cc=1;

        #100 $stop;

    end

endmodule