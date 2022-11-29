`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 10/17/2022 08:41:12 AM
// Module Name: Multi
// Project Name: Multiplier
// Target Devices: Basys3
// Description: The given circuit performs multiplication on the given input
//////////////////////////////////////////////////////////////////////////////////


module Multi(
    input [3:0] A,
    input [3:0] B,
    output [7:0] result,
    output [3:0] s1,s2,s3,
    output carry1,carry2,carry3,err1,err2,err3
    );
    
    logic p00, p10,p20,p30;
    logic p01,p11,p21,p31;
    logic p02,p12,p22,p32;
    logic p03,p13,p23,p33;
    //product with all the A terms & B0
    assign p00 = (A[0]&B[0]);
    assign p10 = (A[1]&B[0]);
    assign p20 = (A[2]&B[0]);
    assign p30 = (A[3]&B[0]);
    //product of all the A terms with B1
    assign p01 = (A[0]&B[1]);
    assign p11 = (A[1]&B[1]);
    assign p21 = (A[2]&B[1]);
    assign p31 = (A[3]&B[1]);
    //product  of all the A terms with B2
    assign p02 = (A[0]&B[2]);
    assign p12 = (A[1]&B[2]);
    assign p22 = (A[2]&B[2]);
    assign p32 = (A[3]&B[2]);
    //product f all the A terms with B3
    assign p03 = (A[0]&B[3]);
    assign p13 = (A[1]&B[3]);
    assign p23 = (A[2]&B[3]);
    assign p33 = (A[3]&B[3]);
    //assign the first product value
    assign result[0] = p00;
    //using full adder to add the product module sum
    main_adder add1(.Ain({1'b0,p30,p20,p10}), 
    .Bin({p31,p21,p11,p01}), .sub(1'b0), 
    .result(s1), .l1(carry1), .error(err1));
    //assign second product value
    assign result[1] = s1[0];
    //second adder of products
    main_adder add2(.Ain({carry1,s1[3],s1[2],s1[1]}), 
    .Bin({p32,p22,p12,p02}), .sub(1'b0), 
    .result(s2), .l1(carry2), .error(err2));
    //assign third value of module product
    assign result[2] = s2[0];
    //3rd adder of products
    main_adder add3(.Ain({carry2,s2[3],s2[2],s2[1]}), 
    .Bin({p33,p23,p13,p03}), .sub(1'b0), 
    .result(s3), .l1(carry3), .error(err3));
    //assign remaining result value
    assign result[3] = s3[0];
    assign result[4] = s3[1];
    assign result[5] = s3[2];
    assign result[6] = s3[3];
    assign result[7] = carry3;
    
endmodule
