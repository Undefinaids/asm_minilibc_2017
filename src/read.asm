[BITS 64]

global read:function

read:
;;prologue
	push rbp
	mov rbp, rsp
;;eo prologue
	mov rax, 0
	syscall
;;epilogue
	leave
	ret
;;eo epilogue
