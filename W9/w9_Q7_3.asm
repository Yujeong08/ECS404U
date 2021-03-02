  # code comes after the .text directive
  # print "The number you entered was:"
.text

  addi   $v0, $zero, 4    # to be requesting syscall 4, for printing strings
  la $a0, MSG1    # load the address of the starting byte of our string into $a0
  syscall

  addi $v0, $zero 1
  add $a0, $zero, $t0
  syscall

  addi $v0, $zero, 5    # Load word contetn of register 5 into register $v0
  la $a0, MSG2        # a0 = print integer
  syscall

  addi $v0, $zero, 10   # Load the syscall to exit.
  syscall               # Invoke the syscall to exit.

  # the memory structure comes after the .data directive
.data
  MSG1:     .asciiz "The number you entered was:"
  MSG2:    .asciiz " please enter an integer number:"
