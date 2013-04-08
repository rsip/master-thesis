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
include examples/CMakeFiles/lorenz84.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/lorenz84.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/lorenz84.dir/flags.make

examples/CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.o: examples/CMakeFiles/lorenz84.dir/flags.make
examples/CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.o: examples/TimeSeries/lorenz84.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.o"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.o -c /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/TimeSeries/lorenz84.cpp

examples/CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.i"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/TimeSeries/lorenz84.cpp > CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.i

examples/CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.s"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/TimeSeries/lorenz84.cpp -o CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.s

examples/CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.o.requires:
.PHONY : examples/CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.o.requires

examples/CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.o.provides: examples/CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/lorenz84.dir/build.make examples/CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.o.provides.build
.PHONY : examples/CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.o.provides

examples/CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.o.provides.build: examples/CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.o

# Object files for target lorenz84
lorenz84_OBJECTS = \
"CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.o"

# External object files for target lorenz84
lorenz84_EXTERNAL_OBJECTS =

examples/lorenz84: examples/CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.o
examples/lorenz84: libshark.so.2.3.0
examples/lorenz84: examples/CMakeFiles/lorenz84.dir/build.make
examples/lorenz84: examples/CMakeFiles/lorenz84.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable lorenz84"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lorenz84.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/lorenz84.dir/build: examples/lorenz84
.PHONY : examples/CMakeFiles/lorenz84.dir/build

examples/CMakeFiles/lorenz84.dir/requires: examples/CMakeFiles/lorenz84.dir/TimeSeries/lorenz84.cpp.o.requires
.PHONY : examples/CMakeFiles/lorenz84.dir/requires

examples/CMakeFiles/lorenz84.dir/clean:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -P CMakeFiles/lorenz84.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/lorenz84.dir/clean

examples/CMakeFiles/lorenz84.dir/depend:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/CMakeFiles/lorenz84.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/lorenz84.dir/depend

