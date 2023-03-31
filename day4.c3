#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<time.h>

// Define a structure to store student information
struct Student {
    char name[50];
    int rollNumber;
    struct tm birthday;
    struct tm admissionDate;
};

// Function to calculate age in years given a birthdate and a date
int calculateAge(struct tm birthdate, struct tm date) {
    int age = date.tm_year - birthdate.tm_year;
    if (date.tm_mon < birthdate.tm_mon ||
       (date.tm_mon == birthdate.tm_mon && date.tm_mday < birthdate.tm_mday)) {
        age--;
    }
    return age;
}

int main() {
    // Initialize a new student
    struct Student student;

    // Read input values from user
    printf("Enter name of student: ");
    fgets(student.name, 50, stdin);
    student.name[strcspn(student.name, "\n")] = 0;
    
    printf("Enter roll number: ");
    scanf("%d", &student.rollNumber);

    printf("Enter birthdate (DD/MM/YYYY): ");
    scanf("%d/%d/%d", &student.birthday.tm_mday, &student.birthday.tm_mon, &student.birthday.tm_year);
    student.birthday.tm_year -= 1900;
    student.birthday.tm_mon -= 1;
    mktime(&student.birthday);

    printf("Enter admission date (DD/MM/YYYY): ");
    scanf("%d/%d/%d", &student.admissionDate.tm_mday, &student.admissionDate.tm_mon, &student.admissionDate.tm_year);
    student.admissionDate.tm_year -= 1900;
    student.admissionDate.tm_mon -= 1;
    mktime(&student.admissionDate);

    // Calculate age at time of admission
    int age = calculateAge(student.birthday, student.admissionDate);

    // Print student information and age at time of admission
    printf("
