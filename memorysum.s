.intel_syntax noprefix
.global _start
_start:
movq rcx, [rdi]
movq rdx, [rdi+8]
add rdx, rcx
mov [rsi], rdx
mov rdi, 0 
mov rax, 60 
syscall
