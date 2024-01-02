    `timescale 1ns/1ns
module counter_tb ();
    
    logic clk, rst, load, en, si;
    logic [7:0] init_tb;
    wire w_ct;
    wire [7:0] w_reg;

    counter_8_bit ctr (clk, rst, load, en, init_tb, w_ct);
    shift_reg_8_bit shift_reg_8_bit(clk, ~w_ct, si, w_reg);

    initial {clk, rst, load, en} = 4'b0000;
    initial init_tb = 8'b0;

    // initial repeat(40) #200 clk = ~clk;


    // initial begin
    //     #150 init_tb = 8'd8;
    //     en = 1; 

    //     #400 
    //     #50 load = 1;
    //     #350 serin = 0;
    //     #200 load = 0;
    //     #200 serin = 1; 
    //     #400 serin = 1; 
    //     #400 serin = 0; 
    //     #400 serin = 0; 
    //     #400 serin = 0; 
    //     #400 serin = 1; 
    //     #400 serin = 1;
    //     #400 serin = 0; 
    //     // #400 en = 0; 
    // end

    always #100 clk = ~clk;

    initial begin
        #50 load = 1;
        #100 load = 0;
    end
    initial begin
        #1 rst = 0;
        init_tb = 8'd8;
        en = 1;
        #50  si = 1;
        #200 si = 0;
        #200 si = 1;
        #200 si = 1;
        #200 si = 0;
        #200 si = 1;
        #200 si = 1;
        #200 si = 0;
        #200 si = 1;
        #200 si = 1;
        #200 si = 1;
        #200 en = 0;
        #200 si = 1;
        #200 si = 1;
        #200 si = 1;
        #200 si = 1;
        #200 si = 1;
        #200 $stop;
    end
endmodule