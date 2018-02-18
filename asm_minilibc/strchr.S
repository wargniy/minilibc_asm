section .text

	global strchr

strchr:

	push rbp
	mov rbp, rsp

	push rdi

loop:
	cmp byte[rdi], sil
	je is_ok
	cmp byte[rdi], 0
	je is_nok
	inc rdi
	jmp loop

is_nok:
	mov rax, 0
	jmp end

is_ok:
	mov rax, rdi
	jmp end
end:
	pop rdi
	leave
	ret
