module mux2(out,s,a,b);
	input s,a,b;
	output out;
	wire sBar,t1,t2;
	not notS(sBar,s);
	and and1(t1,s,b);	//select=1 logic
	and and2(t2,sBar,a);	//select=0 logic
	or final(out,t1,t2);
endmodule
