section .text
    global ft_strlen

ft_strlen:
    xor rax, rax        ; Reset the return value
    test rdi, rdi       ; Check for null 
    jz .found_end       ; And return if null
.loop:
    mov al, [rdi]       ; Move current char into al -> 8 bit register
    test al, al         ; Sets ZF (zero flag) if zero
    jz .found_end       ; check if ZF flag is set - if it jumps to jz
    inc rax
    inc rdi
    jmp .loop
.found_end:
    test rax, rax
    jz .found_end
    ret