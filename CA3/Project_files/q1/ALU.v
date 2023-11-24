`timescale 1ns/1ns
module ALU(input signed [15:0] inA, inB, output signed [15:0] outW, input inC, input [2:0] opc, output zer, neg);
    always @ (inA, inB, opc) begin
        outW = 16'b0;
        zer = 1'b0;
        neg = 1'b0;

        case (opc)
            3'b000: outW = ~inA + 1;
            3'b001: outW = inA + 1;
            3'b010: outW = inA + inB + inC;
            3'b011: outW = inA + inB >>> 1;
            3'b100: outW = inA & inB;
            3'b101: outW = inA | inB;
            3'b110: outW = {inA[15:0], inB[15:0]};
            default: outW = 16'b0;
        endcase

        zer = outW == 16'b0 ? 1'b1: 1'b0;
        neg = outW[15] == 1'b1 ? 1'b1: 1'b0;
    end
endmodule