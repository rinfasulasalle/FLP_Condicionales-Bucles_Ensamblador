.data  
    out_string: .asciiz "\nInroduce una palabra: "
    buffer: .space 20
.text
main:
    li $t1, 0   # index 
    # li $t1, 0    
    li $t2, 10  # iteraciones
    
    # imprimir cadena
    li $v0,4
    la $a0, out_string
    syscall
    
    # read string
    li $a1, 10
    li $v0, 8
    la $a0, buffer
    syscall

    Loop:
        beq $t2,$t1, Exit

        # imprimir cadena
        li $v0,4
        la $a0,buffer
        syscall

        add $t1, $t1, 1
        # i++

        j Loop
    Exit:  

jr $ra
