global memcpy:function
section .text

memcpy:
    push rbp
    xor rcx, rcx

while:
    cmp rcx, rdx
    jz stop
    mov r8b, [rsi + rcx]
    mov [rdi + rcx], r8b
    inc rcx
    jmp while

stop:
    mov rax, rdi
    pop rbp
    ret