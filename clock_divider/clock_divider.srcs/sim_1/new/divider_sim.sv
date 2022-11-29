`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 11/15/2022 08:41:12 AM
// Module Name: divider_sim
// Project Name: clocks and counter
// Target Devices: Basys3
// Description: The given circuit was built to divide the clocks into different
//frequencies using counter.
//////////////////////////////////////////////////////////////////////////////////


module divider_sim();

logic sclk_25,sclk_833,sclk_4,sclk;
logic sARST;
divider UUT(.clk_25(sclk_25),.clk_833(sclk_833),.clk_4(sclk_4),.clk(sclk),.ARST(sARST));
initial begin
sARST=1;
sclk=0;
#10;
sARST=0;
//sclk=0;
end

always
#5 sclk=~sclk;
endmodule
