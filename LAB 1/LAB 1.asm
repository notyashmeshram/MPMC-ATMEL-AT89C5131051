#ORG 0000H

	   LHLD 7601
	   XCHG
                     LHLD 7603
 	   MVI C,00
 	   DAD D
                     JNC APPLE
  	   INR C
APPLE:          
	   SHLD 7500
	 MOV A,C
	   STA 7502
	   HLT


# ORG 7601H
# DB FFH,FFH,FFH,FFH


