`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 03:57:29 PM
// Design Name: 
// Module Name: counter_top
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


module counter_top(
    input clk,
    input enable,
    input resetn,
    output [3:0] count
    );

wire [31:0] temp;
assign count[0]=temp[0];
assign count[1]=temp[1];
assign count[2]=temp[2];
assign count[3]=temp[3];

counter V1(
    .clk(clk),
    .enable(enable),
    .resetn(resetn),
    .count(temp)
);




endmodule
