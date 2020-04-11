`timescale 1ns/1ps	// 1 nano second time intervals with accuracy of 1 pico second

/* Module */
module dFlipFlop(q,d,clk);
	input d;	// Inputs
	input clk;
	output q;	// q will be an output but should be a 'reg' as it stores a value
	reg q;
	
	always @(posedge clk)
		q <= d;	// non-blocking statement
	
endmodule



/* TestBench */


module dFlipFlop_tb;
// Declaring variables and creating an object
// Inputs are reg and outputs are wires

reg d;
reg clk;
wire q;

dFlipFlop yeet(q,d,clk);	// We need good variable names

// Initial block -> Give Initial values for variables

initial
	begin
	
	// Classic copy and paste lines
	$dumpfile ("dff_out.vcd"); 
	$dumpvars(0,dFlipFlop_tb);
	
	d = 0;	// We can only give values to reg
	clk = 0;
	end

always
	begin
	#6 clk = ~clk;
	#4 d = ~d;
	end
	
endmodule
