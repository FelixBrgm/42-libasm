section .text
    global ft_strcmp

ft_strcmp:
    ; xor rcx, rcx
    xor rax, rax
.loop:
    mov al, [rdi]
    mov bl, [rsi]
    test al, al
    jz .done
    test bl, bl
    jz .done
    
    cmp rax, rbx
    je .loop
.done:
    sub rax, rbx
    ret