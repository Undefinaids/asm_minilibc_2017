[BITS 64]

global strstr:function
	
strstr:
;;prologue
	push rbp
	mov rbp, rsp
	;;rdi, rsi
	xor rcx, rcx
	xor r8, r8
	xor r9, r9
	cmp byte [rsi], 0
	je .specialend
	;;eo prologue
.mainloop:
	xor r11, r11
	cmp byte [rdi + rcx], 0
	je .notfound
	mov r8, [rsi]
	mov r9, rcx
	cmp byte [rdi + rcx], r8b
	je .insideloop
	inc rcx
	jmp .mainloop
.insideloop:
	mov r8, [rsi + r11]
	cmp r8b, 0
	je .endfound
	cmp byte [rdi + rcx], r8b
	jne .mainloop
	inc r11
	inc rcx
	jmp .insideloop
.endfound:
	add rdi, r9
	mov rax, rdi
	jmp .end
.notfound:
	mov rax, 0
.end:
;;epilogue
	leave
	ret
;;eo epilogue
.specialend:
	mov rax, rdi
	leave
	ret
