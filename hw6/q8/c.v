module comprator_2_bit (input [1:0] a , b , input l , g , e , output lt , eq , gt);

    assign eq = (e & ~a[1] & ~b[1] & ~a[0] & ~b[0]) | (e & ~a[1] & ~b[1] & a[0] & b[0]) | (e & a[1] & b[1] & ~a[0] & ~b[0]) | (e & a[1] & b[1] & a[0] & b[0]);
    assign gt = g | (e & a[1] & ~b[1]) | (e & ~a[1] & ~b[1] & a[0] & ~b[0]) | (e & a[1] & b[1] & a[0] & ~b[0]);
    assign lt = l | (e & ~a[1] & b[1]) | (e & ~a[1] & ~b[1] & ~a[0] & b[0]) | (e & a[1] & b[1] & ~a[0] & b[0]);

endmodule