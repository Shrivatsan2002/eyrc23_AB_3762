module ripple_carry_adder(a,b,s,cin,cout);
input [1:0] a,b;
input cin;
output [1:0]s;
output cout;
wire c1;
full_adder fa0(a[0],b[0],s[0],cin,c1);
full_adder fa1(a[1],b[1],s[1],c1,cout);
endmodule
