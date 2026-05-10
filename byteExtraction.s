.intel_syntax noprefix
.global _start
_start:
mov rax, rdi
shl rax, 24
shr rax, 56