gcc -std=c99 -Wall -Wextra -O2 -o minigcc minigcc.c                                                                                                                                        ─╯
./minigcc minigcc.c > minigcc.s
as minigcc.s -o minigcc.o
gcc -no-pie -nostdlib minigcc.o -o minigccg2 -lc
./minigccg2 test.c                                                                                                                                                                           
echo $? 
