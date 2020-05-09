global strcmp:function
section .text

strcmp:
    push rbp
    jmp move

move:
	mov r8b, BYTE [rdi]
	mov r9b, BYTE [rsi]
    jmp while

while:
	cmp r8b, 0
	je stop
	cmp r9b, 0
	je stop
	cmp r8b, r9b
	jne stop
	jmp incre

incre:
	inc rdi
	inc rsi
    jmp move

stop:
	movzx rax, r8b
	movzx rbx, r9b
	sub rax, rbx
    pop rbp
	ret