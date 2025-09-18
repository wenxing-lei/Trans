`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/04 14:56:20
// Design Name: 
// Module Name: tb_full_adder_8bit
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
module tb_full_adder_8bit();

parameter PERIOD  = 10;
// full_adder_8bit Inputs
reg   [7:0]a;
reg   [7:0]b;
reg   cin;

reg   clk=0;
reg   rst_n=0;

wire  [7:0]sum;
wire  cout;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

full_adder_8bit  u_full_adder_8bit (
    .a                       ( a      ),
    .b                       ( b      ),
    .cin                     ( cin    ),
    .s                       ( sum    ),
    .cout                    ( cout   )
);

initial
begin
        $monitor("Time = %0t, a = %b, b = %b, cin = %b, sum = %b, cout = %b, sum_dec = %0d, cout_dec = %0d",
        $time, a, b, cin, sum, cout, sum, cout);

        // 初始化输入 - 你提供的初始值
        a = 8'b0000_0000;
        b = 8'b0000_0000;
        cin = 1'b1;
        
        // 等待一个时钟周期
        #PERIOD;
        
        // 检查结果是否正确
        if (sum == 8'b0000_0001 && cout == 1'b0) begin
            $display("Test 1 Passed: 0 + 0 + 1 = 1, cout = 0");
        end 
        else begin
            $display("Test 1 Failed: Expected sum=1, cout=0, Got sum=%0d, cout=%0d", sum, cout);
        end
        
        // 更多测试用例
        // 测试2: 无进位加法
        a = 8'b0000_0010;  // 2
        b = 8'b0000_0011;  // 3
        cin = 1'b0;
        #PERIOD;
        if (sum == 8'b0000_0101 && cout == 1'b0) begin
            $display("Test 2 Passed: 2 + 3 + 0 = 5, cout = 0");
        end 
        else begin
            $display("Test 2 Failed: Expected sum=5, cout=0, Got sum=%0d, cout=%0d", sum, cout);
        end
        
        // 测试3: 产生进位的加法
        a = 8'b1111_1111;  // 255
        b = 8'b0000_0001;  // 1
        cin = 1'b0;
        #PERIOD;
        if (sum == 8'b0000_0000 && cout == 1'b1) begin
            $display("Test 3 Passed: 255 + 1 + 0 = 0, cout = 1");
        end 
        else begin
            $display("Test 3 Failed: Expected sum=0, cout=1, Got sum=%0d, cout=%0d", sum, cout);
        end
        
        // 测试4: 带进位输入的加法
        a = 8'b1111_1110;  // 254
        b = 8'b0000_0001;  // 1
        cin = 1'b1;        // 1
        #PERIOD;
        if (sum == 8'b0000_0000 && cout == 1'b1) begin
            $display("Test 4 Passed: 254 + 1 + 1 = 0, cout = 1");
        end 
        else begin
            $display("Test 4 Failed: Expected sum=0, cout=1, Got sum=%0d, cout=%0d", sum, cout);
        end
        
        // 结束仿真
        #PERIOD;
        $display("Simulation completed");
        $finish;
end

endmodule
