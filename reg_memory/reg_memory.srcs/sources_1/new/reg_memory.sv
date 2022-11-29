`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 10/17/2022 08:41:12 AM
// Module Name: reg_memory
// Project Name: Basic Memory
// Target Devices: Basys3
// Description: The given circuit stores the data in the register memory and 
// performs reset operation synchronous and asynchronously.
//////////////////////////////////////////////////////////////////////////////////



module reg_memory(
    input logic [7:0] val,
    input logic clck,srst,arst,
    output logic [7:0] outVal
);
    //passing through the first flop
    single_bit_fliFlop flop1(.D(val[0]),
    .clk(clck),.SRST(srst),
    .ARST(arst),.Q(outVal[0]));
    //passing through the 2 flop
    single_bit_fliFlop flop2(.D(val[1]),
    .clk(clck),.SRST(srst),
    .ARST(arst),.Q(outVal[1]));
    //passing through the 3 flop
    single_bit_fliFlop flop3(.D(val[2]),
    .clk(clck),.SRST(srst),
    .ARST(arst),.Q(outVal[2]));
    //passing through the 4 flop
    single_bit_fliFlop flop4(.D(val[3]),
    .clk(clck),.SRST(srst),
    .ARST(arst),.Q(outVal[3]));
    //passing through the 5 flop
    single_bit_fliFlop flop5(.D(val[4]),
    .clk(clck),.SRST(srst),
    .ARST(arst),.Q(outVal[4]));
    //passing through the 6 flop
    single_bit_fliFlop flop6(.D(val[5]),
    .clk(clck),.SRST(srst),
    .ARST(arst),.Q(outVal[5]));
    //passing through the 7 flop
    single_bit_fliFlop flop7(.D(val[6]),
    .clk(clck),.SRST(srst),
    .ARST(arst),.Q(outVal[6]));
    //passing through the 8 flop
    single_bit_fliFlop flop8(.D(val[7]),
    .clk(clck),.SRST(srst),
    .ARST(arst),.Q(outVal[7]));

endmodule
