  # code comes after the .text directive
  # print "The number you entered was:"
.text

  addi   $v0, $zero, 4    # to be requesting syscall 4, for printing strings
  la $a0, MSG1    # load the address of the starting byte of our string into $a0
  syscall

  addi $v0, $zero, 10   # Load the syscall to exit.
  syscall               # Invoke the syscall to exit.

  # the memory structure comes after the .data directive
.data
  MSG1:     .asciiz "The number you entered was:"
