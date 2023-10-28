module pwm_generator(
    input clk_3125KHz,
    input [3:0] duty_cycle,
    output reg clk_195KHz, pwm_signal
);

initial begin
    clk_195KHz = 0; pwm_signal = 1;
end

//////////////////DO NOT MAKE ANY CHANGES ABOVE THIS LINE//////////////////
duty_cycle = 4'b0111;
reg [3:0] count = 0 ;
always @(posedge clk_3125KHz)begin
count = count + 1;
end
assign pwm_signal = (count < duty_cycle) ? 1:0;


//////////////////DO NOT MAKE ANY CHANGES BELOW THIS LINE//////////////////

endmodule