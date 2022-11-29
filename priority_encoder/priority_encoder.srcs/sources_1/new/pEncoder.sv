`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2022 04:11:52 PM
// Design Name: 
// Module Name: pEncoder
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


module pEncoder( 
    input logic I0,I1,I2,I3,I4,I5,I6,I7,Ein,
    output logic Eout,GS,
    output logic[2:0] Bout
    );
    
    always_comb
        begin
           //check if enable in is on
                if(Ein ==1)
                  begin
                    //checking from high precedence to low precedence input
                    if(I7==1)
                        begin
                            Bout = 3'b111;
                           //default values of enable out and Group sig 
                            Eout = 0;
                            GS = 1;
                        end
                    else if(I6==1)
                        begin
                            Bout = 3'b110;
                            //default values of enable out and Group sig 
                            Eout = 0;
                            GS = 1;
                        end
                    else if(I5==1)
                        begin
                            Bout = 3'b101;
                            //default values of enable out and Group sig 
                            Eout = 0;
                            GS = 1;
                        end
                    else if(I4==1)
                        begin
                            Bout = 3'b100;
                            //default values of enable out and Group sig 
                            Eout = 0;
                            GS = 1;
                        end
                    else if(I3==1)
                        begin
                            Bout = 3'b011;
                            //default values of enable out and Group sig 
                            Eout = 0;
                            GS = 1;
                        end
                    else if(I2==1)
                        begin
                            Bout = 3'b010;
                            //default values of enable out and Group sig 
                            Eout = 0;
                            GS = 1;
                        end
                    else if(I1==1)
                        begin
                            Bout = 3'b001;
                            //default values of enable out and Group sig 
                            Eout = 0;
                            GS = 1;
                        end
                    else if(I0==1)
                        begin
                            Bout = 3'b000;
                            //default values of enable out and Group sig 
                            Eout = 0;
                            GS = 1;
                        end
              //if all the input value are 0, Eout and GS are swiched
                    else
                        begin
                            Eout = 1;
                            GS=0;
                            Bout = 0;
                        end
                 end
              //enable in is 0
                else if(Ein ==0)
                    begin
                    Bout = 3'b000;
                    Eout = 0;
                    GS=0;
                    end
              //default condition
                else
                    begin
                    Bout=0;
                    GS=0;
                    Eout=0;
                    end
                
        end
endmodule
