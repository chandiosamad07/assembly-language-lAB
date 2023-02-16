.MODEL SMALL ;64KB
.STACK 100H  ;256
.data
    msg1 DB 'Abdul Samad $'
.CODE
MAIN PROC   
    
    mov ax, @data
    mov ds, ax
    MOV AH, 02  ;Code for standard out (display)
    
    MOV CX,10

    MY_LABEL:
 
    mov ah, 09
    lea dx,msg1
    int 21h
    
    mov ah,02
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    
    LOOP MY_LABEL
    
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN