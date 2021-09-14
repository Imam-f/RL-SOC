#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_ddr0 "../tv/cdatafile/c.VecDotProduct.autotvin_ddr0.dat"
#define AUTOTB_TVOUT_ddr0 "../tv/cdatafile/c.VecDotProduct.autotvout_ddr0.dat"
// wrapc file define:
#define AUTOTB_TVIN_ddr1 "../tv/cdatafile/c.VecDotProduct.autotvin_ddr1.dat"
#define AUTOTB_TVOUT_ddr1 "../tv/cdatafile/c.VecDotProduct.autotvout_ddr1.dat"
// wrapc file define:
#define AUTOTB_TVIN_ddr2 "../tv/cdatafile/c.VecDotProduct.autotvin_ddr2.dat"
#define AUTOTB_TVOUT_ddr2 "../tv/cdatafile/c.VecDotProduct.autotvout_ddr2.dat"
// wrapc file define:
#define AUTOTB_TVIN_vecA "../tv/cdatafile/c.VecDotProduct.autotvin_vecA.dat"
#define AUTOTB_TVOUT_vecA "../tv/cdatafile/c.VecDotProduct.autotvout_vecA.dat"
// wrapc file define:
#define AUTOTB_TVIN_vecB "../tv/cdatafile/c.VecDotProduct.autotvin_vecB.dat"
#define AUTOTB_TVOUT_vecB "../tv/cdatafile/c.VecDotProduct.autotvout_vecB.dat"
// wrapc file define:
#define AUTOTB_TVIN_scaC "../tv/cdatafile/c.VecDotProduct.autotvin_scaC.dat"
#define AUTOTB_TVOUT_scaC "../tv/cdatafile/c.VecDotProduct.autotvout_scaC.dat"
// wrapc file define:
#define AUTOTB_TVIN_readRep "../tv/cdatafile/c.VecDotProduct.autotvin_readRep.dat"
#define AUTOTB_TVOUT_readRep "../tv/cdatafile/c.VecDotProduct.autotvout_readRep.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_ddr0 "../tv/rtldatafile/rtl.VecDotProduct.autotvout_ddr0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_ddr1 "../tv/rtldatafile/rtl.VecDotProduct.autotvout_ddr1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_ddr2 "../tv/rtldatafile/rtl.VecDotProduct.autotvout_ddr2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_vecA "../tv/rtldatafile/rtl.VecDotProduct.autotvout_vecA.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_vecB "../tv/rtldatafile/rtl.VecDotProduct.autotvout_vecB.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_scaC "../tv/rtldatafile/rtl.VecDotProduct.autotvout_scaC.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_readRep "../tv/rtldatafile/rtl.VecDotProduct.autotvout_readRep.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  ddr0_depth = 0;
  ddr1_depth = 0;
  ddr2_depth = 0;
  vecA_depth = 0;
  vecB_depth = 0;
  scaC_depth = 0;
  readRep_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{ddr0 " << ddr0_depth << "}\n";
  total_list << "{ddr1 " << ddr1_depth << "}\n";
  total_list << "{ddr2 " << ddr2_depth << "}\n";
  total_list << "{vecA " << vecA_depth << "}\n";
  total_list << "{vecB " << vecB_depth << "}\n";
  total_list << "{scaC " << scaC_depth << "}\n";
  total_list << "{readRep " << readRep_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
  public:
    int ddr0_depth;
    int ddr1_depth;
    int ddr2_depth;
    int vecA_depth;
    int vecB_depth;
    int scaC_depth;
    int readRep_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s10__ { char data[16]; };
extern "C" void VecDotProduct_hw_stub(volatile void *, volatile void *, volatile void *, int);

extern "C" void apatb_VecDotProduct_hw(volatile void * __xlx_apatb_param_vecA, volatile void * __xlx_apatb_param_vecB, volatile void * __xlx_apatb_param_scaC, int __xlx_apatb_param_readRep) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_ddr2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > ddr2_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "ddr2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              ddr2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_scaC)[j] = ddr2_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//ddr0
aesl_fh.touch(AUTOTB_TVIN_ddr0);
aesl_fh.touch(AUTOTB_TVOUT_ddr0);
//ddr1
aesl_fh.touch(AUTOTB_TVIN_ddr1);
aesl_fh.touch(AUTOTB_TVOUT_ddr1);
//ddr2
aesl_fh.touch(AUTOTB_TVIN_ddr2);
aesl_fh.touch(AUTOTB_TVOUT_ddr2);
//vecA
aesl_fh.touch(AUTOTB_TVIN_vecA);
aesl_fh.touch(AUTOTB_TVOUT_vecA);
//vecB
aesl_fh.touch(AUTOTB_TVIN_vecB);
aesl_fh.touch(AUTOTB_TVOUT_vecB);
//scaC
aesl_fh.touch(AUTOTB_TVIN_scaC);
aesl_fh.touch(AUTOTB_TVOUT_scaC);
//readRep
aesl_fh.touch(AUTOTB_TVIN_readRep);
aesl_fh.touch(AUTOTB_TVOUT_readRep);
CodeState = DUMP_INPUTS;
// print ddr0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_ddr0, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_vecA) {
    for (int j = 0, e = 10000; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_vecA)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_vecA)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_ddr0, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10000, &tcl_file.ddr0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_ddr0, __xlx_sprintf_buffer.data());
}
// print ddr1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_ddr1, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_vecB) {
    for (int j = 0, e = 10000; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_vecB)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_vecB)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_ddr1, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10000, &tcl_file.ddr1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_ddr1, __xlx_sprintf_buffer.data());
}
// print ddr2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_ddr2, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_scaC) {
    for (int j = 0, e = 1; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_scaC)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_ddr2, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.ddr2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_ddr2, __xlx_sprintf_buffer.data());
}
// print vecA Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_vecA, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_vecA, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.vecA_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_vecA, __xlx_sprintf_buffer.data());
}
// print vecB Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_vecB, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_vecB, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.vecB_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_vecB, __xlx_sprintf_buffer.data());
}
// print scaC Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_scaC, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_scaC, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.scaC_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_scaC, __xlx_sprintf_buffer.data());
}
// print readRep Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_readRep, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_readRep);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_readRep, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.readRep_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_readRep, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
VecDotProduct_hw_stub(__xlx_apatb_param_vecA, __xlx_apatb_param_vecB, __xlx_apatb_param_scaC, __xlx_apatb_param_readRep);
CodeState = DUMP_OUTPUTS;
// print ddr2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_ddr2, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_scaC) {
    for (int j = 0, e = 1; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_scaC)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_ddr2, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.ddr2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_ddr2, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
