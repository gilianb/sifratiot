// 64-bit ALU test bench template
module alu64bit_test;

// Put your code here
// ------------------

//logics
logic [63:0] a;    // Input bit a
logic [63:0] b;    // Input bit b
logic cin;    // Carry in
logic [1:0] op;    // Operation
logic [63:0] s;   // Output S
logic cout;   // Carry out

//instatiation
alu64bit alu(.a(a),
			.b(b),
			.cin(cin),
			.op(op),
			.s(s),
			.cout(cout));

initial begin
	
	a = 64'b0111111111111111111111111111111111111111111111111111111111111111;
	b = 64'b0000000000000000000000000000000000000000000000000000000000000001;
	cin = 0;
	op = 2'b11;
	
	#1000;
	a = 64'b0111111111111111111111111111111111111111111111111111111111111111;
	b = 64'b0000000000000000000000000000000000000000000000000000000000000001;
	cin = 0;
	op[0] = 0;
	op[1] = 1;
	
	#1000;

end
	


// End of your code

endmodule
