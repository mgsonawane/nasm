section .data
	msg1 db "How many Values ??",10,0
	msg2 db " %d",0
	msg3 db "Op is ::",10,0
	msg4 db "%d ",0
	msg8 db " ",10,0
	msg5 db "Addition is ",10,0
	msg6 db "Provide  M ::",10,0
	msg7 db "Provide  N ::",10,0
	msg9 db "Enter %d numbers",10,0
	msg10 db "Addition is ::  %d ",10,0
	msg11 db "Diagonal Addition is::  %d",10,0
section .bss
	num resd 10
	b resd 1
	sum resd 1
	m resd 1
	n resd 1
section .text
	global main
	extern printf,scanf

main:
	push msg6
	call printf
	add esp,4

	pusha
	push m
	push msg2
	call scanf
	add esp,8
	popa
	
	push msg7
	call printf
	add esp,4

	pusha
	push n
	push msg2
	call scanf
	add esp,8
	popa

	xor ecx,ecx
	xor edx,edx
	xor eax,eax
	mov eax,dword[m]
	mul dword[n]
	mov dword[b],eax
	pusha
	push dword[b]
	push msg9
	call printf
	add esp,8
	popa

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
	inc ecx
	cmp ecx,dword[b]
	jl mm

	pusha
	push msg8
	call printf
	add esp,4
	popa

	
	xor ecx,ecx
	xor ebx,ebx
	xor esi, esi
	xor edi,edi
matr:  		
	pusha
	push dword[num+esi*4]
	push msg4
	call printf
	add esp,8
	popa
	inc ecx
	add edi,dword[num+esi*4]
	inc esi
	cmp ecx,dword[n]
	jl matr
	jge matr1
matr1:  inc ebx
	pusha
	push msg8
	call printf
	add esp,4
	popa
	xor ecx,ecx
	cmp ebx,dword[m]
	jl matr
	
ens:   pusha 
	push edi
	push msg10
	call printf
	add esp,8
	popa
	

