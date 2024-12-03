# CMake generated Testfile for 
# Source directory: /home/jr/arch/lab3/src/lab3
# Build directory: /home/jr/arch/lab3/build/src/lab3
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
include("/home/jr/arch/lab3/build/src/lab3/lab3_gemm_opt_loop_unrolling.unittest[1]_include.cmake")
include("/home/jr/arch/lab3/build/src/lab3/lab3_gemm_opt_avx.unittest[1]_include.cmake")
include("/home/jr/arch/lab3/build/src/lab3/lab3_gemm_opt_openmp.unittest[1]_include.cmake")
subdirs("../../_deps/googletest-build")
