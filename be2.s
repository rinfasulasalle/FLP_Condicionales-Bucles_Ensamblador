.data  
    out_string: .asciiz "\n¿Cuántos años tienes? "
    out_string_2: .asciiz "Has cumplido "
    out_string_3: .asciiz " anios.\n"
.text
main:
    li $t1, 0   # index     
    # li $t2, 10  # iteraciones
    
    # imprimir cadena
    li $v0,4
    la $a0, out_string
    syscall
    
    # read integer t52
    li $v0, 5
    syscall
    move $t2, $v0

    Loop:
        beq $t2,$t1, Exit

        # imprimir cadena
        li $v0,4
        la $a0,out_string_2
        syscall

        add $a0,$t1,1
        # print integer
        li $v0, 1
        syscall

        # imprimir cadena
        li $v0,4
        la $a0,out_string_3
        syscall

        add $t1, $t1, 1
        # i++

        j Loop
    Exit:  

jr $ra
