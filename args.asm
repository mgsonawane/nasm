section .data
	num db "Num of args are %d",10,0
	msg db "Arg is %s",10,0
	msg1 db "Arg is %d",10,0
	addition db "Addition is %d",10,0
	
section .bss
	first resd 1
	
section .text
	global main
	extern printf,atoi
	
main: 
	push dword[esp+4]
	push num
	call printf
	add esp,8 
	
	mov eax,dword[esp+8]
	push dword[eax+4]
	call atoi
	add esp,4
	
	push eax
	mov dword[first],eax
	push msg1
	call printf
	add esp,8
	
	mov eax,dword[esp+8]
	push dword[eax+8]
	call atoi
	add esp,4
	
	add dword[first],eax
	push eax
	push msg1
	call printf
	add esp,8
	
	push dword[first]
	push addition
	call printf
	add esp,8
