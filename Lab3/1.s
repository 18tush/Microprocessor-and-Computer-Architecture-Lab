.text
	LDR R0,=A
	LDR R1,=B
	LDR R2,[R0],#4
	LDR R3,[R0]
	LDR R4,[R1],#4
	LDR R5,[R1]
	ADDS R7,R3,R5
	ADC R6,R2,R4
	LDR R8,=C
	STR R6,[R8],#4
	STR R7,[R8]
	LDR R9,=C
	LDR R10,[R9,#4]
	LDR R11,[R9]
	SWI 0x11
.data
	A:.WORD 0x00000001,0xa0000002
	B:.WORD 0x00000003,0xa0000004
	C:.WORD