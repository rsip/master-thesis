# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cg/dev/master-thesis/dev/src/c-cpp/Shark

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cg/dev/master-thesis/dev/src/c-cpp/Shark

# Include any dependencies generated for this target.
include examples/CMakeFiles/SvmApproximationExample.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/SvmApproximationExample.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/SvmApproximationExample.dir/flags.make

examples/CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.o: examples/CMakeFiles/SvmApproximationExample.dir/flags.make
examples/CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.o: examples/ReClaM/SvmApproximationExample.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.o"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.o -c /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/SvmApproximationExample.cpp

examples/CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.i"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/SvmApproximationExample.cpp > CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.i

examples/CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.s"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/SvmApproximationExample.cpp -o CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.s

examples/CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.o.requires:
.PHONY : examples/CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.o.requires

examples/CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.o.provides: examples/CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/SvmApproximationExample.dir/build.make examples/CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.o.provides.build
.PHONY : examples/CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.o.provides

examples/CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.o.provides.build: examples/CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.o

# Object files for target SvmApproximationExample
SvmApproximationExample_OBJECTS = \
"CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.o"

# External object files for target SvmApproximationExample
SvmApproximationExample_EXTERNAL_OBJECTS =

examples/SvmApproximationExample: examples/CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.o
examples/SvmApproximationExample: libshark.so.2.3.0
examples/SvmApproximationExample: examples/CMakeFiles/SvmApproximationExample.dir/build.make
examples/SvmApproximationExample: examples/CMakeFiles/SvmApproximationExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable SvmApproximationExample"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SvmApproximationExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/SvmApproximationExample.dir/build: examples/SvmApproximationExample
.PHONY : examples/CMakeFiles/SvmApproximationExample.dir/build

examples/CMakeFiles/SvmApproximationExample.dir/requires: examples/CMakeFiles/SvmApproximationExample.dir/ReClaM/SvmApproximationExample.cpp.o.requires
.PHONY : examples/CMakeFiles/SvmApproximationExample.dir/requires

examples/CMakeFiles/SvmApproximationExample.dir/clean:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -P CMakeFiles/SvmApproximationExample.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/SvmApproximationExample.dir/clean

examples/CMakeFiles/SvmApproximationExample.dir/depend:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/CMakeFiles/SvmApproximationExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/SvmApproximationExample.dir/depend

