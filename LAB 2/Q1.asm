#ORG 0000H

	   LHLD 7500H
	   XRA A
  LOOP:           ADD H
	     DCR L
	     JNZ LOOP
	  STA 7504
   	  HLT


# ORG 7500H
# DB 08H,03H

