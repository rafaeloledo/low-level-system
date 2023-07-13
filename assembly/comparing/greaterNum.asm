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
  ; db dw dd dq dt
  ; define <type>
  ; b = byte, w = word, d = double word, q = quad word, t = ten word
  x dd 50
  y dd 10
  msg1 db 'X maior que Y', LF, NULL
  tam1 equ $ - msg1
  msg2 db 'Y maior que X', LF, NULL
  tam2 equ $ - msg2

section .text

global _start

_start:
  mov EAX, DWORD[x]
  mov EBX, DWORD[y]
  ; if - comparing
  cmp EAX, EBX
  ; Conditional jump
  jge greater ; EAX >= EBX
  mov ECX, msg2
  mov EDX, tam2
  ; je: = | jge: >= | jl: < | jle: <= | jne: !=
  jmp final
  ; Unconditional jumps

greater:
  mov ECX, msg1
  mov EDX, tam1
  
final:
  mov EAX, SYS_WRITE
  mov EBX, STD_OUT
  int SYS_CALL

  mov EAX, SYS_EXIT
  xor EBX, EBX ; mov EBX, RET_EXIT
  int SYS_CALL
