section .data
	st db "Hii How Are you",0
	msg db "Asci value is",10,0
section .bss 
	a resb 1

section .text
	global main
	extern printf
main:
	mov eax,st
	cmp byte[eax],96
	jg upper
	jl lower
upper:
	
lower:
	add ebx,32
	add ebx,word[eax]
	mov ecx,ebx
	pusha
	mov eax,4
	mov ebx,1
	mov edx,1
	int 0X80	
	popa
