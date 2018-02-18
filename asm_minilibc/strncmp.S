section .text:

	global strncmp

strncmp:
	push rbp
	mov rbp, rsp
	xor rcx, rcx
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
	inc rcx
	cmp rcx, rdx
	je diff
	jmp loop

diff:
	sub al, ah
	movsx rax, al
	mov rsp, rbp
	pop rbp
	ret
