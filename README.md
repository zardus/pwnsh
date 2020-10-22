# shelltools

Random scripts for shellcoding.

- assemble: build shellcode, `assemble shellcode.s` or `assemble "mov rax, 60; syscall"`
- disassemble: build shellcode, `disassemble shellcode.raw` or `disassemble <(echo -ne '\xcc')`
- analyze: analyzes shellcode, `analyze ./shellcode.elf`
- lookup-syscall: lookup syscall number, `lookup-syscall x86_64 read`
- update-syscalls: update the syscall tables
- run-c: compile a C expression into main and run it, `c-run 'puts(argv[1]);' test`
- print-constant: print the value of a constant, `print-constant "PROT_EXEC|PROT_READ|PROT_WRITE"`
