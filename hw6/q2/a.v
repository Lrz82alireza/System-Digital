module adder_a (input a, b, ci, output sum, co);
    assign {co, sum} = a+b+ci;
endmodule