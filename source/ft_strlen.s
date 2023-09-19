section .text
    global ft_strlen

ft_strlen:
    xor rcx, rcx                ; Reset counter

    test rdi, rdi               ; Check for null 
    jz .end                     ; And return if null

.loop:
    mov al, [rdi + rcx]         ; Move current char into al -> 8 bit register
    test al, al                 ; Sets ZF (zero flag) if zero
    jz .end                     ; check if ZF flag is set - if it jumps to jz
    inc rcx
    jmp .loop
.end:
    mov rax, rcx
    ret