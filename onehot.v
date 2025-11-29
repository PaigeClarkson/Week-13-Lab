module one_hot(
    input w,
    input clk,
    input reset,
    output z,          // Moore output
    output A, B, C, D, E  // state LEDs
);

    // Next-state wires
    wire Anext, Bnext, Cnext, Dnext, Enext;
    
    // State wires (Q outputs of DFFs)
    wire Astate, Bstate, Cstate, Dstate, Estate;

    // Instantiate DFFs with Default values (One-hot)
    dff dffA(.Default(1'b1), .D(Anext), .clk(clk), .reset(reset), .Q(Astate));
    dff dffB(.Default(1'b0), .D(Bnext), .clk(clk), .reset(reset), .Q(Bstate));
    dff dffC(.Default(1'b0), .D(Cnext), .clk(clk), .reset(reset), .Q(Cstate));
    dff dffD(.Default(1'b0), .D(Dnext), .clk(clk), .reset(reset), .Q(Dstate));
    dff dffE(.Default(1'b0), .D(Enext), .clk(clk), .reset(reset), .Q(Estate));

    // Connect state outputs to LEDs
    assign A = Astate;
    assign B = Bstate;
    assign C = Cstate;
    assign D = Dstate;
    assign E = Estate;

    // Moore output logic
    // z is high only for states where output = 1 (replace with your lab logic)
    assign z = Cstate | Estate;  // example: states C and E output 1, adjust as needed

    // Next-state logic (fill in using KMaps)
    assign Anext = /* insert Boolean expression for next state A */;
    assign Bnext = /* insert Boolean expression for next state B */;
    assign Cnext = /* insert Boolean expression for next state C */;
    assign Dnext = /* insert Boolean expression for next state D */;
    assign Enext = /* insert Boolean expression for next state E */;

endmodule
