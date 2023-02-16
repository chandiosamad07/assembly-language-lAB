.model small
.stack 100h
.data
var5 db '*****$'
var4 db '****$'
var3 db '***$'
var2 db '**$'
var1 db '*$'
.code
main proc
mov ax, @data
mov ds, ax
mov ah, 09 
lea dx, var5
int 21h  

mov ah, 02 
mov dl,13
int 21h
mov dl, 10 
int 21h
mov ah, 09
lea dx, var4
int 21h 


mov ah, 02  
mov dl,13
int 21h
mov dl, 10
int 21h  

mov ah, 09
lea dx, var3
int 21h 

mov ah, 02 
mov dl,13
int 21h
mov dl, 10
int 21h   

mov ah, 09
lea dx, var2
int 21h  

mov ah, 02 
mov dl,13
int 21h
mov dl, 10
int 21h
mov ah, 09
lea dx, var1
int 21h
mov ah, 4ch
int 21h
main endp
end main