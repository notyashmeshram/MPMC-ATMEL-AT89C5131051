org 0000h
ljmp main

org 0100h
main:
mov p1, #00h
mov tmod, #01h

ReadNibble:
loop: ; Routine to read a nibble and confirm from user
clr p1.4
clr p1.5
clr p1.6
clr p1.7

;configure the port P1.0-P1.3 as input (to configure a port as input, set it) and turn on all 4 leds (to indicate program is ready to accept input)
setb p1.0;
setb p1.1;
setb p1.2;
setb p1.3;

cpl p1.4
cpl p1.5
cpl p1.6
cpl p1.7
;wait for 5 sec during which user can give input through switches
acall delay
acall delay
acall delay
acall delay
acall delay
;turn off all LEDS
clr p1.4
clr p1.5
clr p1.6
clr p1.7
;save the read value in a register
mov a,p1
rr a
rr a
rr a
rr a

;wait for one sec
acall delay
;show the read value on LEDs
mov p1,a
;wait for 5 sec (during this time delay, user can put all switches to OFF position to signal that the read value is correct and routine can proceed to next step)
acall delay
acall delay
acall delay
acall delay
acall delay


;clear leds
clr p1.4
clr p1.5
clr p1.6
clr p1.7
;read the input from switches
mov a,p1
;if read value < or > 00h go to loop

;otherwise return and store previously read nibble in location 60H (lower 4 bits).
mov 60H,a
ret



delay: mov r0, #16H
mov tl0, #00h
mov th0, #00h
setb tr0

timerloop: jnb tf0, timerloop
clr tf0
djnz r0, timerloop
clr tr0
ret