#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "util.h"

void *checked_malloc(int len) {
    void *p = malloc(len);
    assert(p);
    return p;
}

string String(char *str) {
    string p = checked_malloc(strlen(str) + 1);
    strcpy(p, str);
    return p;
}