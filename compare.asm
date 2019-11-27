section .data
	msg1 db 'This is',0
	len equ $-msg1
	msg2 db 'This is',0
	msg3 db 'Strings are equal',0
	msg4 db 'strings are not equal',0
section .text
	global main
	extern puts
main:
	mov esi,msg1
	mov edi,msg2
	xor eax,eax
	mov ecx,len
	repe cmpsb
	je pp
	push msg4
	call puts
	add esp,4
	jmp end
pp:	push msg3
	call puts
	add esp,4
end:
