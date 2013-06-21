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
include libCalibration/CMakeFiles/Calibration.dir/depend.make

# Include the progress variables for this target.
include libCalibration/CMakeFiles/Calibration.dir/progress.make

# Include the compile flags for this target's objects.
include libCalibration/CMakeFiles/Calibration.dir/flags.make

libCalibration/CMakeFiles/Calibration.dir/calib.cpp.o: libCalibration/CMakeFiles/Calibration.dir/flags.make
libCalibration/CMakeFiles/Calibration.dir/calib.cpp.o: libCalibration/calib.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object libCalibration/CMakeFiles/Calibration.dir/calib.cpp.o"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libCalibration && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Calibration.dir/calib.cpp.o -c /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libCalibration/calib.cpp

libCalibration/CMakeFiles/Calibration.dir/calib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Calibration.dir/calib.cpp.i"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libCalibration && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libCalibration/calib.cpp > CMakeFiles/Calibration.dir/calib.cpp.i

libCalibration/CMakeFiles/Calibration.dir/calib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Calibration.dir/calib.cpp.s"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libCalibration && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libCalibration/calib.cpp -o CMakeFiles/Calibration.dir/calib.cpp.s

libCalibration/CMakeFiles/Calibration.dir/calib.cpp.o.requires:
.PHONY : libCalibration/CMakeFiles/Calibration.dir/calib.cpp.o.requires

libCalibration/CMakeFiles/Calibration.dir/calib.cpp.o.provides: libCalibration/CMakeFiles/Calibration.dir/calib.cpp.o.requires
	$(MAKE) -f libCalibration/CMakeFiles/Calibration.dir/build.make libCalibration/CMakeFiles/Calibration.dir/calib.cpp.o.provides.build
.PHONY : libCalibration/CMakeFiles/Calibration.dir/calib.cpp.o.provides

libCalibration/CMakeFiles/Calibration.dir/calib.cpp.o.provides.build: libCalibration/CMakeFiles/Calibration.dir/calib.cpp.o

# Object files for target Calibration
Calibration_OBJECTS = \
"CMakeFiles/Calibration.dir/calib.cpp.o"

# External object files for target Calibration
Calibration_EXTERNAL_OBJECTS =

libCalibration/libCalibration.a: libCalibration/CMakeFiles/Calibration.dir/calib.cpp.o
libCalibration/libCalibration.a: libCalibration/CMakeFiles/Calibration.dir/build.make
libCalibration/libCalibration.a: libCalibration/CMakeFiles/Calibration.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libCalibration.a"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libCalibration && $(CMAKE_COMMAND) -P CMakeFiles/Calibration.dir/cmake_clean_target.cmake
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libCalibration && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Calibration.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libCalibration/CMakeFiles/Calibration.dir/build: libCalibration/libCalibration.a
.PHONY : libCalibration/CMakeFiles/Calibration.dir/build

libCalibration/CMakeFiles/Calibration.dir/requires: libCalibration/CMakeFiles/Calibration.dir/calib.cpp.o.requires
.PHONY : libCalibration/CMakeFiles/Calibration.dir/requires

libCalibration/CMakeFiles/Calibration.dir/clean:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libCalibration && $(CMAKE_COMMAND) -P CMakeFiles/Calibration.dir/cmake_clean.cmake
.PHONY : libCalibration/CMakeFiles/Calibration.dir/clean

libCalibration/CMakeFiles/Calibration.dir/depend:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libCalibration /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libCalibration /home/cg/dev/master-thesis/dev/src/c-cpp/AntConfApp/trunk/libCalibration/CMakeFiles/Calibration.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libCalibration/CMakeFiles/Calibration.dir/depend

