.text
	MOV R1,#19
	ANDs R2,R1,#1
	BEQ Location1
	MOV R0,#0xFF
	B quit
	Location1:
	MOV R0,#0x00
	quit:
	
.end