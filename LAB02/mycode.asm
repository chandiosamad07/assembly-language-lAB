.MODEL SAMLL
.STACK 100H  
.DATA 
    MSG1 DB 'Enter Any Number: $'
    MSG2 DB 'The number is $'
.CODE
MAIN PROC                   
    
    MOV AX,@DATA
    MOV DS,AX
    LEA DX,MSG1
    
    
    
    MOV AH,9    ;Code for standard out (display)
    INT 21H       ;Interrupt

    MOV AH,1
    INT 21H  
    
    MOV BL,AL
        
    
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
    
   
    MOV AH, 4CH   ;Exit the program and give control back to DOS
    INT 21H
MAIN ENDP
END MAIN