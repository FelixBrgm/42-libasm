section .text
    global ft_strcpy

ft_strcpy:
    xor     rax, rax        ; rax = 0
    xor     rcx, rcx        ; rcx = 0

    test    rdi, rdi        ; rdi == 0
    jz      .done
    test    rsi, rsi        ; rsi == 0
    jz      .done

.loop:
    mov     al, [rsi + rcx] ; uint8 al = rsi[rcx]
    mov     [rdi + rcx], al ; Put curent value into destination

    test    al, al          ; Check if it is 0
    jz      .done
    inc      rcx            ; rcx++
    jmp     .loop

.done:
    mov     rax, rdi        ; rax = rdi
    ret