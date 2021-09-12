#include "Top.h"
#include <iostream>

using namespace std;

void VecDotProduct(Vec128_t* vecA, Vec128_t* vecB, Sca32_t* scaC, int readRep) {
	hlslib::Stream<Vec128_t,16> fifoA("fifoA");
	hlslib::Stream<Vec128_t,16> fifoB("fifoB");
	hlslib::Stream<Vec256_t,16> fifoC1("fifoC1");
	hlslib::Stream<Sca32_t,16> fifoC2("fifoC2");
	hlslib::Stream<Sca32_t> fifoC3("fifoC3");

	// Vector A Reader
	VecReader(vecA, fifoA, readRep);

	// Vector B Reader
	VecReader(vecB, fifoB, readRep);

	// Element wise multiplier
	EWiseMultipiler(fifoA, fifoB, fifoC1, readRep);

	// Adder Tree
	AdderTree(fifoC1, fifoC2, readRep);

	// Accumulator
	Accumulator(fifoC2, fifoC3, readRep);

	// Scalar C Writter
	ScaWriter(fifoC3, scaC);
}
