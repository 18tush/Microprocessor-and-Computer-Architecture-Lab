.text
	LDR R0,=0b11110010100101001101001100110111
	MOV R1,#32
	MOV R5,#0
	MOV R6,#0
	L1:
		AND R2,R0,#1
		CMP R2,#1
		ADDEQ R5,R5,#1   ;Number of 1's is stored in R5
		ADDNE R6,R6,#1   ;Number of 0's is stored in R6
		MOV R0,R0,LSR #1
		SUB R1,R1,#1
		CMP R1,#0
		BNE L1
	SWI 0x11
.end