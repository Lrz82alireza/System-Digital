module my_counter #(parameter BIT_NUM = 8;) (input clk, rst, en, output logic [BIT_NUM - 1:0] out);

    // logic [BIT_NUM - 1:0] count_num;

    always @(posedge clk, posedge rst) begin
        if (rst)
            out = BIT_NUM'b0;   
        else if (en)
            out <= count_num + 1'b1;
    end
    

endmodule

module register_16_bit (input clk, rst, load, input [15:0] init, output logic [15:0] out);
    
    always @(posedge clk, posedge rst) begin
        if (load)
            out <= init;
    end

endmodule

module sub_add_16_bit (input [15:0] A, B, input mode, output [15:0] out, output CO);
    
    if (mode == 1'b1)
        assign {CO, out} = A + B;
    else
        assign out = A - B;
endmodule

module multiplier_16_bit (input [15:0] A, B, output [31:0] out);
    
    assign out = A * B;
    
endmodule

module greater_8_bit (input [7:0] A, B, output gt);

    assign gt = (A > B);
    
endmodule

module mux_2_to_1 (input [15:0] in0, in1, input sel, output [15:0] out);

    assign out = (sel == 0) ? in0 : in1;
    
endmodule