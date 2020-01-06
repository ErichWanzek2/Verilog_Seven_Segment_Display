module part01_top (input[3:0]SW, output[6:0]HEX0); //defines module, with 4 input switches, and outputs 7 bits to a segment display.
	
	hex_7seg_bitwise inst0(SW, HEX0); //instantiates the 7 segment bitwise verilog code
endmodule //ends module
