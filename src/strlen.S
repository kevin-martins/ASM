global strlen:function
section .text

strlen:
        push rbp
        xor rcx, rcx

while:
        cmp BYTE [rdi + rcx], 0
        jz stop
        inc rcx
        jmp while

stop:
        mov rax, rcx
        pop rbp
        ret