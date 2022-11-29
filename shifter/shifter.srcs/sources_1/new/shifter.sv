`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2022 10:11:42 AM
// Design Name: 
// Module Name: shifter
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


module shifter(input logic [3:0] inVal,
        input logic [4:0] control,
        output logic [3:0] outVal
    );
    //always_comb begin
    always_comb
    begin
        
        if(control[4]==1)
        //shift right
            begin
                if(control[3]==1)
                //rotate
                    begin
                        if(control[0]==1&&control[1]==1)
                        //move 3 bits
                        begin
                            outVal[0]=inVal[3];
                            outVal[1] = inVal[0];
                            outVal[2] = inVal[1];
                            outVal[3] = inVal[2];
                        end
                        else if(control[0]==0 && control[1]==1)
                        //shift 2 bits
                            begin
                            outVal[0]=inVal[2];
                            outVal[1] = inVal[3];
                            outVal[2] = inVal[0];
                            outVal[3] = inVal[1];
                            end
                        else if(control[0]==1 && control[1]==0)
                        //shift 1 bits
                            begin
                            outVal[0]=inVal[1];
                            outVal[1] = inVal[2];
                            outVal[2] = inVal[3];
                            outVal[3] = inVal[0];
                            end
                        else
                        //no shift
                            begin
                                outVal = inVal;
                            end
                    end
                else
                //not rotate
                    begin
                        if(control[0]==1&&control[1]==1)
                        //move 3 bits
                        begin
                            outVal[0]=inVal[3];
                            outVal[1] = control[2];
                            outVal[2] = control[2];
                            outVal[3] = control[2];
                        end
                        else if(control[0]==0 && control[1]==1)
                        //shift 2 bits
                            begin
                            outVal[0]=inVal[2];
                            outVal[1] = inVal[3];
                            outVal[2] = control[2];
                            outVal[3] = control[2];
                            end
                        else if(control[0]==1 && control[1]==0)
                        //shift 1 bits
                            begin
                            outVal[0]=inVal[1];
                            outVal[1] = inVal[2];
                            outVal[2] = inVal[3];
                            outVal[3] = control[2];
                            end
                        else
                        //no shift
                            begin
                                outVal = inVal;
                            end
                    end
            end
        else if(control[4]==0)
        //shift left
            begin
                if(control[3]==1)
                //rotate
                    begin
                        if(control[0]==1&&control[1]==1)
                        //move 3 bits
                        begin
                            outVal[0]=inVal[1];
                            outVal[1] = inVal[2];
                            outVal[2] = inVal[3];
                            outVal[3] = inVal[0];
                        end
                        else if(control[0]==0 && control[1]==1)
                        //shift 2 bits
                            begin
                            outVal[0]=inVal[2];
                            outVal[1] = inVal[3];
                            outVal[2] = inVal[0];
                            outVal[3] = inVal[1];
                            end
                        else if(control[0]==1 && control[1]==0)
                        //shift 1 bits
                            begin
                            outVal[0]=inVal[3];
                            outVal[1] = inVal[0];
                            outVal[2] = inVal[1];
                            outVal[3] = inVal[2];
                            end
                        else
                        //no shift
                            begin
                                outVal = inVal;
                            end
                    end
                else
                //not rotate
                    begin
                        if(control[0]==1&&control[1]==1)
                        //move 3 bits
                        begin
                            outVal[0]=control[2];
                            outVal[1] = control[2];
                            outVal[2] = control[2];
                            outVal[3] = inVal[0];
                        end
                        else if(control[0]==0 && control[1]==1)
                        //shift 2 bits
                            begin
                            outVal[0]=control[2];
                            outVal[1] = control[2];
                            outVal[2] = inVal[0];
                            outVal[3] = inVal[1];
                            end
                        else if(control[0]==1 && control[1]==0)
                        //shift 1 bits
                            begin
                            outVal[0]=control[2];
                            outVal[1] = inVal[0];
                            outVal[2] = inVal[1];
                            outVal[3] = inVal[2];
                            end
                        else
                        //no shift
                            begin
                                outVal = inVal;
                            end
                    end
            end
        else
        //default value if either doesn't work
            begin
                outVal = 4'b0000;
            end
    end
    
endmodule
