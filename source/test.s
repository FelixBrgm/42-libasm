section .data
hello_msg db "Hello, World!", 0x0A
msg_len   equ $ - hello_msg

section .text
global _main

_main:
    ; write syscall: ssize_t write(int fd, const void *buf, size_t count);
    mov rax, 0x2000004   ; syscall number for write in macOS
    mov rdi, 1           ; file descriptor: 1 is stdout
    mov rsi, hello_msg   ; pointer to the hello_msg string
    mov rdx, msg_len     ; length of the string
    syscall

    ; exit syscall: void exit(int status);
    mov rax, 0x2000001   ; syscall number for exit in macOS
    xor rdi, rdi         ; exit status 0
    syscall
