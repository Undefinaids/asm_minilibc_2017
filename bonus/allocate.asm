[BITS 64]

global allocate:function

extern strlen
extern malloc

allocate:
	push rbp
	mov rbp, rsp
	push r8
	push r9
	push r10
	push rsi
	push rdi
	push rdx
	call strlen wrt ..plt
	mov r8, rax
	mov rdi, rsi
	call strlen wrt ..plt
	add r8, rax
	inc r8
	mov rdi, r8
 	call malloc wrt ..plt
	xor rcx, rcx
	xor r10, r10
	pop r9
	pop rsi
.loop:
	cmp byte [rsi + rcx], 0
	je .secondloop
	movzx r8, byte [rsi + rcx]
	mov byte [rax + rcx], r8b
	inc rcx
	jmp .loop
.secondloop:
	pop rsi
.innerloop:
	cmp r10, r9
	je .end
	movzx r8, byte [rsi + r10]
	mov byte [rax + rcx], r8b
	inc r10
	inc rcx
	jmp .innerloop
.end:
 	mov byte [rax + rcx], 0
	pop r10
	pop r9
	pop r8
	leave
	ret
