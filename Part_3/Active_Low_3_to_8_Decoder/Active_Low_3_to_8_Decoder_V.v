module  Active_Low_3_to_8_Decoder_V(A,B,C,EN,D0,D1,D2,D3,D4,D5,D6,D7); //module name

	input wire A; //defines an input A
	input wire B; //defines an input B
	input wire C; //defines an input C
	input wire EN; //defines an input Enable
	
	output wire D0; //defines an output wire D0
	output wire D1; //defines an output wire D1
	output wire D2; //defines an output wire D2
	output wire D3; //defines an output wire D3
	output wire D4; //defines an output wire D4
	output wire D5; //defines an output wire D5
	output wire D6; //defines an output wire D6
	output wire D7; //defines an output wire D7
	
	Active_Low_2_to_4_converter inst0 (B , C , ~( A & ~EN), D4,D5,D6,D7); // instantiates Active_Low_2_to_4_converter inst0
	Active_Low_2_to_4_converter inst1 (B , C , ~( ~A & ~EN), D0,D1,D2,D3); //instantiates Active_Low_2_to_4_converter inst1 
	
endmodule //ends module
