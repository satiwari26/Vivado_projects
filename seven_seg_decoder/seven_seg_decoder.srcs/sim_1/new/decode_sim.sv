`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2022 08:21:56 PM
// Design Name: 
// Module Name: decode_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decode_sim();
logic[3:0] sinseg;
logic sCA,sCb,sCc,sCd,sCe,sCf,sCg;
logic sA0,sA1,sA2,sA3;
int count;

decoder UUT(
.inseg(sinseg), .Ca(sCA), .Cb(sCb), .Cc(sCc), .Cd(sCd), .Ce(sCe), .Cf(sCf), .Cg(sCg),
.A0(sA0), .A1(sA1), .A2(sA2), .A3(sA3));

    initial begin
        for(count=0;count<16;count++)
            begin
                sinseg = count;
                #10;
            end

    end

endmodule
