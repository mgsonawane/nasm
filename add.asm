section .rodata
	msg db "output is %d",10,0

section .text
	global main
	extern printf,add
main:
	enter 0,0
	mov ecx,4
	
	push ecx
	call add
	add esp,4
	
	push eax
	push msg
	call printf
	add esp,8
	leave
	ret
