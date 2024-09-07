#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "kv.h"



kvarray_t * readKVs(const char * fname) {
  //WRITE ME
  FILE * f = fopen(fname, "r");
    if (f == NULL) {
        perror("Could not open file");
        return NULL;
    }
    kvarray_t * kv = malloc(sizeof(*kv));
    kv->length = 0;
    kv->kvpair = NULL;
    char * line = NULL;
    size_t sz = 0;
    while (getline(&line, &sz, f) >= 0) {
        kv->length++;
        kv->kvpair = realloc(kv->kvpair, kv->length * sizeof(*kv->kvpair));
        kv->kvpair[kv->length - 1].key = strdup(line);
        char * value = strchr(kv->kvpair[kv->length - 1].key, '=');
        *value = '\0';
        value++;
        char * newline = strchr(value, '\n');
        *newline = '\0';
        kv->kvpair[kv->length - 1].value = strdup(value);
    }
    free(line);
    fclose(f);
    return kv;
}

void freeKVs(kvarray_t * pairs) {
  //WRITE ME
  int length = pairs->length;
    for (int i = 0; i < length; i++) {
        free(pairs->kvpair[i].key);
        free(pairs->kvpair[i].value);
    }
    free(pairs->kvpair);
    free(pairs);
}

void printKVs(kvarray_t * pairs) {
  //WRITE ME
    int length = pairs->length;
        for (int i = 0; i < length; i++) {
		printf("key = '%s' value = '%s'\n", pairs->kvpair[i].key, pairs->kvpair[i].value);
        }
}

char * lookupValue(kvarray_t * pairs, const char * key) {
  //WRITE ME
    int length = pairs->length;
    for (int i = 0; i < length; i++) {
        if (strcmp(pairs->kvpair[i].key, key) == 0) {
            return pairs->kvpair[i].value;
        }
    }
    return NULL;
}

