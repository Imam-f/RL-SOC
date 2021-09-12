#include <iostream>
#include <fstream>
#include <string>
#include <chrono>


using namespace std;

#include "Top.h"

#define LEN 16*10000

int main() {
	// Define var
	int8_t vecA[LEN];
	int8_t vecB[LEN];
	Sca32_t scaC;
	Sca32_t scaC_ref = 0;
	int readRep = LEN/16;

	// Initialize Vector A and B
	for (int i=0; i<LEN; i++) {
		vecA[i] = i%120;
		vecB[i] = (i+1)%120;
	}

	// Compute reference
	for (int i=0; i<LEN; i++) {
		scaC_ref += vecA[i] * vecB[i];
	}

	// Compute using accelerator
	VecDotProduct((Vec128_t*)vecA, (Vec128_t*)vecB, &scaC, readRep);

	// Compare result
	cout << "Reference result " << scaC_ref << endl;
	cout << "Accelerator result " << scaC << endl;

	return 0;
}
