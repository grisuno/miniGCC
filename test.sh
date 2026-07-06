# Generation 2: Compile minigcc.c using the Gen 1 binary
./minigcc minigcc.c > minigccg2.s
as minigccg2.s -o minigccg2.o
gcc -no-pie minigccg2.o -o minigccg2

# Generation 3: Compile minigcc.c using the Gen 2 binary
./minigccg2 minigcc.c > minigccg3.s
as minigccg3.s -o minigccg3.o
gcc -no-pie minigccg3.o -o minigccg3

# Generation 4 / Verification: Compile minigcc.c using the Gen 3 binary
./minigccg3 minigcc.c > minigccg4.s

# Check if the compiler has stabilized (outputs should be identical)
diff minigccg3.s minigccg4.s

# Testing
./minigccg3 test.c
./minigccg3 test_for.c
