.globl _start
.section .text
_start:
    mov $1, %rax            # syscall: write
    mov $1, %rdi            # fd 1 = stdout
    lea msg(%rip), %rsi     # buffer
    mov $14, %rdx           # length
    syscall
    mov $60, %rax           # syscall: exit
    xor %rdi, %rdi          # status 0
    syscall

.section .rodata
msg: .ascii "Hello, world!\n"
