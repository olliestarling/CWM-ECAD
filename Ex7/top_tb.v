//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #7 - Times Table
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex7 - Times Table
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb();

//Parameters
    parameter CLK_PERIOD = 10;

//Registers and wires
    reg clk;
    reg enable;
    reg err;
    wire [2:0]a;
    wire [2:0]b;
    wire [5:0]result;
    
//Clock generation
    initial
    begin
    clk = 1'b0;
    forever
    #(CLK_PERIOD/2) clk=~clk;
    end

initial begin
	#5
	a=3'b001
	b=3'b001
	err=0;
	enable=1;
	if (result!=6'b000001)begin
	$display("***FAILLLL! a==%d, b==%d result==%d", a, b, result)
	err=1
	end
	else
	err==0
	end
	end

initial begin
        #200
        if (err==0)
        $display("***TEST PASSED! :) ***");
        $finish;
        end


	module times_table(
	.a (a),
	.b (b),
	.enable (enable),
	.clk (clk),
	.result (result)
);

endmodule


	
	
