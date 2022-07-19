.text
	MOV R0,#10
	MOV R1,#4
	CMP R0,R1
	BEQ equal
	SUB R2,R0,R1
	SWI 0x11
	equal:
		ADD R2,R1,R0
		SWI 0x11
.end