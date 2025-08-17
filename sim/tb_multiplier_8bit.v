`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2025 23:29:43
// Design Name: 
// Module Name: tb_multiplier_8bit
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


module tb_multiplier_8bit;
reg [7:0]a,b;
wire [15:0]c;

multiply_8to8 dut(.a(a), .b(b), .c(c));

initial
begin
$monitor($time," a = %b, b=%b, c= %b\n", a,b,c);
a = 8'd0;
b = 8'd0;
#100;

a = 8'd10;
b = 8'd20;
#100;

a = 8'd17;
b = 8'd11;
#100;

a = 8'd255;
b = 8'd255;
#100;
end

endmodule
