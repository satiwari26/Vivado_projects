`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2022 05:32:03 PM
// Design Name: 
// Module Name: pEncode_sim
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


module pEncode_sim();
    logic sI0,sI1,sI2,sI3;
    logic sI4,sI5,sI6,sI7,sEin;
    logic sEout,sGS;
    logic[2:0] sBout;
    
    pEncoder UUT(
    .I0(sI0), .I1(sI1),.I2(sI2),.I3(sI3),.I4(sI4),
    .I5(sI5),.I6(sI6),.I7(sI7),.Ein(sEin),.Eout(sEout),.GS(sGS),
    .Bout(sBout)
    );
    
    initial begin
    sI1=1'b0; sI2=1'b0; sI3=1'b0;
    sI4=1'b0; sI5=1'b0; sI6=1'b0;
    sI7=1'b0; sI0=1'b0;
    #10;
    sEin = 1'b0;
    #10;
    sEin =1'b1;
    sI3=1'b1;
    sI2=1'b1;
    #10;
    sI7=1'b1;
    #10;
    sI1=1'b1; sI2=1'b1; sI3=1'b1;
    sI4=1'b1; sI5=1'b1; sI6=1'b1;
    sI7=1'b1; sI0=1;
    #10;
    sI1=1'b0; sI2=1'b0; sI3=1'b0;
    sI4=1'b0; sI5=1'b0; sI6=1'b0;
    sI7=1'b0;
    #10;
    sI1=1'b0; sI2=1'b0; sI3=1'b0;
    sI4=1'b0; sI5=1'b0; sI6=1'b0;
    sI7=1'b0; sI0=0;
    #10;
    sI1=1'b1; sI2=1'b0; sI3=1'b1;
    sI4=1'b1; sI5=1'b1; sI6=1'b0;
    sI7=1'b0; sI0=0;
    #10;
    sI1=1'b1; sI2=1'b0; sI3=1'b0;
    sI4=1'b0; sI5=1'b0; sI6=1'b0;
    sI7=1'b0; sI0=1;
    #10;
    sI1=1'b1; sI2=1'b0; sI3=1'b0;
    sI4=1'b1; sI5=1'b0; sI6=1'b0;
    sI7=1'b1; sI0=0;
    sEin=0;
    #10;
    sI1=1'b0; sI2=1'b1; sI3=1'b0;
    sI4=1'b0; sI5=1'b0; sI6=1'b0;
    sI7=1'b0; sI0=1;
    sEin=1;
    
    end
    

endmodule
