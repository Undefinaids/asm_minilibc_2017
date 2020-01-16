[BITS 64]

global memset:function
	
memset:
;;prologue
	push rbp
	mov rbp, rsp
;;eo prologue
	xor rcx, rcx
	mov r8, rsi
.loop:
	cmp rcx, rdx
	je .end
	mov [rdi + rcx], r8b
	inc rcx
	jmp .loop
.end:
	mov rax, rdi
;;epilogue
	leave
	ret
;;eo epilogue
