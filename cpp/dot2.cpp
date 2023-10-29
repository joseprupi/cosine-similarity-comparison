#include <iostream>
#include <random>
#include <chrono>

#include <immintrin.h>

using namespace std;
using namespace std::chrono;

int SIZE = 640000;
int EXECUTIONS = 1000;

float dot_product(float *A, float *B)
{
    float dot = 0.0;
    for (auto i = 0; i < SIZE; ++i)
    {
        dot += A[i] * B[i];
    }
    return dot;
}

