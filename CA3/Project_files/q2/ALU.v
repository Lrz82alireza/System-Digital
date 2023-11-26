`timescale 1ns/1ns
module ALU(input signed [15:0] inA, inB, output reg [15:0] outW, input inC, input [2:0] opc, output reg zer, neg);
    
    wire [15:0] out [7:0];
    assign out[0] = ~inA + 1;
    assign out[1] = inA + 1;
    assign out[2] = inA + inB + inC;
    assign out[3] = inA + (inB >>> 1);
    assign out[4] = inA & inB;
    assign out[5] = inA | inB;
    assign out[6] = {inA[7:0], inB[7:0]};
    
    assign outW = opc == 3'b000 ? out[0]:
    opc == 3'b001 ? out[1]:
    opc == 3'b010 ? out[2]:
    opc == 3'b011 ? out[3]:
    opc == 3'b100 ? out[4]:
    opc == 3'b101 ? out[5]:
    opc == 3'b110 ? out[6]:
    3'b0;

    assign zer = outW == 16'b0 ? 1 : 0;
    assign neg = outW[15];
endmodule