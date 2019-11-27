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
	extern printf,scanf,puts
	
main:
	mov     edx, 255        
    	mov     ecx, a    
    	mov     ebx, 0    
    	mov     eax, 3          
    	int     0x80
	xor ecx,ecx
ll:
	pusha
	push dword[a+ecx*1]
	push msg1
	call printf
	add esp,8
	popa
	inc ecx
	cmp dword[a+ecx*1],10   ;10='\n'
	jg ll
