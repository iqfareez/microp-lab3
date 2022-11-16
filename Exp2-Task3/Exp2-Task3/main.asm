;
; Exp2-Task3.asm
;
; Count from 0 - 9 on a 7 segment display
;
; Created: 15/11/2022 12:16:17 AM
; Author : Group 2 (Fareez)
;

; Replace with your application code
start:
	; initial counter value
	ldi r18, 0;

	; set PORTD to OUTPUT
	ldi r16, 0xff
	out ddrd, r16

	rcall main

main:
	; Output value to GPIO
	mov r20, r18 ; Copy content r18 to r20 (temporary)
	; Shift bits (according to location of the pins)
	lsl r20
	lsl r20
	lsl r20
	out portd, r20

	rcall delay

	ldi r17, 1 ; increment
	add r18, r17 ; increment current counter

	cpi r18, 10 ; compare current counter if match 10
	breq reset ; if true, go to reset
	rjmp main ; if false, continue looping the 'main' block

reset:
	ldi r18, 0 ; reset counter to 0
	rjmp main

delay:
	ldi r24, 100
	ldi r25, 63
	ldi r26, 10

L1: dec  r26
    brne L1
    dec  r25
    brne L1
    dec  r24
    brne L1
	nop
	ret
