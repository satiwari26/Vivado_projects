`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 08:01:25 PM
// Design Name: 
// Module Name: ColabSIm
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


module ColabSIm();

    logic sA, sB, sC, sD;
    
    Colab_module UUT (
    .E(sA), .F(sB), .I(sC), .J(sD));
    
    initial begin
    sA = 0; sB = 0;
    #10;
    sB = 1;
    #10;
    sB=0; sA=1;
    #10;
    sB=1;
    
    end
    

endmodule
