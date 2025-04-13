module dFlipFlop(Q, D, CLK);
input D, CLK;
output reg Q;

wire notQ;

// S1 and S2 are the level-one outputs
wire notD, S1, S2;

  always @(posedge CLK) begin  // Trigger only on rising clock edge
        Q    <= D;     // Non-blocking assignment
    end

// // Compute notD
// not(notD, D);


// // Compute layer-1
// nand(S1, D, CLK);
// nand(S2, notD, CLK);

// nand(Q, S1, notQ);
// nand(notQ, S2, Q);

endmodule;



module shiftReg_4(bits, D, CLK);

output [3:0] bits;
input D, CLK;


dFlipFlop d0(bits[0],  D, CLK);
dFlipFlop d1(bits[1], bits[0], CLK);
dFlipFlop d2(bits[2], bits[1], CLK);
dFlipFlop d3(bits[3], bits[2], CLK);




endmodule;
