//////////////////////////////////////////////////////////////////////////////////
// Exercise #5 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to implement a UK traffic lights 
//  sequencing system. 
//
//  inputs:
//           clk
//
//  outputs:
//           red, amber, green
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

 module lights(
 	input clk,
 	output reg red,
 	output reg amber,
 	output reg green
 	);

 	initial begin
 	red=1;
 	amber=0;
 	green=0;

 	end

 	always @(posedge clk)
 	if ((red==1)&&(amber==1))
	begin
 	red<=0;
 	amber<=0;
 	green<=1;
 	end
 	else if (green==1) 
	begin
 	green<=0;
 	amber<=1;
 	red<=0;
 	end
 	else if ((amber==1)&&(red==0))
	begin
 	green<=0;
 	red<=1;
 	amber<=1;
 	end
 	else begin
 	red<=1;
 	amber<=1;
 	green<=0;

 	end

 endmodule
