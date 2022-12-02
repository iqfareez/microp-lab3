;
; Task1-Code.asm
;
; Created: 2/12/2022 7:06:43 PM
; Author : G2: Iqmal
;

start:
	ldi r16, 0xff
	
	out ddrb, r16 ; Make all port B as OUTPUT

ccw:
	ldi r18, 0b001
	out portb, r18
	rcall delay
	;delay
	rjmp cw

cw: 
	ldi r18, 0b010
	out portb, r18
	rcall delay 
	;delay
	rjmp ccw
	

delay:
	ldi r24, 121
	ldi r25, 78
	ldi r26, 32

L1: dec  r26
    brne L1
    dec  r25
    brne L1
    dec  r24
    brne L1
	nop
	ret
	

