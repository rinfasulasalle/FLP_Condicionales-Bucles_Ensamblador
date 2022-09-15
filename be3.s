.data  
    out_string: .asciiz "\nIntroduce un número entero positivo:\n"
    out_string_2: .asciiz ", "
.text
main:
    # print string
    li $v0, 4
    la $a0, out_string
    syscall

    # read integer t2
    li $v0, 5
    syscall
    move $t2, $v0
    
    li $t1, 1   # index 
    move $a0, $t2
    Loop:
        beq $t2,$t1, Exit

        add $a0, $t1,2
        # print integer
        li $v0, 1
        syscall

        # imprimir cadena
        li $v0,4
        la $a0,out_string_2
        syscall

        add $t1, $t1, 2
        # i++

        j Loop
    Exit:  
jr $ra
