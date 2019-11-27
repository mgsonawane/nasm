section .text
        global add
add:
	enter 0,0
	mov ecx,dword[ebp+8]
	cmp ecx,1
	jnz lp
end:
	mov eax,1
	leave 
	ret
lp:
	dec ecx

	push ecx
	call add
	add esp,4
	
	xor edx,edx
	add eax,dword[ebp+8]
	leave 
	ret
