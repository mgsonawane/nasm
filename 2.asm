section .text
	global fun
	
fun:
	enter 4,0
	mov eax,[ebp+8]
	add eax,[ebp+12]
	mov dword[ebp-4],eax
	xor eax,eax
	mov eax,dword[ebp-4]
	leave
	ret
