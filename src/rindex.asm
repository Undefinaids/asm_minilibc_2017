[BITS 64]

global rindex:function
	
rindex:
;;prologue
	push rbp
	mov rbp, rsp
;;eo prologue
	mov r11, rdi
	mov r8, rsi
	xor rcx, rcx
.len:
	mov r9, [r11 + rcx]
	cmp r9b, 0
	je .mainloop
	inc rcx
	jmp .len
.mainloop:
	cmp rcx, 0
	jl .specialend
	mov r9, [r11 + rcx]
	cmp byte r9b, byte r8b
	je .end
	dec rcx
	jmp .mainloop
.end:
	add r11, rcx
	mov rax, r11
	jmp .leave
.specialend:
	mov rax, 0
.leave:
	;;epilogue
	leave
	ret
;;eo epilogue
