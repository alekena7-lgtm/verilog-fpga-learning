`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 05:06:10 PM
// Design Name: 
// Module Name: tb_counter
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


module tb_counter;

reg clk;
reg enable;
reg resetn;
wire [31:0]count;

always #10 clk=~clk;

counter V2(
    .clk(clk),
    .enable(enable),
    .resetn(resetn),
    .count(count)
);

initial begin
   clk=0;
   resetn=0;
   enable=0;
   #100;
  
   resetn=1;
   enable=1;
   #100;
   resetn=0;
   enable=1;
   #100;
   resetn=1;
   enable=0;
   #100;
   $finish;
end



endmodule
