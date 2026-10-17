`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2026 09:35:01 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    wire h1sum, h1Cout, h2Cout;
    
    half_adder HA1(
        .a(a),
        .b(b),
        .s(h1sum),
        .c(h1Cout)
    );
    
    half_adder HA2 (
        .a(cin),
        .b(h1sum),
        .s(s),
        .c(h2Cout)
    );
    
    assign cout=h1Cout|h2Cout;

endmodule
