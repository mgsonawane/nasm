section .data
	str1 db "hello madama iihiia ihhi ",0
	len equ $-str1
	msg2 db "%s",0
	msg3 db "%d ",10,0
section .bss
	str2 resb len
	str3 resb len
	count resd 0
	aa resd 0
	b resb 0
section .text
	global main
	extern printf,puts

main:
	mov ecx,len
	dec ecx
	mov esi,str1
	xor ebx,ebx
	mov dword[count],0
ll1:
	cmp ecx,0
	je ll2
	mov al,byte[esi]
	mov byte[str2+ebx],al
	inc ebx
	inc esi
	dec ecx
	jmp ll1
ll2:
	xor esi,esi
	mov edx,1
mm:
	mov edx,esi
	cmp edx,len
	jge end
	mov ecx,esi
	mov edi,ecx     ;start address
ll3:	
	cmp byte[str2+esi]," "
	je ll4
	cmp esi,len
	jge end
	inc esi
	jmp ll3
ll4:
	mov ebx,esi
	dec ebx
	mov dword[aa],ebx
	inc esi
ll5:
	cmp ecx,ebx
	jge printt
	mov al,byte[str2+ecx]
	cmp byte[str2+ebx],al
	jne ll6
	inc ecx
	dec ebx
	jmp ll5
printt: 
	mov al,byte[str2+edi]
	mov byte[b],al
	pusha
	push b
	push msg2
	call printf
	add esp,8
	popa
	inc edi
	cmp edi,esi
	jl printt
	jmp mm
ll6:
	jmp mm

end:
