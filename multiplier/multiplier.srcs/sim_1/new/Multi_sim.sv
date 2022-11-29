`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2022 12:16:33 AM
// Design Name: 
// Module Name: Multi_sim
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


module Multi_sim();

logic [3:0] sA, sB, ss1, ss2, ss3;
logic [7:0] sresult;
logic  scarry1,scarry2,scarry3,serr1,serr2,serr3;

Multi UUT(
.A(sA), .B(sB), .s1(ss1), .s2(ss2), .s3(ss3),
.result(sresult), .carry1(scarry1), .carry2(scarry2), .carry3(scarry3),
.err1(serr1), .err2(serr2), .err3(serr3)
);

initial begin 

sA = 0001;
sB = 0001;
#10;
sA = 1000;
sB = 0101;
#10;
sA = 1110;
sB = 1110;
#10;
sA = 0101;
sB = 0111;
#10;
sA = 0000;
sB = 0111;
#10;
sA = 0110;
sB = 1011;



end
endmodule
