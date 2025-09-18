`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/04 15:57:15
// Design Name: 
// Module Name: tb_practice
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
//test_bench for lbit_full_adder
module tb_example();

// example Parameters
parameter PERIOD  = 10;


// example Inputs
reg   a                                    = 0 ;
reg   b                                    = 0 ;
reg   cin                                  = 0 ;

reg     clk=0;
reg     rst_n;
// example Outputs
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

example  u_example (
    .a                       ( a      ),
    .b                       ( b      ),
    .cin                     ( cin    ),

    .cout                    ( cout   ),
    .sum                     ( sum    )
);

initial
begin
    a=0;b=0;cin=0;
    #PERIOD;
    a=0;b=0;cin=1;
    #PERIOD;
    a=0;b=1;cin=0;
    #PERIOD;
    a=0;b=1;cin=1;
    #PERIOD;
    a=1;b=0;cin=0;
    #PERIOD;
    a=1;b=0;cin=1;
    #PERIOD;
    a=1;b=1;cin=0;
    #PERIOD;
    a=1;b=1;cin=1;
    #PERIOD;
    $finish;
end

endmodule
*/