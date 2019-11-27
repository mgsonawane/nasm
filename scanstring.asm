section .data
	msg db "Enter String",10,0
	msg0 db "You Entered :: ",10,0
	msg1 db "%c",0
	msg2 equ $ -msg1
	msg3 db "%d",10,0
	msg4 db " ",10,0
section .bss
	a resb 100
	ip resb 100
section .text
	global main
	extern printf,scanf
	
main:
	mov     edx, 255        
    	mov     ecx, a    
    	mov     ebx, 0    
    	mov     eax, 3          
    	int     0x80
	
	pusha
	push msg0
	call printf
	add esp,4
	popa
	mov eax,0
	
llp:	cmp dword[a+eax*1],10
	jle end
	pusha
	push dword[a+eax*1]
	push msg1
	call printf
	add esp,8
	popa
	inc eax
	jmp llp
end:
	pusha
	push eax
	push msg3
	call printf
	add esp,8
	popa
