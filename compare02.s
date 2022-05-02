/* Created by: Jonathan Pasco-Arnone
 * Created April 2022
 * Compares two values
 * compare02.s
 */
.text
.global main
main:
    mov r1, #6
    mov r2, #-6
    cmn r1, r2 @ update cpsr condition codes with r1-r2
    beq equal

case_different:
    mov r0, #2 @ r0 <- 2
    b end @ branch to end

equal:
    mov r0, #1 @ r0 <- 1

end:
    bx lr
