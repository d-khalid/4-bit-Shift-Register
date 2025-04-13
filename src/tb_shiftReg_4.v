`timescale 1ns/1ps

module tb_shiftReg_4; 

reg D, CLK;

// OUTPUTS MUST BE WIRES
wire [3:0] bits;


shiftReg_4 r(bits, D, CLK);

// CLOCK PULSE
initial begin
    CLK = 0;
    forever #20 CLK = ~CLK;
end

// SHIFT 1s into the register
initial begin 
    D = 1;
    #300 $finish;
end

// DUMP vars and simulation to a wave file
initial begin 
    $dumpfile("wave/shiftReg.vcd");
    $dumpvars(0, tb_shiftReg_4);
end

endmodule;