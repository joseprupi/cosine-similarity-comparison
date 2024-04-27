CXX = g++

all: cosine cosine_O3 cosine_O3_native cosine_native cosine_simd_O3_native cosine_simd_native

cosine:
	@${CXX} cosine.cpp -o cosine
	@${CXX} -S -fverbose-asm cosine.cpp

cosine_O3:
	@${CXX} cosine.cpp -O3 -o cosine_O3
	@${CXX} -S -fverbose-asm -O3 cosine.cpp -o cosine_O3.s 

cosine_native:
	@${CXX} cosine.cpp -march=native -o cosine_native 
	@${CXX} -S -fverbose-asm -march=native cosine.cpp -o cosine_native.s 

cosine_O3_native:
	@${CXX} cosine.cpp -O3 -march=native -o cosine_O3_native 
	@${CXX} -S -fverbose-asm -O3 -march=native cosine.cpp -o cosine_O3_native.s 

cosine_simd_O3_native:
	@${CXX} cosine_simd.cpp -O3 -march=native -o cosine_simd_O3_native
	@${CXX} -S -fverbose-asm -O3 -march=native cosine_simd.cpp -o cosine_simd_O3_native.s 

cosine_simd_native:
	@${CXX} cosine_simd.cpp -march=native -o cosine_simd_native 
	@${CXX} -S -fverbose-asm -march=native cosine_simd.cpp -o cosine_simd_native.s 

clean:
	@rm -f cosine
	@rm -f cosine_O3
	@rm -f cosine_O3_native
	@rm -f cosine_native
	@rm -f cosine_simd_O3_native
	@rm -f cosine_simd_native

	@rm -f *.s
