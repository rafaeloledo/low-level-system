; Compile - nasm -f elf64 hello.asm
; Link - ld -s -o hello hello.o

section .data

section .text

global _start

_start:
  mov eax, 0x1 ; Program ending
  mov ebx, 0x0 ; Program exited 0
  int 0x80
