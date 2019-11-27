section .data
	msg0 db "How many no ?? ",10,0
	msg db "Enter no",10,0
	msg1 db "array is ::",10,0
	msg2 db " %d",0
section .bss
	n resd 1
	a resd 1
	num resd 1
	b resd 1
section .text
	global main
	extern printf,scanf
main:
	push msg0
	call printf
	add esp,4

	push n
	push msg2
	call scanf
	add esp,8
	mov esi,dword[n]
	xor ebx,ebx
	
lp:	cmp esi,0
	jz abc
	push a
	push msg2
	call scanf
	add esp,8
	mov edi,dword[a]
	mov dword[num+ebx*4],edi
	inc ebx
	dec esi
	jmp lp
abc:    xor ebx,ebx
	pusha
	push msg1
	call printf
	add esp,4
	popa
	mov esi,dword[b]
ll:	cmp ebx,dword[n]
	jz end
	push dword[num+ebx*4]
	push msg2
	call printf
	add esp,8
	inc ebx
	jmp ll
end:


