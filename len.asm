section .data
	num db "string"
	len equ $-num
	mg db "my"
	msg db "count is %d",10,0
	msg1 db "%c",0

section .text
	global main
	extern printf
main:
	mov eax,len
	push eax
	push msg
	call printf
	add esp,8

