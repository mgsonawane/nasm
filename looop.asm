section .data
	source db 'This is string',0
	len equ $-source
section .bss
	dest resb len
section .text
	global main
	extern puts
main:
	mov ecx,len
	xor edx,edx
p:      xor eax,eax
	mov al,byte[source+edx]
	mov byte[des+edx],al
	inc edx
;;	inc ecx,jnz p
	loop p
	push dest
	call puts
	add esp,4
