// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

logic a;
logic b;
logic c;
logic d;
logic e;
logic f;
logic g;

NAND2 #(.Tpdlh(4),.Tpdhl(4)) g1 (.A(d1),.B(sel),.Z(a));
NAND2 #(.Tpdlh(4),.Tpdhl(4)) g2 (.A(sel),.B(sel),.Z(b));
NAND2 #(.Tpdlh(4),.Tpdhl(4)) g3 (.A(d0),.B(b),.Z(c));

NAND2 #(.Tpdlh(4),.Tpdhl(4)) g4 (.A(c),.B(c),.Z(d));
NAND2 #(.Tpdlh(4),.Tpdhl(4)) g5 (.A(a),.B(a),.Z(e));

OR2 #(.Tpdlh(6),.Tpdhl(6)) g6 (.A(d),.B(e),.Z(z));

// End of your code

endmodule
