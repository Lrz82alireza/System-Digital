module pre_shift_reg_8_bit (input clk, en, in, output logic [7:0] out);
    always @(posedge clk) begin
        if (en)
            out = {in, out[7:1]};
    end
endmodule