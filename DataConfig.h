#pragma once

#include <cstdint>
#include "DataPack.h"
#include "Stream.h"
#include "ap_int.h"

#define VEC_WIDTH 16

using Vec128_t = hlslib::DataPack<int8_t, VEC_WIDTH>;
using Vec256_t = hlslib::DataPack<int16_t, VEC_WIDTH>;
using Sca32_t  = int;








