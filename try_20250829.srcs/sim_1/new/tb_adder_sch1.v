`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/08 13:45:09
// Design Name: 
// Module Name: tb_adder_sch1
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
`timescale  1ns / 1ps

module tb_adder_sch1_1bit();

// adder_sch1_1bit Parameters
parameter PERIOD  = 10;


// adder_sch1_1bit Inputs
reg   a                                    = 0 ;
reg   b                                    = 0 ;

reg clk=0;
reg rst_n=-0;
// adder_sch1_1bit Outputs
wire  cout                                 ;
wire  sum                                  ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

adder_sch1_1bit  u_adder_sch1_1bit (
    .a                       ( a      ),
    .b                       ( b      ),

    .cout                    ( cout   ),
    .sum                     ( sum    )
);

initial
begin
    a=0;b=0;
    #PERIOD;
    a=0;b=1;
    #PERIOD;
    a=1;b=0;
    #PERIOD;
    a=1;b=1;
    #PERIOD;
    $finish;
end

endmodule
*/
module tb_adder_sch1();

// adder_sch1 Parameters
parameter PERIOD  = 10;


// adder_sch1 Inputs
reg   [7:0]  a= 0 ;
reg   [7:0]  b= 0 ;

reg clk=0;
reg rst_n=0;
// adder_sch1 Outputs
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

adder_sch1  u_adder_sch1 (
    .a                       ( a     [7:0] ),
    .b                       ( b     [7:0] ),

    .s                       ( s     [7:0] ),
    .cout                    ( cout        )
);

initial
begin
    a=8'b0000_0000;
    b=8'b0000_0000;
    #PERIOD;
    a=8'b1100_1100;
    b=8'b1010_1010;
    #PERIOD;
    a=8'b0100_1100;
    b=8'b0010_1010;
    #PERIOD;
    $finish;
end

endmodule