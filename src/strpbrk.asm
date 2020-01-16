[BITS 64]

global strpbrk:function
	
strpbrk:
;;prologue
	push rbp
	mov rbp, rsp
;;eo prologue
	xor rcx, rcx
.loop:
	xor rdx, rdx
	movzx rax, byte [rdi + rcx]
	cmp rax, 0
	je .notfound
.checkinside:
	movzx rsp, byte [rsi + rdx]
	cmp rsp, 0
	je .loopend
	cmp rsp, rax
	je .found
	inc rdx
	jmp .checkinside
.loopend:
	inc rcx
	jmp .loop
.notfound:
	xor rax, rax
	jmp .end
.found:
	mov rax, rdi
	add rax, rcx
.end:	
;;epilogue
	leave
	ret
;;eo epilogue
