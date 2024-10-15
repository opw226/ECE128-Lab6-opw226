`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:41:40 PM
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb();
    reg r, s;
    wire q, qbar;
    
    sr_latch(.S(s), .R(r), .Q(q), .Qbar(qbar));
    
    initial
        begin
            r=0; s=0;
            #5 s=1;
            #5 s=0;
            #5 r=1;
            #5 r=0; s=1;
            #5 s=0; r=1;
            #5 r=0;
            #5 r=1; s=1;
        end
   initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
   end
endmodule
