section .text
    global ft_strcpy

ft_strcpy:
    xor rax, rax
    xor rcx, rcx        ; Reseting counter

    test rdi, rdi       ; Check for null
    jz .done
    test rsi, rsi
    jz .done

.loop:
    mov al, [rsi + rcx] 
    mov [rdi + rcx], al ; Put curent value into destination

    test al, al         ; Check if it is 0
    jz .done
    inc rcx
    jmp .loop

.done:
    mov rax, rdi
    ret