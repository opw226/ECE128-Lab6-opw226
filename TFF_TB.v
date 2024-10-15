`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 03:41:55 PM
// Design Name: 
// Module Name: T_ff_tb
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


module T_ff_tb();
    reg clk;
    wire q1;
    wire q2;
    wire q3;
    
    counter uut1 (.sysclk(clk), .Q1(q1), .Q2(q2), .Q3(q3));
    
    always #10 clk = ~clk;
    
    initial begin
        clk = 0;
        #150 $finish;
   end
endmodule
