#include <stdio.h>
#include <stdint.h>

typedef struct {
    uint16_t limit;
    uint64_t base;
} idtr_t;

idtr_t gid;

uint8_t gu8;
int8_t gi8;
uint16_t gu16;
int16_t gi16;
uint32_t gu32;
int32_t gi32;
uint64_t gu64;
int64_t gi64;
uintptr_t gup;
intptr_t gip;

uint8_t loads_u8(uint8_t v) {
    return v;
}

int16_t loads_s16(int16_t v) {
    return v;
}

uint32_t loads_u32(uint32_t v) {
    return v;
}

short add_shorts(short a, short b) {
    return a + b;
}

int main(void) {
    gu8 = 200;
    gi8 = 0 - 5;
    gu16 = 60000;
    gi16 = 0 - 3000;
    gu32 = 3000000000u;
    gi32 = 0 - 2000000000;
    gu64 = 9000000000u;
    gi64 = 0 - 9000000000L;
    gup = 123456;
    gip = 0 - 789;
    printf("%d %d %d\n", gu8, gi8, gu16);
    printf("%d %d %d\n", gi16, gu32, gi32);
    printf("%d %d\n", gu64 == 9000000000u, gi64 + 9000000000L == 0);
    printf("%d %d\n", gup == 123456, gip + 789 == 0);
    printf("%d %d %d %d\n", sizeof(uint8_t), sizeof(uint16_t), sizeof(uint32_t), sizeof(uint64_t));
    printf("%d %d %d\n", sizeof(int8_t), sizeof(short), sizeof(uintptr_t));
    uint8_t l8 = 250;
    int8_t s8 = 0 - 100;
    printf("%d %d %d\n", l8 + 10, s8 - 10, l8 > 100);
    printf("%d %d\n", s8 < 0, gu8 == 200);
    uint16_t w = 65535;
    int16_t sw = 0 - 1;
    printf("%d %d %d\n", w, sw, w + 1 == 65536);
    uint32_t d = 4000000000u;
    int32_t sd = 0 - 2147483647 - 1;
    printf("%d %d\n", d > 100, sd < 0);
    printf("%d %d %d\n", loads_u8(201), loads_s16(0 - 3001), loads_u32(4000000001u));
    printf("%d %d\n", add_shorts(30000, 1000), add_shorts(0 - 30000, 0 - 1000));
    uint8_t arr8[4];
    arr8[0] = 10;
    arr8[1] = 200;
    arr8[2] = 30;
    arr8[3] = 40;
    printf("%d %d %d\n", arr8[0] + arr8[1], arr8[1] > 100, arr8[3] - arr8[2]);
    int32_t arri[3];
    arri[0] = 0 - 7;
    arri[1] = 42;
    arri[2] = 0 - 1;
    printf("%d %d %d\n", arri[0], arri[1], arri[2]);
    printf("%d %d\n", arri[0] < 0, arri[2] + 1 == 0);
    int16_t arr16[2];
    arr16[0] = 0 - 2;
    arr16[1] = 500;
    printf("%d %d\n", arr16[0] + arr16[1], arr16[0] < 0);
    uint8_t *pu = arr8;
    printf("%d %d\n", *pu, *(pu + 2));
    pu++;
    printf("%d\n", *pu);
    int16_t *psw = arr16;
    uint16_t *puw = (uint16_t *)arr16;
    printf("%d %d\n", *psw, *puw == 65534);
    uint8_t cnt = 0;
    cnt += 250;
    cnt += 10;
    printf("%d\n", cnt);
    uint16_t w2 = 1000;
    w2 *= 70;
    printf("%d\n", w2);
    unsigned short us = 65000;
    short ss = 0 - 200;
    printf("%d %d %d\n", us, ss, us + ss == 64800);
    gid.limit = 1000;
    gid.base = 2000;
    idtr_t *ip = &gid;
    printf("%d %d\n", ip->limit, ip->base == 2000);
    printf("%d\n", gid.limit + 5 == 1005);
    return 0;
}
