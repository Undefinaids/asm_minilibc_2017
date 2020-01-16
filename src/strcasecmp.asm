[BITS 64]

global strcasecmp:function
	
strcasecmp:
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
	
	cmp rax, 64
	jg .removemaj
	jmp .nextarg
.removemaj:
	cmp rax, 90
	jg .nextarg
	add rax, 32
.nextarg:
	cmp rsp, 64
	jg .removemaj2
	jmp .next
.removemaj2:
	cmp rsp, 90
	jg .next
	add rsp, 32
.next:
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
