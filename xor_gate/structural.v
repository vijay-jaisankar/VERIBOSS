module xor2(out,a,b);
	input a,b;
	output out;
	wire term1,term2,abar,bbar;
	not aNot(abar,a);
	not bNot(bbar,b);
	and and1(term1,a,bbar);
	and and2(term2,b,abar);
	or final(out,and1,and2);
endmodule
