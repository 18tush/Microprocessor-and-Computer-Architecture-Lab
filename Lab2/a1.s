.text
	MOV R0,#-18
	CMP R0,#0
	BEQ c1
	BMI c2
	MOV R1,#2
	SWI 0x11
	c1:
		MOV R1,#1
		SWI 0x11
	c2:
		MOV R1,#3
		SWI 0x11
.end