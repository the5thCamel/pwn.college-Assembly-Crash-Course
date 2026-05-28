.intel_syntax noprefix
.global _start
_start:
mov rax, [0x404000]
mov rdx, 0x404000
add qword ptr [rdx], 0x1337