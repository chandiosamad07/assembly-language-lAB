.MODEL SMALL
.STACK 256
.DATA
    MSG1 DB 'AB$'
.CODE
                
MAIN PROC       
    
    MOV AX,@DATA
    MOV DS, AX
    LEA DX,MSG1
    
    MOV AH,9
    INT 21H   
    
    
    MOV AH,4CH
    INT 21H
   

MAIN ENDP
END