.intel_syntax noprefix
.global _start
_start:
    jmp target_label
    .rept 81
        nop
    .endr

target_label:
    mov rax, 0x1