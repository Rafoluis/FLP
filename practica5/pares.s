.data
	out_string1: .asciiz "Ingrese un numero: "
	out_string2: .asciiz "El numero ingresado es par"
	out_string3: .asciiz "El numero ingresado es impar"
.text
main: 
	addi $t0, $0, 2
	la $a0, out_string1
	li $v0, 4
	syscall

	li $2,5
	syscall

	div $2, $t0 #habia un t0
	mfhi $t1
	
	beq $t1, $0, print
		la $a0, out_string3
		li $2, 4
		syscall
	j fin
	print: la $a0, out_string2

	li $2, 4
	syscall
	j fin
	fin: li $2, 10
	syscall
j $ra