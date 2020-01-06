module Decimal_Encoder (D, B); //defines Decimal Encoder Module
	input [9:0]D; //defines a 10 bit input wire D
	output[3:0]B; //defines a 4 bit output wire B
	
	
	assign B[0]=  ((D[9] &  D[8] &  D[7] &  D[6]  & D[5] &  D[4] &  D[3] &  D[2] &  ~D[1] &  D[0])   |    (D[9] &  D[8] &  D[7] &  D[6]  & D[5] &  D[4] &  ~D[3] &  D[2] &  D[1] &  D[0])   |     (D[9] &  D[8] &  D[7] &  D[6]  & ~D[5] &  D[4] &  D[3] &  D[2] &  D[1] &  D[0])    |   (D[9] &  D[8] &  ~D[7] &  D[6]  & D[5] &  D[4] &  D[3] &  D[2] &  D[1] &  D[0])   |   (~D[9] &  D[8] &  D[7] &  D[6]  & D[5] &  D[4] &  D[3] &  D[2] &  D[1] &  D[0])); //assigns SOP form for B[0]
	
	assign B[1]=  ((D[9] &  D[8] &  D[7] &  D[6]  & D[5] &  D[4] &  D[3] &  ~D[2] &  D[1] &  D[0])   |    (D[9] &  D[8] &  D[7] &  D[6]  & D[5] &  D[4] &  ~D[3] &  D[2] &  D[1] &  D[0])    |   (D[9] &  D[8] &  D[7] &  ~D[6]  & D[5] &  D[4] &  D[3] &  D[2] &  D[1] &  D[0])      |     (D[9] &  D[8] &  ~D[7] &  D[6]  & D[5] &  D[4] &  D[3] &  D[2] &  D[1] &  D[0])); //assigns SOP form for B[1]

	assign B[2] = ((D[9] &  D[8] &  D[7] &  D[6]  & D[5] &  ~D[4] &  D[3] &  D[2] &  D[1] &  D[0])   |    (D[9] &  D[8] &  D[7] &  D[6]  & ~D[5] &  D[4] &  D[3] &  D[2] &  D[1] &  D[0])    |   (D[9] &  D[8] &  D[7] &  ~D[6]  & D[5] &  D[4] &  D[3] &  D[2] &  D[1] &  D[0])     |      (D[9] &  D[8] &  ~D[7] &  D[6]  & D[5] &  D[4] &  D[3] &  D[2] &  D[1] &  D[0])); //assigns SOP form for B[2]
	

	assign B[3]=  ((D[9] &  ~D[8] &  D[7] &  D[6]  & D[5] &  D[4] &  D[3] &  D[2] &  D[1] &  D[0])   |    (~D[9] &  D[8] &  D[7] &  D[6]  & D[5] &  D[4] &  D[3] &  D[2] &  D[1] &  D[0])); //assigns SOP form for B[3]

	
endmodule //ends module
