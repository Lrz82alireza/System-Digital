module tb_b_q2 ();
    `timescale 1ns/1ns

    logic D, clk;
    wire Q, QB;

    D_flip_flop my_ff(D, clk, Q, QB);

    initial {D, clk} = 2'b00;

    initial repeat (30) #50 clk = ~clk;
    // initial repeat (20) #98 D = ~D;

    initial begin
        #100
        repeat (2) #20 D = ~D;
        #86 D = ~D;
        #12 D = ~D;
    end


endmodule