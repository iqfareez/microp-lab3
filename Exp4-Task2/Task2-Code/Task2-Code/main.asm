;
; Task2-Code.asm
;
; Created: 2/12/2022 9:08:51 PM
; Author : G2 - Iqmal
;

; Replace with your application code
start:
    ldi r16, 0xff ; HIGH
	ldi r17, 0x00 ; LOW
    out ddrd, r16 ; Direction PORTD as OUTPUT

	; Setting for TCCR0A
	ldi r18, 0b10000011 ; Normal output channel A, disable PWM channel B, Phase correct PWM
	out tccr0a, r18
	; Setting for TCCR0B
	ldi r18, 0b00000011 ; pre-scalar 64
	out tccr0b, r18

slow:
	ldi r19, 23 ; duty cycle 9%
	out ocr0a, r19
	rcall delay
	rjmp medium

medium:
	ldi r19, 120 ; duty cycle 47%
	out ocr0a, r19
	rcall delay
	rjmp fast

fast:
	ldi r19, 255 ; duty cycle 100%
	out ocr0a, r19
	rcall delay
	rjmp slow

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
	