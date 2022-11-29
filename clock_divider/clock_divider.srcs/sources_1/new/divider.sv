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

module divider(
input logic clk,
output logic clk_25,clk_833,clk_4,
input logic ARST
 //output logic [2:0] count1
    );
    //clk 25 = 40 ns
    // clk 8.33 = 120ns
    //clk 4 = 250ns
    // clk runs at 100Mhz = 10ns
    //run at 50% duty cycle
    
    //count will change the state of clocks
    reg [2:0] count1;
    always_ff @(posedge clk)
    begin
    //initializing clk_25, count1
    if(ARST==1)
    begin
    count1<=1;
    end
    //else if(count1==6)
    //begin
    //count1<=1;
    //end
    else
    begin
    count1<= count1+1;
    end    
    end
    
    always_ff @(posedge clk)
    begin
    if(ARST==1)
    begin
    clk_25<=0;
    end
    else
    begin
    clk_25<=count1[1];
    //clk_25<=(~count1[0]&count1[1]) | (count1[0] & count1[1]);
    end
    end
    //8.33Hz clock
    logic [2:0]count2;
    always_ff @(posedge clk)
    begin
    //initializing clk_833, count2
    if(ARST==1)
    begin
    count2<=1;
    end
    else if(count2==6)
    begin
    count2<=1;
    end
    else
    begin
    count2<= count2+1;
    end    
    end
    
    always_ff @(posedge clk)
    begin
    if(ARST==1)
    begin
    clk_833<=0;
    end
    else if(count2==6)
    begin
    clk_833<=~clk_833;
    end
    end
    
    logic [5:0] count3;
    always_ff @(posedge clk)
    begin
    //initializing clk_4, count3
    if(ARST==1)
    begin
    count3<=1;
    end
    else if(count3==25)
    begin
    count3<=1;
    end
    else
    begin
    count3<= count3+1;
    end    
    end
    
    always_ff @(posedge clk)
    begin
    if(ARST==1)
    begin
    clk_4<=0;
    end
    else if(count3==12  || count3==25)
    begin
    clk_4<=~clk_4;
    end
    end
    
    
endmodule
