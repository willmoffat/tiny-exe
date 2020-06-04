# Tiny ELF generator for Linux

Generates a hex-dump small enough to manually type into your (Linux) terminal.
See [The Teensy Files](http://www.muppetlabs.com/~breadbox/software/tiny/) for the gory details.

`./run.sh 'Hello, humans!'`

```
Output:
Hello, humans!

Here's the hex dump:
7F 45 4C 46 01 00 00 00 00 00 00 00 00 00 43 05
02 00 03 00 1A 00 43 05 1A 00 43 05 04 00 00 00
B9 31 00 43 05 B2 0F CD 80 25 20 00 01 00 93 CD
80 48 65 6C 6C 6F 2C 20 68 75 6D 61 6E 73 21 0A

Binary size: 64 bytes.

Verification command:
echo '7F 45 4C 46 01 00 00 00 00 00 00 00 00 00 43 05 02 00 03 00 1A 00 43 05 1A 00 43 05 04 00 00 00 B9 31 00 43 05 B2 0F CD 80 25 20 00 01 00 93 CD 80 48 65 6C 6C 6F 2C 20 68 75 6D 61 6E 73 21 0A ' | xxd -r -p > /tmp/tiny && chmod +x /tmp/tiny && /tmp/tiny

Verification output:
Hello, humans!
```
