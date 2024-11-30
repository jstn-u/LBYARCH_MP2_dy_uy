section .data
msg db "Hello World",13,10,0
msg1 db "try", 13, 10, 0
msg2 db "try2", 13, 10, 0

section .text
bits 64
default rel 

global asmhello
extern printf

asmhello:
	sub rsp, 8*5 
	lea rcx, [msg1]
	call printf
	add rsp, 8*5
	ret
