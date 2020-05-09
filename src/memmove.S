global memmove:function
section .text

memmove:
	push rbp
	mov rbp, rsp
	mov rax, rdi
	mov r8, rdi
	sub r8, rsi
	cmp r8, 0
	jge overlap_right

overlap_left:
	xor rcx, rcx
incre_left:
	inc rcx
	jmp loop_left
move_left:
	mov r8b, [rsi + rcx]
	mov [rdi + rcx], r8b
	jmp incre_left
loop_left:
	cmp rcx, rdx
	je stop
	jmp move_left

overlap_right:
	dec rdx
dec_right:
	dec rdx
	jmp loop_right
move_right:
	mov r8b, [rsi + rdx]
	mov [rdi + rdx], r8b
	jmp dec_right
loop_right:	
	cmp rdx, 0
	jl stop
	jmp move_right

stop:
	mov rsp, rbp
	pop rbp
	ret