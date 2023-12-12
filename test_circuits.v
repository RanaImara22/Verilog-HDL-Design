`timescale 1ns / 1ns

module test_circuits;

  reg [2:0] A, B;
  reg [1:0] S;
  wire [2:0] G;
  wire carry;

  // Instantiate the circuits module
  circuits uut (
    .G(G),
    .carry(carry),
    .A(A),
    .B(B),
    .S(S)
  );

  // Stimulus generation
  initial begin
    $display("test started");
    $dumpfile("test_circuits.vcd");
    $dumpvars(0, test_circuits);

    for (integer i = 0; i < 256; i = i +1) begin
        S = i[1:0];
        A = i[4:2];
        B = i[7:5];
        #10;
      $display("Test Case %b: A = %b, B = %b, S = %b, G = %b, carry = %b", i, A, B, S, G, carry);
    end

    // Display the results
    $finish; // End simulation
  end

endmodule
