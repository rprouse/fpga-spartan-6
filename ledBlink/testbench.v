`timescale 1ns / 1ps

module testbench;

	// Inputs
	reg clk = 0;
  
  wire divided_clk;

	// Instantiate the Unit Under Test (UUT)
	clock_divider uut (
		.clk(clk),
    .divided_clk(divided_clk)
	);

	always #2.5 clk = ~clk; // every 2.5 ns the signal flips giving 5 ns period or 500 MHz
  
  
      
endmodule

