.text
	LDR R1,=A
	LDR R2,=B
	LDR R3,[R2]
	MOV R7,#0
	MOV R8,#0
	MOV R9,#0
	L1:
		LDR R4,[R1],#4
		CMP R4,#0
		ADDEQ R7,R7,#1  ;Number of 0's is stored in R7
		ADDLT R8,R8,#1  ;Number of negative numbers is stored in R8
		ADDGT R9,R9,#1  ;Number of positive numbers is stored in R9
		SUB R3,R3,#1
		CMP R3,#0
		BNE L1
	SWI 0x11
.data
	A:.WORD -1,-2,-3,0,1,2,0,4,5,6
	B:.WORD 10