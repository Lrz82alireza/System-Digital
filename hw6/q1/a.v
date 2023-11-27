module comp_1 (input [7:0] A, output [7:0] W);
    assign W = ~A + 1'b1;
endmodule