[BITS 64]

global write:function

write:
;;prologue
	push rbp
	mov rbp, rsp
;;eo prologue
	mov rax, 1
	syscall
;;epilogue
	leave
	ret
;;eo epilogue
