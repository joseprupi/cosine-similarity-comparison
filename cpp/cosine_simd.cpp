#include <iostream>
#include <random>
#include <chrono>

#include <immintrin.h>

using namespace std;
using namespace std::chrono;

int SIZE = 640000;
int EXECUTIONS = 1000;

inline float simd_horizontal_sum(__m256 &r)
{
    __m128 r4 = _mm_add_ps(_mm256_castps256_ps128(r), _mm256_extractf128_ps(r, 1));
    __m128 r2 = _mm_add_ps(r4, _mm_movehl_ps(r4, r4));
    __m128 r1 = _mm_add_ss(r2, _mm_movehdup_ps(r2));
    return _mm_cvtss_f32(r1);
}

float cosine_similarity_simd(float *A, float *B)
{

    __m256 sum_dot = _mm256_setzero_ps();
    __m256 sum_A = _mm256_setzero_ps();
    __m256 sum_B = _mm256_setzero_ps();

    for (size_t i = 0; i < SIZE; i += 8)
    {
        __m256 buf1 = _mm256_loadu_ps(A + i);
        __m256 buf2 = _mm256_loadu_ps(B + i);

        sum_dot = _mm256_fmadd_ps(buf1, buf2, sum_dot);
        sum_A = _mm256_fmadd_ps(buf1, buf1, sum_A);
        sum_B = _mm256_fmadd_ps(buf2, buf2, sum_B);
    }

    float float_dot = simd_horizontal_sum(sum_dot);
    float float_A_norm = simd_horizontal_sum(sum_A);
    float float_B_norm = simd_horizontal_sum(sum_B);

    return float_dot / (sqrt(float_A_norm) * sqrt(float_B_norm));
}

int main()
{

    __attribute__((aligned(32))) float A[SIZE], B[SIZE];

    FILE *fp;
    fp = fopen("../tools/vectors.csv", "r");

    float a, b;
    int i = 0;
    while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
    {
        A[i] = a;
        B[i] = b;
        i += 1;
    }

    duration<double, std::milli> duration;
    double simd_accum = 0.0;

    for (int i = 0; i < EXECUTIONS; i++)
    {
        auto t1 = high_resolution_clock::now();
        cosine_similarity_simd(&A[0], &B[0]);
        auto t2 = high_resolution_clock::now();
        duration = t2 - t1;
        simd_accum += duration.count();
    }

    std::cout << simd_accum / EXECUTIONS << " ms\n";
}