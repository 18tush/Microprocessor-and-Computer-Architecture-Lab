.text
	MOV R0,#3
	MOV R1,R0
	CMP R1,#1
	BEQ j0
	j1:
		SUB R1,R1,#1
		MUL R2,R1,R0
		MOV R0,R2
		CMP R1,#1

		BNE j1
		BEQ j0
	j0:
		SWI 0x11
.end