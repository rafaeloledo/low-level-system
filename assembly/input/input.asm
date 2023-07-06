segment .data
  LF        equ 0xA  ; Line Feed
  NULL      equ 0xD  ; String final
  SYS_CALL  equ 0x80 ; Send info to SO
  ; EAX
  SYS_EXIT  equ 0x1  ; Sys exit code
  SYS_WRITE equ 0x4  ; Write operation
  SYS_READ  equ 0x3  ; Read operation
  ; EBX
  RET_EXIT  equ 0x0  ; Succeeded operation
  STD_IN    equ 0x0  ; Std In
  STD_OUT   equ 0x1  ; Std Out

section .data
  msg db "Enter your name ", LF, NULL
  tam equ $ - msg

section .bss
  name resb 1

section .text

global _start

_start:
  mov EAX, SYS_WRITE
  mov EBX, STD_OUT
  mov ECX, msg
  mov EDX, tam
  int SYS_CALL

  mov EAX, SYS_READ
  mov EBX, STD_IN
  mov ECX, name
  mov EDX, 0xA
  int SYS_CALL
  
  mov EAX, SYS_EXIT
  mov EBX, RET_EXIT
  int SYS_CALL

