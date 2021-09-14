#include "InterfaceModule.h"

void VecReader(Vec128_t* ddr, hlslib::Stream<Vec128_t> &fifo, int readRep) {
	for (int i=0; i<readRep; i++) {
#pragma HLS PIPELINE

		fifo.write(ddr[i]);
	}
}

void ScaWriter(hlslib::Stream<Sca32_t> &fifo, Sca32_t* ddr) {
	ddr[0] = fifo.read();
}
