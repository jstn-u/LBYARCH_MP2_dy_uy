section .data
    float_255 dd 255.0                       ; Constant for multiplication

section .text
    bits 64
    default rel
    global imgCvtGrayFloatToInt

imgCvtGrayFloatToInt:
    ; Save registers that will be used
    push rcx            ; Save height (rdi)
    push rdx            ; Save width (rsi)
    push r8            ; Save input (rdx)

    ; Function arguments
    mov r10, rcx                      ; r8d = height
    mov r11, rdx                      ; r9d = width
    mov r12, r8                      ; r10 = input (float pointer)

    ; Calculate total pixels = height * width
    imul r10, r11                     ; r8d = height * width (total pixels)

    ; Initialize index counter
    xor r9, r9                      ; ecx = 0 (pixel index)

convert_loop:
    cmp r9, r10                      ; Compare index with total pixels
    jge done                          ; If index >= total pixels, exit loop

    ; Load float value from input array
    movss xmm0, dword [r12 + r9 * 4] ; xmm0 = input[ecx] (scalar float)

    ; Multiply by 255.0
    mulss xmm0, dword [float_255] ; xmm0 *= 255.0

    cvtss2si rax, xmm0

    ;movss dword [r12 + r9 * 4], rax
    movss dword [r12 + r9 * 4], xmm0

    ; Increment index
    inc r9
    jmp convert_loop                  ; Repeat loop for next pixel

done:
    ; Restore registers
    pop r8
    pop rdx
    pop rcx

   ret