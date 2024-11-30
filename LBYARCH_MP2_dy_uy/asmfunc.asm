section .data
    format db "Height: %d, Width: %d", 10, 0
    float_255 dd 255.0    

section .text
    bits 64
    default rel
    global imgCvtGrayFloatToInt  
    extern printf

imgCvtGrayFloatToInt:

    ; Save registers that will be used
    push rdi            ; Save height (rdi)
    push rsi            ; Save width (rsi)
    push rdx            ; Save input (rdx)
    push rcx            ; Save output (rcx)

    ; Print format with height and width
    mov rdi, format
    mov rsi, [rsp + 32]  
    mov rdx, [rsp + 40]  
    call printf      

