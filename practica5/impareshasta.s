.data
	out_string1: .asciiz "Ingrese un numero: "
	out_string2: .asciiz "\nlos numeros impares hasta "
	out_string3: .asciiz "son: "
	out_string4: .asciiz "  "
.text
main:
	li $v0, 4
	la $a0, out_string1
	syscall
	li $t2,0
	li $t1,0
	li $t3,1
	li $t4,2
	li	$v0,5 
	syscall
	move $t2, $v0

	li $v0, 4
	la $a0, out_string2
	syscall

	move $a0, $t2
	li $v0,1
	syscall

	li $v0, 4
	la $a0, out_string3
	syscall

	div $t4, $t2, $t4	

	Loop:
		beq $t4, $t1, Exit
		move $a0, $t3
		li $v0,1
		syscall
		li $v0, 4
		la $a0, out_string4
		syscall

		add $t3, $t3, 2
		add $t1, $t1, 1
		j Loop
Exit:
jr $ra