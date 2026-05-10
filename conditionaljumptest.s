.intel_syntax noprefix
.global _start
_start:
    mov eax, dword ptr [rdi]
    cmp eax, 0x464c457f
    