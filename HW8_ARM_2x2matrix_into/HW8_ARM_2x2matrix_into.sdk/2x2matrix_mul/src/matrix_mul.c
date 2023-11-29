#include <stdio.h>
#include "xil_printf.h"

int main() {
    int matrix1[2][2] = {{1, 2}, {3, 4}};
    int matrix2[2][2] = {{5, 6}, {7, 8}};
    int result[2][2];

    // Perform matrix multiplication
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            result[i][j] = 0;
            for (int k = 0; k < 2; k++) {
                result[i][j] += matrix1[i][k] * matrix2[k][j];
            }
        }
    }

    // Print the result using Xilinx Xil_printf
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            xil_printf("%d ", result[i][j]);
        }
        xil_printf("\n");
    }

    return 0;
}
