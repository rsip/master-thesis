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
include examples/CMakeFiles/simpleRNNet.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/simpleRNNet.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/simpleRNNet.dir/flags.make

examples/CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.o: examples/CMakeFiles/simpleRNNet.dir/flags.make
examples/CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.o: examples/ReClaM/simpleRNNet.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.o"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.o -c /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/simpleRNNet.cpp

examples/CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.i"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/simpleRNNet.cpp > CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.i

examples/CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.s"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/simpleRNNet.cpp -o CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.s

examples/CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.o.requires:
.PHONY : examples/CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.o.requires

examples/CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.o.provides: examples/CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/simpleRNNet.dir/build.make examples/CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.o.provides.build
.PHONY : examples/CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.o.provides

examples/CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.o.provides.build: examples/CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.o

# Object files for target simpleRNNet
simpleRNNet_OBJECTS = \
"CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.o"

# External object files for target simpleRNNet
simpleRNNet_EXTERNAL_OBJECTS =

examples/simpleRNNet: examples/CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.o
examples/simpleRNNet: libshark.so.2.3.0
examples/simpleRNNet: examples/CMakeFiles/simpleRNNet.dir/build.make
examples/simpleRNNet: examples/CMakeFiles/simpleRNNet.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable simpleRNNet"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simpleRNNet.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/simpleRNNet.dir/build: examples/simpleRNNet
.PHONY : examples/CMakeFiles/simpleRNNet.dir/build

examples/CMakeFiles/simpleRNNet.dir/requires: examples/CMakeFiles/simpleRNNet.dir/ReClaM/simpleRNNet.cpp.o.requires
.PHONY : examples/CMakeFiles/simpleRNNet.dir/requires

examples/CMakeFiles/simpleRNNet.dir/clean:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -P CMakeFiles/simpleRNNet.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/simpleRNNet.dir/clean

examples/CMakeFiles/simpleRNNet.dir/depend:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/CMakeFiles/simpleRNNet.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/simpleRNNet.dir/depend

