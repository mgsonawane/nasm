section .data
	msg db "17155,Mangesh Sonawane,m,msc,84",0
	    db "17156,Deva Suravase,m,msc,77",0
	    db "17157,Gayatri guldagad,g,mca,80",0
	    db "18155,Vaibhav Chavan,m,mca,82",0
	len equ $-msg
	msg1 db "%d",0
section .bss 
	summ resb 10
section .text
	global main
	extern printf,puts
main:
	xor edx,edx
	mov edi,msg
	mov ecx,len
mmm:
	xor eax,eax
	mov al,','
	repnz scasb
	mov esi,edi
	xor eax,eax
	mov al,' '
	repnz scasb
	mov ebx,edi
	sub ebx,esi
	xor eax,eax
	mov al,','
	repnz scasb
	cmp byte[edi],'m'
	jne mm
	xor eax,eax
	mov al,','
	repnz scasb
	cmp byte[edi],'m'
	jne mm
	inc edi
	cmp byte[edi],'s'
	jne mm
	inc edi
	cmp byte[edi],'c'
	jne mm
	pusha
	mov ecx,esi
	mov edx,ebx
	mov eax,4
	mov ebx,1
	int 0x80
	popa	
	inc edi
	inc edi
	pusha 
	push edi
	call puts
	add esp,4
	popa

mm:    cmp ecx,0
       je end
	xor eax,eax
	repnz scasb	
       jmp mmm   
end:
	

