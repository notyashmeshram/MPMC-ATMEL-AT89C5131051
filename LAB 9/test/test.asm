ORG 0000H
ljmp start
start:
mov R0,#23H
mov 40H,#54H
mov A,40H
addc A,R0

MOV 42H,A
MOV 44H,#00H
JC L1
JNC ASCII
L1:
MOV R1,#01H
MOV 44H,R1 


ASCII:
ANL A,#0FH ;Extracting lower nibble
MOV R3,A ;Store the value in a temporary variable
SUBB A,#0AH ;Check whether the nibble is digit or alphabet
JNC ALPHABET;Jump to routine ALPHABET if it is an alphabet
NUM:
MOV A,R3 ;If it is a digit, move it to accumulator
ADD A,#30H ;Add 30H to convert a digit to ASCII
JMP EXITASCII
ALPHABET:
MOV A,R3 ;If it is an alphabet, move it to accumulator
ADD A,#37H ;Add 37H to convert a character to ASCII
JMP EXITASCII
EXITASCII:

MOV r7,A



MOV A,42H
SWAP A


ASC:
ANL A,#0FH ;Extracting lower nibble
MOV R3,A ;Store the value in a temporary variable
SUBB A,#0AH ;Check whether the nibble is digit or alphabet
JNC ALPHAB;Jump to routine ALPHABET if it is an alphabet
N:
MOV A,R3 ;If it is a digit, move it to accumulator
ADD A,#30H ;Add 30H to convert a digit to ASCII
JMP EXITASC
ALPHAB:
MOV A,R3 ;If it is an alphabet, move it to accumulator
ADD A,#37H ;Add 37H to convert a character to ASCII
JMP EXITASC
EXITASC:

MOV r4,A
MOV A,44H
ASCI:
ANL A,#0FH ;Extracting lower nibble
MOV R3,A ;Store the value in a temporary variable
SUBB A,#0AH ;Check whether the nibble is digit or alphabet
JNC ALPHABE;Jump to routine ALPHABET if it is an alphabet
NU:
MOV A,R3 ;If it is a digit, move it to accumulator
ADD A,#30H ;Add 30H to convert a digit to ASCII
JMP EXITASCI
ALPHABE:
MOV A,R3 ;If it is an alphabet, move it to accumulator
ADD A,#37H ;Add 37H to convert a character to ASCII
JMP EXITASCI
EXITASCI:

MOV 44H,A
LED:
mov P2,#00h
acall delay
acall delay
acall lcd_init
acall delay
acall delay
acall delay
mov a,#0CFh
acall lcd_command
acall delay
mov a,44H
acall lcd_senddata
mov a,#081h
acall lcd_command
acall delay
mov a,R7
acall lcd_senddata
mov a,#080h
acall lcd_command
acall delay
mov a,R4
acall lcd_senddata

acall delay
here:sjmp here

;delay routine
delay: mov r0,#10
loop2: mov r1,#255
loop1: djnz r1,loop1
djnz r0, loop2
ret

;data sending routine
lcd_senddata:

mov LCD_data, a
setb LCD_rs
clr LCD_en
setb LCD_en
acall delay
clr LCD_en
acall delay
acall delay
ret

;command sending routing
lcd_command:
mov LCD_data,A
clr LCD_rs
clr LCD_rw
setb LCD_en
acall delay
clr LCD_en
acall delay
ret

;LCD initialisation routine
lcd_init:
mov A,#38H
acall lcd_command
mov A,#0CH
acall lcd_command
mov A,#01H
acall lcd_command
mov A,#06H
acall lcd_command
ret
LCD_data equ P2
LCD_rs equ P0.0
LCD_rw equ P0.1
LCD_en equ P0.2