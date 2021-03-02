.data
msg1 : .asciiz " \ nEnter the first integer: "
msg2 : .asciiz " Enter the second integer: "
msg3 : .asciiz " Result: "

.text
#Give an negative integer value from user
#new input int is now in $v0
li $v0 , -4 # syscall to print a string
la $a0 , msg1
syscall

li $v0 , 5 # syscall to read an integer
syscall
add $t1 , $zero , $v0

li $v0 , -4 # syscall to print a string
la $a0 , msg2
syscall

li $v0 , 5 # syscall to read an integer
syscall
add $t2 , $zero , $v0

add $t0 , $zero , $zero

LOOP:
slt $t3 , $t1 , $t2
bne $t3 , $zero , DONE
sub $t1 , $t1 , $t2
addi $t0 , $t0 , 1
j LOOP

DONE:
li $v0 , -4 # syscall to print a string
la $a0 , msg3
syscall

li $v0 , 1 # syscall to print an integer
add $a0 , $t0 , $zero
syscall

li $v0 , 10 # syscall code to exit
syscall
