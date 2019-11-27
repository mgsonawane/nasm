section .data
	source db 'This is string',0
	len equ $-source
section .bss
	dest resb len
section .text
	global main
	extern puts
main:
	mov edi,source
	xor eax,eax
	mov al,'i'
	mov ecx,len
	repnz scasb
	push edi
	call puts
	add esp,4
