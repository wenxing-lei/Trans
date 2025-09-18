`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/03 11:39:31
// Design Name: 
// Module Name: adder_sch2
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


module adder_sch2(
    input   [7:0] a,
    input   [7:0] b,
    input   cin,
    output  [7:0] s,
    output  cout
);
reg [8:0] carry; 
reg [7:0] s_reg;  
integer n;


assign s = s_reg;
assign cout = carry[8];

always @(*) begin
    carry[0] = cin;
    for(n = 0; n < 8; n = n + 1) begin
        carry[n+1] = a[n] & b[n];
        s_reg[n] = (a[n] ^ b[n]) | carry[n];
    end
end

endmodule

