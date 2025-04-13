# Required Tools to Write/Execute
1- Visual Studio Code with "Verilog-HDL" and "Verilog_Testbench" extensions.  
2- "iverilog" (Icarus Verilog) for compiling the Verilog code.  
3- "GTKWave" to see the waveforms of your hardware simulations.  
4- "Verilator" for Linting.  

NOTE: Most of them are avaliable in the packakge repos for Linux distros.

# Build Instructions (from src)
1- Open a terminal instance, with the current directory set to the contents of this repo.
2- Run `iverilog -o sim/tb_shiftReg src/shiftReg_4.v src/tb_shiftReg_4.v` to compile the Verilog into an executable simulation file.
3- Run `vvp sim/tb_shiftReg` to produce the waveform file(.vcd), this is `wave/shiftReg.vcd`.
4- Run `gtkwave wave/shiftReg.vcd` to open the waveform in GTKWave.
