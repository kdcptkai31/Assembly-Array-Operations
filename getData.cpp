/*
 * Author: Kai Duty
 * Program Name: Array Management Tool
 * Date: October 23, 2019
 * Class: CS240
 */

#include <stdio.h>
#include <iostream>
using namespace std;

extern "C" long getData(unsigned long[], long);

long getData(unsigned long myArray[], long size)
{
	cout << "\nPlease enter integer data to be stored in your array. Press Cntl+D twice to terminate: ";
	unsigned long input;
	int i = 0;
	long sizeA = 0;

	while(!cin.eof())
	{
		cin >> input;
		myArray[i] = input;
		sizeA++;
		i++;
	}	
	cin.clear();
	cout << "\n\n";
	return sizeA;

}
