.text
;To demonstrate logical operations
	MOV R0,#4
	MOV R1,#8

	AND R2,R0,R1 ;AND operation
	ORR R3,R0,R1 ;OR operation
	EOR R4,R0,R1 ;EX-OR operation
	MVN R5,R0	 ;NOT operation
.end