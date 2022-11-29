`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2022 03:57:12 PM
// Design Name: 
// Module Name: adder_sim
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


module adder_sim();

logic[3:0] sA, sB, sresult;
logic ssub, serror;
main_adder UUT (
.Ain(sA), .Bin(sB), .result(sresult), .sub(ssub),
.error(serror)
);

initial begin 

sA = 4'b0000;
sB = 4'b0001;
ssub = 0;
#10;
sA = 4'b0000;
sB = 4'b0001;
ssub = 1;
#10;
sA = 4'b1111;
sB = 4'b1111;
ssub = 0;
#10;
sA = 4'b1111;
sB = 4'b1111;
ssub = 1;
#10;
sA = 4'b0101;
sB = 4'b0011;
ssub = 0;
#10;
sA = 4'b1001;
sB = 4'b1101;
ssub = 0;
#10;
sA = 4'b1001;
sB = 4'b1101;
ssub = 1;
#10;
sA = 4'b1001;
sB = 4'b1001;
ssub = 0;
#10;
sA = 4'b1110;
sB = 4'b1110;
ssub = 0;
#10;
sA = 4'b0110;
sB = 4'b1011;
ssub = 0;
#10;
sA = 4'b1110;
sB = 4'b0110;
ssub = 1;
#10;
sA = 4'b0110;
sB = 4'b1010;
ssub = 0;

end

endmodule
