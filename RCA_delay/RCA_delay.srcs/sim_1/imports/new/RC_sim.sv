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

logic [7:0] sA,sB;
logic [8:0] sresult;
logic ssub;

RC_adder UUT(
.Ain(sA), .Bin(sB), .result(sresult),.sub(ssub)
);

initial begin 

sA = 8'b11111111;
sB = 8'b11111111;
ssub = 1'b0;
#10;
sA = 8'b01010111;
sB = 8'b01101101;
ssub = 1'b0;
#10;
sA = 8'b10110101;
sB = 8'b11011010;
ssub = 1'b0;
#10;
sA = 8'b10101010;
sB = 8'b10110101;
ssub = 1'b0;
#10;
sA = 8'b10101010;
sB = 8'b10110101;
ssub = 1'b1;
#10;

end

endmodule
