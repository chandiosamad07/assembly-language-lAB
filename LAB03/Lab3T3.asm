        .MODEL SMALL ; 64KB
.STACK 100H   ; 256

.DATA
msg DB 'Enter ending range number <1 to 9>: $'
msg1 DB 'The Numbers up to entered range are: $'

.CODE
MAIN PROC
    mov ax, @data  
    mov ds, ax

    mov ah, 09h     ;
    lea dx, msg
    int 21h

    mov ah, 01h     ; Read input from user
    int 21h
    sub al, 30h     
    mov cx, ax      
                  
    
    mov ah,02
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    
                  
    mov ah, 09h     
    lea dx, msg1
    int 21h

    mov bl, 01h     
loop_start:
    mov ah, 02h     
    mov dl, bl
    add dl, 30h     
    int 21h

    mov ah, 02h     
    mov dl, ' '
    int 21h

    inc bl          
    cmp bl, cl      
    jle loop_start  

    mov ah, 4ch    
    int 21h
MAIN ENDP

END MAIN
