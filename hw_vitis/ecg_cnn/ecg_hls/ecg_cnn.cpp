#include "ecg_cnn.h"
#include "weights_rom.h"   //all weights & biases now included here
#include <ap_int.h>
#include <stdint.h>
#include <hls_math.h>  
#include <iostream>

// Consts
const data_t GAP_RECIPROCAL = (data_t)1.0 / (data_t)GAP_LEN;

// ------------------- Layers -------------------

// Conv1D + ReLU
void conv1d_relu(data_t input[INPUT_LEN],
                 const weight_t weights[CONV1_OUT][IN_CH][KERNEL1],
                 const weight_t bias[CONV1_OUT],
                 data_t output[INPUT_LEN - KERNEL1 + 1][CONV1_OUT]) {
#pragma HLS INLINE off
    weight_t w_local[CONV1_OUT][IN_CH][KERNEL1];
    weight_t b_local[CONV1_OUT];
#pragma HLS BIND_STORAGE variable=w_local type=ram_t2p impl=bram
#pragma HLS ARRAY_PARTITION variable=w_local complete dim=3
#pragma HLS ARRAY_PARTITION variable=b_local complete

    //weights
    LOAD_W1: for (int f = 0; f < CONV1_OUT; f++) {
        b_local[f] = bias[f];
        for (int k = 0; k < KERNEL1; k++) {
#pragma HLS PIPELINE II=1
            w_local[f][0][k] = weights[f][0][k];
        }
    }

    // convolution + ReLU
    CONV1_F: for (int f = 0; f < CONV1_OUT; f++) {
        CONV1_X: for (int i = 0; i < INPUT_LEN - KERNEL1 + 1; i++) {
#pragma HLS PIPELINE II=1
            data_t acc = b_local[f];
            for (int k = 0; k < KERNEL1; k++) {
#pragma HLS UNROLL
                acc += input[i + k] * w_local[f][0][k];
            }
            output[i][f] = (acc > 0) ? acc : (data_t)0;
        }
    }
}

// MaxPooling1D
void maxpool(data_t input[INPUT_LEN - KERNEL1 + 1][CONV1_OUT],
             data_t output[(INPUT_LEN - KERNEL1 + 1) / POOL_SIZE][CONV1_OUT]) {
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=input  cyclic factor=2 dim=2
#pragma HLS ARRAY_PARTITION variable=output cyclic factor=2 dim=2

    POOL_F: for (int f = 0; f < CONV1_OUT; f++) {
        POOL_X: for (int i = 0; i < (INPUT_LEN - KERNEL1 + 1) / POOL_SIZE; i++) {
#pragma HLS PIPELINE II=1
            data_t maxval = input[i * POOL_STRIDE][f];
            for (int k = 1; k < POOL_SIZE; k++) {
#pragma HLS UNROLL
                data_t v = input[i * POOL_STRIDE + k][f];
                if (v > maxval) maxval = v;
            }
            output[i][f] = maxval;
        }
    }
}

// Conv1D (second) + ReLU
void conv1d_relu2(data_t input[(INPUT_LEN - KERNEL1 + 1) / POOL_SIZE][CONV1_OUT],
                  const weight_t weights[CONV2_OUT][CONV1_OUT][KERNEL2],
                  const weight_t bias[CONV2_OUT],
                  data_t output[((INPUT_LEN - KERNEL1 + 1) / POOL_SIZE) - KERNEL2 + 1][CONV2_OUT]) {
#pragma HLS INLINE off
    weight_t w_local[CONV2_OUT][CONV1_OUT][KERNEL2];
    weight_t b_local[CONV2_OUT];
#pragma HLS BIND_STORAGE variable=w_local type=ram_t2p impl=bram
#pragma HLS ARRAY_PARTITION variable=w_local complete dim=3
#pragma HLS ARRAY_PARTITION variable=w_local cyclic factor=4 dim=2
#pragma HLS ARRAY_PARTITION variable=b_local complete

    LOAD_W2: for (int f = 0; f < CONV2_OUT; f++) {
        b_local[f] = bias[f];
        for (int c = 0; c < CONV1_OUT; c++) {
            for (int k = 0; k < KERNEL2; k++) {
#pragma HLS PIPELINE II=1
                w_local[f][c][k] = weights[f][c][k];
            }
        }
    }

    CONV2_F: for (int f = 0; f < CONV2_OUT; f++) {
        CONV2_X: for (int i = 0; i < ((INPUT_LEN - KERNEL1 + 1) / POOL_SIZE) - KERNEL2 + 1; i++) {
#pragma HLS PIPELINE II=1
            data_t acc = b_local[f];
            for (int c = 0; c < CONV1_OUT; c++) {
                for (int k = 0; k < KERNEL2; k++) {
#pragma HLS UNROLL factor=5
                    acc += input[i + k][c] * w_local[f][c][k];
                }
            }
            output[i][f] = (acc > 0) ? acc : (data_t)0;
        }
    }
}

