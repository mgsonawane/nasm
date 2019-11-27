section .data
	num db "HIII HOW ARE YOU",0
	msg db "%s",10,0
section .bss
	n resd 1
section .text
	global main
	extern printf
main:
	mov eax,msg

lp:	sub eax,1
	mov ecx,eax
	pusha
	mov eax,4
	mov ebx,1
	mov edx,1
	int 0X80	
	popa
	cmp eax,num
	jnz lp

end:
