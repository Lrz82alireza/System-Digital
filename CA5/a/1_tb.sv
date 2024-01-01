    `timescale 1ns/1ns
module seq_det_tb ();

    logic clk, rst, serIn;
    wire w_pre, w_post;

    seq_det_pre my_det_pre(clk, rst, serIn, w_pre);
    seq_det my_det_post(clk, rst, serIn, w_post);

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
        // #50 serIn = 1'b0;
        // #50 serIn = 1'b1;
        // #100 clk = 1'b0;
        #200 clk = 1'b0;

        serIn  = 1'b0;
        #200 clk = 1'b1;
        #200 clk = 1'b0;

        #200;
    end

endmodule