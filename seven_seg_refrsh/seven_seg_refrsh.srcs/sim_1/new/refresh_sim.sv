`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 08:51:02 AM
// Design Name: 
// Module Name: refresh_sim
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


module refresh_sim();
//logic sCa,sCb,sCc,sCd,sCe,sCf,sCg;
             //logic sA0,sA1,sA2,sA3
//.Ca(sCa),.Cb(sCb),.Cc(sCc),.Cd(sCd),.Ce(sCe),.Cf(sCf),.Cg(sCg),.A0(sA0),.A1(sA1),.A2(sA2),.A3(sA3),.clk(sclk)
             logic [6:0] sCth;
             logic [3:0] sAn;
            logic sclk;
            logic [3:0] sdigit1,sdigit2,sdigit3,sdigit4;
seven_seg_refresh UUT(.Cth(sCth),.An(sAn),.clk(sclk),.digit1(sdigit1),.digit2(sdigit2),.digit3(sdigit3),.digit4(sdigit4));
initial begin
sclk=0;
sdigit1=4'b0101;
sdigit2=4'b0010;
sdigit3=4'b0111;
sdigit4=4'b0100;
end

always
#5 sclk=~sclk;
endmodule
