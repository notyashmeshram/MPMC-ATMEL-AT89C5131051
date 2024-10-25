LCD_data equ P2
LCD_rs equ P0.0
LCD_rw equ P0.1
LCD_en equ P0.2


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


delay: mov r0,#10
loop2: mov r1,#255
       loop1: djnz r1,loop1
       djnz r0,loop2
	ret
END