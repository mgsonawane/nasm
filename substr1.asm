%include 'subb.mac'
section .data
	msg1 db  "This is string",10,0
	msg2 db  "is",10,0
	msg3 db "yes",10,0
	msg4 db "Noo",10,0
	
section .text
	global main
main:
        substrr msg1,msg2,msg3,msg4
	ret
