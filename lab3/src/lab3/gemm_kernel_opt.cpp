#include "gemm_kernel_opt.h"
#include <immintrin.h>

void gemm_kernel_opt(float* C, float* A, float* B,
                    uint64_t M, uint64_t N, uint64_t K,
                    uint64_t ldc, uint64_t lda, uint64_t ldb) {
    // 这里应该使用练习2中实现的优化版本的GEMM内核
    // 使用AVX2指令集进行向量化计算
    for (uint64_t m = 0; m < M; m++) {
        for (uint64_t n = 0; n < N; n++) {
            float sum = 0.0f;
            for (uint64_t k = 0; k < K; k++) {
                sum += A[m * lda + k] * B[k * ldb + n];
            }
            C[m * ldc + n] += sum;
        }
    }
} 