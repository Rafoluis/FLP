.data
    out_string1: .asciiz "Ingrese un numero : "
    out_string3: .asciiz "El maximo comun divisor es: "
.text
main:   
    li $v0, 4
    la $a0, out_string1
    syscall

    li $v0, 5
    syscall
    move $a0, $v0

    li $v0, 4
    la $a0, out_string1
    syscall

    li $v0, 5
    syscall
    move $a1, $v0
    jal gcd 

gcd:
  move $t0, $a0
  move $t1, $a1
loop:
  beq $t1, $0, done
  div $t0, $t1
  move $t0, $t1
  mfhi $t1
  j loop
done:
    li $v0, 4
    la $a0, out_string3
    syscall
    
    move $v0, $t0
    jr $ra