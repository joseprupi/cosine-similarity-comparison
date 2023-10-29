CXX = g++

all: cosine_O3 cosine dot_O3 dot dot_native

cosine_O3:
	@${CXX} cosine.cpp -O3 -march=native -o cosine_O3
	@${CXX} -S -O3 -march=native cosine.cpp -o cosine_O3.s 

cosine:
	@${CXX} cosine.cpp
	@${CXX} -S cosine.cpp

cosine_native:
	@${CXX} cosine.cpp -march=native -o cosine_native 
	@${CXX} -S -march=native cosine.cpp -o cosine_native.s 

dot_O3:
	@${CXX} dot.cpp -O3 -march=native -o dot_O3
	@${CXX} -S -O3 -march=native dot.cpp -o dot_O3.s

dot:
	@${CXX} dot.cpp -o dot
	@${CXX} -S dot.cpp 

dot_native:
	@${CXX} dot.cpp -march=native -o dot_native
	@${CXX} -S -march=native dot.cpp -o dot_native.s

clean:
	@rm -f cosine_O3
	@rm -f dot_O3
	@rm -f cosine
	@rm -f dot
	@rm -f cosine_native
	@rm -f dot_native
	@rm -f *.s
