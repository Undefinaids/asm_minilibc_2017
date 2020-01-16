[BITS 64]

global memcpy:function
	
memcpy:
;;prologue
	push rbp
	mov rbp, rsp
;;eo prologue
	mov r11, rdi
	mov r8, rsi
	mov r9, rdx
	xor r10, r10
.loop:
	cmp r10, r9
	je .end
	mov rbx, [r8 + r10]
	mov byte [r11 + r10], bl
	add r10, 1
	jmp .loop
.end:
	mov rax, r11
;;epilogue
	leave
	ret
;;eo epilogue
