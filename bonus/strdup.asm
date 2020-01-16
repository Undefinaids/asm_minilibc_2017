[BITS 64]

global strdup:function

extern strlen
extern malloc

strdup:
	push rbp
	mov rbp, rsp
	call strlen wrt ..plt
	push rdi
	mov rdi, rax
	inc rdi
	call malloc wrt ..plt
 	xor rcx, rcx
	pop rsi
.loop:
 	cmp byte [rsi + rcx], 0
 	je .end
 	movzx r8, byte [rsi + rcx]
 	mov byte [rax + rcx], r8b
 	inc rcx
	jmp .loop
.end:
	mov byte [rax + rcx], 0
	leave
	ret
