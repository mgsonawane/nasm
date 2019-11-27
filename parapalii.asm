section .data
	str1 db "india madam iihii ihhi ",0
	len equ $-str1
	msg3 db "%d ",10,0
section .bss
	str2 resb len
	count resd 0
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
	inc esi
ll5:
	cmp ecx,ebx
	jge pal
	mov al,byte[str2+ecx]
	cmp byte[str2+ebx],al
	jne ll6
	inc ecx
	dec ebx
	jmp ll5
pal:
	add dword[count],1
;	pusha
;	push msg1
;	call puts
;	add esp,4
;	popa
	jmp mm
ll6:
	jmp mm

end:
	pusha
	push dword[count]
	push msg3
	call printf
	add esp,8
	popa
