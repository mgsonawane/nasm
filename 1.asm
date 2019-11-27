
.data 
a: .word 0
b: .word 0
scan: .asciz "%d %d"
msg: .asciz "Enter Dividend Number, then Divisor:>>\n"
msg1: .asciz "\nQuotient is %d & Remainder is %d\n"
@msg2: .asciz "Quotient is %d\n\n"

.text

.global main

main:   stmfd sp!,{lr}
        ldr r0, =msg
        bl printf
        
        ldr r0, =scan
        ldr r1, =a
        ldr r2, =b
	bl scanf

	ldr r1, =a
        ldr r2, =b
        ldr r1, [r1]
        ldr r2, [r2]
        mov r3, #0

loop:   cmp r1, r2
        blt end
        sub r1, r1, r2
        add r3, r3, #1
        b loop

end:    ldr r0,=msg1
        mov r2,r1
        mov r1,r3
        bl printf

        ldmfd sp!,{lr}
	bx lr


