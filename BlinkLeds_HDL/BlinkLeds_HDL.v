
`timescale 1ns / 1ps

module BlinkLeds_HDL(
    input CLOCK_IN,
    input RESET,
    output OUT_HIGH,
    output OUT_LOW
    );

reg[31:0] blinkcount;

wire clk_in;
wire reset_in;

assign clk_in = CLOCK_IN;
assign reset_in = RESET;
assign OUT_HIGH = blinkcount[24];
assign OUT_LOW = blinkcount[23];

always@ (posedge clk_in)

  if (reset_in) begin
    blinkcount <= 32'b0;
  end
  else
  begin
    blinkcount <= blinkcount + 1;
  end

endmodule
