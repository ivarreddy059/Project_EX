#include <stdio.h>

// Function to calculate the factorial of a number using recursion
int factorial(int n) {
    if (n == 0 || n == 1) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

int main() {
    // Calculate the factorial of 5
    int result = factorial(5);

    // Print the result
    printf("Factorial of 5 is: %d\n", result);

    return 0;
}

