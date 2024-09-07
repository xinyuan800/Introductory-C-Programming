#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "counts.h"
counts_t * createCounts(void) {
  //WRITE ME
  counts_t * c = malloc(sizeof(*c));
    c->counts = NULL;
    c->size = 0;
    c->unknown = 0;
    return c;
}
void addCount(counts_t * c, const char * name) {
  //WRITE ME
    if (name == NULL) {
        c->unknown++;
    } else {
        int i;
        for (i = 0; i < c->size; i++) {
            if (strcmp(c->counts[i].name, name) == 0) {
                c->counts[i].count++;
                break;
            }
        }
        if (i == c->size) {
            c->size++;
            c->counts = realloc(c->counts, c->size * sizeof(*c->counts));
            c->counts[i].name = strdup(name);
	    c->counts[i].count=0;
            c->counts[i].count ++;
        }
    }
}
void printCounts(counts_t * c, FILE * outFile) {
  //WRITE ME
    for (int i = 0; i < c->size; i++) {
        fprintf(outFile, "%s: %d\n", c->counts[i].name, c->counts[i].count);
    }
    if (c->unknown > 0) {
        fprintf(outFile, "<unknown> : %d\n", c->unknown);
    }
}

void freeCounts(counts_t * c) {
  //WRITE ME
    for (int i = 0; i < c->size; i++) {
        free(c->counts[i].name);
    }
    free(c->counts);
    free(c);
}

