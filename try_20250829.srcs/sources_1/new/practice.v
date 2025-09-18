`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/03 14:45:38
// Design Name: 
// Module Name: practice
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
module example(
    input   a,
    input   sel,
    output  out
);
reg out_reg;
always @(a or sel) begin
    if (sel) 
        out_reg=a;
    else begin
        out_reg=0;
    end
    end
    
endmodule
/*
module example(
    input   a,
    input   b,
    input   cin,
    output  cout,
    output  sum
);
assign cout = (a&b)|((a^b)&cin);
assign sum =(a^b)^cin;
    
endmodule
*/