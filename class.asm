section .bss
	a1 resd 1
	b1 resb 10
section .text
	global main
main:
	mov eax ,10
	mov ebx,20
	add eax,ebx
	mov dword[a1],eax
	mov ecx,dword[a1]
