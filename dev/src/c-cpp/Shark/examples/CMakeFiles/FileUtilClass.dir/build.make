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
include examples/CMakeFiles/FileUtilClass.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/FileUtilClass.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/FileUtilClass.dir/flags.make

examples/CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.o: examples/CMakeFiles/FileUtilClass.dir/flags.make
examples/CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.o: examples/FileUtil/FileUtilClass.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.o"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.o -c /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/FileUtil/FileUtilClass.cpp

examples/CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.i"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/FileUtil/FileUtilClass.cpp > CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.i

examples/CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.s"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/FileUtil/FileUtilClass.cpp -o CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.s

examples/CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.o.requires:
.PHONY : examples/CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.o.requires

examples/CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.o.provides: examples/CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/FileUtilClass.dir/build.make examples/CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.o.provides.build
.PHONY : examples/CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.o.provides

examples/CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.o.provides.build: examples/CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.o

# Object files for target FileUtilClass
FileUtilClass_OBJECTS = \
"CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.o"

# External object files for target FileUtilClass
FileUtilClass_EXTERNAL_OBJECTS =

examples/FileUtilClass: examples/CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.o
examples/FileUtilClass: libshark.so.2.3.0
examples/FileUtilClass: examples/CMakeFiles/FileUtilClass.dir/build.make
examples/FileUtilClass: examples/CMakeFiles/FileUtilClass.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable FileUtilClass"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FileUtilClass.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/FileUtilClass.dir/build: examples/FileUtilClass
.PHONY : examples/CMakeFiles/FileUtilClass.dir/build

examples/CMakeFiles/FileUtilClass.dir/requires: examples/CMakeFiles/FileUtilClass.dir/FileUtil/FileUtilClass.cpp.o.requires
.PHONY : examples/CMakeFiles/FileUtilClass.dir/requires

examples/CMakeFiles/FileUtilClass.dir/clean:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -P CMakeFiles/FileUtilClass.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/FileUtilClass.dir/clean

examples/CMakeFiles/FileUtilClass.dir/depend:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/CMakeFiles/FileUtilClass.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/FileUtilClass.dir/depend

