// 4x1 multiplixer that chooses the output m to be equal toone of the 4 inputs i0,i1,i2,i3 through 2 bit selector s .

module mux (output m, input i0, input i1, input i2, input i3, input[1:0]s);

    // ng is a 2 bit wire that is equal to the reverse of the input selector s.
	wire[1:0]ng  ;
    wire[3:0] newI ;
	not(ng[0], s[0]);

	not(ng[1], s[1]);
	
    // i0 equals i0 only if both selector input s is 0 otherewise i0 equals 0.
    and(newI[0], i0, ng[0], ng[1]);
	// i1 equals i0 only if both selector input s is 0 otherewise i1 equals 0.
    and(newI[1], i1, s[0], ng[1]);
	// i2 equals i0 only if both selector input s is 0 otherewise i2 equals 0.
    and(newI[2], i2, ng[0], s[1]);
	// i3 equals i0 only if both selector input s is 0 otherewise i3 equals 0.
    and(newI[3], i3, s[0], s[1]);
	// The output is true if any of the inputs is true.
    or(m , newI[0],newI[1], newI[2], newI[3]);

endmodule
