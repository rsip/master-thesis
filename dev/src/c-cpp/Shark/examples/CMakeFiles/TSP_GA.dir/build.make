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
include examples/CMakeFiles/TSP_GA.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/TSP_GA.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/TSP_GA.dir/flags.make

examples/CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.o: examples/CMakeFiles/TSP_GA.dir/flags.make
examples/CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.o: examples/EALib/TSP_GA.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.o"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.o -c /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/EALib/TSP_GA.cpp

examples/CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.i"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/EALib/TSP_GA.cpp > CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.i

examples/CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.s"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/EALib/TSP_GA.cpp -o CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.s

examples/CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.o.requires:
.PHONY : examples/CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.o.requires

examples/CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.o.provides: examples/CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/TSP_GA.dir/build.make examples/CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.o.provides.build
.PHONY : examples/CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.o.provides

examples/CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.o.provides.build: examples/CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.o

# Object files for target TSP_GA
TSP_GA_OBJECTS = \
"CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.o"

# External object files for target TSP_GA
TSP_GA_EXTERNAL_OBJECTS =

examples/TSP_GA: examples/CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.o
examples/TSP_GA: libshark.so.2.3.0
examples/TSP_GA: examples/CMakeFiles/TSP_GA.dir/build.make
examples/TSP_GA: examples/CMakeFiles/TSP_GA.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable TSP_GA"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TSP_GA.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/TSP_GA.dir/build: examples/TSP_GA
.PHONY : examples/CMakeFiles/TSP_GA.dir/build

examples/CMakeFiles/TSP_GA.dir/requires: examples/CMakeFiles/TSP_GA.dir/EALib/TSP_GA.cpp.o.requires
.PHONY : examples/CMakeFiles/TSP_GA.dir/requires

examples/CMakeFiles/TSP_GA.dir/clean:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -P CMakeFiles/TSP_GA.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/TSP_GA.dir/clean

examples/CMakeFiles/TSP_GA.dir/depend:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/CMakeFiles/TSP_GA.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/TSP_GA.dir/depend

