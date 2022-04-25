
`timescale 1ns / 1ps

module ledblink(
  input wire clk, // 50 MHz
  output wire led
  );

// wrapper for the clock divider
clock_divider wrapper (
  .clk(clk),
  .divided_clk(led)
  );

endmodule
