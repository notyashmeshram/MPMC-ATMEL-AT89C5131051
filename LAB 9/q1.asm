org 0000h
ljmp main

org 0100h
main:
mov p1, #00h
mov tmod, #01h

ReadNibble: ; Routine to read a nibble and confirm from user
loop:
setb P1.0
setb P1.1
setb P1.2
setb P1.3

mov P1, #0ffh ;turn on all 4 leds (to indicate program is ready to accept input)
acall delay  ;wait for 5 sec during which user can give input through switches
acall delay
acall delay
acall delay
acall delay
clr P1.4 ;turn off all LEDS
clr P1.5
clr P1.6
clr P1.7 
mov a, P1 ;save the read value in a register
acall delay ;wait for one sec
rr a
rr a
rr a
rr a
cpl a
mov P1,a ;show the read value on LEDs
acall delay ;wait for 5 sec (during this time delay, user can put all switches to OFF position to ;signal that the read value is correct and routine can proceed to next step)
acall delay
acall delay
acall delay
acall delay

clr P1.4 ;clear leds
clr P1.5
clr P1.6
clr P1.7 

;read the input from switches
;if read value < or > 00h go to loop
mov 60h,a;otherwise return and store previously read nibble in location 60H (lower 4 bits).
sjmp loop
delay: 	mov r0, #16H
 	mov tl0, #00h
 	mov th0, #00h
 	setb tr0
timerloop: jnb tf0, timerloop
	clr tf0
	djnz r0, timerloop
	clr tr0
	ret

end