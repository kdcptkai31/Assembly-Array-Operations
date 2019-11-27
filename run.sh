#!/bin/bash

#Author: Kai Duty
#Program Name: Midterm
#Date: October 23, 2019
#Class: CS240 MW

rm *.o
rm *.out

echo "This is program <Array of Numbers>"

echo "Assemble the module manage.asm"
nasm -f elf64 -l manage.lis -o manage.o manage.asm

echo "Assemble the module reverse.asm"
nasm -f elf64 -l reverse.lis -o reverse.o reverse.asm

echo "Compile the module main.c"
gcc -c -m64 -Wall -std=c11 -o main.o main.c -fno-pie -no-pie

echo "Compile the module showArray.c"
gcc -c -m64 -Wall -std=c11 -o showArray.o showArray.c -fno-pie -no-pie

echo "Compile the module getData.cpp"
g++ -c -m64 -Wall -std=c++14 -o getData.o getData.cpp -fno-pie -no-pie

echo "Link the 5 object files just created"
g++ -m64 -std=c++14 -o arrayManagementTool.out main.o getData.o manage.o showArray.o reverse.o -fno-pie -no-pie

echo "Executing the program Array Management Tool"
./arrayManagementTool.out
#valgrind --leak-check=yes
echo "The bash script file is now closing."
~                                                  
