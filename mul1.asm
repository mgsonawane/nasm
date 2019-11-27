section .data
	msg db "value is %d",10,0

section .text 
	global main
	extern printf
main:
	xor eax,eax
	mov eax,100000
	mov ecx,200000
	mul ecx
	push dword[edx]
	push msg
	call printf
	add esp,8
