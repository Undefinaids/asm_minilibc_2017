[BITS 64]

global strcspn:function
	
strcspn:
;;prologue
	push rbp
	mov rbp, rsp
;;eo prologue
	xor rcx, rcx
.loop:
	xor rdx, rdx
	movzx rax, byte [rdi + rcx]
	cmp rax, 0
	je .end
.checkinside:
	movzx rsp, byte [rsi + rdx]
	cmp rsp, 0
	je .loopend
	cmp rsp, rax
	je .end
	inc rdx
	jmp .checkinside
.loopend:
	inc rcx
	jmp .loop
.end:
	mov rax, rcx
;;epilogue
	leave
	ret
;;eo epilogue
