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
include examples/CMakeFiles/Regression.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/Regression.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/Regression.dir/flags.make

examples/CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.o: examples/CMakeFiles/Regression.dir/flags.make
examples/CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.o: examples/ReClaM/QT/regression.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.o"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.o -c /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/QT/regression.cpp

examples/CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.i"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/QT/regression.cpp > CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.i

examples/CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.s"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/QT/regression.cpp -o CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.s

examples/CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.o.requires:
.PHONY : examples/CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.o.requires

examples/CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.o.provides: examples/CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/Regression.dir/build.make examples/CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.o.provides.build
.PHONY : examples/CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.o.provides

examples/CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.o.provides.build: examples/CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.o

examples/CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.o: examples/CMakeFiles/Regression.dir/flags.make
examples/CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.o: examples/ReClaM/QT/moc_regression.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.o"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.o -c /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/QT/moc_regression.cxx

examples/CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.i"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/QT/moc_regression.cxx > CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.i

examples/CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.s"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/QT/moc_regression.cxx -o CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.s

examples/CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.o.requires:
.PHONY : examples/CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.o.requires

examples/CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.o.provides: examples/CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.o.requires
	$(MAKE) -f examples/CMakeFiles/Regression.dir/build.make examples/CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.o.provides.build
.PHONY : examples/CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.o.provides

examples/CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.o.provides.build: examples/CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.o

examples/ReClaM/QT/moc_regression.cxx: examples/ReClaM/QT/regression.h
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ReClaM/QT/moc_regression.cxx"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && /usr/bin/moc-qt4 -I/home/cg/dev/master-thesis/dev/src/c-cpp/Shark/include -I/home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/../include -I/usr/include/qt4 -I/usr/include/qt4/QtGui -I/usr/include/qt4/QtCore -D_CRT_SECURE_NO_WARNINGS -o /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/QT/moc_regression.cxx /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/ReClaM/QT/regression.h

# Object files for target Regression
Regression_OBJECTS = \
"CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.o" \
"CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.o"

# External object files for target Regression
Regression_EXTERNAL_OBJECTS =

examples/Regression: examples/CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.o
examples/Regression: examples/CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.o
examples/Regression: libshark.so.2.3.0
examples/Regression: /usr/lib/x86_64-linux-gnu/libQtCore.so
examples/Regression: /usr/lib/x86_64-linux-gnu/libQtGui.so
examples/Regression: examples/CMakeFiles/Regression.dir/build.make
examples/Regression: examples/CMakeFiles/Regression.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable Regression"
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Regression.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/Regression.dir/build: examples/Regression
.PHONY : examples/CMakeFiles/Regression.dir/build

examples/CMakeFiles/Regression.dir/requires: examples/CMakeFiles/Regression.dir/ReClaM/QT/regression.cpp.o.requires
examples/CMakeFiles/Regression.dir/requires: examples/CMakeFiles/Regression.dir/ReClaM/QT/moc_regression.cxx.o.requires
.PHONY : examples/CMakeFiles/Regression.dir/requires

examples/CMakeFiles/Regression.dir/clean:
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples && $(CMAKE_COMMAND) -P CMakeFiles/Regression.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/Regression.dir/clean

examples/CMakeFiles/Regression.dir/depend: examples/ReClaM/QT/moc_regression.cxx
	cd /home/cg/dev/master-thesis/dev/src/c-cpp/Shark && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples /home/cg/dev/master-thesis/dev/src/c-cpp/Shark/examples/CMakeFiles/Regression.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/Regression.dir/depend

