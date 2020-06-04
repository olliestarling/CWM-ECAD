//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Electronic Dice
// Student Name:Oliver Starling
// Date: 04/06/2020
//
// Description: A testbench module to test Ex4 - Electronic Dice
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
'timescale 1ns / 100ps

module top_tb(
	);

	parameter CLK_PERIOD = 10;
	reg err;
	reg rst;
	reg clk;
	reg button;
	reg [2:0] prev_throw;
	wire [2:0] throw;

	initial
	begin
	clk=1'b0;
	forever #(CLK_PERIOD/2) clk=~clk;
	end

	initial begin
	
	forever begin
	prev_throw=throw;
	#5
	if ((button==1)&(prev_throw!=throw))
	begin
	$display("***TEST FAILED! rst==%d, button==%d, throw==%d, prev_throw==%d***", rst, button, throw, prev_throw);
	err=1;
	end
	else begin
	err=0;
	end
	end
	end

	initial begin
	#5
	prev_throw=3'b000;
	err=0;
	button=1;
	rst=1;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=0;
	rst=0;
	end
	
	intial begin
	#200
	if (err==0)
	$display("***TEST PASSED!***");
	$finish;
	end

dice top(
	.clk (clk),
	.rst (rst),
	.button (button),
	.throw (throw),
);

endmodule
