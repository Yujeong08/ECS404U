.text
addi $t1, $zero, 5

LOOP:
slt $t2 , $zero , $t1
beq $t2 , $zero , DONE
addi $t1 , $t1 , −3  #$t1<−$t1−3
j LOOP
DONE:
slt $s0 , $t1 , $zero

#some code to exit
