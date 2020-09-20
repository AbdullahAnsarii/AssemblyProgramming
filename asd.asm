.model small
.data

string1 db 20
	db ?
	db 20 dup('$')
string2	db 20 dup('$')
.code
	mov AX,@data
	mov DS,AX
	mov ES,DS
	
	LEA DX,string1
	mov AH,0AH
	INT 21H
	mov CL,string1+1
	mov CH,0
	
	LEA SI,string1+2
	LEA DI,string2
	REP MOVSB

	MOV AH,2H
	MOV DL,CL
	ADD DL,30H
	INT 21H
	end