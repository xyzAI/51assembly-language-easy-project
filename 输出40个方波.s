     ORG 0000H
     LJMP MAIN
     ORG 001BH
     LJMP TT1
     ORG 0030H
MAIN:MOV SP,#60H
	 MOV R0,#50H
     SETB EA		            
     SETB ET1
	 MOV TMOD, #00H            
	 MOV TH1, #0E0H	  
     MOV TL1, #18H		  
	 SETB TR1
	 SJMP $	 		   
TT1: DEC R0
     CJNE R0,#00H,LOOP
	 CLR EA
	 AJMP MM
LOOP:CPL P1.0
     MOV TH1, #0E0H	  
     MOV TL1, #18H	 		
MM:	 RETI 			
     END
