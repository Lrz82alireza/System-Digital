    `timescale 1ns/1ns
module seq_det_tb ();

    logic clk, rst, serIn;
    wire w;

    seq_det my_det(clk, rst, serIn, w);

    initial {clk, rst, serIn} = 3'b000;

    initial begin
        #200 serIn  = 1'b0;
        #200 clk = 1'b1;
        #200 clk = 1'b0;
        
        #200 serIn  = 1'b0;
        #200 clk = 1'b1;
        #200 clk = 1'b0;
        

        serIn  = 1'b1;
        #200 clk = 1'b1;
        #200 clk = 1'b0;

        /*
        serIn  = 1'b0;
        #200 clk = 1'b1;
        #200 clk = 1'b0;

        serIn  = 1'b1;
        #200 clk = 1'b1;
        #200 clk = 1'b0;
        */

        serIn  = 1'b1;
        #200 clk = 1'b1;
        #200 clk = 1'b0;

        serIn  = 1'b1;
        #200 clk = 1'b1;
        #200 clk = 1'b0;

        serIn  = 1'b1;
        #200 clk = 1'b1;
        #200 clk = 1'b0;

        /*
        serIn  = 1'b0;
        #200 clk = 1'b1;
        #200 clk = 1'b0;

        serIn  = 1'b1;
        #200 clk = 1'b1;
        #200 clk = 1'b0;
        */

        serIn  = 1'b1;
        #200 clk = 1'b1;
        #200 clk = 1'b0;

        serIn  = 1'b0;
        #200 clk = 1'b1;
        #200 clk = 1'b0;

        #200;
    end

endmodule