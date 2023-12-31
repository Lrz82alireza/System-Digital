`timescale 1ns/1ns
module tb();
    
    reg [15:0] aa, bb;
    reg [2:0] opc;
    reg cc;
    

    wire [15:0] ww, ww_y, ww_x;
    wire zer, neg, zer_y, neg_y, zer_x, neg_x;

    // ALU alu(.inA(aa), .inB(bb), .inC(cc), .outW(ww), .opc(opc), .zer(zer), .neg(neg));
    // ALU_min ALU_min(.inA(aa), .inB(bb), .inC(cc), .outW(ww), .opc(opc), .zer(zer), .neg(neg));
    ALU_min_synth alu_x(.inA(aa), .inB(bb), .inC(cc), .outW(ww_x), .opc(opc), .zer(zer_x), .neg(neg_x));
    // ALU_synth alu_y(.inA(aa), .inB(bb), .inC(cc), .outW(ww_y), .opc(opc), .zer(zer_y), .neg(neg_y));
    

    initial opc = 3'b0;
    initial {aa, bb, cc} = $random;
    initial repeat (10) #1000 {aa, bb, cc} = $random;
    initial repeat (10) #1000 opc = opc + 3'b001;

endmodule