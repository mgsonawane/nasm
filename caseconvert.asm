section .data
	msg1 db "Input::",10,0
	msg2 db "OUTPUT::",10,0
	st db "THis--is--strING",10,0
section .bss 
	a resb 1

section .text
	global main
	extern printf
main:
	push msg1
	call printf
	add esp,4

	push st
	call printf
	add esp,4

	push msg2
	call printf
	add esp,4

	mov eax,st
ll:
	cmp byte[eax],0
	jz end
	cmp byte[eax],67
	jl inn
	cmp byte[eax],96
	jg upper
	jl lower
inn:
        mov ecx,eax
        pusha
        mov eax,4
        mov ebx,1
        mov edx,1
        int 0X80
        popa
	inc eax
	jmp ll
upper:
	mov ebx,eax
        sub word[ebx],32
        mov ecx,ebx
        pusha
        mov eax,4
        mov ebx,1
        mov edx,1
        int 0X80
        popa
        inc eax
        jmp ll
	
lower:
	mov ebx,eax
	add word[ebx],32
        mov ecx,ebx
        pusha
        mov eax,4
        mov ebx,1
        mov edx,1
        int 0X80
        popa
	inc eax
	jmp ll
end:	
