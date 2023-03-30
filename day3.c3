#include <stdio.h>

// Recursive function to find GCD of two numbers
int gcd(int a, int b)
{
    if (a == 0)
        return b;
    return gcd(b % a, a);
}

int main()
{
    int num1, num2, result;

    printf("swetha ");
    scanf("%d %d", &num1, &num2);

    result = gcd(num1, num2);

    printf("The GCD of %d and %d is %d.\n", num1, num2, result);

    return 0;
}
