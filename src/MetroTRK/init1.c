void OSResetSystem(int, int, int);

void __TRK_reset(void) {
    OSResetSystem(0, 0, 0);
} 