section .data
	msg db "Value is %d %d",10,0
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
	
	push dword[b]
	push dword[a]
	push msg
	call printf
	add esp,12
	
