`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2025 12:17:39
// Design Name: 
// Module Name: multiply_2to2
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


module multiply_2to2(
    input [1:0] a,
    input [1:0] b,
    output [3:0] c
    );
    wire c_and1;
    wire c_and2;
    wire c_and3;
    wire carry_in;
    assign c[0]= a[0]&b[0];
    assign c_and1 = a[1]&b[0];
    assign c_and2 = a[0]&b[1];
    assign c_and3 = a[1]&b[1];
    half_adder a0(c_and1,c_and2,c[1],carry_in);
    half_adder a1(carry_in,c_and3,c[2],c[3]);
    
endmodule
