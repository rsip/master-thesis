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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cg/dev/master-thesis/dev/src/c-cpp/Shark

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cg/dev/master-thesis/dev/src/c-cpp/Shark

# Include any dependencies generated for this target.
include examples/CMakeFiles/RngTest2.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/RngTest2.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/RngTest2.dir/flags.make

examples/CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.o: examples/CMakeFiles/RngTest2.dir/flags.make
examples/CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.o: examples/Rng/RngTest2.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.o"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.o -c /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/Rng/RngTest2.cpp

examples/CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.i"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/Rng/RngTest2.cpp > CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.i

examples/CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.s"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/Rng/RngTest2.cpp -o CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.s

examples/CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.o.requires:
.PHONY : examples/CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.o.requires

examples/CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.o.provides: examples/CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/RngTest2.dir/build.make examples/CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.o.provides.build
.PHONY : examples/CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.o.provides

examples/CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.o.provides.build: examples/CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.o

# Object files for target RngTest2
RngTest2_OBJECTS = \
"CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.o"

# External object files for target RngTest2
RngTest2_EXTERNAL_OBJECTS =

examples/RngTest2: examples/CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.o
examples/RngTest2: libshark.so.2.3.0
examples/RngTest2: examples/CMakeFiles/RngTest2.dir/build.make
examples/RngTest2: examples/CMakeFiles/RngTest2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable RngTest2"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RngTest2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/RngTest2.dir/build: examples/RngTest2
.PHONY : examples/CMakeFiles/RngTest2.dir/build

examples/CMakeFiles/RngTest2.dir/requires: examples/CMakeFiles/RngTest2.dir/Rng/RngTest2.cpp.o.requires
.PHONY : examples/CMakeFiles/RngTest2.dir/requires

examples/CMakeFiles/RngTest2.dir/clean:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -P CMakeFiles/RngTest2.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/RngTest2.dir/clean

examples/CMakeFiles/RngTest2.dir/depend:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/CMakeFiles/RngTest2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/RngTest2.dir/depend

