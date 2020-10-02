.data
pedir_num: .asciiz "\n Insertar el numero: "
out_string_no: .asciiz "\n El numero no es primo"
out_string_si: .asciiz "\n El numero es primo"

.text
main:
	la $a0 pedir_num
	syscall
	li $v0 5
	syscall
	move $t0 $v0
	li $t1 2
	
loop:   
	beq $t0 $t1 esprimo
	div $t0 $t1
	mfhi $t2
	beqz $t2 noesprimo
	addi $t1 $t1 1
	b loop
	
noesprimo:
	li $v0 4
	la $a0 out_string_no
	syscall
	b exit
	
esprimo:
	li $v0 4
	la $a0 out_string_si
	syscall
	b exit
	
exit:	li $v0 10
	syscall