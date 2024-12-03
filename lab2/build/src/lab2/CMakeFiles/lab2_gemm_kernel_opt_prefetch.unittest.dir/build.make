# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jr/arch/lab2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jr/arch/lab2/build

# Include any dependencies generated for this target.
include src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/compiler_depend.make

# Include the progress variables for this target.
include src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/progress.make

# Include the compile flags for this target's objects.
include src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/flags.make

src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/test_gemm_kernel_opt_prefetch.cpp.o: src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/flags.make
src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/test_gemm_kernel_opt_prefetch.cpp.o: ../src/lab2/test_gemm_kernel_opt_prefetch.cpp
src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/test_gemm_kernel_opt_prefetch.cpp.o: src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jr/arch/lab2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/test_gemm_kernel_opt_prefetch.cpp.o"
	cd /home/jr/arch/lab2/build/src/lab2 && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/test_gemm_kernel_opt_prefetch.cpp.o -MF CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/test_gemm_kernel_opt_prefetch.cpp.o.d -o CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/test_gemm_kernel_opt_prefetch.cpp.o -c /home/jr/arch/lab2/src/lab2/test_gemm_kernel_opt_prefetch.cpp

src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/test_gemm_kernel_opt_prefetch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/test_gemm_kernel_opt_prefetch.cpp.i"
	cd /home/jr/arch/lab2/build/src/lab2 && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jr/arch/lab2/src/lab2/test_gemm_kernel_opt_prefetch.cpp > CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/test_gemm_kernel_opt_prefetch.cpp.i

src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/test_gemm_kernel_opt_prefetch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/test_gemm_kernel_opt_prefetch.cpp.s"
	cd /home/jr/arch/lab2/build/src/lab2 && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jr/arch/lab2/src/lab2/test_gemm_kernel_opt_prefetch.cpp -o CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/test_gemm_kernel_opt_prefetch.cpp.s

src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/gemm_kernel_opt_prefetch.S.o: src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/flags.make
src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/gemm_kernel_opt_prefetch.S.o: ../src/lab2/gemm_kernel_opt_prefetch.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jr/arch/lab2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building ASM object src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/gemm_kernel_opt_prefetch.S.o"
	cd /home/jr/arch/lab2/build/src/lab2 && /usr/bin/gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/gemm_kernel_opt_prefetch.S.o -c /home/jr/arch/lab2/src/lab2/gemm_kernel_opt_prefetch.S

src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/gemm_kernel_opt_prefetch.S.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing ASM source to CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/gemm_kernel_opt_prefetch.S.i"
	cd /home/jr/arch/lab2/build/src/lab2 && /usr/bin/gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E /home/jr/arch/lab2/src/lab2/gemm_kernel_opt_prefetch.S > CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/gemm_kernel_opt_prefetch.S.i

src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/gemm_kernel_opt_prefetch.S.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling ASM source to assembly CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/gemm_kernel_opt_prefetch.S.s"
	cd /home/jr/arch/lab2/build/src/lab2 && /usr/bin/gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S /home/jr/arch/lab2/src/lab2/gemm_kernel_opt_prefetch.S -o CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/gemm_kernel_opt_prefetch.S.s

# Object files for target lab2_gemm_kernel_opt_prefetch.unittest
lab2_gemm_kernel_opt_prefetch_unittest_OBJECTS = \
"CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/test_gemm_kernel_opt_prefetch.cpp.o" \
"CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/gemm_kernel_opt_prefetch.S.o"

# External object files for target lab2_gemm_kernel_opt_prefetch.unittest
lab2_gemm_kernel_opt_prefetch_unittest_EXTERNAL_OBJECTS =

dist/bins/lab2_gemm_kernel_opt_prefetch.unittest: src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/test_gemm_kernel_opt_prefetch.cpp.o
dist/bins/lab2_gemm_kernel_opt_prefetch.unittest: src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/gemm_kernel_opt_prefetch.S.o
dist/bins/lab2_gemm_kernel_opt_prefetch.unittest: src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/build.make
dist/bins/lab2_gemm_kernel_opt_prefetch.unittest: lib/libgtest.a
dist/bins/lab2_gemm_kernel_opt_prefetch.unittest: lib/libgtest_main.a
dist/bins/lab2_gemm_kernel_opt_prefetch.unittest: lib/libgtest.a
dist/bins/lab2_gemm_kernel_opt_prefetch.unittest: src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jr/arch/lab2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../dist/bins/lab2_gemm_kernel_opt_prefetch.unittest"
	cd /home/jr/arch/lab2/build/src/lab2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/link.txt --verbose=$(VERBOSE)
	cd /home/jr/arch/lab2/build/src/lab2 && /usr/local/bin/cmake -D TEST_TARGET=lab2_gemm_kernel_opt_prefetch.unittest -D TEST_EXECUTABLE=/home/jr/arch/lab2/build/dist/bins/lab2_gemm_kernel_opt_prefetch.unittest -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/jr/arch/lab2/build/src/lab2 -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=lab2_gemm_kernel_opt_prefetch.unittest_TESTS -D CTEST_FILE=/home/jr/arch/lab2/build/src/lab2/lab2_gemm_kernel_opt_prefetch.unittest[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/local/share/cmake-3.22/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/build: dist/bins/lab2_gemm_kernel_opt_prefetch.unittest
.PHONY : src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/build

src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/clean:
	cd /home/jr/arch/lab2/build/src/lab2 && $(CMAKE_COMMAND) -P CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/cmake_clean.cmake
.PHONY : src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/clean

src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/depend:
	cd /home/jr/arch/lab2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jr/arch/lab2 /home/jr/arch/lab2/src/lab2 /home/jr/arch/lab2/build /home/jr/arch/lab2/build/src/lab2 /home/jr/arch/lab2/build/src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lab2/CMakeFiles/lab2_gemm_kernel_opt_prefetch.unittest.dir/depend

