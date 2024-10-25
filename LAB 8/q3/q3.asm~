mov p1, #00h
mov tmod, #01h

loop: 
cpl p1.5
acall delay
acall delay


clr p1.5
cpl p1.6
acall delay

clr p1.6
cpl p1.7
acall delay
acall delay
acall delay

clr p1.7
sjmp loop

delay: mov r0, #16H
mov tl0, #00h
mov th0, #00h
setb tr0

timerloop: jnb tf0, timerloop
clr tf0
djnz r0, timerloop
clr tr0
ret


end