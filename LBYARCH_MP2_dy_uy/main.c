#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <time.h>

extern void imgCvtGrayFloatToInt(int height, int width, float* input, int* output);

int main() {
    long long int total = 0;
    int width, height;
    clock_t start, end;
    double time_taken;

    // Input height and width
    printf("Input 2 integers for the height & width with a space in between the two (Example: 3 4): ");
    scanf_s("%d %d", &height, &width);

    // Allocate memory for the arrays
    float* input = (float*)malloc(height * width * sizeof(float));
    int* output = (int*)malloc(height * width * sizeof(int));

    // Check if memory allocation was successful
    if (input == NULL) {
        printf("Memory allocation failed.\n");
        return 1;
    }

    // Input Float
    printf("Enter %d float pixel values for the image:\n", height * width);
    for (int i = 0; i < height * width; i++) {
        scanf_s("%f", &input[i]);
    }

    for (int i = 1; i <= 30; i++) {
        start = clock();
        imgCvtGrayFloatToInt(height, width, input, output);

        // Display Integer
        printf("Image (Float * 255) =\n");
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                printf("%d ", output[i * width + j]);
            }
            printf("\n");
        }


        end = clock();
        time_taken = (double)(end - start) * 1000 / CLOCKS_PER_SEC;
        printf("Time taken: %lf ms\n", time_taken);
        total += time_taken;
    };
    free(input);

    long long int avg = total / 30;

    printf("Average for %dx%d: %d ms\n", width, height, avg);

    return 0;
}

