.intel_syntax noprefix
.global _start
_start: 
mov rax, 0x123400
mov rdi, [rax]
mov rax, 60 
syscall