org 0H
ljmp main 
org 100H

	main:
		setb p1.4
		acall delay
		clr p1.4
		acall delay
		acall delay
		acall delay
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