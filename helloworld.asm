section .data
	msg db 'Hello, World!', 0xA ; define string msg "Hello World\n (0xA)"
	len equ $ - msg ; define variable named len that is equals current address - msg variable address (get message length)

section .text
	global _start

_start:
	MOV RAX, 1 ; // Calling sys_write
	MOV RDI, 1 ; // Setting register to stdout
	MOV RSI, msg ; // Message buffer address
	MOV RDX, len ; // Message length buffer address
	syscall

	mov rax, 60 ; sys_exit
	xor rdi, rdi ; exit (return 0)
	syscall
