`timescale 1ns/1ns
module tb ();
    reg [7:0] a;
    reg [7:0] b;

    wire lt, eq, gt;

    comprator_8 cmp(.a(a), .b(b), .l(1'b0), .g(1'b0), .e(1'b1), .lt(lt), .gt(gt), .eq(eq));
    // comprator_2_bit cmp2(.a(a), .b(b), .l(1'b0), .g(1'b0), .e(1'b1), .lt(lt), .gt(gt), .eq(eq));

    initial begin
        // a = 2'b11;
        // b = 2'b01;
        // #100;
        // a = $random;
        // b = $random;
        // #100;
        // a = $random;
        // b = $random;
        // #100;
        // a = $random;
        // b = $random;
        // #100;

        a = 8'b01010111;
        b = 8'b01010111;
        #200
        a = $random;
        b = $random;
        #200;
        a = $random;
        b = $random;
        #200;
        a = $random;
        b = $random;
        #200;
        a = $random;
        b = $random;
        #200;
        a = $random;
        b = $random;
        #200;
        a = $random;
        b = $random;
        #200;
        a = $random;
        b = $random;
        #200;
        a = $random;
        b = $random;
        #200;
        a = $random;
        b = $random;
        #200;
    end
endmodule