ORG 0000h
LJMP main
ORG 100h

delay: mov r0, #255
loop2: mov r1,#255
loop1:djnz r1,loop1
djnz r0,loop2
ret

LOOPLOOP: mov 44h,#01h

main:
mov R4,#01h
mov 40h,#05h
mov A,40h
add A,R4
mov 42H,A
MOV 44H,#00H
JC LOOPLOOP

SUBB A,#03H
MOV R2,A

ANL A,#0FH ;Extracting lower nibble
RR A
RR A
RR A
RR A
MOV R4,A

MOV A,R2
ANL A,#0F0H
MOV R5,A


looploop1: acall delay
mov p1,r5
jmp looploop2

looploop2:acall delay
mov p1,r4
jmp looploop1