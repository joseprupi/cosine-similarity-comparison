#!/bin/bash

printf "cosine:\t\t\t"
./cosine
printf "cosine_O3:\t\t"
./cosine_O3
printf "cosine_simd:\t\t"
./cosine_simd_native
printf "cosine_simd_O3:\t\t"
./cosine_simd_O3_native