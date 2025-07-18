`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2025 14:57:42
// Design Name: 
// Module Name: multiply_4to4
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


module multiply_4to4(
    input [3:0] a,
    input [3:0] b,
    output [7:0] c
    );
    wire [3:0]p0;
    wire [3:0]p1;
    wire [3:0]p2;
    wire [3:0]p3;
    wire [3:0]t1;
    wire [5:0]t2;
    wire [5:0]t3;
    wire [5:0]t4;
    wire [3:0]t5;
    wire [5:0]t6;
    wire [5:0]t7;
  
    multiply_2to2 x0(a[1:0],b[1:0],p0[3:0]);
    multiply_2to2 x1(a[3:2],b[1:0],p1[3:0]);
    multiply_2to2 x2(a[1:0],b[3:2],p2[3:0]);
    multiply_2to2 x3(a[3:2],b[3:2],p3[3:0]);
    assign t1[3:0] = {2'b00,p0[3:2]};
    
    adder_4bit y0(p1[3:0],t1[3:0],t5[3:0]);
    
    assign t2[5:0] = {2'b00,p2[3:0]};
    assign t3[5:0] = {p3[3:0],2'b00};
    
    adder_6bit y1(t2,t3,t6);
    
    assign t4[5:0] = {2'b00,t5[3:0]};
    
    adder_6bit y2(t4,t6,t7);
    
    assign c[1:0] = p0[1:0];
    assign c[7:2] = t7[5:0];
    
    
endmodule
