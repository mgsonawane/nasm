section .data
	msg1 db "How many Values ??",0
	msg2 db " %d",0
	msg3 db "Sorted array is ::",10,0
	msg4 db "%d ",10,0
section .bss
	num resd 10
	b resd 1
	sum resd 1
	temp resd 1
section .text
	global main
	extern printf,scanf

main:
	push msg1
	call printf
	add esp,4

	push b
	push msg2
	call scanf 
	add esp,8

	xor ecx,ecx
	
llp:    xor edx,edx
	mov eax,4
	mul ecx
	mov edx,num
	add edx,eax
	pusha
	push edx
	push msg2
	call scanf 
	add esp,8
	popa
	inc ecx
	cmp ecx,dword[b]
	jl llp

	xor ecx,ecx
	xor esi,esi
	mov eax,-1
	dec dword[b]
	dec dword[b]
outer:
	inc eax
	cmp eax,dword[b]
	jg end
inner:
	xor ebx,ebx
inner1:
	cmp ebx,dword[b]
	jg outer
	mov ecx,dword[num+ebx*4]
	inc ebx
	mov esi,dword[num+ebx*4]
	cmp esi,ecx
	jge inner1
	mov dword[temp],ecx
	mov ecx,esi
	mov esi,dword[temp]
	mov dword[num+ebx*4],esi
	dec ebx
	mov dword[num+ebx*4],ecx
	inc ebx
	jmp inner1

end:
	xor ecx,ecx
	inc dword[b]
	inc dword[b]
	pusha
	push msg3
	call printf
	add esp,4
	popa
pp:
	cmp ecx,dword[b]
	jge end1
	pusha
	push dword[num+ecx*4]
	push msg4
	call printf
	add esp,8
	popa
	inc ecx
	jmp pp
end1:
