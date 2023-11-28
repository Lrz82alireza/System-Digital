module comprator_1 (input a , b , l , g , e , output lt , eq , gt);

    assign lt = l | (e & ~a & b);
    assign eq = (~a & ~b & e) | (a & b & e);
    assign gt = g | (e & a & ~b);

endmodule