while (s0 > 0) {
    t0 = s0 + 0
    t1 = s0 + 1
    s0 = t1 - t0
}
Loop:
beq 
add $t0, $s0, $zero   # $t0 <- $s0 + 0
add $t1, $s0, 1   # $t1 <- $s0 + 1
sub $s0, $t1, $t0   # $s0 <- $t1 - $t0
j Loop
