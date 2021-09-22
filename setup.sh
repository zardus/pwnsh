#!/bin/bash -x

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"/scripts
grep -q $SCRIPT_DIR ~/.bashrc || echo "export PATH=\$PATH:$SCRIPT_DIR" >> ~/.bashrc
