// Full Adder/Subtractor template
module fas (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic a_ns,        // A_nS (add/not subtract) control
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
logic c;
logic d;
logic e;
logic f;
logic g;


// C output

XNOR2 #(10,10) g1 (.A(a_ns), .B(a), .Z(c));

OR2 #(6,6) g3 (.A(cin), .B(b), .Z(d));

NAND2 #(4,4) g4 (.A(c), .B(d), .Z(e));

NAND2 #(4,4) g5 (.A(b), .B(cin), .Z(f));

NAND2 #(4,4) g7 (.A(e), .B(f), .Z(cout));

 
//S output

XNOR2 #(10,10) g2 (.A(cin), .B(b), .Z(k));
XNOR2 #(10,10) g6 (.A(k), .B(a), .Z(s));

// End of your code

endmodule
