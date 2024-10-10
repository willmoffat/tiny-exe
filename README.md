# Tiny ELF generator for Linux

Generates a hex-dump small enough to manually type into your (Linux) terminal.
See [The Teensy Files](http://www.muppetlabs.com/~breadbox/software/tiny/) for the gory details.

`./run.sh 'Hello, humans!'`

```
Output:
Hello, humans!

Binary dump:
00000000: 01111111 01000101 01001100 01000110 00000001 00000000 00000000 00000000  .ELF....
00000008: 00000000 00000000 00000000 00000000 00000000 00000000 01000011 00000101  ......C.
00000010: 00000010 00000000 00000011 00000000 00011010 00000000 01000011 00000101  ......C.
00000018: 00011010 00000000 01000011 00000101 00000100 00000000 00000000 00000000  ..C.....
00000020: 10111001 00110001 00000000 01000011 00000101 10110010 00001111 11001101  .1.C....
00000028: 10000000 00100101 00100000 00000000 00000001 00000000 10010011 11001101  .% .....
00000030: 10000000 01001000 01100101 01101100 01101100 01101111 00101100 00100000  .Hello,
00000038: 01101000 01110101 01101101 01100001 01101110 01110011 00100001 00001010  humans!.

Here's the hex dump:
7F 45 4C 46 01 00 00 00 00 00 00 00 00 00 43 05
02 00 03 00 1A 00 43 05 1A 00 43 05 04 00 00 00
B9 31 00 43 05 B2 0F CD 80 25 20 00 01 00 93 CD
80 48 65 6C 6C 6F 2C 20 68 75 6D 61 6E 73 21 0A

Binary size: 64 bytes.

Verification command:
echo '7F454C46010000000000000000004305020003001A0043051A00430504000000B931004305B20FCD80252000010093CD8048656C6C6F2C2068756D616E73210A' | xxd -r -p > /tmp/tiny && chmod +x /tmp/tiny && /tmp/tiny

Verification output:
Hello, humans!
```
