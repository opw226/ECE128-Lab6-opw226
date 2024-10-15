`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:39:00 PM
// Design Name: 
// Module Name: sr_latch
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


module T_ff(input clk, input t, output reg q);
    initial begin
        q = 0'b0;
    end
    always@(posedge clk)
    begin
        if(t)
            q <= ~q;
        else
            q <= q;
    end
endmodule

module counter(input sysclk, output Q1, output Q2, output Q3);
    wire t1;
    wire t2;
    
    T_ff num_1(.clk(sysclk), .t(1'b1), .q(Q1));
        assign t1 = Q1;
    T_ff num_2(.clk(sysclk), .t(t1), .q(Q2));
        assign t2 = Q2&Q1;
    T_ff num_3(.clk(sysclk), .t(t2), .q(Q3));

endmodule
    
    
        