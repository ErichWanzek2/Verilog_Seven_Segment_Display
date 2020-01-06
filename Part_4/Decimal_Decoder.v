module Decimal_Decoder (A, Y); //defines decimal decoder module
	input [3:0]A; //defines a 4 bit input for A
	output[9:0]Y; //defines a 10 bit output for Y
	
	
	assign Y[0]=  A[3] |  A[2] |  A[1] |  A[0]; //assigns POS form for Y[0]
	assign Y[1]=  A[3] |  A[2] |  A[1] | ~A[0]; //assigns POS form for Y[1]
	assign Y[2]=  A[3] |  A[2] | ~A[1] |  A[0]; //assigns POS form for Y[2]
	assign Y[3]=  A[3] |  A[2] | ~A[1] | ~A[0]; //assigns POS form for Y[3]
	assign Y[4]=  A[3] | ~A[2] |  A[1] |  A[0]; //assigns POS form for Y[4]
	assign Y[5]=  A[3] | ~A[2] |  A[1] | ~A[0]; //assigns POS form for Y[5]
	assign Y[6]=  A[3] | ~A[2] | ~A[1] |  A[0]; //assigns POS form for Y[6]
	assign Y[7]=  A[3] | ~A[2] | ~A[1] | ~A[0]; //assigns POS form for Y[7]
	assign Y[8]= ~A[3] |  A[2] |  A[1] |  A[0]; //assigns POS form for Y[8]
	assign Y[9]= ~A[3] |  A[2] |  A[1] | ~A[0]; //assigns POS form for Y[9]
 
	
endmodule //ends module

	

