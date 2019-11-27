section .data
	num dd 10,20,30,40,50
	msg db "count is %d",10,0
section .bss
	n resd 1
section .text
	global main
	extern printf
main:
	mov ebx,num
	mov eax,msg
	sub eax,ebx
	xor edx,edx
	mov ecx,4
	div ecx
	mov ebx,eax
	pusha
	push eax
	push msg
	call printf
	add esp,8
	popa
	dec eax

lp:	cmp eax,0
	jl end
	pusha
	push dword[num+eax*4]
	push msg
	call printf
	add esp,8
	popa
	dec eax
	jmp lp

end:
