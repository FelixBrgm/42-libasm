section .text
    global ft_strdup
    extern malloc

extern ft_strlen
extern ft_strcpy

ft_strdup:
    call ft_strlen              ; rax = ft_strlen(rdi)

    push    rdi                 ; save rdi on the stack

    mov     rdi, rax            ; rdi = rax(len)
    call    malloc wrt ..plt    ; wrt - With Respect To PLT
    test    rax, rax            ; if rax == NULL, ret
    jz      .done

    pop     rdi                 ; get rdi from stack
    mov rsi, rdi                ; rsi = rdi(str)
    mov rdi, rax                ; rdi = rax(new_str)

    call ft_strcpy              ; ft_strcpy(rdi, rsi)
.done:
    ret