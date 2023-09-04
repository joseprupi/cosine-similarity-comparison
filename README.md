Performance comparison of different implementations of cosine similarity. The time is from calculating the similarity of two random vectors of size 640000:

| Implemntation | Time (ms) |
| --- | ----------- |
| Numpy | 0.6999 |
| Scipy (from the library) | 0.9893 |
| C++ | Text |
| Vectorized C++ | Text |
| C++ with O3 optimization | 0.4251 |
| Vectorized C++ with O3 optimization | 0.0893 |