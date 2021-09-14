#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
struct __cosim_s10__ { char data[16]; };
extern "C" void VecDotProduct(__cosim_s10__*, __cosim_s10__*, int*, int, int, int, int);
extern "C" void apatb_VecDotProduct_hw(volatile void * __xlx_apatb_param_vecA, volatile void * __xlx_apatb_param_vecB, volatile void * __xlx_apatb_param_scaC, int __xlx_apatb_param_readRep) {
  // Collect __xlx_vecA__tmp_vec
  vector<sc_bv<128> >__xlx_vecA__tmp_vec;
  for (int j = 0, e = 10000; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_vecA)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_vecA)[j*2+1];
    __xlx_vecA__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_vecA = 10000;
  int __xlx_offset_param_vecA = 0;
  int __xlx_offset_byte_param_vecA = 0*16;
  __cosim_s10__* __xlx_vecA__input_buffer= new __cosim_s10__[__xlx_vecA__tmp_vec.size()];
  for (int i = 0; i < __xlx_vecA__tmp_vec.size(); ++i) {
    ((long long*)__xlx_vecA__input_buffer)[i*2+0] = __xlx_vecA__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_vecA__input_buffer)[i*2+1] = __xlx_vecA__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_vecB__tmp_vec
  vector<sc_bv<128> >__xlx_vecB__tmp_vec;
  for (int j = 0, e = 10000; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_vecB)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_vecB)[j*2+1];
    __xlx_vecB__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_vecB = 10000;
  int __xlx_offset_param_vecB = 0;
  int __xlx_offset_byte_param_vecB = 0*16;
  __cosim_s10__* __xlx_vecB__input_buffer= new __cosim_s10__[__xlx_vecB__tmp_vec.size()];
  for (int i = 0; i < __xlx_vecB__tmp_vec.size(); ++i) {
    ((long long*)__xlx_vecB__input_buffer)[i*2+0] = __xlx_vecB__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_vecB__input_buffer)[i*2+1] = __xlx_vecB__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_scaC__tmp_vec
  vector<sc_bv<32> >__xlx_scaC__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_scaC__tmp_vec.push_back(((int*)__xlx_apatb_param_scaC)[j]);
  }
  int __xlx_size_param_scaC = 1;
  int __xlx_offset_param_scaC = 0;
  int __xlx_offset_byte_param_scaC = 0*4;
  int* __xlx_scaC__input_buffer= new int[__xlx_scaC__tmp_vec.size()];
  for (int i = 0; i < __xlx_scaC__tmp_vec.size(); ++i) {
    __xlx_scaC__input_buffer[i] = __xlx_scaC__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  VecDotProduct(__xlx_vecA__input_buffer, __xlx_vecB__input_buffer, __xlx_scaC__input_buffer, __xlx_offset_byte_param_vecA, __xlx_offset_byte_param_vecB, __xlx_offset_byte_param_scaC, __xlx_apatb_param_readRep);
// print __xlx_apatb_param_vecA
  sc_bv<128>*__xlx_vecA_output_buffer = new sc_bv<128>[__xlx_size_param_vecA];
  for (int i = 0; i < __xlx_size_param_vecA; ++i) {
    char* start = (char*)(&(__xlx_vecA__input_buffer[__xlx_offset_param_vecA]));
    __xlx_vecA_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_vecA_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_vecA; ++i) {
    ((long long*)__xlx_apatb_param_vecA)[i*2+0] = __xlx_vecA_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_vecA)[i*2+1] = __xlx_vecA_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_vecB
  sc_bv<128>*__xlx_vecB_output_buffer = new sc_bv<128>[__xlx_size_param_vecB];
  for (int i = 0; i < __xlx_size_param_vecB; ++i) {
    char* start = (char*)(&(__xlx_vecB__input_buffer[__xlx_offset_param_vecB]));
    __xlx_vecB_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_vecB_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_vecB; ++i) {
    ((long long*)__xlx_apatb_param_vecB)[i*2+0] = __xlx_vecB_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_vecB)[i*2+1] = __xlx_vecB_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_scaC
  sc_bv<32>*__xlx_scaC_output_buffer = new sc_bv<32>[__xlx_size_param_scaC];
  for (int i = 0; i < __xlx_size_param_scaC; ++i) {
    __xlx_scaC_output_buffer[i] = __xlx_scaC__input_buffer[i+__xlx_offset_param_scaC];
  }
  for (int i = 0; i < __xlx_size_param_scaC; ++i) {
    ((int*)__xlx_apatb_param_scaC)[i] = __xlx_scaC_output_buffer[i].to_uint64();
  }
}
