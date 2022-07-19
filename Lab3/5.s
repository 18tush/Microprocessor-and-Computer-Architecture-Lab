.text
	LDR R0,=A
	MOV R1,#10
	MOV R3,R1
	L1:
		LDR R2,[R0],#4
		CMP R2,#70     ;Element 70 is to be searched in the array 
		BEQ L2
		SUBS R1,R1,#1
		CMP R1,#0
		BNE L1
		MOV R6,#-1
	SWI 0x11
	L2:
		MOV R6,#1
		SUB R1,R1,#1
		SUB R7,R3,R1
	SWI 0x11
.data
	A:.WORD 2,4,6,8,12,20,25,30,40,50