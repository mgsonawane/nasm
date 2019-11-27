

section .data
	msg1 db " This mangesh is string yes ",10,0
	msg2 db "mangesh",10,0
	len equ $-msg1
	msg3 db "Is Substring"
section .bss
section .text
	global main
	extern puts
main:
        mov edi,msg1
ll:
	mov esi,msg2
        xor eax,eax
ll2: 
	inc edi
       mov al,byte[esi]
	cmp byte[edi],al
	jne ll1
	inc esi
	inc edi
	cmp byte[esi],10
        jz printt
	jmp ll2
ll1:
        mov al,' '
        cmp byte[edi],al
	je ll
	cmp byte[edi],10
	je end
	jmp ll1
printt:
        mov ecx,msg3
        mov eax,4
        mov ebx,1
        mov edx,20
        int 0x80
end:
