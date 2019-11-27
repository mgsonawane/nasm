section .data
	msg db "value is %d",10,0

section .text 
	global main
	extern printf
main:
	xor eax,eax
	mov ebx,10
	mov ecx,20
	sub ebx,ecx
	mov eax,ebx
	push eax
	push msg
	call printf
	add esp,8
