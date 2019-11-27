section .data
	nn db "-------------------------",10,0
	msg db "Enter the numbers :",10,0
	msg0 db "addition is %d",10,0
	msg1 db "Substraction is %d",10,0
	msg2 db "Multiplication is %d",10,0
	msg3 db "Division is %d",10,0
	msg4 db "Remainder is %d",10,0
	msg5 db "%d %d",0

section .bss
	a resd 1   ; int a  means does not initialized with data
	b resd 1

section .text
	global main
	extern scanf,printf

main:
	push msg
	call printf
	add esp,4

	push b
	push a
	push msg5
	call scanf
	add esp,12
	
	xor ebx,ebx
	mov ebx,dword[a]
	add ebx,dword[b]

	push ebx			;push dword[a]
	push msg0
	call printf
	add esp,8
	
	push nn
	call printf
	add esp,4

	;substration
	
	xor ebx,ebx
	mov ebx,dword[a]
	sub ebx,dword[b] 
			;push dword[b]
	push ebx			;push dword[a]
	push msg1
	call printf
	add esp,8

	;MULTIPLICATION	
	
	push nn
	call printf
	add esp,4

	xor edx,edx
	mov eax,dword[a]
	mul dword[b] 

	push eax			;push dword[a]
	push msg2
	call printf
	add esp,8

	;DIVISION
	
	push nn
	call printf
	add esp,4
		
	xor ebx,ebx
	xor edx,edx
	mov eax,dword[a]
	div dword[b] 
			;push dword[b]
	push eax			;push dword[a]
	push msg3
	call printf
	add esp,8
	
	push nn
	call printf
	add esp,4
		
	xor ebx,ebx
	xor edx,edx
	mov eax,dword[a]
	div dword[b]
 
	push edx			;push dword[a]
	push msg4
	call printf
	add esp,8
	
