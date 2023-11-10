`timescale 1ns/1ns
module OC1_q2 (output y0, y1, input a, b, c);
    supply0 GND;
    supply1 VDD;

    // Y1 discription
    wire y1w1, y1w2, y1w3, y1w4;
    
    pmos #(5, 6, 7) y1p1 (y1w1, VDD, ~b);
    pmos #(5, 6, 7) y1p2 (y1, y1w1, ~c);
    pmos #(5, 6, 7) y1p3 (y1w2, VDD, ~a);
    pmos #(5, 6, 7) y1p4 (y1w3, y1w2, ~b);
    pmos #(5, 6, 7) y1p5 (y1w4, y1w2, ~c);

    nmos #(3, 4, 5) y1n1 (y1, y1w3, ~b);
    nmos #(3, 4, 5) y1n2 (y1, y1w3, ~c);
    nmos #(3, 4, 5) y1n3 (y1w3, GND, ~a);
    nmos #(3, 4, 5) y1n4 (y1w3, y1w4, ~b);
    nmos #(3, 4, 5) y1n5 (y1w4, GND, ~c);

    // Y0 discription
    wire y0w1, y0w2, y0w3, y0w4, y0w5, y0w6;

    pmos #(5, 6, 7) y0p1 (y0w1, VDD, y1);
    pmos #(5, 6, 7) y0p2 (y0, y0w1, ~a);
    pmos #(5, 6, 7) y0p3 (y0, y0w1, ~b);
    pmos #(5, 6, 7) y0p4 (y0, y0w1, ~c);
    pmos #(5, 6, 7) y0p5 (y0w2, VDD, ~a);
    pmos #(5, 6, 7) y0p6 (y0w3, y0w2, ~b);
    pmos #(5, 6, 7) y0p7 (y0, y0w3, ~c);

    nmos #(3, 4, 5) y0n1 (y0w4, GND, y1);
    nmos #(3, 4, 5) y0n2 (y0w4, y0w5, ~a);
    nmos #(3, 4, 5) y0n3 (y0w5, y0w6, ~b);
    nmos #(3, 4, 5) y0n4 (y0w6, GND, ~c);
    nmos #(3, 4, 5) y0n5 (y0, y0w4, ~a);
    nmos #(3, 4, 5) y0n6 (y0, y0w4, ~b);
    nmos #(3, 4, 5) y0n7 (y0, y0w4, ~c);


endmodule
