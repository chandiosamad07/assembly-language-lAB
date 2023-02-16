.MODEL SMALL
.STACK 100
.DATA
    MSG1 DB 'ENTER FIRST NUMBER$' 
    MSG2 DB 'ENTER SECOND NUMBER$'
    MSG3 DB 'AFTER SWIP $'    
    MSG4 DB 'ENTER FIRST NUMBER$' 
    MSG5 DB 'ENTER SECOND NUMBER$'
.CODE
MAIN PROC   
    MOV AX,@DATA
    MOV DS,AX
    LEA DX,MSG1
    
    MOV AH,9    ;Code for standard out (display)
    INT 21H
    
    
    MOV AH,1
    INT 21H  
   
    MOV BL,AL  
    
    MOV AH, 2   ;ASCII code of carriage return
    MOV DL, 10  ;ASCII code of line feed
    INT 21H  
    MOV DL,13
    INT 21H   
    
     MOV DL,13
    INT 21H
    LEA DX,MSG2
    
    
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL 
    
    MOV AH, 2   ;ASCII code of carriage return
    MOV DL, 10  ;ASCII code of line feed
    INT 21H  
    MOV DL,13
    INT 21H 
    
    
    MOV DL,13
    INT 21H
    LEA DX,MSG3
    MOV AH,9
    INT 21H  
    
    MOV AH, 2   ;ASCII code of carriage return
    MOV DL, 10  ;ASCII code of line feed
    INT 21H  
    MOV DL,13
    INT 21H  
              
 
    LEA DX,MSG4
    MOV AH,9
    INT 21H
    
    mov ah,2
    MOV DL,cl
    INT 21H   
    
    
    MOV AH, 2   ;ASCII code of carriage return
    MOV DL, 10  ;ASCII code of line feed
    INT 21H  
    MOV DL,13
    INT 21H  
              
 
    LEA DX,MSG5
    MOV AH,9
    INT 21H
    
    mov ah,2
    MOV DL,bl
    INT 21H  
MAIN ENDP
END

    
    
    