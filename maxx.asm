section .data
	num dd 50,70,30,40,-1
	msg1 db "maxx is %d",10,0

section .bss
	maxx resd 1
section .text 
	global main
	extern printf

main :
	mov dword[maxx],0
	xor ecx,ecx

lp:
	mov eax,dword[num + ecx*4]
	cmp eax,-1
	jz abc
	cmp dword[maxx],eax
	jl a
	inc ecx
	jmp lp 

a:      mov dword[maxx],eax
	inc ecx
	jmp lp

abc:    
	pusha
	push dword[maxx]
	push msg1
	call printf
	add esp,8
	popa
