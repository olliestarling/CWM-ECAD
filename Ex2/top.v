//////////////////////////////////////////////////////////////////////////////////
// Exercise #2 
// Student Name: Oliver Starling
// Date: 02/02/20
//
//  Description: In this exercise, you need to design a multiplexer, where the  
//  output acts according to the following truth table:
//
//  sel | out
// -----------------
//   0  | a
//   1  | b
//
//  inputs:
//           a, b, sel
//
//  outputs:
//           out
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module mux(
    //Todo: define inputs here
    input a,
    input b,
    input sel,
    output out
    );
    
    //Todo: define registers and wires here

    //Todo: define your logic here                 
      assign out = (sel==1'b0) ? a:
      b;

endmodule
