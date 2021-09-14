#include "Top.h"

void VecDotProduct(Vec128_t* vecA, Vec128_t* vecB, Sca32_t* scaC, int readRep) {
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS DATAFLOW
#pragma HLS STABLE variable=readRep
#pragma HLS SHARED variable=readRep
#pragma HLS INTERFACE s_axilite port=readRep bundle=control
#pragma HLS INTERFACE m_axi port=scaC offset=slave bundle=ddr2 depth=1
#pragma HLS INTERFACE m_axi port=vecB offset=slave bundle=ddr1 depth=10000
#pragma HLS INTERFACE m_axi port=vecA offset=slave bundle=ddr0 depth=10000
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
