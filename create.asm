section .data
	msg db "This is string",0
	len $equ -msg

section .bss
	a resd len
	b resd 0

section .text
	global main
	extern printf,puts

main:
	
