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


module sr_latch(input S, input R, output Q, output Qbar);
    nor #1 N1(Q, R, Qbar);
    nor #1 N2(Qbar, S, Q);
endmodule

module srff(output q, output qbar, input s, input r, input clk);
    wire x, y;
    and #1 AND1(x, r, clk);
    and #1 AND2(y, s, clk);
    nor #1 N1(q, x, qbar);
    nor #1 N2(qbar, y, q);
endmodule
