org 0000h
ljmp main
org 000bh ; Interrupt service routine during Timer 0 (T0) overflow
ljmp interrupt_routine
org 100h
main:
; Take a 16 bit number N as input to load in TL0 and TH0 for the required time delay.
;Store upper byte in R1 and lower byte in R0
; Enabling interrupt from T0
mov p1,#88h
mov R1,#00h
mov R0,#00h
mov R2,#91h
setb EA
setb ET0
; Initializing timer count
mov th0, R1 ; TH0 = R1
mov tl0, R0 ; TL0 = R0\

; Enabling the timer T0 to run. To start Timer 0, set tr0(TCON.4). Whenever T0
;overflows, TF0 will be set (TCON.5), and the currently running program will be
;interrupted.
mov tmod, #10h ; setting mode 1 and timer 0
setb tr0
here: sjmp here
org 300h
interrupt_routine:
; restore the count
mov th0,R1 ; TH0 = R1
mov tl0,R0; TL0 = R0
djnz R2,loop
; code to blink LEDs for the desired time period.
mov a,p1
rr a
mov p1,a
mov R2,#91h
loop:
reti
end

