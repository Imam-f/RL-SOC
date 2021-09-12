#pragma once

#include "DataConfig.h"

void VecReader(Vec128_t* ddr, hlslib::Stream<Vec128_t> &fifo, int readRep);
void ScaWriter(hlslib::Stream<Sca32_t> &fifo, Sca32_t* ddr);
