  #   code comes after the .text directive
.text

  addi $v0, $zero, 4        # to be requesting syscall 4, for printing strings
  la $a0, MSG1          #  load the address of the starting byte of our string into $a0
  syscall                   # print the string by issuing the syscall

  add $t0, $zero, 5     # Load word content of register $v0 into register $t0
  syscall

  addi $v0, $zero, 4
  la $a0, MSG2
  syscall 

  addi $v0,$zero, 1     # a0= integer to print
  add $a0, $zero, $t0
  syscall

  addi $v0, $zero, 10 # Load the syscall to exit.
  syscall # Invoke the syscall to exit.

#       the memory structure comes after the .data directive
.data
MSG1: .asciiz "please enter an integer number:"
MSG2: .asciiz "The number you entered was:"
