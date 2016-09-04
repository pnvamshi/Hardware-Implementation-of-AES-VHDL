`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:46:18 07/14/2015 
// Design Name: 
// Module Name:    rounds 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module rounds(clk,rc,data,keyin,keyout,rndout);
input clk;
input [3:0]rc;
input [127:0]data;
input [127:0]keyin;
output [127:0]keyout;
output [127:0]rndout;

wire [127:0] sb,sr,mcl;

KeyGeneration t0(rc,keyin,keyout);
subbytes t1(data,sb);
shiftrow t2(sb,sr);
mixcolumn t3(sr,mcl);
assign rndout= keyout^mcl;

endmodule
