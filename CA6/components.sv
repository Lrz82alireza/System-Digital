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

module LUT_8_bit (input[3:0] address , output[7:0] data);
    reg [7:0] ddata;
    always@(address) begin
        case(address)
            0:ddata = 8'hFF; //1
            1:ddata = 8'h80 //1/2
            2:ddata = 8'h55 //1/3
            3:ddata = 8'h40 //1/4
            4:ddata = 8'h33  //1/5
            5:ddata = 8'h2A //1/6
            6:ddata = 8'h24 //1/7
            7:ddata = 8'h20 //1/8
            8:ddata = 8'h1c //1/9
            9:ddata = 8'h19 //1/10
            10:ddata = 8'h17 //1/11
            11:ddata = 8'h15 //1/12
            12:ddata = 8'h13 //1/13
            13:ddata = 8'h12 //1/14
            14:ddata = 8'h11 //1/15
            15:ddata = 8'h10 //1/16
        endcase
    end
    
    assign data = ddata;

endmodule