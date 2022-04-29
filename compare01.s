/* Created by: Jonathan Pasco-Arnone
 * Created April 2022
 * Compares two values
 * compare01.s
 */
.text
.global main
main:
    mov r1, #2147483648
    mov r2, #-1
    cmp r1, r2 @ update cpsr condition codes with r1-r2
    bvs overflow_underflow

case_different:
    mov r0, #2 @ r0 <- 2
    b end @ branch to end

overflow_underflow:
    mov r0, #1 @ r0 <- 1

end:
    bx lr
