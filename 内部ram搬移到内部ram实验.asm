  ORG 0000H
	   MOV R0,#50H
	   MOV A,#00H
	   MOV R7,#10
	   MOV R4,#10
LOOP: MOV @R0,A
       INC R0
	     INC A
	     DJNZ R7,LOOP
	     CLR A
	     MOV R0,#50H
	     MOV R1,#69H
LOOP1: MOV A,@R0
	     MOV @R1,A
       INC R0
	     DEC R1
	     DJNZ R4,LOOP1
	     END  