// Global Average Pooling
void gap(data_t input[((INPUT_LEN - KERNEL1 + 1) / POOL_SIZE) - KERNEL2 + 1][CONV2_OUT],
         data_t output[CONV2_OUT]) {
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=output complete

    GAP_F: for (int f = 0; f < CONV2_OUT; f++) {
        data_t sum = 0;
        for (int i = 0; i < ((INPUT_LEN - KERNEL1 + 1) / POOL_SIZE) - KERNEL2 + 1; i++) {
#pragma HLS PIPELINE II=1
            sum += input[i][f];
        }
        output[f] = sum * GAP_RECIPROCAL;
    }
}

// Dense + ReLU
void dense_relu(data_t input[CONV2_OUT],
                const weight_t weights[DENSE1_UNITS][CONV2_OUT],
                const weight_t bias[DENSE1_UNITS],
                data_t output[DENSE1_UNITS]) {
#pragma HLS INLINE off
    weight_t w_local[DENSE1_UNITS][CONV2_OUT];
    weight_t b_local[DENSE1_UNITS];
#pragma HLS ARRAY_PARTITION variable=w_local cyclic factor=4 dim=2
#pragma HLS ARRAY_PARTITION variable=b_local complete
#pragma HLS ARRAY_PARTITION variable=input  complete
#pragma HLS ARRAY_PARTITION variable=output complete

    LOAD_D1: for (int u = 0; u < DENSE1_UNITS; u++) {
        b_local[u] = bias[u];
        for (int i = 0; i < CONV2_OUT; i++) {
#pragma HLS PIPELINE II=1
            w_local[u][i] = weights[u][i];
        }
    }

    D1_U: for (int u = 0; u < DENSE1_UNITS; u++) {
        data_t acc = b_local[u];
        for (int i = 0; i < CONV2_OUT; i++) {
#pragma HLS PIPELINE II=2
            acc += input[i] * w_local[u][i];
        }
        output[u] = (acc > 0) ? acc : (data_t)0;
    }
}

// Dense (linear output — raw logits)
void dense_linear(data_t input[DENSE1_UNITS],
                  const weight_t weights[DENSE2_UNITS][DENSE1_UNITS],
                  const weight_t bias[DENSE2_UNITS],
                  data_t output[DENSE2_UNITS]) {
#pragma HLS INLINE off
    weight_t w_local[DENSE2_UNITS][DENSE1_UNITS];
    weight_t b_local[DENSE2_UNITS];
#pragma HLS ARRAY_PARTITION variable=w_local complete dim=2
#pragma HLS ARRAY_PARTITION variable=b_local complete
#pragma HLS ARRAY_PARTITION variable=input  complete
#pragma HLS ARRAY_PARTITION variable=output complete

    LOAD_D2: for (int u = 0; u < DENSE2_UNITS; u++) {
        b_local[u] = bias[u];
        for (int i = 0; i < DENSE1_UNITS; i++) {
#pragma HLS PIPELINE II=1
            w_local[u][i] = weights[u][i];
        }
    }

    D2_U: for (int u = 0; u < DENSE2_UNITS; u++) {
        data_t acc = b_local[u];
        for (int i = 0; i < DENSE1_UNITS; i++) {
#pragma HLS PIPELINE II=2
            acc += input[i] * w_local[u][i];
        }
        output[u] = acc;  // raw logit
    }
}

