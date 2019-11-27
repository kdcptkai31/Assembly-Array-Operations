//Author: Kai Duty
//Program Name: Array management Tool
//Date: October 23, 2019
//Class: CS240 MW

//This file serves as a method for manage.asm. It will recieve the array and
//its size and print it to the console.

#include <stdio.h>

extern void showArray(long myArray[], long n){

        for(int i = 0; i < n; i++)
                printf("%ld\n", myArray[i]);

}

