module cos_x (input clk, rst, start, input [15:0] inX, input [7:0] inY, output [15:0] out, output done);
    
    wire counter_en, sel_1, sel_2, sel_t, sel_x,
    load_m, load_t, load_x, mode, gt, lsb_counter, rst_w;

    comb_part datapath (clk, rst_w, counter_en, sel_1, sel_2, sel_x, sel_t, load_x, load_m, load_t, mode, inX, inY, out, gt, lsb_counter);
    controller controller_ (clk, rst, start, gt, lsb_counter, counter_en, sel_1, sel_2, sel_x, sel_t, load_x, load_m, load_t, mode, done, rst_w);

endmodule