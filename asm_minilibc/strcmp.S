section .text:

	global strcmp

strcmp:
	enter 0, 0

loop:
	mov al, [rdi]
	mov ah, [rsi]
	cmp al, 0
	je diff
	cmp ah, 0
	je diff
	cmp al, ah
	jne diff
	inc rdi
	inc rsi
	jmp loop

diff:
	sub al, ah
	movsx rax, al
	mov rsp, rbp
	pop rbp
	ret
