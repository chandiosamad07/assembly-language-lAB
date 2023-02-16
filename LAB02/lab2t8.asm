.Model Small
.Stack 100h
.data
var1 db "Enter Three Initials$"
var2 db ' '
.code
Main Proc
Mov ax,@data
Mov ds,ax
Mov ah,09
lea dx, var1 
Int 21h
Mov ah,01 
int 21h
Mov bl,al
Mov ah,01 
Int 21h
Mov cl,al 
Mov ah,01 
Int 21h
Mov var2,al 
Mov ah,02 
mov dl,13
int 21h
Mov dl,10 
Int 21h
Mov ah,02
Mov dl,bl 
Int 21h
Mov ah,02 
mov dl,13
int 21h
Mov dl,10 
Int 21h
Mov ah,02
Mov dl,cl 
Int 21h
Mov ah,02 
mov dl,13
int 21h
Mov dl,10 
Int 21h
Mov ah,02
Mov dl,var2
Int 21h
Mov ah,04ch
Int 21h
Main Endp
End Main