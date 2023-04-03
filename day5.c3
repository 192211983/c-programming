#include <stdio.h>

int main() {
    FILE *fp;
    fp = fopen("data.bin", "rb");  // open binary file for reading

    if (fp == NULL) {  // check if file was opened successfully
        printf("Error: could not open file.");
        return 1;
    }

    int data;
    while (fread(&data, sizeof(int), 1, fp) == 1) {  // read data from file
        printf("%d\n", data);  // print data to console
    }

    fclose(fp);  // close file
    return 0;
}
