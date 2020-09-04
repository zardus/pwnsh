#!/bin/bash

SYSCALL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"/syscalls
ARCH=$1
SYSCALL=$2

if [ ! -f $SYSCALL_DIR/$ARCH.tbl ]
then
	echo "Don't know about architecture $ARCH. Architecture list:"
	echo 
	ls $SYSCALL_DIR | sed -e "s/^/\t/" -e "s/.tbl$//"
	exit 1
fi

grep -P "\t$SYSCALL\t" $SYSCALL_DIR/$ARCH.tbl | cut -f1
