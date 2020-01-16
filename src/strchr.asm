[BITS 64]

global strchr:function
	
strchr:
;;prologue
	push rbp
	mov rbp, rsp
;;eo prologue
	mov r11, rdi
	mov r8, rsi
	xor r9, r9
 .loop:
	mov rbx, [r11 + r9]
	cmp bl, r8b
	je .end
	cmp bl, 0
	je .endspecial
	add r9, 1
	jmp .loop
.endspecial:
	xor r9, r9
	xor r11, r11
.end:
	add r11, r9
	mov rax, r11
;;epilogue
	leave
	ret
;;eo epilogue
