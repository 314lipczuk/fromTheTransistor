module uart_rx(
	input wire clk,
	input reset,
	input rx,
	output reg[7:0]data,
	output reg valid

);
// i have my rx line. On that i receive bits. 
// Bits are stored on the shift register [7:0]data
// I should probably have some kind of state machine guiding
// me, so that i can properly start and finish transmission.
// (and also set the valid register i guess)
// I should also somehow use the clock, to always@(1/baud_rate)
// Idk how to do that yet, we'll figure it out.
// aight, no fuck that, i don't know enough verilog to be confident in that
// lemme at first hardcode values for baud rate 9000
// as the wise philosopher said
// "first we make it work, then we make it good"
parameter BAUD_RATE 9000;
reg [15:0] baud_rate_counter;

always @(posedge clk or negedge reset)
begin
if (!reset) baud_rate_counter <= 16'b1;
else if ()
end

endmodule
