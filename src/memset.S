global memset:function
section .text

memset:
    push rbp
    xor rcx, rcx

while:
    cmp rcx, rdx
    jz stop
    mov [rdi + rcx], sil
    inc rcx
    jmp while

stop:
    mov rax, rdi
    pop rbp
    ret