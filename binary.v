module binary(
    input w,
    input clk,
    input reset,
    output z,
    output [2:0] state
);

    wire [2:0] next;

    dff dff0(.D(next[0]), .clk(clk), .reset(reset), .Q(state[0]));
    dff dff1(.D(next[1]), .clk(clk), .reset(reset), .Q(state[1]));
    dff dff2(.D(next[2]), .clk(clk), .reset(reset), .Q(state[2]));

    assign z = (state == 3'b010); // example, replace with correct output

    // Next state logic (from KMaps)
    assign next[0] = ... ;
    assign next[1] = ... ;
    assign next[2] = ... ;

endmodule
