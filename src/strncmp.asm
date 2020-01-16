[BITS 64]

global strncmp:function
	
strncmp:
;;prologue
	push rbp
	mov rbp, rsp
;;eo prologue
	xor rcx, rcx
	cmp rdi, 0
	je .specialend
	cmp rsi, 0
	je .specialend
	xor rax, rax
	xor r8, r8
.loop:
	cmp rdx, rcx
	je .end
	movzx rax, byte [rdi + rcx]
	movzx r8, byte [rsi + rcx]
	cmp rax, 0
	je .end
	cmp r8, 0
	je .end
	cmp r8, rax
	jne .end
	inc rcx
	jmp .loop
.end:
	sub rax, r8
;;epilogue
	leave
	ret
;;eo epilogue
.specialend:
	mov rax, 0
	leave
	ret
