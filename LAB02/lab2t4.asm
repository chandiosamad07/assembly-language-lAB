.MODEL SMALL
.STACK 256 
.DATA
     MSG1 DB 'ENTER FIRST NUMBER  $' 
     MSG2 DB 'ENTER SECOND NUMBER $'
     MSG3 DB 'THE SUb OF TWO NUMBER $'
.CODE
MAIN PROC   
    
    MOV AX,@DATA
    MOV DS,AX
    LEA DX,MSG1
    
    
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H 
    
     
    MOV BL,AL 
    
   
    
    MOV AH, 2
       ;ASCII code of carriage return
    INT 21H
    MOV DL, 10  ;ASCII code of line feed
    INT 21H   
   
  
    MOV DL,13 
    
    INT 21H
    LEA DX,MSG2 
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H 
    
    
    
    SUB BL,AL
    ADD BL,48
  
   
    
    MOV AH, 2
    mov dl,13  
    int 21h   ;ASCII code of carriage return
    MOV DL, 10  ;ASCII code of line feed
    INT 21H  
    
    
    
    LEA DX,MSG3 
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
   
    MOV AH,4CH
    INT 21H
    
    
MAIN ENDP
END