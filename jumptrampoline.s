.intel_syntax noprefix
.global _start
_start:
    jmp target_label
    .rept 81
        nop
    .endr


target_label: 
    pop rdi
    xor rcx, rcx
    mov rcx, 0x403000
    jmp rcx
    