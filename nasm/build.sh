rm sum
rm sum.o

nasm -f elf64 sum.asm -o sum.o
#gcc -no-pie sum.o -o sum
ld -o sum sum.o -e _start