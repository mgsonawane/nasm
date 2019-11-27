section .data
	source db 'This is string',0
	len equ $-source
	msg db "Count is %d",10,0
section .bss
	dest resb len
section .text
	global main
	extern puts,printf
main:
	mov ebx,-1
	mov edi,source
	mov ecx,len
m:	xor eax,eax
	mov al,' '
	repnz scasb
;	cmp byte[edi],0
;	jz q
	inc ebx
	cmp ecx,0
	jg m
q:	push ebx
	push msg
	call printf
	add esp,8
