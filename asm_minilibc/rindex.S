section .text
	global rindex

rindex:
	push rbp
	mov rbp, rsp
	xor rcx, rcx
count:
	cmp byte[rdi + rcx], 0
	jz loop
	inc rcx
	jmp count
loop:
	cmp byte[rdi + rcx], sil
	jz is_ok
	cmp rcx, 0
	jz is_nok
	dec rcx
	jmp loop
is_nok:
	mov rax, 0
	jmp end
is_ok:
	mov rax, rdi
	add rax, rcx
end:
	leave
	ret
