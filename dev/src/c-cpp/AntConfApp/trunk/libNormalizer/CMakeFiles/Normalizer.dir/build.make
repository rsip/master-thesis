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
CMAKE_SOURCE_DIR = /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk

# Include any dependencies generated for this target.
include libNormalizer/CMakeFiles/Normalizer.dir/depend.make

# Include the progress variables for this target.
include libNormalizer/CMakeFiles/Normalizer.dir/progress.make

# Include the compile flags for this target's objects.
include libNormalizer/CMakeFiles/Normalizer.dir/flags.make

libNormalizer/CMakeFiles/Normalizer.dir/normalizer.cpp.o: libNormalizer/CMakeFiles/Normalizer.dir/flags.make
libNormalizer/CMakeFiles/Normalizer.dir/normalizer.cpp.o: libNormalizer/normalizer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object libNormalizer/CMakeFiles/Normalizer.dir/normalizer.cpp.o"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libNormalizer && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Normalizer.dir/normalizer.cpp.o -c /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libNormalizer/normalizer.cpp

libNormalizer/CMakeFiles/Normalizer.dir/normalizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Normalizer.dir/normalizer.cpp.i"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libNormalizer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libNormalizer/normalizer.cpp > CMakeFiles/Normalizer.dir/normalizer.cpp.i

libNormalizer/CMakeFiles/Normalizer.dir/normalizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Normalizer.dir/normalizer.cpp.s"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libNormalizer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libNormalizer/normalizer.cpp -o CMakeFiles/Normalizer.dir/normalizer.cpp.s

libNormalizer/CMakeFiles/Normalizer.dir/normalizer.cpp.o.requires:
.PHONY : libNormalizer/CMakeFiles/Normalizer.dir/normalizer.cpp.o.requires

libNormalizer/CMakeFiles/Normalizer.dir/normalizer.cpp.o.provides: libNormalizer/CMakeFiles/Normalizer.dir/normalizer.cpp.o.requires
	$(MAKE) -f libNormalizer/CMakeFiles/Normalizer.dir/build.make libNormalizer/CMakeFiles/Normalizer.dir/normalizer.cpp.o.provides.build
.PHONY : libNormalizer/CMakeFiles/Normalizer.dir/normalizer.cpp.o.provides

libNormalizer/CMakeFiles/Normalizer.dir/normalizer.cpp.o.provides.build: libNormalizer/CMakeFiles/Normalizer.dir/normalizer.cpp.o

# Object files for target Normalizer
Normalizer_OBJECTS = \
"CMakeFiles/Normalizer.dir/normalizer.cpp.o"

# External object files for target Normalizer
Normalizer_EXTERNAL_OBJECTS =

libNormalizer/libNormalizer.a: libNormalizer/CMakeFiles/Normalizer.dir/normalizer.cpp.o
libNormalizer/libNormalizer.a: libNormalizer/CMakeFiles/Normalizer.dir/build.make
libNormalizer/libNormalizer.a: libNormalizer/CMakeFiles/Normalizer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libNormalizer.a"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libNormalizer && $(CMAKE_COMMAND) -P CMakeFiles/Normalizer.dir/cmake_clean_target.cmake
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libNormalizer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Normalizer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libNormalizer/CMakeFiles/Normalizer.dir/build: libNormalizer/libNormalizer.a
.PHONY : libNormalizer/CMakeFiles/Normalizer.dir/build

libNormalizer/CMakeFiles/Normalizer.dir/requires: libNormalizer/CMakeFiles/Normalizer.dir/normalizer.cpp.o.requires
.PHONY : libNormalizer/CMakeFiles/Normalizer.dir/requires

libNormalizer/CMakeFiles/Normalizer.dir/clean:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libNormalizer && $(CMAKE_COMMAND) -P CMakeFiles/Normalizer.dir/cmake_clean.cmake
.PHONY : libNormalizer/CMakeFiles/Normalizer.dir/clean

libNormalizer/CMakeFiles/Normalizer.dir/depend:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libNormalizer /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libNormalizer /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libNormalizer/CMakeFiles/Normalizer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libNormalizer/CMakeFiles/Normalizer.dir/depend
