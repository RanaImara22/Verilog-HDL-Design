
// full adder module adds three binary digits x,y,z and outputs the sum and the carry.

module full_adder(output sum, output carry, input x, input y, input z);
   wire s1, c1, c2;
   // adding x,y using half adder and put the result in s1 , c1 
   half_adder h1(s1, c1, x, y);
   // adding the result of the first addition with the remaining bit z.
   half_adder h2(sum, c2, s1, z);
   // the output carry is true if any of the two carries is true.
   or(carry, c1, c2);
endmodule