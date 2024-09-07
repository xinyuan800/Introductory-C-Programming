#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>

void countFrequency(int* character, FILE* f) {
    int c;
    while ((c = fgetc(f)) != EOF) {
        if (isalpha(c)) {
            c = tolower(c); // 将大写字母转换为小写
            character[c - 'a']++;
        }
    }
    return;
}

int getKey(int *character) {
    int maxIndex = 0;
    for (int i = 1; i < 26; i++) {
        if (character[i] > character[maxIndex]) {
            maxIndex = i;
        }
    }
    return (maxIndex + 22) % 26;  // 使用这个公式获取密钥
}

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "Usage: encrypt key inputFileName\n");
        return EXIT_FAILURE;
    }

    FILE *f = fopen(argv[1], "r");
    if (f == NULL) {
        perror("Could not open file");
        return EXIT_FAILURE;
    }

    int character[26] = {0};
    countFrequency(character, f);

    printf("%d\n", getKey(character)); // 输出密钥

    if (fclose(f) != 0) {
        perror("Failed to close the input file!");
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

