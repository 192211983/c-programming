#include <stdio.h>

int main() {
    char ch;
    
    printf("Input character: ");
    scanf("%c", &ch);
    
    if((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z')) {
        printf("'%c' is an alphabet.\n", ch);
    }
    else {
        printf("'%c' is not an alphabet.\n", ch);
    }
    
    return 0;
}
