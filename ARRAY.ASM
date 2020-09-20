.model small
.stack 100h
.data
array db 'abdullah'
.code
main proc
mov ax, @data
mov ds, ax
mov si, offset array
mov dx, [si]
mov ah, 2
int 21h
mov ah, 10
int 21h
mov ah, 13
int 21h


mov dx, [si+3]
mov ah, 2
int 21h
mov ah,4ch
int 21h
main endp
end main

