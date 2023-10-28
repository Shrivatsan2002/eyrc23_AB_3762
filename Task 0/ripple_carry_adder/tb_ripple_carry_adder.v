module tb_ripple_carry_adder;
reg[1:0] a,b;
reg cin;
wire[1:0] s;
wire cout;
ripple_carry_adder r0(a,b,s,cin,cout);
initial begin // Initialize the pins with different combination of inputs .
    a =2'b01 ; b=2'b11; cin =1'b1; # 100;
    a =2'b11; b=2'b11; cin =1'b1; # 100;
    a =2'b10; b=2'b01; cin =1'b0; # 100;
    a =2'b00; b=2'b11; cin =1'b0; # 100;

end
endmodule