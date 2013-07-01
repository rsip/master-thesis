/**
 * @file solve.h
 * @date 2013|Jun|25
 *
 *
 */
#ifndef __LIB_SOLVE_H
	#define __LIB_SOLVE_H

#include <stdio.h>
#include <stdlib.h>
#include <iterator>
#include <iostream>
#include <algorithm>
#include <array>
#include <chrono>

#include "../include/coords.h"
#include "../include/PRPSEvolution.h"
#include "../include/PRPSEvolutionSolveExeptions.h"
#include "../include/PRPSEvolutionFIOExeptions.h"
#include "../include/PRPSError.h"
#include "../libPermutate/permutate.h"
#include "../libPRPSSystem/prpsevolutionsystem.h"

#include "nr3/nr3.h"
#include "nr3/svd.h"

#include <EALib/ChromosomeCMA.h>
#include <SharkDefs.h>
#include <EALib/PopulationT.h>
#include <EALib/ObjectiveFunction.h>

namespace PRPSEvolution {
	namespace Solve {

		using namespace PRPSEvolution::Permutate;
		using namespace std;
		
		using std::chrono::duration_cast;
		using std::chrono::microseconds;
		using std::chrono::milliseconds;
		using std::chrono::steady_clock;
		
		/*******************************************************************/
		/* Enums ***********************************************************/
		/*******************************************************************/

		/**
		 * Represents a selection method for the Matrix A that will be used
		 * in the solution
		 */
		enum SelectBy {
			ConditionNumber, Random

		};

		const int nConfigsForProcessing = 1;
			
		/*******************************************************************/
		/* PreProcessing Class *********************************************/
		/*******************************************************************/
		
		template < std::size_t N_ANTA, std::size_t N_Configs, typename T, typename T_Measure >
		class PreProcessing
		{
		/*******************************************************************/
		/*******************************************************************/
		/*******************************************************************/
		public:
			/** determines how many Configurations will solved for the Wavenumber */

			std::array<AntennaPermutations< N_ANTA, T >,N_Configs>
				matricesForSolution;

			std::array<NRvector< T >, N_Configs>
				vectorsForSolution;
				
			PreProcessing( );

		private:
			/** the container for the Phase data */
			std::array<T_Measure,N_ANTA> measuredPhase;
			
			/** the container for the Amp data */
			std::array<T_Measure,N_ANTA> measuredAmp;
			
			/** the container for the normailzed data */
			std::array<T_Measure,N_ANTA> normThetas;
			
			/** the container for the selected matrices */
			std::array<AntennaPermutations< N_ANTA, T >,nConfigsForProcessing>
				selectedConfs;

			/***************************************************************/
			/***************************************************************/
			/***************************************************************/
			/**
			 * Read in the measurements from a file
			 */
			int rMeasurementsFromFile( );

			/**
			 */
			std::array<T, N_ANTA> normalizeThetas( );

			/**
			 */
			int selectReferenceAntennaForProcessing( PRPSEvolution::Solve::SelectBy selectby );

			/**
			 * This will select the matrices for the Processing and will return the array filed with them
			 * @param[in] method The selection Method
			 * 
			 */
			std::array<AntennaPermutations< N_ANTA, T >,nConfigsForProcessing>
				selectMatsForProcessing( PRPSEvolution::Solve::SelectBy method );

		};

		template < std::size_t N_ANTA, std::size_t N_Configs, typename T, typename T_Measure >
		PreProcessing<N_ANTA,N_Configs,T,T_Measure>::PreProcessing() {
			rMeasurementsFromFile( );

			normThetas = normalizeThetas();

			selectedConfs = selectMatsForProcessing( SelectBy::ConditionNumber );
			
			
		}
		
		/******************************************************************/
		/******************************************************************/
		/******************************************************************/
		
		/**
		 * Collect the fitness functions.
		 * Make sure they are static so we can function-pointer to them.
		 * 
		 */
		template < typename T >
		struct Ueber9000
		{
			double (Ueber9000<double>::*evaluate)( const ChromosomeT< double >& );
			
			/**/
			NRmatrix< T > A;
			/**/
			NRvector< T > c_k0;

// 			Ueber9000(){};
// 			Ueber9000(const Ueber9000 &me) : A(me.A), c_k0(me-c_k0) {
// 				evaluate = &WholeTomatoeApproach;
// 				
// 			}
			
			/**
			 * construc Ueber 9000
			 * @param[in]
			 */
			Ueber9000( const NRmatrix< T > A_selected,
					   const NRvector< T > c_k0_selected ) : A( A_selected ), c_k0( c_k0_selected ) {

// 				evaluate = &Ueber9000<double>::WholeTomatoeApproach;
				evaluate = &Ueber9000<double>::fitnessSphere;
				
			}
			
			double
			WholeTomatoeApproach( const ChromosomeT< double > &x )
			{
				double res;
				
				/* call function */
				res = WholeTomatoeApproach( A, x, c_k0 );

				return res;
				
			}

			/**
			 * This approach will solve calculate the 10x3 matrix described
			 * in the Master-Thesis of C.Gnip
			 * Basically solves the linear equation @f[r=\mathbf{Ax}-\mathbf{b}@f]
			 * @param[in] A The 10x3 Matrix that ist used in this solution
			 * @param[in] x The vector containing the variables
			 * @param[in] c_k0 Representing the vector b
			 * @return The residuum of the equation system representing the "Fitness" of the given Solution in @see x
			 * 
			 */
			inline double WholeTomatoeApproach( const NRmatrix<T> &A, const ChromosomeT< double > &x, const NRvector<T> &c_k0 )
			{
				double res;
				double prod_Ax[3];
				
				for( int i = 0; i < A.nrows(); i++ )
					for( int j = 0; j < A.ncols(); j++ )
						prod_Ax[i] += A[i][j]*x[j];
						
				/* multiply the matrix with the vector */
				/* sum up */
				res = (prod_Ax[0] - c_k0[0]) * (prod_Ax[0] - c_k0[0]);
				res += (prod_Ax[1] - c_k0[1]) * (prod_Ax[1] - c_k0[1]);
				res += (prod_Ax[2] - c_k0[2]) * (prod_Ax[2] - c_k0[2]);

				return res;

			}

			/***************************************************************/
			/***************************************************************/
			/***************************************************************/
			/**
			 * Approach 2 based on the thoughts of S. Winter.
			 * Here we want to optimize the wavenumbers
			 *
			 */
			double WavenumberVariation( const ChromosomeT< double > &n )
			{
				throw "Not implemented exeption";
			
			}

			/**
			 * Approach 3 based on the thoughts of by S. Winter
			 * 
			 */
			double PositionVariation( const ChromosomeT< double > &pos )
			{
				throw "Not implemented exeption";

			}
			
			/**
			 * This ist the fitness function used in the EA algorithm
			 *
			 */
			double fitnessSphere( const ChromosomeT<double> &c )
			{
				double sum = Shark::sqr(c[0]);
				for(unsigned i=1; i<c.size(); i++) sum += Shark::sqr(c[i]);
				return sum;

			}

			double fitnessRosenbrock( const ChromosomeT<double> &c )
			{
				double sum = 0.;

				for(unsigned i=0; i<c.size(); i++) {
					sum += ( 100 * Shark::sqr( c[i+1] - Shark::sqr(c[i]) )
								+ Shark::sqr(c[i]-1));

				}

//
// 				for(unsigned i=1; i<c.size(); i++) sum += Shark::sqr(c[i]);
				return sum;

			}

			double fitnessAckley( const std::vector< double >& x )
			{
				const double A = 20.;
				const double B = 0.2;
				const double C = M_2PI;

				unsigned i, n;
				double   a, b;

				for (a = b = 0., i = 0, n = x.size(); i < n; ++i) {
					a += x[ i ] * x[ i ];
					b += cos(C * x[ i ]);
				}

				return -A * exp(-B * sqrt(a / n)) - exp(b / n) + A + M_E;
			}

		};
		
		/******************************************************************/
		/******************************************************************/
		/******************************************************************/
		
		/**
		 * Find solutions for the possible matrices
		 * 
		 */
		class Process
		{
		public:

			Ueber9000<Doub> *ueber9000;
// 			double (Ueber9000<double>::*evaluate)( const ChromosomeT< double >& );
			
			Process( const NRmatrix< Doub > A_selected,
					   const NRvector< Doub > c_k0_selected ) {

				Ueber9000<Doub> t( A_selected, c_k0_selected );
				ueber9000 = &t;
				
				std::cout << "Performing (1+1)-ES" << std::endl;

				steady_clock::time_point t_0 = steady_clock::now();
				
				OnePlusOneES();

				steady_clock::time_point t_1 = steady_clock::now();
				
				std::cout << "Performing (mu+lambda)-ES" << std::endl;
				
				Another();

				steady_clock::time_point t_2 = steady_clock::now();

				std::cout << "t_0-t_1:" << duration_cast<milliseconds>(t_1-t_0).count() << " ms" << std::endl;
				std::cout << "t_1-t_1:" << duration_cast<milliseconds>(t_2-t_1).count() << " ms" << std::endl;
				std::cout << "t_0-t_2:" << duration_cast<milliseconds>(t_2 -t_0).count() << " ms" << std::endl;
				
			}
			/* latch in model */
			/* compute solution */
			/* dump/ display results */

			ChromosomeT<double> OnePlusOneES() {
				// EA parameters
				const unsigned Dimension      = 10;
				const unsigned Iterations     = 20000;
				const double   MinInit        = -3.;
				const double   MaxInit        = 7.;
				const double   GlobalStepInit = 5.;

// 				Rosenbrock	fitnessR( Dimension );
				
				ChromosomeCMA parent(Dimension),
								offspring(Dimension);

				double fitnessParent, fitnessOffspring;

				parent.init( Dimension, GlobalStepInit, MinInit, MaxInit );

// 				fitnessParent=fitnessSphere( parent );
				fitnessParent = (ueber9000->*ueber9000->evaluate)( parent );
				unsigned int t;
				// loop over generations
				for ( t = 0; t < Iterations; t++) {
					offspring = parent;
					offspring.mutate();

					fitnessOffspring =  (ueber9000->*ueber9000->evaluate)( offspring );
// 					fitnessOffspring = fitnessSphere( offspring );

					bool success = ( fitnessOffspring < fitnessParent );

					if( success ) {
						offspring.updateCovariance();
						parent = offspring;
						fitnessParent = fitnessOffspring;
					}
					parent.updateGlobalStepsize( success );

					if( fitnessParent < 1e-18 )
						break;
// 					std::cout << "Fitness: " << fitnessParent << '\r';
				}
				std::cout << t << " Done \tFinal Fitness: " << fitnessParent << endl;
				for(unsigned i=0; i < Dimension; i++)
					std::cout << i << " " << parent[i] << " " ;

				std::cout << std::endl;

				return parent;
				
			}

			void Another() {
				const unsigned Mu           = 30;
				const unsigned Lambda       = 100;
				const unsigned Dimension    = 10;
				const unsigned Iterations   = 2000;
				const unsigned Interval     = 10;
				const unsigned NSigma       = 1;

				const double   GlobalStepInit = 5.;
				

				const double   MinInit        = -3.;
				const double   MaxInit        = 7.;
				const double   SigmaInit    = 3;

				/* activate elitist strategy */
				const bool     PlusStrategy = true;

				unsigned       i, t;

				// initialize random number generator
				Rng::seed(1234);

				// define populations
				PopulationT<double> parents(Mu,     ChromosomeT< double >(Dimension),
								ChromosomeT< double >(NSigma));
				PopulationT<double> offsprings(Lambda, ChromosomeT< double >(Dimension),
									ChromosomeT< double >(NSigma));

				// minimization task
				parents   .setMinimize();
				offsprings.setMinimize();

				// initialize parent population
				for (i = 0; i < parents.size(); ++i) {
					parents[ i ][ 0 ].initialize(MinInit,   MaxInit);
					parents[ i ][ 1 ].initialize(SigmaInit, SigmaInit);
				}

				// selection parameters (number of elitists)
				unsigned numElitists = PlusStrategy ? Mu : 0;

				// standard deviations for mutation of sigma
				double     tau0 = 1. / sqrt(2. * Dimension);
				double     tau1 = 1. / sqrt(2. * sqrt((double)Dimension));

				// evaluate parents (only needed for elitist strategy)
				if (PlusStrategy)
					for (i = 0; i < parents.size(); ++i)
						parents[ i ].setFitness((ueber9000->*ueber9000->evaluate)(parents[ i ][ 0 ]));

				std::vector<double> fitness;
				fitness.reserve(10);
				
				// iterate
				for (t = 0; t < Iterations; ++t) {
					// generate new offsprings
					for (i = 0; i < offsprings.size(); ++i) {
						// select two random parents
						Individual& mom = parents.random();
						Individual& dad = parents.random();

						// recombine object variables discrete, step sizes intermediate
						offsprings[ i ][ 0 ].recombineDiscrete(mom[ 0 ], dad[ 0 ]);
						offsprings[ i ][ 1 ].recombineGenIntermediate(mom[ 1 ], dad[ 1 ]);

						// mutate object variables normal distributed,
						// step sizes log normal distributed
						offsprings[ i ][ 1 ].mutateLogNormal(tau0,  tau1);
						offsprings[ i ][ 0 ].mutateNormal(offsprings[ i ][ 1 ], true);
					}

					// evaluate objective function (parameters in chromosome #0)
					for (i = 0; i < offsprings.size(); ++i)
						offsprings[ i ].setFitness((ueber9000->*ueber9000->evaluate)(offsprings[ i ][ 0 ]));

					// select (mu,lambda) or (mu+lambda)
					parents.selectMuLambda(offsprings, numElitists);

					// print out best value found so far
					if( parents.best().fitnessValue() < 1e-18 )
						break;

// 					/* convergenzkriterium */
// 					if( t > 10 ) {
// 						double sum = 0.;
// 						for( auto i : fitness ) {
// 							sum += i;
// // 						
// 						}						
// 						sum -= fitness.size()*fitness[0];
// 						sum = abs( sum );
// 
// 						if( sum < .1) break;
// 						fitness.erase( fitness.begin(), fitness.begin() + 1 );
// 
// 					}
// // 					fitness.resize(9);
// 					fitness.push_back( parents.best().fitnessValue() );
					
				}
				
				auto p = parents.best();
				std::cout << t << " Done \tFinal Fitness: " << parents.best().fitnessValue() << endl;
				
				for( int i = 0; i < 10; i++ )
					std::cout << i << " " << p[0][i] << " " ;
				std::cout << std::endl;
				
			}
		};

		class PostProcessing
		{
		public:
			PostProcessing(){

			}
			/* check plausibility of result */
			/* compute Wavenumbers */
			/* report success/ failure */
			
		};
	}
}
#endif