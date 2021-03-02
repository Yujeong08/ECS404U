# All memory structures are placed after the
 # .data assembler directive

.data
    MY_MSG: .asciiz "QMUL!"
    MY_INT:  .word 16
    MY_INT_ARRAY:
        .word   0
        .word   10
        .word   6
    MY_INT_ARRAY_LEN:    .word   3
    
