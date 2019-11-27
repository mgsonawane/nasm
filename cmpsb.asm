%include'cmpsb.mac'
section .data
	msg1 db "this man is",10,0
	len equ $-msg1
	msg2 db "this",10,0
	msg3 db "substring",10,0
	msg4 db "not substring",10,0
section .text
	global main
main:
	substr msg1,len,msg2,msg3,msg4	
	ret
