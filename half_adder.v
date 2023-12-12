// half adder module adds two binary digits x,y and outputs the sum and the carry.


module half_adder(output sum, output carry, input a, input b);
    // computes the sum = 1 if only one of the input is 1 by xor the inputs.
    xor(sum, a, b);
    // the carry is 1 only if both input is 1.
    and(carry, a, b);
endmodule
