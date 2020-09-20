;program to print single character
.model small
.stack 100h
.data
.code
main proc
mov dl,'S'
mov ah,2
int 21h
mov ah,4Ch
int 21h
main endp
end main
