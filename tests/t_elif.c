#include <stdio.h>

#define V 2

#if V == 1
int pick = 1;
#elif V == 2
int pick = 2;
#else
int pick = 3;
#endif

#if defined(V)
int hasv = 1;
#else
int hasv = 0;
#endif

#if !defined(MISSING_THING)
int hasmissing = 0;
#else
int hasmissing = 1;
#endif

#if V > 1 && V < 5
int inrange = 1;
#else
int inrange = 0;
#endif

#if 0
int dead = 1;
#elif 0
int dead = 2;
#elif 1
int dead = 3;
#else
int dead = 4;
#endif

#if 1
int first = 7;
#elif 1
int first = 8;
#else
int first = 9;
#endif

int main(void) {
    printf("[%d %d %d %d %d %d]\n", pick, hasv, hasmissing, inrange, dead, first);
    return 0;
}
