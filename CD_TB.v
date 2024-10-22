`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 04:03:16 PM
// Design Name: 
// Module Name: clk_tb
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


module clk_tb();
    reg clk_in;
    wire clk_out;
    
    Clock_divider uut(.clk_in(clk_in), .clk_out(clk_out));
    initial begin
        clk_in = 0;
        forever #10 clk_in = ~clk_in;
    end
endmodule
