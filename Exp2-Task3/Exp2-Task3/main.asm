;
; Exp2-Task3.asm
;
; Count from 0 - 9 on a 7 segment display
;
; Created: 15/11/2022 12:16:17 AM
; Author : Group 2
;

; Replace with your application code
start:
    inc r16
    rcall main

main:
	ldi r16, 0xff
	out ddrd, r16
	call zero
	call delay
	call one
	call delay
	call two
	call delay
	call three
	call delay
	call four
	call delay
	call five
	call delay
	call six
	call delay
	call seven
	call delay
	call eight
	call delay
	call nine
	call delay
	rjmp main

zero:
	clr r17
	out portd, r17
	ret

one: 
	ldi r17, 0x08
	out portd, r17
	ret

two: 
	ldi r17, 0x10
	out portd, r17
	ret

three: 
	ldi r17, 0x18
	out portd, r17
	ret

four: 
	ldi r17, 0x20
	out portd, r17
	ret

five: 
	ldi r17, 0x28
	out portd, r17
	ret

six: 
	ldi r17, 0x30
	out portd, r17
	ret

seven: 
	ldi r17, 0x38
	out portd, r17
	ret

eight: 
	ldi r17, 0x40
	out portd, r17
	ret

nine: 
	ldi r17, 0x48
	out portd, r17
	ret

delay:
	ldi r18, 100
	ldi r19, 63
	ldi r20, 10

L1: dec  r20
    brne L1
    dec  r19
    brne L1
    dec  r18
    brne L1
	nop
	ret