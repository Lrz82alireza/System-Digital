module main_tb_1 ();

    logic clk, rst, serIn;
    wire load, S, shift_en, counter_en, serOutValid, serOut;

    main_state myState (clk, rst, co, serIn, load, S, shift_en, counter_en, serOutValid);
    combin_test my_comb (clk, rst, serIn, shift_en, counter_en, load, S, co, serOut, serOutValid);

    initial {clk, rst} = 2'b0;

    always #100 clk = ~clk;

    initial begin
        #50  serIn = 1;

        #200 serIn = 0;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 0;


        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 0;
        #200 serIn = 0;
        #200 serIn = 0;
        #200 serIn = 0;
        #200 serIn = 0;
        #200 serIn = 0;

        #200 serIn = 0;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 0;
        
        #200 serIn = 1;
        #200 serIn = 0;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 0;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 serIn = 1;
        #200 $stop;
    end
endmodule