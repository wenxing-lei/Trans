`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/03 11:25:30
// Design Name: 
// Module Name: adder_sch1
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
/*
module adder_sch1_1bit(
    input   a,
    input   b,
    output  cout,
    output  sum
);
    assign  cout=a&b;
    assign  sum = a|b;
    
endmodule
*/
///////////////////////////////////////////////////////////////////////////////////////
//8bit_adder_approximate
module adder_sch1(    
    input  [7:0] a,   
    input  [7:0] b,   
    output [7:0] s,   
    output cout       
    );
    assign s = a | b;
    assign cout=a[7] & b[7];
endmodule
