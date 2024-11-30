section .data
    f255 dd 255.0                       

section .text
    bits 64
    default rel
    global imgCvtGrayFloatToInt

imgCvtGrayFloatToInt:
    push rcx            ;height
    push rdx            ;width
    push r8             ;input
    push r9             ;output

    mov r10, rcx                      ;r10 = height
    mov r11, rdx                      ;r11 = width
    mov r12, r8                       ;r12 = input
    mov r13, r9                       ;r13 = output

    imul r10, r11                     ; r10 = height * width (total pixels)
    xor r14, r14                      

convert:
    cmp r14, r10                      
    jge done                          

    movss xmm0, dword [r12 + r14 * 4] ;get input

    mulss xmm0, dword [f255] ; xmm0 *= 255.0 ;convert input

    cvtss2si rax, xmm0      ;float to int

    mov [r13 + r14 * 4], rax    ;int to output

    inc r14
    jmp convert                  

done:
    pop r8
    pop r9
    pop rdx
    pop rcx

   ret
