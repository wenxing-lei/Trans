`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/02 15:12:52
// Design Name: 
// Module Name: full_adder_8bit
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
module full_adder_1bit(
	input a,     
	input b,		
	input cin,		
	output sum,		
	output cout	
);
	assign sum = (a^b)^cin;
	assign cout = (a&b)|((a^b)&cin);
endmodule

module full_adder_8bit(
    input  [7:0] a,   
    input  [7:0] b,   
    input  cin,      
    output [7:0] s, 
    output cout     
);
wire [6:0] carry;  

full_adder_1bit m0(
    .a(a[0]),    .b(b[0]),    .cin(cin),    .sum(s[0]),    .cout(carry[0])
);

full_adder_1bit m1(
    .a(a[1]),    .b(b[1]),    .cin(carry[0]),    .sum(s[1]),    .cout(carry[1])
);

full_adder_1bit m2(
    .a(a[2]),    .b(b[2]),    .cin(carry[1]),    .sum(s[2]),    .cout(carry[2])
);

full_adder_1bit m3(
    .a(a[3]),    .b(b[3]),    .cin(carry[2]),    .sum(s[3]),    .cout(carry[3])
);

full_adder_1bit m4(
    .a(a[4]),    .b(b[4]),    .cin(carry[3]),    .sum(s[4]),    .cout(carry[4])
);

full_adder_1bit m5(
    .a(a[5]),    .b(b[5]),    .cin(carry[4]),    .sum(s[5]),    .cout(carry[5])
);

full_adder_1bit m6(
    .a(a[6]),    .b(b[6]),    .cin(carry[5]),    .sum(s[6]),    .cout(carry[6])
);
full_adder_1bit m7(
    .a(a[7]),    .b(b[7]),    .cin(carry[6]),    .sum(s[7]),    .cout(cout)
);

endmodule
