LCD_data equ P2
LCD_rs equ P0.0
LCD_rw equ P0.1
LCD_en equ P0.2
org 0000h

main: 
	mov P2,#00h
	acall lcd_init
	mov r4,#05h
	mov r5,#083h
Loop:	
	mov p1,#0F0h
	acall delay
	mov p1,#00h
	setb p1.0
	setb p1.1
	setb p1.2
	setb p1.3
	acall delay
	mov a, p1
	anl a,#0Fh
	mov r2,a
	acall delay
	mov p1,#0F0h
	acall delay
	mov p1,#00h
	setb p1.0
	setb p1.1
	setb p1.2
	setb p1.3
	acall delay
	mov a, p1
	anl a,#0Fh
	mov r3,a
	mov a,r2
	swap a
	add a,r3
	mov 62h,a
	mov A,r5
	acall lcd_command
	mov a,62h
	acall ASCII
	acall lcd_senddata
	inc r5
	djnz r4,Loop
ljmp main





delay: mov r0,#255
loop2: mov r1,#25
	mov r7,#1
loop1: 
loop3:
djnz r7, loop3
djnz r1, loop1
djnz r0, loop2
ret

delay1: mov r0,#255
loop21: mov r1,#1
	mov r7,#1
loop11: 
loop31:
djnz r7, loop31
djnz r1, loop11
djnz r0, loop21
ret

lcd_init:mov A,#38H
	acall lcd_command
	mov A,#0CH
	acall lcd_command
	mov A,#01H
	acall lcd_command
	mov A,#06H
	acall lcd_command
	ret

 lcd_command:
 mov LCD_data,A
 clr LCD_rs
 clr LCD_rw
 setb LCD_en
 acall delay
 clr LCD_en
 acall delay
 ret

lcd_senddata:
mov LCD_data, a
setb LCD_rs
 clr LCD_rw
 setb LCD_en
 acall delay
 clr LCD_en
 acall delay
 acall delay
 ret

ASCII:ANL A,#0FH  ;Extracting lower nibble
MOV R3,A    ;Store the value in a temporary variable
SUBB A,#0AH ;Check whether the nibble is digit or alphabet
JNC ALPHABET;Jump to routine ALPHABET if it is an alphabet
NUM:MOV A,R3    ;If it is a digit, move it to accumulator
ADD A,#30H  ;Add 30H to convert a digit to ASCII
JMP EXITASCII
ALPHABET:MOV A,R3    ;If it is an alphabet, move it to accumulator
ADD A,#37H  ;Add 37H to convert a character to ASCII
JMP EXITASCII
EXITASCII:
RET
				
		
end

