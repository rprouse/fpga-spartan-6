`timescale 1ns / 1ps

// counter based
module clock_divider(
  input wire clk, // 50MHz
  output reg divided_clk = 0 // 1 Hz => 0.5s ON and 0.5s OFF
  );

// division value = 50MHz / (2 * desired frequency) - 1
localparam div_value = 99999999;
integer counter_value = 0;  // 32 bit wide reg bus

always@ (posedge clk)
begin
  if (counter_value == div_value)
    counter_value <= 0;
  else
    counter_value <= counter_value + 1; 
end

// Divide the clock. This could be done above, putting here for clarity
always@ (posedge clk)
begin  
  if (counter_value == div_value)
    divided_clk <= ~divided_clk;
end

endmodule
