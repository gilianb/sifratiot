// Full Adder/Subtractor test bench template
module fas_test;

// Put your code here
// ------------------
 	 logic a;          // Data input 0
     logic b;          // Data input 1
     logic cin;          // Data input 2
     logic a_ns;        // A_nS (add/not subtract) control
     logic s;         // Select input
     logic cout  ;         // Output

    fas uut (
        .a(a),
        .b(b),
        .cin(cin),
        .a_ns(a_ns),
        .s(s),
        .cout(cout)
    );

    initial begin
 
a = 0; 
b = 0;
cin = 0;
a_ns = 0;
#100;

a = 0;
b = 1;
cin = 0;
a_ns = 0;
#100;

a = 0;
b = 0;
cin = 0;
a_ns = 0;
#100;


	end

// End of your code

endmodule
