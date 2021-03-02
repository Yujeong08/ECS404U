# All program code is placed after the
	# .text assembler directive

.text

LOOP:
      # branching instruction to come here!
  beq $s0, $s1, EXIT  # goto exit if s0==s1
  add $s2, $s2, $s0   # s2 <- s2+s0
  sub $s0, $s0, $s1   # s0 <- s0-s1
  syscall                     # invoking the syscall to print the integer
  j loop
EXIT:     # exit, or the rest of the code

    # All memory structures are placed after the
    # .data assembler directive
.data
CHECKED: .asciiz "checked!"
