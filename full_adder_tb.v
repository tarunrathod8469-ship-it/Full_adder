module testbench;
reg a,b,C;
wire s,Co;
full_adder uut (.a(a),.b(b),.C(C),.s(s),.Co(Co));
 
initial begin 
    $dumpfile("full_adder.vcd");
    $dumpvars(0,testbench);
    a=0; b=0; C=0;
    #10;
    $display("a=%b  b=%b  Ci=%b  s=%b  Co=%b",a,b,C,s,Co);
     a=0; b=0; C=1;
    $display("a=%b  b=%b  Ci=%b  s=%b  Co=%b",a,b,C,s,Co);
    a=0; b=1; C=0;
    #10;
    $display("a=%b  b=%b  Ci=%b  s=%b  Co=%b",a,b,C,s,Co);
    a=0; b=1; C=1;
    #10;
    $display("a=%b  b=%b  Ci=%b  s=%b  Co=%b",a,b,C,s,Co);
    a=1;b=0;C=0;
    #10;
    $display("a=%b  b=%b  Ci=%b  s=%b  Co=%b",a,b,C,s,Co);
    a=1; b=0; C=1;
    #10;
    $display("a=%b  b=%b  Ci=%b  s=%b  Co=%b",a,b,C,s,Co);
    a=1; b=1; C=0;
    #10;
    $display("a=%b  b=%b  Ci=%b  s=%b  Co=%b",a,b,C,s,Co);
    a=1; b=1; C=1;
    $display("a=%b  b=%b  Ci=%b  s=%b  Co=%b",a,b,C,s,Co);
    #10;
    $finish;
end
endmodule