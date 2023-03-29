#include <stdio.h>

#define MAX_SIZE 100

int main()
{
    int arr[MAX_SIZE], n, largest1, largest2, i;

    printf("Enter the size of the array: ");
    scanf("%d", &n);

    printf("Enter the elements of the array: ");
    for(i=0; i<n; i++)
    {
        scanf("%d", &arr[i]);
    }

    //initialize largest1 and largest2 with the first two elements of the array
    largest1 = arr[0];
    largest2 = arr[1];
return 0
}
