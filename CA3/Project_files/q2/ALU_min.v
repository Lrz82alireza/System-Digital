`timescale 1ns/1ns
module ALU_min(input signed [15:0] inA, inB, output reg [15:0] outW, input inC, input [2:0] opc, output reg zer, neg);
    
    wire [15:0] blabla_MUX, adder_MUX_A, adder_MUX_B, Adder, A_and_B, A_or_B, merged_A_B, NOT_A, Shifted_B; 
    wire adder_MUX_C;

    assign NOT_A = ~inA;
    assign Shifted_B = inB >>> 1;
    assign A_and_B = inA & inB;
    assign A_or_B = inA | inB;
    assign merged_A_B = {inA[7:0], inB[7:0]};

    assign blabla_MUX = (opc[1:0] == 2'b00) ? A_and_B:
    (opc[1:0] == 2'b01) ? A_or_B:
    (opc[1:0] == 2'b10) ? merged_A_B:
    16'b0;

    assign adder_MUX_A = (opc[1:0] == 2'b00) ? NOT_A:
    inA;

    assign adder_MUX_B = (opc[1:0] == 2'b11) ? Shifted_B:
    (opc[1:0] == 2'b10) ? inB:
    16'b0;

    assign adder_MUX_C = (opc[1:0] == 2'b10) ? inC:
    (opc[1:0] == 2'b11) ? 1'b0:
    1'b1;

    assign Adder = adder_MUX_A + adder_MUX_B + adder_MUX_C;

    assign outW = (opc[2] == 1'b0) ? Adder:
    blabla_MUX;

    assign zer = outW == 16'b0 ? 1 : 0;
    assign neg = outW[15];
endmodule