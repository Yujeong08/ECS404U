.data

.text
  addi $t1, $zero, 4    #t1 = 0 + 4

  sll $t0, $t1, 0x02       #t0 = t1 * 2

  #print output
  li $v0, 1
  add $a0, $zero, $t0
  syscall
