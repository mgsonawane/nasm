section .text
	global fun,fib
	
fun:
	enter 4,0
	mov dword[ebp-4],1
	mov ecx,[ebp+8]
a:
	mov eax,ecx
	xor edx,edx
	mul dword[ebp-4]
	mov dword[ebp-4],eax
	loop a
end:
	leave
	ret

fib:
	enter 8,0
	xor eax,eax
	mov dword[ebp-4],0
	mov dword[ebp-8],1
	mov ecx,dword[ebp+8]

aa:	
	mov eax,dword[ebp-4]
	add eax,dword[ebp-8]
	mov edx,dword[ebp-8]
	mov dword[ebp-4],edx
	mov dword[ebp-8],eax
	loop aa
	leave 
	ret 
	
	
