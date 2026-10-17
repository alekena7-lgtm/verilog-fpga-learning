`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2026 03:02:30 PM
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,
    input enable,
    input resetn,
    output [31:0]count
    );
    
    reg [31:0]countgreen;
    wire [31:0]b;
    assign b=1;
    wire [31:0]c;
    assign count=countgreen;
    
    adder AD1(
        .a(countgreen),
        .b(b),
        .c(c)
    );
    
    always @(posedge clk)begin
        if (resetn)begin
                if(enable)begin
                    countgreen<=c;
                end
        end
        else begin
            countgreen<=0;
        end
      
    end

    
endmodule
