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

  BUFFER_SIZE equ 0xA

segment .bss
  BUFFER resb 0x1

segment .text

outputResult:
  mov EAX, SYS_WRITE
  mov EBX, STD_OUT
  mov ECX, BUFFER
  mov EDX, BUFFER_SIZE
  ret

