cmake_minimum_required (VERSION 2.6)

include_directories (${ANTCONFAPP_SOURCE_DIR}/libPermutate)
include_directories (${ANTCONFAPP_SOURCE_DIR}/libCalibration)
include_directories (${ANTCONFAPP_SOURCE_DIR}/libPRPSSystem)
include_directories (${ANTCONFAPP_SOURCE_DIR}/libSolve)
include_directories (${ANTCONFAPP_SOURCE_DIR}/libNormalizer)

link_directories ( ${ANTCONFAPP_BINARY_DIR}/libPermutate )
link_directories ( ${ANTCONFAPP_BINARY_DIR}/libCalibration )
link_directories ( ${ANTCONFAPP_BINARY_DIR}/libPRPSSystem )
link_directories ( ${ANTCONFAPP_BINARY_DIR}/libSolve )
link_directories ( ${ANTCONFAPP_BINARY_DIR}/libNormalizer )

set(test_SRCS PRPSEvolution.cpp)
set(test_LIBS
	Permutate
	Calibration
	PRPSEvolutionSystem
	Solve
	Normalizer
	shark
	shark3.0b
	pthread
	boost_system
	boost_filesystem
	boost_program_options
	boost_signals
	boost_serialization
	)

add_executable( PRPSEvolution ${test_SRCS} )



target_link_libraries ( PRPSEvolution ${test_LIBS} )


# 	-lpthread -lboost_system -lboost_filesystem -lboost_program_options -lboost_signals -lboost_serialization
