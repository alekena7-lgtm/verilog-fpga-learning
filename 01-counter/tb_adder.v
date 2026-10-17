`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2026 01:10:46 PM
// Design Name: 
// Module Name: tb_adder
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


module tb_adder;

reg [31:0]a;
reg [31:0]b;
wire [31:0]c;

    
    adder Dut1(
        .a(a),
        .b(b),
        .c(c)
    );
    
    initial begin
        a=0;
        b=0;
        #10;
        a=7;
        b=5;
        #10;
        a=100;
        b=200;
        #10;
        a = 32'hFFFFFFFF;
        b = 1;
        #10;
        $finish;
    
    end
endmodule
