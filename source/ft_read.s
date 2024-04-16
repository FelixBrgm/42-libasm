section .text
    global ft_read

.ft_read:           ; rax is used to provide the system call number
    xor rax, rax    ; rax = 0
    syscall         ; read(rdi, rsi, rdx)
    ret