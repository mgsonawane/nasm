section .data
	a db "%d",0
	b db "even",0
	c db "odd",0

section .bss
	n resd 1
	n1 resd 1

section .text
	global main
	extern scanf,printf

main:  
	xor ecx,ecx
	xor eax,eax
	pusha

	push n
	push a
	call scanf
	add esp,8
	popa
	mov eax,dword[n]
	mov ebx,1
loop: 
	cmp eax,0
	je even
	cmp eax,ebx
	je odd
	
	dec eax
	dec eax
	
	jmp loop


even:
	 push eax
	   push b
	call printf
	add esp,8
	ret
odd:    
	
	 push eax
	   push c
	call printf
	add esp,8
	ret
