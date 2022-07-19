.text
	LDR R0,=A
	LDR R1,=B
	LDR R4,[R0],#4
	LDR R3,[R1]
	CMP R3,#1
	BEQ L1
	SUB R3,R3,#1
	MOV R6,R4		; Smallest number to be stored in R6
	L2:
		LDR R4,[R0],#4
	CMP R4,R6
	MOVLT R6,R4	
	SUB R3,R3,#1
	CMP R3,#0
	BNE L2
	L1:
		SWI 0x11
.data
	A:.WORD 5,13,21,4,3,19,30,8,16,42
	B:.WORD 10