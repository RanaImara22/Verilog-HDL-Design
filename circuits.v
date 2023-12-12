/*  
    depending on the input selector s the output G will be determined as follows.
    When the selection inputs are 00, G = A+1
    When the selection inputs are 01, G = A+B
    When the selection inputs are 10, G = B-A
    When the selection inputs are 11, G = 1-B
*/

module circuits(output[2:0]G, output carry, input[2:0]A, input[2:0]B, input[1:0]S);

// a wire that holds the output of the first three multiplixers.
wire[2:0]mL ;
// a wire that will hold the left handside of the addition equasion
wire[2:0]lefthandside ;
// a wire that will hold the right handside of the addition equasion
wire[2:0]righthandside;


// wire to hold the output carries of the full adders.
wire[1:0]cf;

reg one = 1;

// ~one
// first three multiplixers to choose  from A and B to pass.
mux mux_1(mL[0], A[0], A[0], A[0], B[0], S);
mux mux_2(mL[1], A[1], A[1], A[1], B[1], S);
mux mux_3(mL[2], A[2], A[2], A[2], B[2], S);


// the next three multiplixers to choose the right handside of the equasion.
mux mux_4(righthandside[0], one, B[0], B[0], one, S);
mux mux_5(righthandside[1], ~one, B[1], B[1], ~one, S);
mux mux_6(righthandside[2], ~one, B[2], B[2], ~one, S);


// flipping the lefthandside if s1 is true using Xor.
xor (lefthandside[0], S[1], mL[0]);
xor(lefthandside[1], S[1], mL[1]);
xor(lefthandside[2], S[1], mL[2]);

// adding both operands with the cin input as the s1 selector using 3 full adders and the output to be in G and the carry.
full_adder fullAdder_1(G[0], cf[0], S[1], lefthandside[0], righthandside[0]);
full_adder fullAdder_2(G[1], cf[1], cf[0], lefthandside[1], righthandside[1]);
full_adder fullAdder_3(G[2], carry, cf[1], lefthandside[2], righthandside[2]);

endmodule