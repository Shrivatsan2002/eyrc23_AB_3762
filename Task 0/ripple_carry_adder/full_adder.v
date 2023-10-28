module full_adder(a,b,s,cin,cout);
input a,b,cin;
output s,cout;
assign s = a ^ b ^ cin;
assign cout = ((a & b) | ((a ^ b) & cin));
endmodule
