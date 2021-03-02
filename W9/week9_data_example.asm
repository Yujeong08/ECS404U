# All program code is placed after the
	# .text assembler directive

.text
  addi $v0, $zero, 10     # Sets $v0 to "10" to select exit syscall
  syscall                 # Exit



    # All memory structures are placed after the
    # .data assembler directive

.data
    MY_MSG: .asciiz "QMUL!"
    MY_INT: .word 15
    MY_INT_ARRAY:
        .word   0
        .word   10
        .word   5
    MY_INT_ARRAY_LEN:   .word   3
