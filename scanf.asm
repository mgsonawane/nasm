section .data
	msg db "Value is %d",10,0
	msg1 db "%d",0

section .bss
	a resd 1   ; int a  means does not initialized with data

section .text
	global main
	extern scanf,printf

main:
	push a
	push msg1
	call scanf
	add esp,8

	push dword[a]
	push msg
	call printf
	add esp,8
	
