section .text
    global ft_write

ft_write:           ; rax is used to provide the system call number
   mov rax, 1       ; rax = 1
   syscall          ; write(rdi, rsi, rdx)
   ret