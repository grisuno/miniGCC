CC ?= gcc
CFLAGS ?= -std=c99 -Wall -Wextra -O2

all: minigcc

minigcc: minigcc.c
	$(CC) $(CFLAGS) -o $@ $<

test: all
	bash test.sh
	bash test_all.sh

clean:
	rm -rf minigcc minigccg2 minigccg3 *.s *.o

.PHONY: all test clean
