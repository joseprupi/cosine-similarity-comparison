Performance comparison of different implementations of cosine similarity. The time is from calculating the similarity of two random vectors of size 640000.

Setup:
* AMD Ryzen 9 3900X 12-Core Processor
* 64GB RAM
* Debian 12
* Python 3.11.2
* scipy 1.13.0
* numpy 1.26.4

To generate the random vectors:
* Execute the cells from the tools/generate.ipynb notebook

To generate the C++ results:
```
cd cpp
make
chmod +x run.sh
./run.sh
```

To generate the python results:
* Execute the cells from the python_np/python_np.ipynb notebook

| Implementation | Time (ms) |
| --- | ----------- |
| C++ | 2.3839 |
| Numpy | 0.6777 |
| C++ with O3 optimization | 0.5416 |
| Scipy | 0.5212 |
| Vectorized C++ | 0.4694 |
| Vectorized C++ with O3 optimization | 0.0936 |