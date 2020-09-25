.data
	out_stringp: .asciiz "Ingrese un numero: "
	out_strings: .asciiz "Los 5 primeros multiplos de "
	out_stringt: .asciiz " son:"
	array_1: .word	1, 2, 3, 4, 5
	ms4: .asciiz "\n"
.text
main:
	li $v0,4
	la $a0, out_stringp
	syscall

	li $v0,5 
	syscall

	move $t3, $v0 
	li $v0,4
	la $a0, out_strings
	syscall

	move $a0, $t3
	li $v0,1
	syscall

	li $v0,4
	la $a0, out_stringt
	syscall

	li $t0, 0 
    	la $t1, array_1

	loop1:
		bge $t0, 5, exit
		lw $t2, 0($t1)
		add $t1, $t1, 4

		mul $t6, $t2, $t3 	
		li $v0,4
		la $a0, ms4
		syscall
		li $v0, 1   
		move $a0, $t6 
		syscall
		li $a0, 32 
		li $v0, 11  
		syscall

		add $t0, $t0, 1 
		j loop1
	exit:
jr $ra

	