.data  
    out_string: .asciiz "\nIntroduce un número entero positivo:\n"
    out_string_2: .asciiz ", "
.text
main:
    # print string
    li $v0, 4
    la $a0, out_string
    syscall

    # read integer t1 index
    li $v0, 5
    syscall
    move $t1, $v0
    
    li $t2, -1 # max
    Loop:
        beq $t2,$t1, Exit

        move $t1, $v0
        # print integer
        li $v0, 1
        syscall

        # imprimir cadena
        li $v0,4
        la $a0,out_string_2
        syscall

        add $t1, $t1, -1
        # i--

        j Loop
    Exit:  
jr $ra
