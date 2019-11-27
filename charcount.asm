section .data
	source db 'This is string',0
	len equ $-source
	msg db "%s Count is %d",10,0
section .bss
	dest resb len
	b resb 0
section .text
	global main
	extern puts,printf
main:
	xor esi,esi
mm:
	mov ebx,-1
	mov edi,source
	cmp byte[source+esi],0
	jz end
	mov ecx,len
m:	xor eax,eax
	mov al,byte[source+esi]
	repnz scasb
	inc ebx
	cmp ecx,0
	jg m
q:	
	mov byte[b],al
	pusha
	push ebx
	push b
	push msg
	call printf
	add esp,12
	popa
	inc esi
	jmp mm
end:
