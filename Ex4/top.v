//////////////////////////////////////////////////////////////////////////////////
// Exercise #4 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to design an electronic dice, following
//  the diagram provided in the exercises documentation. The dice rolls as long as
//  a button is pressed, and stops when it is released. 
//
//  inputs:
//           clk, rst, button
//
//  outputs:
//           throw [2:0]
//
//  You need to write the whole file.
//////////////////////////////////////////////////////////////////////////////////
'timescale 1ns / 100ps

module dice(
	input button,
	input clk,
	input rst,
	output reg [2:0]throw
	);

	always@(posedge clk)
	if (rst) begin
	throw<=3'b000;
	end
	else if ((throw==3'b000)||(throw==3'b111))
	begin
	throw <=3'b001;
	end
	else if(throw==3'b110)
	begin
	throw<=(button==1) ? 3'b001 : throw;
	end
	else begin
	throw<=(button==0) ? throw : throw+3'001;
	end

endmodule
