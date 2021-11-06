#include "types.h"

void func_801713B8(void *p, s32 fill, size_t len);

void *TRK_memset(void *p, s32 fill, size_t len) {
    func_801713B8(p, fill, len);
    return p;
}

void *TRK_memcpy(void *dst, void *src, size_t len) {
    char *s;
    char *d;

    for(s = (char*)src - 1, d = (char*)dst - 1, len++; --len;) {
        *++d = *++s;
    }
} 