module full_adder(
input a,b,C,
output s,Co );
wire x2,x1,x0;
// half_adder 1
xor (x1,a,b);
and (x0,a,b);
// half_adder 2
xor (s,C,x1);
and (x2,x1,C);
// or for the carry 
or(Co,x2,x0);

endmodule