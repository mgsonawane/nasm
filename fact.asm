section .data
	
section .rodata
	msg db "Facto is %d",10,0
	msg1 db "Fib no is %d",10,0

section .text
	global main
	extern printf,fun,fib
	
main:
	enter 0,0
	mov eax,30
	push eax
	call fun
	add esp,4
	
	push eax
	push msg
	call printf
	add esp,8
	
	mov eax,2
	push eax
	call fib
	add esp,4
	
	push eax
	push msg1
	call printf
	add esp,8
	leave
	ret

