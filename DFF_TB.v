`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 02:44:01 PM
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();
    reg clk;
    reg d;
    reg rstn;
    wire q;
    
    dff dff0(.d(d), .rstn(rstn), .clk(clk), .q(q));
    
    always #10 clk = ~clk;
    
    initial begin
        clk = 0;
        d = 0;
        rstn = 1;
        @(negedge clk);
        @(negedge clk);
        
        d=1;
        rstn = 1;
        @(negedge clk);
        @(negedge clk);
        
        d = 1;
        rstn = 0;
        @(negedge clk);
        @(negedge clk);
        
        d = 0;
        rstn = 0;
        @(negedge clk);
        @(negedge clk);
        
        #10 $finish;
    end
    
endmodule
