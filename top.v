module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

wire z_onehot;
    wire A, B, C, D, E;

    // Wires for binary outputs
    wire z_binary;
    wire [2:0] state_binary;

    // Instantiate one-hot state machine
    one_hot oh(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(z_onehot),
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E)
    );

    // Instantiate binary state machine
    binary bin(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(z_binary),
        .state(state_binary)
    );

    // Map outputs to LEDs according to IO table
    assign led[0] = z_onehot;       // one-hot z
    assign led[1] = z_binary;       // binary z
    assign led[2] = A;              // one-hot state A
    assign led[3] = B;              // one-hot state B
    assign led[4] = C;              // one-hot state C
    assign led[5] = D;              // one-hot state D
    assign led[6] = E;              // one-hot state E
    assign led[9:7] = state_binary; // binary state

endmodule