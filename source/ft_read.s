section .text
    global ft_read
    extern __errno_location

ft_read:                            ; rax is used to provide the system call number
    xor rax, rax                    ; rax = 0
    syscall                         ; read(rdi, rsi, rdx)
    test rax, rax       
    js .error
    ret
.error:
    NEG rax                         ; rax *= -1
    push rax                        ; save rax on stack

    call __errno_location wrt ..plt ; rax = __errno_location()

    pop rbx                         ; get rax from stack into rbx
    mov [rax], rbx                  ; *rax = rbx
    mov rax, -1                     ; rax = -1
    ret