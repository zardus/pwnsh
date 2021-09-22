# pwnsh

Some shell scripts that are useful for exploitation, though you should really use pwntools instead.

Shellcoding:

- assemble: build shellcode, `assemble shellcode.s` or `assemble "mov rax, 60; syscall"`
- disassemble: disassemble shellcode, `disassemble shellcode.raw` or `disassemble <(echo -ne '\xcc')`
- analyze: analyzes shellcode, `analyze shellcode.elf`
- lookup-syscall: lookup syscall number, `lookup-syscall -a i686 read`
- lookup-constant: print the value of a constant (really, any C expression): `lookup-constant "PROT_EXEC|PROT_READ|PROT_WRITE"`

Misc:

- run-c: compile a C expression into main and run it, `c-run 'puts(argv[1]);' test`

Management:
- setup.sh: add the `scripts/` dir to your `PATH` via `.bashrc`
- update-syscalls.sh: update the syscall tables
- test.sh: some testcases
