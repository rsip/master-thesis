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
include examples/CMakeFiles/fonSteadyStateMO-CMA.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/fonSteadyStateMO-CMA.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/fonSteadyStateMO-CMA.dir/flags.make

examples/CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.o: examples/CMakeFiles/fonSteadyStateMO-CMA.dir/flags.make
examples/CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.o: examples/MOO-EALib/fonSteadyStateMO-CMA.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.o"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.o -c /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/MOO-EALib/fonSteadyStateMO-CMA.cpp

examples/CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.i"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/MOO-EALib/fonSteadyStateMO-CMA.cpp > CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.i

examples/CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.s"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/MOO-EALib/fonSteadyStateMO-CMA.cpp -o CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.s

examples/CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.o.requires:
.PHONY : examples/CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.o.requires

examples/CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.o.provides: examples/CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/fonSteadyStateMO-CMA.dir/build.make examples/CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.o.provides.build
.PHONY : examples/CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.o.provides

examples/CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.o.provides.build: examples/CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.o

# Object files for target fonSteadyStateMO-CMA
fonSteadyStateMO__CMA_OBJECTS = \
"CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.o"

# External object files for target fonSteadyStateMO-CMA
fonSteadyStateMO__CMA_EXTERNAL_OBJECTS =

examples/fonSteadyStateMO-CMA: examples/CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.o
examples/fonSteadyStateMO-CMA: libshark.so.2.3.0
examples/fonSteadyStateMO-CMA: examples/CMakeFiles/fonSteadyStateMO-CMA.dir/build.make
examples/fonSteadyStateMO-CMA: examples/CMakeFiles/fonSteadyStateMO-CMA.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable fonSteadyStateMO-CMA"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fonSteadyStateMO-CMA.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/fonSteadyStateMO-CMA.dir/build: examples/fonSteadyStateMO-CMA
.PHONY : examples/CMakeFiles/fonSteadyStateMO-CMA.dir/build

examples/CMakeFiles/fonSteadyStateMO-CMA.dir/requires: examples/CMakeFiles/fonSteadyStateMO-CMA.dir/MOO-EALib/fonSteadyStateMO-CMA.cpp.o.requires
.PHONY : examples/CMakeFiles/fonSteadyStateMO-CMA.dir/requires

examples/CMakeFiles/fonSteadyStateMO-CMA.dir/clean:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -P CMakeFiles/fonSteadyStateMO-CMA.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/fonSteadyStateMO-CMA.dir/clean

examples/CMakeFiles/fonSteadyStateMO-CMA.dir/depend:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/CMakeFiles/fonSteadyStateMO-CMA.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/fonSteadyStateMO-CMA.dir/depend

