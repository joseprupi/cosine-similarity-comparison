Performance comparison of different implementations of cosine similarity. The time is from calculating the similarity of two random vectors of size 640000.

Setup:
* AMD Ryzen 9 3900X 12-Core Processor
* 64GB RAM
* Debian 12
* Python 3.11.2

To generate the random vectors:
* Execute the all the cells from the tools/generate/generate.ipynb notebook

To generate the C++ results:
```
cd cpp
make
chmod +x run.sh
./run.sh
```

| Implemntation | Time (ms) |
| --- | ----------- |
| C++ | 2.3839 |
| Numpy | 0.6777 |
| C++ with O3 optimization | 0.5416 |
| Scipy | 0.5212 |
| Vectorized C++ | 0.4694 |
| Vectorized C++ with O3 optimization | 0.0936 |