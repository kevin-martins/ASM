global strchr:function
section .text

strchr:
    push rbp
    xor rax, rax

while:
    cmp [rdi + rax], sil
    jz found;If sil is found in rdi, go to found function
    cmp [rdi + rax], byte 0
    jz stop;If rdi is null go to stop function
    inc rax
    jmp while

found:
    add rax, rdi;Stack in rax the rdi value
    pop rbp
    ret

stop:
    xor rax, rax
    pop rbp
    ret