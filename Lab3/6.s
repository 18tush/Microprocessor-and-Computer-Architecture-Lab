.text
	LDR R1,=A
	MOV R2,#0
	STR R2,[R1]
	ADD R1,R1,#4
	MOV R3,#1
	STR R3,[R1]
	MOV R5,#8  ; 8 fibonacci numbers will be stored after 0 and 1(So,total=10) in the array
	L1:
		ADD R4,R2,R3
		ADD R1,R1,#4
		STR R4,[R1]
		MOV R2,R3
		MOV R3,R4
		SUBS R5,R5,#1
		MOV R4,#0
		BNE L1
	SWI 0x11
.data
	A:.WORD