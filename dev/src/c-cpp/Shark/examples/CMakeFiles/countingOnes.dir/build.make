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
include examples/CMakeFiles/countingOnes.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/countingOnes.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/countingOnes.dir/flags.make

examples/CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.o: examples/CMakeFiles/countingOnes.dir/flags.make
examples/CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.o: examples/EALib/countingOnes.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.o"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.o -c /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/EALib/countingOnes.cpp

examples/CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.i"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/EALib/countingOnes.cpp > CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.i

examples/CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.s"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/EALib/countingOnes.cpp -o CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.s

examples/CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.o.requires:
.PHONY : examples/CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.o.requires

examples/CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.o.provides: examples/CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/countingOnes.dir/build.make examples/CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.o.provides.build
.PHONY : examples/CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.o.provides

examples/CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.o.provides.build: examples/CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.o

# Object files for target countingOnes
countingOnes_OBJECTS = \
"CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.o"

# External object files for target countingOnes
countingOnes_EXTERNAL_OBJECTS =

examples/countingOnes: examples/CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.o
examples/countingOnes: libshark.so.2.3.0
examples/countingOnes: examples/CMakeFiles/countingOnes.dir/build.make
examples/countingOnes: examples/CMakeFiles/countingOnes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable countingOnes"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/countingOnes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/countingOnes.dir/build: examples/countingOnes
.PHONY : examples/CMakeFiles/countingOnes.dir/build

examples/CMakeFiles/countingOnes.dir/requires: examples/CMakeFiles/countingOnes.dir/EALib/countingOnes.cpp.o.requires
.PHONY : examples/CMakeFiles/countingOnes.dir/requires

examples/CMakeFiles/countingOnes.dir/clean:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -P CMakeFiles/countingOnes.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/countingOnes.dir/clean

examples/CMakeFiles/countingOnes.dir/depend:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/CMakeFiles/countingOnes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/countingOnes.dir/depend

