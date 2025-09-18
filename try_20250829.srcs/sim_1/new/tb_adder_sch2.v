`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/08 14:03:59
// Design Name: 
// Module Name: tb_adder_sch2
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
module tb_adder_sch2();

// adder_sch2 Parameters
parameter PERIOD  = 10;


// adder_sch2 Inputs
reg   [7:0]  a                             = 0 ;
reg   [7:0]  b                             = 0 ;
reg   cin                                  = 0 ;

reg clk=0;
reg rst_n=0;
// adder_sch2 Outputs
wire  [7:0]  s                             ;
wire  cout                                 ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

adder_sch2  u_adder_sch2 (
    .a                       ( a     [7:0] ),
    .b                       ( b     [7:0] ),
    .cin                     ( cin         ),

    .s                       ( s     [7:0] ),
    .cout                    ( cout        )
);

initial
begin
    a=8'b1100_0011;
    b=8'b1010_0101;
    cin=1'b0;
    #PERIOD;
    a=8'b1100_0011;
    b=8'b1010_0101;
    cin=1'b1;
    #PERIOD;
    $finish;
end

endmodule
