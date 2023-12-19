module tb_b_q2 ();
    `timescale 1ns/1ns

    logic D, clk;
    wire Q, QB;

    D_flip_flop my_ff(D, clk, Q, QB);

    initial D = 1'b0;
    initial clk = 1'b0;

    initial repeat (30) #100 clk = ~clk;
    // initial repeat (20) #98 D = ~D;

    initial begin
        #98 D = ~D;
        #4 D = ~D;
        repeat (20) #98 D = ~D;
    end


endmodule