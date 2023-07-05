; Compile - nasm -f elf64 hello.asm
; Link - ld -s -o hello hello.o

section .data
  msg db "Hello World!"
  tam equ $- msg
section .text

global _start

_start:
  mov eax, 0x4
  mov ebx, 0x1
  mov ecx, msg
  mov edx, tam
  int 0x80

  mov eax, 0x1 ; Program ending
  mov ebx, 0x0 ; Program exited 0
  int 0x80

