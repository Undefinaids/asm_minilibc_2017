%[BITS 64]

%define sys_read 0
	
global get_next_line:function

extern malloc, allocate, strlen

get_next_line:
	push rbp
	mov rbp, rsp
	push rdi
	mov rdi, 2
	call malloc wrt ..plt
	mov byte [rax], 0
	mov r9, rax
	mov rdi, 2
	call malloc wrt ..plt
	mov byte [rax + 1], 0
	push rax
	push r9
.loop:
	pop r9
	mov rdx, 1
	pop rsi
	pop rdi
	mov rax, sys_read
	syscall
	push rdi
	push rsi
	mov byte [rsi + 1], 0
	cmp rax, 0
	je .specialend
	cmp byte [rsi], 10
	je .end
	cmp byte [rsi], 0
	je .end
	mov rdi, r9
	mov rdx, 1
	call allocate wrt ..plt
	push rax
	jmp .loop
.specialend2:
	mov r9, 0
.end:
	mov rax, r9
	leave
	ret
.specialend:
	mov rdi, r9
	call strlen wrt ..plt
	cmp rax, 0
	je .specialend2
	mov rax, r9
	leave
	ret
