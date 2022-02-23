typedef struct {
    char *src;
    char *dst;
    unsigned int len;
} __data_inf;

typedef struct {
    char *src;
    unsigned int len;
} __bss_init;

extern __data_inf __rom_copy_info[];
extern __bss_init __bss_init_info[];

void *memcpy(void *dst, void *src, unsigned int len);
void __flush_cache(void *src, unsigned int len);
void *memset(void *dst, int fill, unsigned int len);

#ifdef NON_MATCHING
void __init_data(void) {
    __data_inf *data_p;
    __bss_init *bss_p;

    for(data_p = __rom_copy_info; data_p->len != 0; data_p++){
        if(data_p->src != data_p->dst) {
            memcpy(data_p->dst, data_p->src, data_p->len);
            __flush_cache(data_p->dst, data_p->len);
        }
    }

    for(bss_p = __bss_init_info; bss_p->len != 0; bss_p++) {
        if(bss_p->len != 0){
            memset(bss_p->src, 0, data_p->len);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/init/__init_data.s")
#endif 