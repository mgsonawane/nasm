section .data
	source db 'This is string',0
	len equ $-source

section .bss
	dest resb len
section .text
	global main
	extern puts
main:
	mov ecx,len
	dec ecx
	mov esi,source
	std
	mov edi,dest
	cld
	rep movsb
	push dest
	call puts
	add esp,4
