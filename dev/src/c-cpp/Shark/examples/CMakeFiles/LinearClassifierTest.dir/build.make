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
include examples/CMakeFiles/LinearClassifierTest.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/LinearClassifierTest.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/LinearClassifierTest.dir/flags.make

examples/CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.o: examples/CMakeFiles/LinearClassifierTest.dir/flags.make
examples/CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.o: examples/ReClaM/LinearClassifierTest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.o"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.o -c /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/LinearClassifierTest.cpp

examples/CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.i"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/LinearClassifierTest.cpp > CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.i

examples/CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.s"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/LinearClassifierTest.cpp -o CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.s

examples/CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.o.requires:
.PHONY : examples/CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.o.requires

examples/CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.o.provides: examples/CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/LinearClassifierTest.dir/build.make examples/CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.o.provides.build
.PHONY : examples/CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.o.provides

examples/CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.o.provides.build: examples/CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.o

# Object files for target LinearClassifierTest
LinearClassifierTest_OBJECTS = \
"CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.o"

# External object files for target LinearClassifierTest
LinearClassifierTest_EXTERNAL_OBJECTS =

examples/LinearClassifierTest: examples/CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.o
examples/LinearClassifierTest: libshark.so.2.3.0
examples/LinearClassifierTest: examples/CMakeFiles/LinearClassifierTest.dir/build.make
examples/LinearClassifierTest: examples/CMakeFiles/LinearClassifierTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable LinearClassifierTest"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LinearClassifierTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/LinearClassifierTest.dir/build: examples/LinearClassifierTest
.PHONY : examples/CMakeFiles/LinearClassifierTest.dir/build

examples/CMakeFiles/LinearClassifierTest.dir/requires: examples/CMakeFiles/LinearClassifierTest.dir/ReClaM/LinearClassifierTest.cpp.o.requires
.PHONY : examples/CMakeFiles/LinearClassifierTest.dir/requires

examples/CMakeFiles/LinearClassifierTest.dir/clean:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -P CMakeFiles/LinearClassifierTest.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/LinearClassifierTest.dir/clean

examples/CMakeFiles/LinearClassifierTest.dir/depend:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/CMakeFiles/LinearClassifierTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/LinearClassifierTest.dir/depend

