.data  
    out_string: .asciiz "\nIntroduce la altura del triángulo (entero positivo): "
    out_string_2: .asciiz "*"
    out_string_3: .asciiz ""
.text
main:
    li $t1, 0   # index   
    li $t2, 10  # iteraciones
    
    # imprimir cadena
    li $v0,4
    la $a0, out_string
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