.MODEL SMALL ;64KB
.STACK 100H  ;256

.CODE
MAIN PROC
    MOV AH, 02  ;Code for standard out (display)
    
    MOV CX,26
    MOV BL,97
    
    MY_LABEL:
    
    MOV DL, BL  ;Data/character to be displayed
    INT 21H     ;Interrupt
    
    INC BL ; BL = BL+1
    
    LOOP MY_LABEL
    
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN