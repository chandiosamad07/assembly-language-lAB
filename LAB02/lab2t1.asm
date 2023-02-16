.MODEL SMALL
.STACK 256 
.DATA
     MSG1 DB 'ENTER A UPPER CASE LETTER $'
     MSG2 DB 'THE LOWER CASE $'
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
    
    ADD BL,32
    
    MOV AH, 2   ;ASCII code of carriage return
    INT 21H
    MOV DL, 10  ;ASCII code of line feed
    INT 21H   
    
    MOV DL,13
    INT 21H
    LEA DX,MSG2
    
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
   
    MOV AH,4CH
    INT 21H
    
    
MAIN ENDP
END