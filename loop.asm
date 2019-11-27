section .data
	num dd 10,20,30,40,-1
	msg1 db "Sum is %d",10,0
	msg2 db "mul is %d",10,0

section .bss
	sum resd 1
section .text 
	global main
	extern printf

main :
	mov dword[sum],0
	xor ecx,ecx

lp:
	mov eax,dword[num + ecx*4]
	cmp eax,-1
	jz abc
	add dword[sum],eax
	inc ecx
	jmp lp

abc:    
	pusha
	push dword[sum]
	push msg1
	call printf
	add esp,8
	popa
	
	xor edx,edx
	mov ebx,5
	mov eax,dword[sum]
	div ebx
	
	pusha
	push eax
	push msg2
	call printf
	add esp,8
	popa
	
