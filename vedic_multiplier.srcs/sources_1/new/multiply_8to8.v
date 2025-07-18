`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2025 22:29:15
// Design Name: 
// Module Name: multiply_8to8
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


module multiply_8to8(
    input [7:0] a,
    input [7:0] b,
    output [15:0] c
    );
    wire [7:0]p0;
    wire [7:0]p1;
    wire [7:0]p2;
    wire [7:0]p3;
    wire [7:0]s1;
    wire [11:0]s2;
    wire [11:0]s3;
    wire [11:0]s4;
    wire [7:0]q1;
    wire [11:0]q2;
    wire [11:0]q3;
    
    multiply_4to4 z0(a[3:0],b[3:0],p0[7:0]);
    multiply_4to4 z1(a[7:4],b[3:0],p1[7:0]);
    multiply_4to4 z2(a[3:0],b[7:4],p2[7:0]);
    multiply_4to4 z3(a[7:4],b[7:4],p3[7:0]);
    
    assign s1[7:0] = {4'b0,p0[7:4]};
    adder_8bit z4(s1,p1,q1);
    
    assign s2[11:0] = {4'b0,p2[7:0]};
    assign s3[11:0] = {p3[7:0],4'b0};
    
    adder_12bit z5(s2,s3,q2);
    
    assign s4[11:0] = {4'b0,q1[7:0]};
    
    adder_12bit z6(s4,q2,q3);
  
    
    assign c = {q3, p0[3:0]};
endmodule
