.model small
.stack 100h
.data
.code
main proc
mov cx,5
l1:
mov dl,'a'
mov ah,02
int 21h
mov bx,cx
mov cx,3 

mov ah,02
mov dl,13
int 21h
mov dl,10
int 21h   

loop l1
mov ah,4ch
int 21h
main endp
end main
