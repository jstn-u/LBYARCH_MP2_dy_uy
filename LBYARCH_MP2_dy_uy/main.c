#include <stdio.h>
#include <stdlib.h>
#include <windows.h>

void imgCvtGrayFloatToInt(int height, int width, float* input, int* output);

int main() {
    int width, height;

    // Input height and width
    //
    printf("Input 2 integers for the height & width with a space in between the two (Example: 3 4): ");
    scanf_s("%d %d", &height, &width);

    // Allocate memory for the input and output arrays
    float* input = (float*)malloc(height * width * sizeof(float));
    int* output = (int*)malloc(height * width * sizeof(int));

    // Check if memory allocation was successful
    if (input == NULL || output == NULL) {
        printf("Memory allocation failed.\n");
        return 1;  // Exit the program if memory allocation fails
    }

    // Input Float
    printf("Enter %d float pixel values for the image:\n", height * width);
    for (int i = 0; i < height * width; i++) {
        scanf_s("%f", &input[i]);
    }


    // Display the input image for checking
    printf("Here are your inputted float values:\n");
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            printf("%.2f ", input[i * width + j]);
        }
        printf("\n");
    }

    // Output Integer
    /*printf("Output Image as Integer values:\n");
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            printf("%d ", (int)output[i * width + j]);
        }
        printf("\n");
    }*/

    imgCvtGrayFloatToInt(height, width, input, output);

    // Free allocated memory
    free(input);
    free(output);

    return 0;
}