`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2026 11:02:41 AM
// Design Name: 
// Module Name: adder
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


module adder(
    input [31:0] a,
    input [31:0] b,
    output [31:0] c
    );
    wire [32:0] carry;
    assign carry[0]=1'b0;
    genvar i;
    
    generate
        for(i=0; i<32; i=i+1)
            begin: adder_stage
                full_adder FA(
                    .a(a[i]),
                    .b(b[i]),
                    .cin(carry[i]),
                    .s(c[i]),
                    .cout(carry[i+1])
                );
            end
     endgenerate 
endmodule
