#include <iostream>
#include <random>
#include <chrono>

using namespace std;
using namespace std::chrono;

int SIZE = 640000;
int EXECUTIONS = 1000;

float cosine_similarity(float *A, float *B)
{
    float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
    for (auto i = 0; i < SIZE; ++i)
    {
        dot += A[i] * B[i];
        denom_a += A[i] * A[i];
        denom_b += B[i] * B[i];
    }
    return dot / (sqrt(denom_a) * sqrt(denom_b));
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
    double normal_accum;

    for (int i = 0; i < EXECUTIONS; i++)
    {
        auto t1 = high_resolution_clock::now();
        cosine_similarity(&A[0], &B[0]);
        auto t2 = high_resolution_clock::now();
        duration = t2 - t1;
        normal_accum += duration.count();
    }

    std::cout << normal_accum / EXECUTIONS << " ms\n";
}