`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2022 07:54:11 PM
// Design Name: 
// Module Name: RC_add_sim
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


module RC_add_sim();

    logic [3:0]sA,sB;
    logic [4:0]sresult;
    logic ssub;
    
    RC_add UUT(.A(sA), .B(sB), .result(sresult), .sub(ssub));

    initial begin
            sA = 4'b0111;
            sB = 4'b0111;
            ssub = 0;
            #10;
            sA = 4'b1111;
            sB = 4'b0111;
            ssub = 0;
            #10;
            sA = 4'b0101;
            sB = 4'b0111;
            ssub = 0;
            #10;
            sA = 4'b0111;
            sB = 4'b1111;
            ssub = 0;
            #10;
            sA = 4'b0111;
            sB = 4'b1001;
            ssub = 0;
            #10;
            sA = 4'b0111;
            sB = 4'b1001;
            ssub = 1;
            
    end
endmodule
