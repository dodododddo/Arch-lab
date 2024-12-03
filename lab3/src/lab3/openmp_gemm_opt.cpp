#include <omp.h>
#include "openmp_gemm.h"
#include "gemm_kernel_opt.h"
#include <cstring>

void openmp_gemm_opt(int thread_num, float *C, float *A, float *B, uint64_t M, uint64_t N, uint64_t K) {
    // 设置OpenMP线程数
    omp_set_num_threads(thread_num);
    
    // 定义分块大小 - 根据AVX实现的要求调整
    const int BM = 2;    // AVX实现要求M维度步长为2
    const int BN = 32;   // AVX实现使用256位寄存器，每次处理32个float
    const int BK = 1;    // AVX实现在K维度上步长为1
    
    // 使用OpenMP在M维度上并行
    #pragma omp parallel for
    for (uint64_t m = 0; m < M - 1; m += BM) {
        for (uint64_t n = 0; n < N - 31; n += BN) {
            // 调用AVX优化的GEMM内核
            gemm_kernel_opt_avx(
                &C[m * N + n],
                &A[m * K],
                &B[n],
                2,          // 固定处理2行
                32,         // 固定处理32列
                K          // 完整的K维度
            );
        }
        
        // 处理N维度上的剩余部分
        if (N % BN != 0) {
            uint64_t n = (N / BN) * BN;
            // 使用基础实现处理剩余部分
            for (uint64_t i = 0; i < 2 && (m + i) < M; i++) {
                for (uint64_t j = n; j < N; j++) {
                    float sum = 0.0f;
                    for (uint64_t k = 0; k < K; k++) {
                        sum += A[(m + i) * K + k] * B[k * N + j];
                    }
                    C[(m + i) * N + j] += sum;
                }
            }
        }
    }
    
    // 处理M维度上的剩余行
    if (M % BM != 0) {
        uint64_t m = (M / BM) * BM;
        #pragma omp parallel for
        for (uint64_t n = 0; n < N; n++) {
            float sum = 0.0f;
            for (uint64_t k = 0; k < K; k++) {
                sum += A[m * K + k] * B[k * N + n];
            }
            C[m * N + n] += sum;
        }
    }
}
