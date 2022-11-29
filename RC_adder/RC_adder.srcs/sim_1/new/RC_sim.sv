`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2022 10:57:51 AM
// Design Name: 
// Module Name: RC_sim
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


module RC_sim();

logic [3:0] sA,sB;
logic [4:0] sresult;
logic ssub;

RC_adder UUT(
.Ain(sA), .Bin(sB), .result(sresult),.sub(ssub)
);

initial begin 

sA = 4'b1111;
sB = 4'b1111;
ssub = 1'b0;
#10;
sA = 4'b1111;
sB = 4'b1111;
ssub = 1'b1;
#10;
sA = 4'b1011;
sB = 4'b0101;
ssub = 1'b0;
#10;
sA = 4'b1100;
sB = 4'b1011;
ssub = 1'b0;
#10;
sA = 4'b0011;
sB = 4'b1111;
ssub = 1'b0;
#10;
sA = 4'b1010;
sB = 4'b1101;
ssub = 1'b1;
#10;
sA = 4'b1000;
sB = 4'b0111;
ssub = 1'b0;
#10;
sA = 4'b0011;
sB = 4'b1111;
ssub = 1'b0;
#10;
sA = 4'b1011;
sB = 4'b1010;
ssub = 1'b0;
#10;
sA = 4'b0011;
sB = 4'b1111;
ssub = 1'b1;
#10;
sA = 4'b0011;
sB = 4'b1111;
ssub = 1'b0;
#10;
sA = 4'b0111;
sB = 4'b1011;
ssub = 1'b1;
#10;
sA = 4'b0110;
sB = 4'b0110;
ssub = 1'b0;

end

endmodule
