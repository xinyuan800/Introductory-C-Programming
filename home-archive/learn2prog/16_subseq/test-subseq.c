#include <stdlib.h>
#include <assert.h>

size_t maxSeq(int * array, size_t n);

int main(void) {
    int q[5] = {4, 1, 3, 5, 7};
    int p[4] = {};  // Empty array with uninitialized values, treated as size 0
    int a[8] = {1, 3, 1, 2, 4, 2, 5, 6};
    int b[2] = {1, 0};
    int c[6] = {2, 2, 2, 2, 2, 2};  // All elements are the same
    int d[7] = {5, 4, 3, 2, 1, 0, -1};  // Decreasing sequence
    int e[5] = {-3, -2, -1, 0, 1};  // Increasing sequence with negative values
    int f[1] = {10};  // Single element array

    assert(maxSeq(p, 0) == 0);  // Test for empty array
    assert(maxSeq(q, 5) == 4);  // Expected max sequence length: 4 (1, 3, 5, 7)
    assert(maxSeq(a, 8) == 3);  // Expected max sequence length: 3 (1, 2, 4 or 2, 5, 6)
    assert(maxSeq(b, 2) == 1);  // Expected max sequence length: 1 (either 1 or 0)
    assert(maxSeq(c, 6) == 1);  // Expected max sequence length: 1 (no increasing sequence)
    assert(maxSeq(d, 7) == 1);  // Expected max sequence length: 1 (no increasing sequence)
    assert(maxSeq(e, 5) == 5);  // Expected max sequence length: 5 (-3, -2, -1, 0, 1)
    assert(maxSeq(f, 1) == 1);  // Expected max sequence length: 1 (single element)

    return EXIT_SUCCESS;
}

