/* Created by: Jonathan Pasco-Arnone
 * Created April 2022
 * Compares two values
 * compare01.s
 */
.text
.global main
main:
    mov r1, #6
    mov r2, #15
    cmp r1, r2 @ update cpsr condition codes with r1-r2
    blo lower

case_different:
    mov r0, #2 @ r0 <- 2
    b end @ branch to end

lower:
    mov r0, #1 @ r0 <- 1

end:
    bx lr
