#include <iostream>
#include <iomanip>
#include <string>
#include <map>
#include <random>
#include <cmath>
#include <iostream>
#include <array>
#include <iterator>
#include <random>
#include <algorithm>
#include <chrono>

using namespace std;
using namespace std::chrono;

int SIZE = 10000000;

double cosine_similarity(float *A, float *B)
{
    float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
    for (unsigned int i = 0u; i < SIZE; ++i)
    {
        dot += A[i] * B[i];
        denom_a += A[i] * A[i];
        denom_b += B[i] * B[i];
    }
    return dot / (sqrt(denom_a) * sqrt(denom_b));
}

int main()
{
    std::random_device rd;
    std::mt19937 e2(rd());
    // std::minstd_rand0 g1(rd());
    // std::subtract_with_carry_engine<unsigned, 24, 10, 24> g2(rd());
    std::uniform_real_distribution<float> dist(0, 1);

    // float* A = new float[SIZE];
    // float* B = new float[SIZE];

    // for (int n = 0; n < SIZE; ++n) {
    //     A[n] = dist(e2);
    //     B[n] = dist(e2);
    // }

    std::vector<float> A(SIZE);
    std::vector<float> B(SIZE);

    std::generate(A.begin(), A.end(), [&]()
                  { return dist(e2); });
    std::generate(B.begin(), B.end(), [&]()
                  { return dist(e2); });


    auto t1 = high_resolution_clock::now();
    float sim = cosine_similarity(&A[0], &B[0]);
    auto t2 = high_resolution_clock::now();

    duration<double, std::milli> ms_double = t2 - t1;
    std::cout << ms_double.count() << "ms\n";

    printf("%f", sim);
}