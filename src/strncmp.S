global strncmp:function
section .text

strncmp:
	push rbp
	mov rbp, rsp
	xor rcx, rcx

move:
	mov al, [rdi + rcx]
	mov r8b, [rsi + rcx]
    jmp comp
comp:
	cmp al, 0
	je stop
	cmp r8b, 0
	je stop
	cmp al, r8b
	jne stop
    jmp incre
incre:
	inc rcx
    jmp while
while:
	cmp rcx, rdx
	je stop
	jmp move

stop:
	sub al, r8b
	movsx rax, al

	mov rsp, rbp
	pop rbp
	ret