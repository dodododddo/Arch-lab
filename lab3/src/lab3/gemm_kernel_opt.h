//
// Created by huche on 24-10-11.
//

#ifndef COMPUTER_ARCHITECTURE_LABS_GEMM_KERNEL_OPT_H
#define COMPUTER_ARCHITECTURE_LABS_GEMM_KERNEL_OPT_H

#include <cstdint>

extern "C" {
    void gemm_kernel_baseline(float *C, float *A, float *B, uint64_t M, uint64_t N, uint64_t K);

    void gemm_kernel_opt_loop_unrolling(float *C, float *A, float *B, uint64_t M, uint64_t N, uint64_t K);

    void gemm_kernel_opt_avx(float *C, float *A, float *B, uint64_t M, uint64_t N, uint64_t K);
};

#pragma once

// 优化的GEMM内核函数声明
void gemm_kernel_opt(float* C, float* A, float* B, 
                    uint64_t M, uint64_t N, uint64_t K,
                    uint64_t ldc, uint64_t lda, uint64_t ldb);

#endif //COMPUTER_ARCHITECTURE_LABS_GEMM_KERNEL_OPT_H
