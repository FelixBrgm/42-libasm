section .text
    global ft_strcmp

ft_strcmp:
    xor rcx, rcx            ; rcx = 0
.loop:
    xor rax, rax            ; rax = 0
    xor rbx, rbx            ; rbx = 0
    mov al, [rdi + rcx]     ; al = rdi[rcx]
    mov bl, [rsi + rcx]		; bl = rsi[rcx]
    inc rcx					; rcx++
    test al, al				; al == 0
    jz .done
    test bl, bl				; bl == 0
    jz .done
    
    sub rax, rbx			; rax -= rbx
    test rax, rax			; rax == 0
    jz .loop
.done:
    ret