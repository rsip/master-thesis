cmake_minimum_required (VERSION 2.6)
Project(PRPSEvolution)

# The version number.
set (VERSION_MAJOR 1)
set (VERSION_MINOR 1)
set (VERSION_SUB_MINOR 3)

set(VERSION_TARGET_DIR prpsevolution)
# configure a header file to pass some of the CMake settings
# to the source code
configure_file (
    "${VERSION_TARGET_DIR}/PRPSEvolution.h.in"
    "${VERSION_TARGET_DIR}/PRPSEvolution.h"
   )

SET(CMAKE_CXX_FLAGS "-std=c++0x ${CMAKE_CXX_FLAGS} -DNDEBUG -DBOOST_SIGNALS_NO_DEPRECATION_WARNING -I/usr/local/include -I/usr/local/include/Shark2.3")

# the libraries
add_subdirectory(libPermutate)
add_subdirectory(libCalibration)
add_subdirectory(libPRPSSystem)
add_subdirectory(libSolve)
add_subdirectory(libNormalizer)

add_subdirectory(prpsevolution)






