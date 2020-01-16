[BITS 64]

global memmove:function
	
memmove:
;;prologue
	push rbp
	mov rbp, rsp
;;eo prologue
	mov rcx, 0
	cmp rdx, 0
	je .end
.loop1:
	mov r8, [rsi + rcx]	
	push r8
	inc rcx
	cmp rcx, rdx
	jl .loop1
.nextloop1:
	cmp rcx, 0
	je .end
	pop r8
	mov [rdi + rcx - 1], r8b
	dec rcx
	jmp .nextloop1
.end:
	mov rax, rdi
;;epilogue
	leave
	ret
;;eo epilogue
