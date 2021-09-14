#include "ComputationModule.h"

void EWiseMultipiler(hlslib::Stream<Vec128_t> &fifoA, hlslib::Stream<Vec128_t> &fifoB, hlslib::Stream<Vec256_t> &fifoC, int readRep) {
	// Variable Declaration
	Vec128_t vecA;
	Vec128_t vecB;
	Vec256_t vecC;

	// Looping over readRep data
	for (int i=0; i<readRep; i++) {
#pragma HLS PIPELINE
		// Read from fifo
		vecA = fifoA.read();
		vecB = fifoB.read();

		// Elementwise multiplication
		for(int n=0; n<VEC_WIDTH; n++) {
#pragma HLS UNROLL
			vecC[n] = vecA[n] * vecB[n];
		}

		// Write to fifoC
		fifoC.write(vecC);
	}
}

void AdderTree(hlslib::Stream<Vec256_t> &fifoC_in, hlslib::Stream<Sca32_t> &fifoC_out, int readRep) {
	// Declare temp variable
	Vec256_t vecC;
	Sca32_t scaC;
	Sca32_t temp1[8];
	Sca32_t temp2[4];
	Sca32_t temp3[2];

	for (int i=0; i<readRep; i++) {
#pragma HLS PIPELINE
		// Read from file
		vecC = fifoC_in.read();

		// Stage 1
		for (int n=0; n<8; n++) {
#pragma HLS UNROLL
			temp1[n] = vecC[2*n] + vecC[2*n+1];
		}

		// Stage 2
		for (int n=0; n<4; n++) {
#pragma HLS UNROLL
			temp2[n] = temp1[2*n] + temp1[2*n+1];
		}

		// Stage 3
		for (int n=0; n<2; n++) {
#pragma HLS UNROLL
			temp3[n] = temp2[2*n] + temp2[2*n + 1];
		}

		// Stage output
		scaC = temp3[0] + temp3[1];

		// Write to file
		fifoC_out.write(scaC);
	}
}

void Accumulator(hlslib::Stream<Sca32_t> &fifoC_in, hlslib::Stream<Sca32_t> &fifoC_out, int readRep) {
	Sca32_t cIn;
	Sca32_t cAcc = 0;

	for (int i=0; i<readRep; i++) {
#pragma HLS PIPELINE
		cIn = fifoC_in.read();
		cAcc = cAcc + cIn;
	}

	fifoC_out.write(cAcc);
}


