section .data
	msg1 db "%c",0
section .bss 
	a resb 100
section .text
	global main
	extern puts,scanf
main:
	xor eax,eax
	pusha
	push [a]
	push msg1
	call scanf
	add esp,8
	popa
;	mov a,eax
;	push 
	mov eax,dword[a+0*1]
	push eax
	push msg1
	call puts
	add esp,8
