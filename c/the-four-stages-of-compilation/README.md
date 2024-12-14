# The four stages of compilation

```
clang -E preprocess.c -o preprocess.i
clang -S preprocess.i -emit-llvm
clang -S preprocess.i -o compile.s
clang -c compile.s -o assemble.o
ld assemble.o -o assemble
```
