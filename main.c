//Author: Kai Duty
//Program Name: Array Management Tool
//Date: October 23, 2019
//Class: CS240 MW

/**
 * This main launches the manage.asm and receives the number of integers entered.
 */

#include <stdio.h>

extern long int runManage();

int main(int argc, char* argv[]){

        printf("%s", "\n\nThis is the CS 240 midterm written by Kai Duty\n\n");
        printf("\n\nMain program received this number: %ld and will now return to the operating system.\n", runManage());
        
        return 0;

}

