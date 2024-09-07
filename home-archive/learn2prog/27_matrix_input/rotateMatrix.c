#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MATRIX_SIZE 10

// 旋转函数
void rotate(char matrix[MATRIX_SIZE][MATRIX_SIZE]) {
    char temp[MATRIX_SIZE][MATRIX_SIZE];
    
    // 将矩阵旋转90度并存入temp中
    for (int i = 0; i < MATRIX_SIZE; i++) {
        for (int j = 0; j < MATRIX_SIZE; j++) {
            temp[j][MATRIX_SIZE - 1 - i] = matrix[i][j];
        }
    }
    
    // 将temp中的内容复制回原始矩阵
    for (int i = 0; i < MATRIX_SIZE; i++) {
        for (int j = 0; j < MATRIX_SIZE; j++) {
            matrix[i][j] = temp[i][j];
        }
    }
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <input file>\n", argv[0]);
        return EXIT_FAILURE;
    }

    FILE *file = fopen(argv[1], "r");
    if (file == NULL) {
        perror("Error opening file");
        return EXIT_FAILURE;
    }

    char matrix[MATRIX_SIZE][MATRIX_SIZE];
    char buffer[MATRIX_SIZE + 2]; // 10 characters + newline + null terminator

    for (int i = 0; i < MATRIX_SIZE; i++) {
        if (fgets(buffer, sizeof(buffer), file) == NULL) {
            fprintf(stderr, "Error reading file: less than 10 lines\n");
            fclose(file);
            return EXIT_FAILURE;
        }

        // 检查每行是否包含10个字符并且以换行符结束
        if (strchr(buffer, '\n') == NULL || strlen(buffer) != MATRIX_SIZE + 1) {
            fprintf(stderr, "Error: line %d in file is not formatted correctly\n", i + 1);
            fclose(file);
            return EXIT_FAILURE;
        }

        // 复制10个字符到矩阵中
        strncpy(matrix[i], buffer, MATRIX_SIZE);
    }

    if (fgets(buffer, sizeof(buffer), file) != NULL) {
        fprintf(stderr, "Error: file contains more than 10 lines\n");
        fclose(file);
        return EXIT_FAILURE;
    }

    fclose(file);

    // 调用旋转函数
    rotate(matrix);

    // 打印旋转后的矩阵
    for (int i = 0; i < MATRIX_SIZE; i++) {
        for (int j = 0; j < MATRIX_SIZE; j++) {
            printf("%c", matrix[i][j]);
        }
        printf("\n");
    }

    return EXIT_SUCCESS;
}

