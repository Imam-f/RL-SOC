#pragma once

#include "DataConfig.h"

void EWiseMultipiler(hlslib::Stream<Vec128_t> &fifoA, hlslib::Stream<Vec128_t> &fifoB, hlslib::Stream<Vec256_t> &fifoC, int readRep);
void AdderTree(hlslib::Stream<Vec256_t> &fifoC_in, hlslib::Stream<Sca32_t> &fifoC_out, int readRep);
void Accumulator(hlslib::Stream<Sca32_t> &fifoC_in, hlslib::Stream<Sca32_t> &fifoC_out, int readRep);
