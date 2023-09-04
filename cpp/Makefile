# Usage:
# make			# compile binary
# make clean	# remove binary

.PHONY: all clean

CXX = g++

all: cosine.cpp
	@${CXX} cosine.cpp -O3 -march=native -o cosine 
	# @${CXX} cosine.cpp -march=native -o cosine 

clean:
	@rm -f cosine