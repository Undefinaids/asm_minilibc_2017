[BITS 64]

global strcpy:function
	
strcpy:
	push rbp
	mov rbp, rsp
	xor rdx, rdx
.loop:
	cmp byte [rsi + rdx], 0
	je .end
	mov r8b, byte [rsi + rdx]
	mov byte [rdi + rdx], r8b
	inc rdx
	jmp .loop
.end:
	mov r8b, byte [rsi + rdx]
	mov byte [rdi + rdx], r8b
	mov rax, rdi
	leave
	ret
