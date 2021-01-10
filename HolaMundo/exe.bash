nasm -f elf hola.asm -o hola.o
ld -m elf_i386 hola.o -o hola
./hola
