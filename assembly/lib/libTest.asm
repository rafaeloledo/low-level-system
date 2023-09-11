%include "lib.inc"

section .text

global _start

_start:
  lea esi, [BUFFER]
  add esi, 0x9
  mov byte[esi], 0xA
