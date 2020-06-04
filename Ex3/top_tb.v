//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #3 - Up/Down counter
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex3 - counter
// Guidance: start with simple tests of the module (how should it react to each 
// control signal?). Don't try to test everything at once - validate one part of 
// the functionality at a time.
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
    
//Todo: Parameters
     parameter CLK_PERIOD = 10;
  
//Todo: Regitsers and wires
     reg rst;
     reg enable;  
     reg direction;
     reg clk; 
     reg err;
     reg [7:0]counter_out_prev;
     wire [7:0]counter_out; 

//Todo: Clock generation
     initial
     begin
     clk=1'b0;
     forever #(CLK_PERIOD/2) clk=~clk;
     end

//Todo: User logic
     initial begin
     err=0;
     rst=0;
     enable=1;
     direction=1;
     #5 rst=0;
     enable=1;
     direction=1;
     #5 rst=0;
     enable=0;
     direction=1;
     #5 rst=1;
     enable=1;
     direction=1;
     #5 rst=0;
     enable=1;
     direction=0;

     end
 
     initial begin
     
     forever begin

     counter_out_prev=counter_out;
     #(5*CLK_PERIOD)
     if ((rst==1)&&(counter_out==0))
     begin
     $display("***TEST FAILED! rst==%d, enable==%d, dierction ==%d, counter_out==%d***", rst, enable, direction, counter_out, counter_out_prev);
     err = err+1;
     end
     else if ((enable==0)&&(counter_out!=counter_out_prev)) 
     begin
     $display("***TEST FAILED! rst==%d, enable==%d, dierction ==%d, counter_out==%d***", rst, enable, direction, counter_out, counter_out_prev);
     err = err+1;
     else if ((direction==1)&&(counter_out>counter_out_prev)) 
     begin
     $display("***TEST FAILED! rst==%d, enable==%d, dierction ==%d, counter_out==%d***", rst, enable, direction, counter_out, counter_out_prev);
     err = err+1;
     end
     else if ((direction==0)&&(counter_out<counter_out_prev)) 
     begin
     $display("***TEST FAILED! rst==%d, enable==%d, dierction ==%d, counter_out==%d***", rst, enable, direction, counter_out, counter_out_prev);
     err = err+1;
     end
     else begin
     err=0;
     end
     end 
     end
//Todo: Finish test, check for success
     initial begin
     #50
     if (err==0)
     $display("***TEST PASSED!***");
     $finish;  
     end

//Todo: Instantiate counter module
     counter top(
     .clk (clk),
     .rst (rst),
     .enable (enable),
     .direction (direction),
     .counter_out (counter_out)
);
endmodule 
