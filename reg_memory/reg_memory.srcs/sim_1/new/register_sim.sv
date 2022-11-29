`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2022 07:52:48 PM
// Design Name: 
// Module Name: register_sim
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


module register_sim();
logic[7:0] sval;
logic[7:0] soutval;
logic sclck,ssrst,sarst;

reg_memory UUT(
    .val(sval),.outVal(soutval),.clck(sclck),.srst(ssrst),.arst(sarst));
    
    initial begin
    sval=8'b11111111;
    sclck = 0;
    ssrst = 0;
    sarst =0;
    #10;
    sclck = 1;
    ssrst = 0;
    sarst =0;
    #10;
    sclck = 0;
    ssrst = 1;
    sarst =0;
    #10;
    sval=8'b10110110;
    sarst =1;
    sclck = 1;
    ssrst = 0;
    #10;
    sval=8'b00101011;
    sarst =0;
    sclck=0;
    ssrst = 0;
    #10;
    sclck = 1;
    #10;
    sclck =0;
    #10;
    sval=8'b01101101;
    sarst =1;
    sclck=0;
    ssrst = 1;
    #10;
    sarst =1;
    sclck=1;
    ssrst = 1;
    #10;
    sval=8'b11110101;
    sarst =0;
    sclck=1;
    ssrst = 0;
    #10;
    sclck=0;
    #10;
    sclck=1;
    end

endmodule
