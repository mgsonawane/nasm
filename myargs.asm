section .data
	num db "Num of args are %d",10,0
	msg db "Arg is %s",10,0
	msg1 db "Arg is %d",10,0
	fact db "fact is %d",10,0
	
section .bss
	first resd 1
	a resd 1
section .text
	global main
	extern printf,atoi
	
main: 
	push dword[esp+4]
	push num
	call printf
	add esp,8
	
	mov ebx,dword[esp+8]

	push dword[ebx+4]
        call atoi
        add esp,4

	mov ecx,eax
mm:
	xor edx,edx
	dec ecx
	mul ecx	
	cmp ecx,1
	jg mm
end:
	push eax
	push fact
	call printf
	add esp,8
