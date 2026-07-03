#!/bin/bash
gcc -std=c99 -Wall -Wextra -O2 -o minigcc minigcc.c                                                                                                                                        ─╯
./minigcc test.c > test.s
as test.s -o test.o
ld test.o -o test
./test
echo $? 
