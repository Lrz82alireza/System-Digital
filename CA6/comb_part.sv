module comb_part (input clk, rst, counter_en, sel_1, sel_2, sel_x, sel_t, load_x, load_m, load_t, mode, input [15:0] inX, inY, output [15:0] out, output gt);

    wire [31:0] mult_w;
    wire [15:0] lut_w, add_w;
    wire [15:0] mux_1_w, mux_2_w, mux_x_w, mux_t_w;
    wire [15:0] reg_x_w, reg_m_w, reg_t_w;

    mux_2_to_1 mux_2 (reg_x_w, lut, sel_2, mux_2_w);
    mux_2_to_1 mux_1 (reg_x_w, reg_m_w, sel_1, mux_1_w);
    mux_2_to_1 mux_x (inX, reg_m_w, sel_x, mux_x_w);
    mux_2_to_1 mux_t (16'b0000000100000000, mult_w[23:8], sel_t, mux_t_w);

    register_16_bit reg_x (clk, rst, load_x, mux_x_w, reg_x_w);
    register_16_bit reg_m (clk, rst, load_m, mux_m_w, reg_m_w);
    register_16_bit reg_t (clk, rst, load_t, mux_t_w, reg_t_w);

    sub_add_16_bit sub_add (reg_t_w, reg_m_w, mode, add_w);

    multiplier_16_bit mult (mux_1_w, mux_2_w, mult_w);

    greater_8_bit greater (inY, add_w, gt);

    assign out = add_w;
    
endmodule