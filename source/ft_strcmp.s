section .text
    global ft_strcmp

ft_strcmp:
    ; xor rcx, rcx
    xor rax, rax

    mov al, [rdi]
    mov bl, [rsi]
    sub rax, rbx
    ret