#!/bin/bash -e 

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"/scripts
export PATH=$SCRIPT_DIR:$PATH

# assembly to console
[ $(assemble -a i686 -c "pop eax") == "X" ]
[ $(assemble -c "pop rax") == "X" ]

# make sure i686 is i686 (and errors on 64-bit stuff)
assemble -a i686 -c "pop rax" 2>/dev/null && /bin/false

# disassemble stuff properly
echo "X" | disassemble | grep -q -e "pop *rax"
echo "X" | disassemble -a i686 | grep -q "pop *eax"

# constant lookup
[ $(lookup-constant AT_FDCWD) == "0xffffff9c" ]

# syscall lookup
[ $(lookup-syscall exit) == "60" ]
[ $(lookup-syscall -a i686 exit) == "1" ]
[ $(lookup-syscall -a i686 1) == "exit" ]
[ $(lookup-syscall read) == "0" ]
[ $(lookup-syscall 0) == "read" ]

# run-c
[ $(run-c 'puts("hello");') == "hello" ]

echo Tests passed.
