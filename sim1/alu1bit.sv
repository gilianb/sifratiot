// 1-bit ALU template
module alu1bit (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic s,          // Output S
    output logic cout        // Carry out
);

logic c;
logic d;
logic e;
logic f;
logic g;
logic h;

NAND2 #(.Tpdlh(4),.Tpdhl(4)) g1 (.A(op[0]),.B(op[0]),.Z(c));
fas fasa (.a(a),.b(b),.cin(cin),.a_ns(c),.s(h),.cout(cout));

OR2 #(.Tpdlh(6),.Tpdhl(6)) g2 (.A(a),.B(b),.Z(d));
XNOR2 #(.Tpdlh(10),.Tpdhl(10)) g3 (.A(a),.B(b),.Z(e));
NAND2 #(.Tpdlh(4),.Tpdhl(4)) g4 (.A(d),.B(d),.Z(f));
NAND2 #(.Tpdlh(4),.Tpdhl(4)) g5 (.A(e),.B(e),.Z(g));

mux4 muxa(.d0(f),.d1(g),.d2(h),.d3(h),.sel(op),.z(s));


// End of your code

endmodule
