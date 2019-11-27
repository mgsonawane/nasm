section .data
	str1 db "India madam hii ihi"
	len equ $-str1
	msg1 db "string is palindrome",10,0
	msg2 db "string is not palindrome",10,0

section .bss
	str2 resb len
section .text
	global main
	extern printf,puts

main:
	mov ecx,len
	mov esi,str1
	mov edi,str2
	add esi,len
	dec esi
p:
	std 
	lodsb
	cld
	stosb
	loop p

	mov esi,str1
	mov edi,str2
	mov ecx,len
	xor eax,eax
	repe cmpsb
	je end
	push msg2
	call puts
	add esp,4
	jmp end1
end:
	push msg1
	call puts
	add esp,4
end1:
