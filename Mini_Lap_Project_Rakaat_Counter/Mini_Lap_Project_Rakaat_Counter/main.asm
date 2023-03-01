start:
    LDI R16, 0x00 ;input
	LDI R17, 0xff ;output

	LDI R18, 1; ;counter
	LDI R27, 5;  ;compare
	
	OUT DDRD, R16
	OUT DDRB, R17
	
	RJMP main
	
main:
	OUT PORTB, R18
	IN R19, PIND
	ANDI R19, (1<<PD2)
	CPI R19, (1<<PD2)
	BRNE UIA
	LDI R20, 1;
	ADD R18, R20

	//CPI R18,5
	//BREQ reset
	CP R18, R27
	BRGE Loop

	MOV R21, R18
	
	OUT PORTB, R21
	
	RCALL delay
	
	LDI R22, (1<<PB4)   ;reset JK after each rakaat
	OR R22, R21
	OUT PORTB, R22
	RCALL delay
	LDI R22, (0<<PB4)
	OR R22, R21
	OUT PORTB, R22

	RJMP main

UIA:
	RJMP main

Loop:
	LDI R19, 0
	
	OUT PORTB, R19 ;DISPLAY 0

	RJMP Loop 

Delay:
	LDI R24, 100
	LDI R25, 63
	LDI R26, 5

L1:
	DEC R24
	BRNE L1
	DEC R25
	BRNE L1
	DEC R26
	BRNE L1
	NOP
	RET