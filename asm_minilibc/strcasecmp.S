section .text
	global strcasecmp
strcasecmp:
	enter 0, 0
	jmp up1
up1:
	mov r8b, [rdi]
	cmp r8b, 65
	jl up2
	cmp r8b, 90
	jl low1
low1:
	add r8b, 32
	jmp up2
up2:
	mov r9b, [rsi]
	cmp r9b, 65
	jl compare
	cmp r9b, 90
	jl low2
low2:
	add r9b, 32
	jmp compare
compare:
	cmp r8b, r9b
	jne end
	cmp r8b, 0
	je end
	cmp r9b, 0
	je end
	inc rsi
	inc rdi
	jmp up1
end:
	sub r8b, r9b
	movsx rax, r8b
	leave
	ret
