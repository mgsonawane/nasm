section .data
	msg1 db "How many Values ??",10,0
	msg2 db " %d",0
	msg3 db "Op is ::",10,0
	msg4 db "%d",10,0
	msg5 db "Addition is ",10,0
	msg6 db "Average is ::",10,0
	msg7 db "Even Numbers",10,0
	msg8 db "Odd numbers ",10,0
section .bss
	num resd 10
	b resd 1
	sum resd 1
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

	push msg3
	call printf
        add esp,4
	xor ecx,ecx
	xor esi,esi
mm: 	pusha
        push dword[num+ecx*4]
	push msg4
	call printf
	add esp,8
	popa
	add esi,dword[num+ecx*4]
	inc ecx
	cmp ecx,dword[b]
	jl mm

	push msg5
	call printf 
	add esp,4

	pusha
	push esi
	mov dword[sum],esi
	push msg4
	call printf
	add esp,8
	popa
	xor edx,edx
	xor ecx,ecx

	mov eax,dword[sum]
	div dword[b]
	pusha
	push msg6
	call printf 
	add esp,4
	popa
	pusha 
	push eax
	push msg4
	call printf
	add esp,8
	popa

	push msg7
	call printf
	add esp,4

	xor ebx,ebx
	xor ecx,ecx
	
ev:     mov ebx,2
	xor edx,edx
	mov eax,dword[num+ecx*4]
	div ebx
	mov esi,edx
	cmp esi,0
	jne ev1
	pusha
	push dword[num+ecx*4]
        push msg4
	call printf
	add esp,8
	popa
	inc ecx
	cmp ecx,dword[b]
	jl ev
	jmp prii
	

ev1:	pusha
	push dword[num+ecx*4]
	push msg4
	call printf
	add esp,8
	popa
	inc ecx
	cmp ecx,dword[b]
	jl ev
prii:
