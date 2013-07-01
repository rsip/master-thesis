/**
 * @file AntennaConfiguration.cpp
 * This File contains the main() of the AntennaApp-Project
 * 
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <array>
#include <iostream>
#include <exception>
#include <fstream>
#include <sstream>
#include <string>
#include <chrono>

#include "AntennaConfiguration.h"
#include "../libPermutate/permutate.h"
#include "../libPRPSSystem/prpsevolutionsystem.h"
#include "../libCalibration/calib.h"
#include "../libSolve/solve.h"

using namespace PRPSEvolution;
using std::chrono::duration_cast;
using std::chrono::microseconds;
using std::chrono::milliseconds;
using std::chrono::steady_clock;


template <typename Iterator>
inline bool next_combination(const Iterator first, Iterator k, const Iterator last)
{
   /* Credits: Thomas Draper */
   if ((first == last) || (first == k) || (last == k))
      return false;
   Iterator itr1 = first;
   Iterator itr2 = last;
   ++itr1;
   if (last == itr1)
      return false;
   itr1 = last;
   --itr1;
   itr1 = k;
   --itr2;
   while (first != itr1)
   {
      if (*--itr1 < *itr2)
      {
         Iterator j = k;
         while (!(*itr1 < *j)) ++j;
         std::iter_swap(itr1,j);
         ++itr1;
         ++j;
         itr2 = k;
         std::rotate(itr1,j,last);
         while (last != j)
         {
            ++j;
            ++itr2;
         }
         std::rotate(k,itr2,last);
         return true;
      }
   }
   std::rotate(first,k,last);
   return false;
}

inline int Factorial(int x) {
  return (x == 1 ? x : x * Factorial(x - 1));
}

int main ( int argc, char *argv[ ] ) {
	PRPSEvolution::System sys;

	/**********************************************************************/
	Calibration::performCalibration< ANTENNA_AMOUNT, CALIBRATION_POINTS_AVAILABLE, Doub >
					PC;
	
	/**********************************************************************/
	Permutate::permuteAntennas< ANTENNA_AMOUNT, Permutate::MAX_PERMUTATION_AMOUNT, Doub >
					PA( sys.constants );

	std::cout << "create solution" << std::endl;

	NRmatrix<Doub> A;
	A.assign(3,10, 0.0);
	NRvector<Doub> c_k0;
	c_k0.assign(10, 0.0);

	/**********************************************************************/
	std::cout << "*PreProcessing..." << std::endl;

	Solve::PreProcessing<ANTENNA_AMOUNT, 5, Doub, double> preprocess;

	std::cout << std::endl;
	
	/**********************************************************************/
	std::cout << "*Processing..." << std::endl;
	/**/
	Solve::Process process;

	std::cout << "Performing (1+1)-ES" << std::endl;

	process.setESStrategy(Solve::ESStrategy::OnePlusOne);
	steady_clock::time_point t_0 = steady_clock::now();

	process.findSolution( A, c_k0 );
	
	steady_clock::time_point t_1 = steady_clock::now();

	std::cout << "Performing (mu+lambda)-ES" << std::endl;

	process.setESStrategy( Solve::ESStrategy::MuPlusLambda );
	process.findSolution( A, c_k0 );
	
	steady_clock::time_point t_2 = steady_clock::now();

	std::cout << "t_0-t_1:"
		<< duration_cast<milliseconds>(t_1-t_0).count() << " ms" << std::endl;
	std::cout << "t_1-t_1:"
		<< duration_cast<milliseconds>(t_2-t_1).count() << " ms" << std::endl;
	std::cout << "t_0-t_2:"
		<< duration_cast<milliseconds>(t_2 -t_0).count() << " ms" << std::endl;

	/**********************************************************************/
	
	
// 	read in measurement
//	compute final matrix
// SOLVE
//	display result

// 	std::string s = "1234567";
// 	std::size_t k = 3;
// 	int i = 0;
// 	do
// 	{
// 		std::cout << i++ << "\t" << std::string(s.begin(),s.begin() + k) << std::endl;
// 	}
// 	while(next_combination(s.begin(),s.begin() + k,s.end()));
	
// 	if (argc < 2) {
// 		fprintf(stdout,"%s Version %d.%d.%x\n",
// 			argv[0],
// 			VERSION_MAJOR,
// 			VERSION_MINOR,
// 			VERSION_SUB_MINOR
// 			);
// 		fprintf(stdout,"Usage: %s number\n",argv[0]);
// 		return 1;
// 
// 	}
// 
// 	std::array<NRmatrix<Doub>,MAX_PERMUATION_AMOUNT> mat;
// 
// 	double val = 0.0;
// 	NRmatrix<Doub> mat1(3,3,val);
// 
// 	for( auto& s: mat) {
//   		s = mat1;
// 		val = val + 1.0;
// 		mat1.assign( s.ncols(), s.nrows(), val);
// 		
// 	}
// 
// 	for( auto& s: mat) {
// 		for( int i = 0; i <s.nrows(); i++) {
// 			for( int j = 0; j <s.ncols(); j++) {
// 				std::cout << (double ) s[i][j] << "\t" ;
// 				
// 			}
// 			std::cout << std::endl;
// 		
// 		}
// 		std::cout << std::endl;
// 	}
// 	double inputValue = atof(argv[1]);
// 	double outputValue = sqrt(inputValue);
// 	fprintf(stdout,"The square root of %g is %g\n",
// 		inputValue, outputValue );

	return 0;

}
