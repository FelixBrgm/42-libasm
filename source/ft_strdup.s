section .text
    global ft_strdup
    extern _malloc

extern ft_strlen
extern ft_strcpy

ft_strdup:
    call ft_strlen
    test rax, rax
    jz .done
    mov rdx, rdi

    mov rdi, rax
    call _malloc
    test rax, rax
    jz .done
                    ; malloc is in rax and src is in rdx
    mov rdi, rax
    mov rsi, rdx

    call ft_strcpy
.done:
    ret