section .data
	msg db "addition is %d",10,0
	msg1 db "%d %d",0

section .bss
	a resd 1   ; int a  means does not initialized with data
	b resd 1

section .text
	global main
	extern scanf,printf

main:
	push b
	push a
	push msg1
	call scanf
	add esp,12
	
	xor ebx,ebx
	mov ebx,dword[a]
	add ebx,dword[b] 
			;push dword[b]
	push ebx			;push dword[a]
	push msg
	call printf
	add esp,8
	
