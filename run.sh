#! /bin/bash

# Compile, run and generate hex dump of a tiny ELF executable.
set -eu

export MESSAGE="${1:-Hello World!}"

rm -rf build
mkdir build
cd build

# Compile and run
BIN=tiny.exe
nasm -f bin -o $BIN ../tiny.asm
chmod +x $BIN
echo "Output:"
./$BIN

# Hex dump 16 bytes wide:
echo
echo "Here's the hex dump:"
hexdump -e '16/1 "%02X " "\n"' $BIN

# Size
echo
echo "Binary size: $(cat $BIN | wc -c) bytes."

# Verify:
echo
echo "Verification command:"
hex=$(xxd -plain -cols 256 -u $BIN)
CHK=/tmp/tiny
cmd="echo '$hex' | xxd -r -p > $CHK && chmod +x $CHK && $CHK"
echo $cmd
echo
echo "Verification output:"
sh -c "$cmd"
