module comb_part (input clk, rst, counter_en, sel_1, sel_2, sel_x, sel_t, load_x, load_m, load_t, mode, input [15:0] X, output [15:0] out, output done, gt);

    wire [15:0] lut_w;
    wire [15:0] mux_1_w, mux_2_w, mux_x_w, mux_t_w;
    wire [15:0] reg_x_w, reg_m_w, reg_t_w;

    mux_2_to_1 mux_2 (reg_x_w, lut, sel_2, mux_2_w);
    mux_2_to_1 mux_1 (reg_x_w, reg_m_w, sel_1, mux_1_w);

    
endmodule