#ifndef ECG_CNN_H
#define ECG_CNN_H

#include "ap_fixed.h"
#include "ap_int.h"

// ------------------- Data types -------------------
typedef ap_fixed<12,3> data_t;     // activations
typedef ap_fixed<12,3> weight_t;   // weights (ROM stored)

// ------------------- Network parameters -------------------
#define INPUT_LEN     720
#define IN_CH         1
#define CONV1_OUT     8
#define KERNEL1       7

#define POOL_SIZE     2
#define POOL_STRIDE   2

#define CONV2_OUT     16
#define KERNEL2       5

#define DENSE1_UNITS  16
#define DENSE2_UNITS  1   // ✅ only one output neuron (sigmoid layer)

// GAP length used by GAP layer
#define GAP_LEN       ((INPUT_LEN - KERNEL1 + 1)/POOL_SIZE - KERNEL2 + 1)

// Precomputed reciprocal for GAP layer (defined in .cpp)
extern const data_t GAP_RECIPROCAL;

// ------------------- Top CNN Function -------------------
// Output: packed 32-bit word
//   bit0 = label (0/1)
//   bits[16:1] = int16 score (Q8.8 scaled value)
void ecg_cnn(
    data_t input[INPUT_LEN],
    ap_uint<32>* output
);

#endif // ECG_CNN_H
