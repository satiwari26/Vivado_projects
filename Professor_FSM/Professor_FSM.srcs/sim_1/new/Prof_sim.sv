`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2022 09:30:05 PM
// Design Name: 
// Module Name: Prof_sim
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


module Prof_sim();
 logic coffee,exam,clk;
     logic grades, Hwork;
      logic [6:0]Cth;
    logic [3:0]An;
     prof_FSM UUT(.coffee(coffee),.exam(exam),.clk(clk),.grades(grades),.Hwork(Hwork),.An(An),.Cth(Cth));
     
     initial begin
     clk=0;
     
     coffee=0;
     exam=0;
     #10
     exam=1;
     coffee=1;
     #20
     exam=1;
     coffee=0;
     #20
     coffee=1;
     exam=0;
     #20
     coffee=0;
     exam=0;
     #10
     coffee=1;
     exam=1;
     #10;
     coffee=1;
     exam=0;
     #10;
     exam=1;
     coffee=0;
     #30
     coffee=0;
     exam=0;
     #10;
     coffee=1;
     exam=0;
     #20;
     coffee=0;
     exam=0;
     end
     
    always #5 clk = ~clk;

endmodule
