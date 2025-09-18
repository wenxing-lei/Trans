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
module adder_sch1(    
    input  [7:0] a,   // 8λ���� A��bit7Ϊ���λ��bit0Ϊ���λ��
    input  [7:0] b,   // 8λ���� B
    output [7:0] s,   // 8λ�����
    output cout       // �����λ�����bit7�Ľ�λ�������������жϣ�
    );
    assign s = a | b;
    assign cout=a[7] & b[7];
endmodule
