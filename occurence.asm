section .data
        num db"this is string",0
        msg db "count id %d",10,0

section .bss
        a resd 1

section .text
        global main
        extern scanf,printf,puts

main:           
                mov eax,num
                xor ecx,ecx

q:              
                cmp byte[eax],"i"
                jz p
                inc eax
                cmp byte[eax],0
		jz endp
                jmp q

p:              inc ecx
                inc eax
                jmp q

		       
endp:	       
		pusha
		push ecx
                push msg
                call printf
		add esp,8
		popa



