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


module Clock_divider(clk_in, clk_out);
    input wire clk_in;   // Input clock signal
    output reg clk_out=1'b0;  // Output clock signal (divided)
    
    
    parameter DIVISOR = 4;  // Adjust this based on your desired clock frequency
    reg [6:0] counter = 7'd0;     // 32-bit counter

    always @(posedge clk_in) begin
        if (counter == (DIVISOR - 1)) begin
            counter <= 7'd0;      // Reset the counter
            clk_out <= ~clk_out;   // Toggle the output clock
        end
        else begin
            counter <= counter + 1;  // Increment the counter
        end
    end
endmodule
    
    

