global strcasecmp:function
section .text

strcasecmp:
    push rbp

while:
	mov r8b, BYTE [rdi]
	mov r9b, BYTE [rsi]
	cmp r8b, 0
	je end
	cmp r9b, 0
	je end
	cmp r8b, r9b
	jne end
	inc rdi
	inc rsi
	jmp while

end:
	movzx rax, r8b
	movzx rbx, r9b
	sub rax, rbx
    pop rbp
	ret