org 0H
ljmp main 
org 100H

	main:
		setb p1.4
		setb p1.5
		setb p1.6
		setb p1.7
		acall delay
		clr p1.4
		clr p1.5
		clr p1.6
		clr p1.7
		acall delay
		sjmp main

	delay:
		mov R2, #255

	delay1:
		mov R1, #255
		here: djnz R1, here
		djnz R2, delay1
	ret

end