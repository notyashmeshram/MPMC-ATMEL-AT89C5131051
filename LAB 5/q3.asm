org 0H
ljmp main 
org 100H

	main:
		setb p1.4
		acall delay4
		clr p1.4
		acall delay4
		setb p1.5
		acall delay5
		clr p1.5
		acall delay5
		setb p1.6
		acall delay6
		clr p1.6
		acall delay6
		setb p1.7
		acall delay7
		clr p1.7
		acall delay7
		sjmp main

	delay4:
		mov R2, #255
	delay5:
		mov R2, #235
	delay6:
		mov R2, #215
	delay7:
		mov R2, #195

	delay1:
		mov R1, #255
		here: djnz R1, here
		djnz R2, delay1
	ret

end