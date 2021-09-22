#!/bin/bash

SYSCALL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"/syscalls
mkdir -p $SYSCALL_DIR

wget https://raw.githubusercontent.com/torvalds/linux/master/arch/arm/tools/syscall.tbl -O $SYSCALL_DIR/arm.tbl &
wget https://raw.githubusercontent.com/torvalds/linux/master/arch/mips/kernel/syscalls/syscall_n64.tbl -O $SYSCALL_DIR/mips64.tbl &
wget https://raw.githubusercontent.com/torvalds/linux/master/arch/mips/kernel/syscalls/syscall_o32.tbl -O $SYSCALL_DIR/mips.tbl &
wget https://raw.githubusercontent.com/torvalds/linux/master/arch/x86/entry/syscalls/syscall_32.tbl -O $SYSCALL_DIR/x86.tbl &
wget https://raw.githubusercontent.com/torvalds/linux/master/arch/x86/entry/syscalls/syscall_64.tbl -O $SYSCALL_DIR/x86_64.tbl &
wget https://raw.githubusercontent.com/torvalds/linux/master/arch/powerpc/kernel/syscalls/syscall.tbl -O $SYSCALL_DIR/powerpc.tbl &

wget https://raw.githubusercontent.com/torvalds/linux/master/arch/sh/kernel/syscalls/syscall.tbl -O $SYSCALL_DIR/sh.tbl &
wget https://raw.githubusercontent.com/torvalds/linux/master/arch/ia64/kernel/syscalls/syscall.tbl -O $SYSCALL_DIR/ia64.tbl &
wget https://raw.githubusercontent.com/torvalds/linux/master/arch/m68k/kernel/syscalls/syscall.tbl -O $SYSCALL_DIR/m68k.tbl &
wget https://raw.githubusercontent.com/torvalds/linux/master/arch/s390/kernel/syscalls/syscall.tbl -O $SYSCALL_DIR/s390.tbl &
wget https://raw.githubusercontent.com/torvalds/linux/master/arch/alpha/kernel/syscalls/syscall.tbl -O $SYSCALL_DIR/alpha.tbl &
wget https://raw.githubusercontent.com/torvalds/linux/master/arch/sparc/kernel/syscalls/syscall.tbl -O $SYSCALL_DIR/sparc.tbl &
wget https://raw.githubusercontent.com/torvalds/linux/master/arch/parisc/kernel/syscalls/syscall.tbl -O $SYSCALL_DIR/parisc.tbl &
wget https://raw.githubusercontent.com/torvalds/linux/master/arch/xtensa/kernel/syscalls/syscall.tbl -O $SYSCALL_DIR/xtense.tbl &
wget https://raw.githubusercontent.com/torvalds/linux/master/arch/microblaze/kernel/syscalls/syscall.tbl -O $SYSCALL_DIR/microblaze.tbl &

wait
