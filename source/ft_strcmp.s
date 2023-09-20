section .text
    global ft_strcmp

ft_strcmp:
    xor rcx, rcx
.loop:
    xor rax, rax
    xor rbx, rbx
    mov al, [rdi + rcx]
    mov bl, [rsi + rcx]
    inc rcx
    test al, al
    jz .done
    test bl, bl
    jz .done
    
    sub rax, rbx
    test rax, rax
    jz .loop
.done:
    ret