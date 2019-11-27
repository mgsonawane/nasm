section .data
	source db 'This is string',0
	m db " ",10,0
	len equ $-source
	len1 equ $-m

section .bss
	dest resb len
section .text
	global main
	extern puts
main:
	mov ecx,len
	mov esi,
	mov edi,dest
	std
	repnz movsb
	push dest
	call puts
	add esp,4
