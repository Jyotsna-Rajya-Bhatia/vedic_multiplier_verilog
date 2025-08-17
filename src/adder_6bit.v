`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2025 12:10:22
// Design Name: 
// Module Name: adder_6bit
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


module adder_6bit(
    input [5:0] in1,
    input [5:0] in2,
    output [5:0] sum
    );
    assign sum=in1+in2;
endmodule
