.intel_syntax noprefix
.global _start
_start:
    mov eax, dword ptr [rdi]
    cmp eax, 0x464c457f
    je if
    cmp eax, 0x00005A4D
    je else_if
    jmp else

if:
    movsxd rax, dword ptr [rdi+4]
    movsxd rcx, dword ptr [rdi+8]
    add rax, rcx
    movsxd r8, dword ptr [rdi+12]
    add rax, r8
    jmp done

else_if: 
    movsxd rax, dword ptr [rdi+4]
    movsxd rcx, dword ptr [rdi+8]
    sub rax, rcx
    movsxd r8, dword ptr [rdi+12]
    sub rax, r8
    jmp done
else: 
    movsxd rax, dword ptr [rdi+4]
    movsxd rcx, dword ptr [rdi+8]
    movsxd r8, dword ptr [rdi+12]
    imul rax, rcx
    imul rax, r8
    jmp done
done: 
    ret
