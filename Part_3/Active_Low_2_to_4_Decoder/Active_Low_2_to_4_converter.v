module  Active_Low_2_to_4_converter(A,B,EN,D0,D1,D2,D3); //defines module

	input wire A; //defines an input A
	input wire B; //defines an input B
	input wire EN; //defines an input Enable, "EN"
	
	output wire D0; //defines an output wire D0
	output wire D1; //defines an output wire D1
	output wire D2; //defines an output wire D2
	output wire D3; //defines an output wire D3
	
	assign D0 = ~(~A & ~B & ~EN); //assigns logical expression to D0
	assign D1 = ~(~A & B & ~EN); //assigns logical expression to D1
	assign D2 = ~(A & ~B & ~EN); //assigns logical expression to D2
	assign D3 = ~(A & B & ~EN); //assigns logical expression to D3
	
endmodule //ends module
