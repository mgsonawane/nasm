section .data
	msg1 db "matrix x & y",10,0
	b db "%d",0
	msg4 dd 10
	msg3 db "%d ",0
section .bss
	aa resd 100
	m resd 1
	n resd 1
	mn resd 1
section .text
	global main
	extern printf,scanf
main:
	push msg1
	call printf
	add esp,4
	
	push m
	push b
	call scanf 
	add esp,8
	
	push n
	push b
	call scanf 
	add esp,8
	
	mov eax,dword[m]
	xor edx,edx
	mul dword[n]
	mov dword[mn],eax
	xor ecx,ecx
loopp:
	pusha
	push m
	push b
	call scanf
	add esp,8
	popa
	mov eax,dword[m]
	mov dword[aa+ecx*4],eax
	inc ecx
	cmp ecx,dword[mn]
	jl loopp
printt:
	xor ecx,ecx
pt:
	pusha
	push dword[aa+ecx*4]
	push msg3
	call printf
	add esp,8
	popa
	inc ecx
	cmp ecx,dword[mn]
	jl pt


