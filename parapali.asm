section .data
	str1 db "9102019",0
	len equ $-str1
	msg1 db "string is palindrome",10,0
	msg2 db "string is not palindrome",10,0

section .bss
	str2 resb len
	str3 resb len
	a resb 0
	lenn resb 10
section .text
	global main
	extern printf,puts

main:

	mov edi,str1
	mov esi,edi
	mov ebx,esi
	mov ecx,len

home:	
	xor eax,eax
	mov al," "
	repne scasb
	mov ebx,edi
	sub ebx,esi
	dec ebx
	xor eax,eax
ll:	cmp ebx,0
	je end
	mov dl,byte[esi]
	mov byte[str2+eax],dl
	dec ebx
	inc esi
	inc eax
	jmp ll
end:
	dec eax
	xor ebx,ebx
end1:	cmp eax,0
	je end2
	mov dl,byte[str2+eax]
	mov byte[str3+ebx],dl
	inc ebx
	dec eax
	jmp end1
end2:
	mov dl,byte[str2+eax]
	mov byte[str3+ebx],dl
	pusha
	push str2
	call puts
	add esp,4	
	popa
	pusha
	push msg1
	call printf
	add esp,4
	popa
	cmp ecx,0
	je end3
	jmp home
end3:	