//CNN funtion
void ecg_cnn(data_t input[INPUT_LEN],
             ap_uint<32>* output) {

// AXI interfaces for input/output only
#pragma HLS INTERFACE m_axi port=input  offset=slave bundle=INPUT depth=720
#pragma HLS INTERFACE m_axi port=output offset=slave bundle=OUTPUT depth=1

// Control interface
#pragma HLS INTERFACE s_axilite port=input  bundle=CTRL
#pragma HLS INTERFACE s_axilite port=output bundle=CTRL
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

// CRITICAL: Tell HLS that ROM arrays are STABLE (not ports)
// This prevents them from being exposed as AXI interfaces
#pragma HLS STABLE variable=ROM_conv1_w
#pragma HLS STABLE variable=ROM_conv1_b
#pragma HLS STABLE variable=ROM_conv2_w
#pragma HLS STABLE variable=ROM_conv2_b
#pragma HLS STABLE variable=ROM_dense1_w
#pragma HLS STABLE variable=ROM_dense1_b
#pragma HLS STABLE variable=ROM_dense2_w
#pragma HLS STABLE variable=ROM_dense2_b

// Bind ROMs to BRAM (internal storage, not ports)
#pragma HLS BIND_STORAGE variable=ROM_conv1_w type=rom_1p impl=bram
#pragma HLS BIND_STORAGE variable=ROM_conv1_b type=rom_1p impl=bram
#pragma HLS BIND_STORAGE variable=ROM_conv2_w type=rom_1p impl=bram
#pragma HLS BIND_STORAGE variable=ROM_conv2_b type=rom_1p impl=bram
#pragma HLS BIND_STORAGE variable=ROM_dense1_w type=rom_1p impl=bram
#pragma HLS BIND_STORAGE variable=ROM_dense1_b type=rom_1p impl=bram
#pragma HLS BIND_STORAGE variable=ROM_dense2_w type=rom_1p impl=bram
#pragma HLS BIND_STORAGE variable=ROM_dense2_b type=rom_1p impl=bram

    // Rest of function...
    data_t conv1_out[INPUT_LEN - KERNEL1 + 1][CONV1_OUT];
    data_t pool1_out[(INPUT_LEN - KERNEL1 + 1) / POOL_SIZE][CONV1_OUT];
    data_t conv2_out[((INPUT_LEN - KERNEL1 + 1) / POOL_SIZE) - KERNEL2 + 1][CONV2_OUT];
    data_t gap_out[CONV2_OUT];
    data_t dense1_out[DENSE1_UNITS];
    data_t logits[DENSE2_UNITS];

#pragma HLS BIND_STORAGE variable=conv1_out type=ram_t2p impl=bram
#pragma HLS BIND_STORAGE variable=pool1_out type=ram_t2p impl=bram
#pragma HLS BIND_STORAGE variable=conv2_out type=ram_t2p impl=bram
#pragma HLS ARRAY_PARTITION variable=conv1_out cyclic factor=2 dim=2
#pragma HLS ARRAY_PARTITION variable=pool1_out cyclic factor=2 dim=2
#pragma HLS ARRAY_PARTITION variable=conv2_out cyclic factor=4 dim=2
#pragma HLS ARRAY_PARTITION variable=gap_out complete
#pragma HLS ARRAY_PARTITION variable=dense1_out complete
#pragma HLS ARRAY_PARTITION variable=logits complete

    conv1d_relu (input, ROM_conv1_w, ROM_conv1_b, conv1_out);
    maxpool     (conv1_out, pool1_out);
    conv1d_relu2(pool1_out, ROM_conv2_w, ROM_conv2_b, conv2_out);
    gap         (conv2_out, gap_out);
    dense_relu  (gap_out, ROM_dense1_w, ROM_dense1_b, dense1_out);
    dense_linear(dense1_out, ROM_dense2_w, ROM_dense2_b, logits);

    // Sigmoid + Pack
    data_t one = (data_t)1.0;
    data_t neg = (data_t)(-logits[0]);
    data_t e   = hls::exp(neg);
    data_t prob = one / (one + e);

    ap_fixed<20,11> prob_wide = prob;
    ap_fixed<20,11> scaled = prob_wide * 256;
    int16_t score_i16 = (int16_t)scaled;
    if (score_i16 >  32767) score_i16 =  32767;
    if (score_i16 < -32768) score_i16 = -32768;

    ap_uint<1> label = (prob >= (data_t)0.4) ? 1 : 0;
    ap_uint<16> score_u16 = *((uint16_t*)&score_i16);
    ap_uint<32> packed = 0;
    packed.range(0, 0) = label;
    packed.range(16, 1) = score_u16;
    output[0] = packed;
}