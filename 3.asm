%include "33.mac"
	section .data
	src db "copied",0
section .bss
	dest resb 50
	count resd 1
section .text
	global main

main:
	mov ecx,count
	strr src,ecx
	strr1 src,dest,dword[count]
	ret
