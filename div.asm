section .data
	inn dd 10,20,30
section .text 
	global main
	extern printf
main:
	mov eax,inn  ;address
	xor edx,edx
	mov ebx,dword[inn] ;value
	mov ecx,0
	add ebx,dword[inn+1*4]
	add ebx,dword[inn+2*4]
	div ebx
	ret
