.data  
    out_string: .asciiz "\n¿Cantidad a invertir?\n"
    out_string_2: .asciiz "\n¿Interés porcentual anual?\n"
    out_string_3: .asciiz "\n¿Años?\n"
    out_string_4: .asciiz "\nCapital tras "
    out_string_4: .asciiz " años: "
.text
main:
    # a
    
jr $ra