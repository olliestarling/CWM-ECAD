//////////////////////////////////////////////////////////////////////////////////
// Exercise #7
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to implement a times table of 0..7x0..7
//  using a memory.
//
//  inputs:
//           clk, a[2:0], b[2:0], read
//
//  outputs:
//           result[4:0]
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps
module times_table(
input [2:0]a,
input [2:0]b,
input enable,
input clk,
wire [5:0]dina
output [5:0]result
);

assign result = a*b
times_table_ex7 your_instance_name (
  .clka(clk),    // input wire clka
  .ena(enable),      // input wire ena
  .wea(0),      // input wire [0 : 0] wea
  .addra(a),  // input wire [3 : 0] addra
  .dina(a),    // input wire [15 : 0] dina   
  .douta(result)  // output wire [15 : 0] douta
);
endmodule

