; Compile - nasm -f elf64 hello.asm
; Link - ld -s -o hello hello.o

section .data
  msg db "Hello World!", 0xA
  len equ $ - msg

section .text

global _start

_start:
  mov eax, 0x4 ; syscall write
  mov ebx, 0x1 ; file descriptor for stdout
  mov ecx, msg ; loads the memory address of msg
  mov edx, len ; length
  int 0x80 ; interrupt and invoke the register-specified syscalls

  mov eax, 0x1 ; syscall exit
  mov ebx, 0x0 ; exit status code 0
  int 0x80 ; interrupt and invoke the register-specified syscalls

