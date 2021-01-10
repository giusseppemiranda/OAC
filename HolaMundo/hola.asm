SYS_EXIT equ 1
SYS_WRITE equ 4

STDIN equ 0
STDOUT equ 1

section .data
	texto db "Hola 32 bits",10
	fin_texto equ $-texto

section .text
global _start

_start:
	;impresion
	mov eax,SYS_WRITE
	mov ebx,STDOUT
	mov ecx,texto
	mov edx, fin_texto
	int 0x80

end:
	mov eax,SYS_EXIT
	mov ebx,STDIN
	int 0x80
	
