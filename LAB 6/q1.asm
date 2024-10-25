
ORG 0000H
ljmp start

org 200h
start:
	mov P2,#00h
	acall delay
	acall delay
	acall lcd_init
	acall delay
	acall delay
	acall delay
	mov a,#085h
	acall lcd_command
	acall delay
	acall lcd_senddata
	acall delay

here: sjmp here

acall lcd_init

mov dptr,#my_string1

here: sjmp here ;stay here


lcd_init:
	mov A, #38H
	acall lcd_command

	mov A, #0CH
	acall lcd_command

	mov A, #01H
	acall lcd_command

	mov A, #06H
	acall lcd_command

ret


lcd_command:

	mov LCD_data, A
	clr LCD_rs
	clr LCD_rw
	setb LCD_en
		acall delay
	clr LCD_en
		acall delay
ret

lcd_senddata:

	mov a, #'p'
	mov LCD_data, a
	setb LCD_rs
	clr LCD_rw
	setb LCD_en
		acall delay
	clr LCD_en
	acall delay
		acall delay

ret


lcd_sendstring:

;push 0e0h ; push value of accumulator (use in case accumulator is prestored with some other data)
;clear Accumulator for any previous data
;load the first character in accumulator using movc command that loads data from dptr location
;go to exit if zero
;send first character
;increment data pointer
;jump back to send the next character
exit: 
ret 


delay: mov r0,#10
loop2: mov r1,#255
       loop1: djnz r1,loop1
       djnz r0,loop2
	ret


org 300h
my_string1:
DB 'AABBCC', 00H
my_string2:
DB 'ABCDEF', 00H
End
