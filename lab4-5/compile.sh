mkdir -p build
nvcc -arch=compute_35 -L/usr/local/cuda/lib64 -lcublas ./matrix_mul.cu -o build/matrix_mul
./build/matrix_mul 1 1000