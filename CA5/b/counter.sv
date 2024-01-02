module counter_8_bit (input clk, rst, load, en, input [7:0] init, output co);
    
    logic [7:0] count_num;

    always @(posedge clk, posedge rst) begin
        if (rst)
            count_num = 8'b0;
        else if (load)
            count_num = init;
        else if (en)
            count_num <= count_num - 1;
    end

    assign co = (en && (|count_num == 0)) ? 1'b1 : 1'b0;

endmodule
