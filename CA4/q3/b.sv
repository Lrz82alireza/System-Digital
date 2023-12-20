// module tb_q3_b ();
//     `timescale 1ns/1ns

//     logic D, clk, PRE, CLR;
//     wire Q, QB;

//     D_flip_flop_PR my_ff(D, clk, PRE, CLR, Q, QB);

//     initial {D, clk, PRE, CLR} = 4'b0;

//     initial repeat (15) #100 clk = ~clk;
//     // initial repeat (20) #98 D = ~D;

//     initial begin
//         #100
//         repeat (20) #60 D = ~D;
//         #80 D = ~D;
//         #40 D = ~D;
//     end

// endmodule

// module tb_q3_g ();
//     `timescale 1ns/1ns

//     logic D, clk, PRE, CLR;
//     wire Q, QB;

//     D_flip_flop_PR my_ff(D, clk, PRE, CLR, Q, QB);

//     initial {D, clk, PRE, CLR} = 4'b0;

//     initial repeat (15) #100 clk = ~clk;

//     initial begin
//         #100
//         repeat (20) #60 D = ~D;
//         #80 D = ~D;
//         #40 D = ~D;
//     end

//     initial begin
//         #450 PRE = ~ PRE;
//         #100 PRE = ~ PRE;
//     end


// endmodule

// module tb_q3_g2 ();
//     `timescale 1ns/1ns

//     logic D, clk, PRE, CLR;
//     wire Q, QB;

//     D_flip_flop_PR my_ff(D, clk, PRE, CLR, Q, QB);

//     initial {D, clk, PRE, CLR} = 4'b0;

//     initial repeat (15) #100 clk = ~clk;

//     initial begin
//         #100
//         repeat (20) #60 D = ~D;
//         #80 D = ~D;
//         #40 D = ~D;
//     end

//     initial begin
//         #250 CLR = ~ CLR;
//         #100 CLR = ~ CLR;
//     end


// endmodule

module tb_q3_g3 ();
    `timescale 1ns/1ns

    logic D, clk, PRE, CLR;
    wire Q, QB;

    D_flip_flop_PR my_ff(D, clk, PRE, CLR, Q, QB);

    initial {D, clk, PRE, CLR} = 4'b0;

    initial repeat (15) #100 clk = ~clk;

    initial begin
        #100
        repeat (20) #60 D = ~D;
        #80 D = ~D;
        #40 D = ~D;
    end

    initial begin
        #250 CLR = ~ CLR;
        #100 CLR = ~ CLR;
    end
    initial begin
        #250 PRE = ~ PRE;
        #100 PRE = ~ PRE;
    end


endmodule