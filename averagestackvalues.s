.intel_syntax noprefix
.global _start
_start:
mov rcx, 4
mov rax, [rsp]
add rax, [rsp+8]
add rax, [rsp+16]
add rax, [rsp+24]
xor rdx, rdx
div rcx
push rax