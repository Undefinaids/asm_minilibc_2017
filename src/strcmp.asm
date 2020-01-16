[BITS 64]

global strcmp:function
	
strcmp:
;;prologue
	push rbp
	mov rbp, rsp
;;eo prologue
	xor rcx, rcx
	cmp rdi, 0
	je .specialend
	cmp rsi, 0
	je .specialend
.loop:
	movzx rax, byte [rdi + rcx]
	movzx rsp, byte [rsi + rcx]
	cmp rax, 0
	je .end
	cmp rsp, 0
	je .end
	cmp rsp, rax
	jne .end
	inc rcx
	jmp .loop
.end:
	sub ax, sp
	cwde
;;epilogue
	leave
	ret
;;eo epilogue
.specialend:
	mov rax, 0
	leave
	ret
