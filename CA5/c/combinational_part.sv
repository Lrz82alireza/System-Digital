module combin_test (input clk, rst, serIn, shift_en, counter_en, load, S, output co, serOut, serOutValid);
    wire [7:0] init_c, outShifter;

    counter_8_bit mycounter (clk, rst, load, counter_en, init_c, co);
    pre_shift_reg_8_bit myshifter (clk, shift_en, serIn, outShifter);

    assign init_c = S ? 8'd8 : outShifter;
    assign serOut = serIn;

endmodule