section .text
    global ft_strlen

ft_strlen:
    xor rcx, rcx                ; rcx = 0

    test rdi, rdi               ; rdi == 0
    jz .end                     

.loop:
    mov al, [rdi + rcx]         ; uint8 al = rdi[rcx]
    test al, al                 ; al == 0
    jz .end                     
    inc rcx                     ; rcx++
    jmp .loop
.end:
    mov rax, rcx                ; rax = rcx
    ret