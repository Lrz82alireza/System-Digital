`timescale 1ns/1ns
module tb();
    
    reg [15:0] aa, bb;
    reg [2:0] opc;
    reg cc;
    

    wire [15:0] ww, ww_y;
    wire zer, neg, zer_y, neg_y;

    // ALU alu(.inA(aa), .inB(bb), .inC(cc), .outW(ww), .opc(opc), .zer(zer), .neg(neg));
    ALU_synth alu_y(.inA(aa), .inB(bb), .inC(cc), .outW(ww_y), .opc(opc), .zer(zer_y), .neg(neg_y));


    initial opc = 3'b0;
    initial {aa, bb, cc} = $random;
    initial repeat (10) #1000 {aa, bb, cc} = $random;
    initial repeat (10) #1000 opc = opc + 3'b001;




endmodule