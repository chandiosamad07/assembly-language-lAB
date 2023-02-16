.model small
.stack 100h
.data
 var db '**********$'
.code
main proc
 mov ax, @data
 mov ds, ax
 mov ah, 09
 lea dx, var
 int 21h
mov ah, 02
mov dl,13
int 21h
mov dl, 10
int 21h
 mov ah, 09
 lea dx, var
 int 21h
mov ah, 02  
mov dl,13
int 21h
mov dl, 10
int 21h
 mov ah, 09
 lea dx, var
 int 21h
mov ah, 02  
mov dl,13
int 21h
mov dl, 10
int 21h
 mov ah, 09
 lea dx, var
 int 21h
mov ah, 02 
mov dl,13
int 21h
mov dl, 10
int 21h
 mov ah, 09
 lea dx, var
 int 21h
mov ah, 02  
mov dl,13
int 21h
mov dl, 10
int 21h
 mov ah, 09
 lea dx, var
 int 21h
mov ah, 02 
mov dl,13
int 21h
mov dl, 10
int 21h
 mov ah, 09
 lea dx, var
 int 21h
mov ah, 02  
mov dl,13
int 21h
mov dl, 10
int 21h
 mov ah, 09
 lea dx, var
 int 21h
mov ah, 02 
mov dl,13
int 21h
mov dl, 10
int 21h
 mov ah, 09
 lea dx, var
 int 21h
mov ah, 02 
mov dl,13
int 21h
mov dl, 10
int 21h
 mov ah, 09
 lea dx, var
 int 21h
 mov ah, 4ch
 int 21h
main endp
end main