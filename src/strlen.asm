[BITS 64]

global strlen:function
	
strlen:
;;prologue
	push rbp
	mov rbp, rsp
;;eo prologue
	mov rcx, rdi
	xor rdx, rdx
.loop:
	cmp byte [rcx + rdx], 0
	je .end
	add rdx, 1
	jmp .loop
.end:
	mov rax, rdx
;;epilogue
	leave
	ret
;;eo epilogue
