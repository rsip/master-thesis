#ifndef _PROCESS_MK_II_H_
	#define _PROCESS_MK_II_H_

#include <chrono>
#include <shark/Algorithms/DirectSearch/CMA.h>
#include <shark/Algorithms/AbstractOptimizer.h>
#include <shark/ObjectiveFunctions/Benchmarks/Benchmarks.h>
#include <shark/ObjectiveFunctions/AbstractObjectiveFunction.h>
#include <nr3/nr3.h>
#include "solve.h"
#include "../libCalibration/calib.h"
#include "ObjectFunctions.h"

#include "../libFitnessPlanCalculator/FitnessPlaneCalculator.h"

#include <nr3/nr3.h>

/** */
#define STUFF(Function,Vars)\
	Function model(Vars);													\
	model.setNumberOfVariables(Vars);										\
	shark::CMA cma;															\
	cma.init( model );														\
	do { cma.step( model ); } while(cma.solution().value > epsilon );	\

#define SOLVE(MODEL)\
	shark::CMA cma;															\
	cma.init( MODEL );														\
	do { cma.step( MODEL ); } while(cma.solution().value > epsilon );	\

#define SOLVE_AND_WRITE(MODEL)\
	shark::CMA cma;															\
	cma.init( MODEL );														\
	do {																	\
		cma.step( MODEL );													\
		f << model.evaluationCounter() << " "								\
						<< cma.solution().value << " "						\
						<< cma.solution().point << " "						\
						<< cma.sigma()										\
						<< std::endl;										\
	} while(cma.solution().value > epsilon									\
		&& model.evaluationCounter() < maxEvaluations);					\

namespace PRPSEvolution {
	namespace Solve {

		/*=============================================================*/
		/**
		 * 
		 */
		class Process_MkII
		{

		public:

			/*=============================================================*/
			/**
			 * Set up basic stuff...
			 */
 			Process_MkII( )
			{
				init();
			}

			/*=============================================================*/
			/**
			 *
			 */
			Process_MkII(
				NRmatrix< Doub > Mat,
				NRvector< Doub > Vect,
				std::string Name
			)
			{
				A.push_back( Mat );
				b.push_back( Vect );
				names.push_back( Name );
// 				Process_MkII();
				init();
			}
			
			/*=============================================================*/
			/**
			 * 
			 */
			Process_MkII(
				NRmatrix< Doub > Mat,
				NRvector< Doub > Vect,
				std::string Name,
				const int mu,
				const int lambda
			) : Mu( mu ), Lambda( lambda )
			{
				A.push_back( Mat );
				b.push_back( Vect );
				names.push_back( Name );
// 				Process_MkII();
				init();
			}
			
			/*=============================================================*/
			/**
			 * 
			 */
			Process_MkII(
				std::vector<NRmatrix< Doub >> Mats,
				std::vector<NRvector< Doub >> Vects,
				std::vector<std::string> Names
			) : A( Mats ), b( Vects ), names( Names )
			{
// 				Process_MkII();
				init();
			}
			
			/*=============================================================*/
			/**
			 *
			 */
			Process_MkII(
				std::vector<NRmatrix< Doub >> Mats,
				std::vector<NRvector< Doub >> Vects,
				std::vector<std::string> Names,
				const int mu,
				const int lambda
			) : A( Mats ), b( Vects ), names( Names ), Mu( mu ), Lambda( lambda )
			{
// 				Process_MkII();
				init();
			}
			
			/*=============================================================*/
			/**
			 * 
			 */
			Process_MkII(
				std::vector<NRmatrix< Doub >> Mats,
				std::vector<NRvector< Doub >> Vects,
				std::vector<std::string> Names,
				std::vector<std::vector<int>> IDs,
				double Epsilon
			) : A( Mats ), b( Vects ), names( Names ), idxs( IDs ), epsilon( Epsilon )
			{
// 				Process_MkII();
				init();
			}

			/*=============================================================*/
			/**
			 *
			 */
			void init()
			{
				// Adjust the floating-point format to scientific and increase output precision.
				std::cout.setf( std::ios_base::scientific );
				std::cout.precision( 10 );

				std::chrono::time_point<std::chrono::system_clock> now = std::chrono::system_clock::now();

				auto duration = now.time_since_epoch();
				/* init the seed */
				auto seed = std::chrono::duration_cast<std::chrono::milliseconds>(duration).count();

				shark::Rng::seed( seed );

			}
			
			/*=============================================================*/
			/**
			 * 
			 */
			int WholeTomatoMkII( int dimension ) {
// 				std::cout << " WholeTomatoMkII:: Start with " << f_count;
				
#ifdef _Write_Result
				std::ofstream f;
				std::ostringstream s;
				if( f_path == "")
					s << f_pathBase << "_" << f_count << ".dat";

				f_path = s.str();

				if( f_path != "" )
					f.open( f_path );

				if( !f.is_open() )
					return -1;

				f_path = "";
				
				for( auto name : names )
					f << name << " ";
				f << dimension << std::endl;

#endif
				auto dim = Solve::ProblemDimensions::WholeTomatoMkII;
				dim += dimension;
				PRPSEvolution::Models::WholeTomatoMkII model( dim );
				
				model.setNumberOfVariables( dim );

				model.setParams( A, b, names );

#ifdef _Write_Result
				/* init the algorithm */
				shark::CMA cma;
				/* if we specify the Mu and Lamdba ourself */
				if( Mu != 0 && Lambda != 0) {
					RealVector p;
					model.proposeStartingPoint( p );
					cma.init(p.size(), Lambda, Mu, p, 3.0 );
					
				} else {
					cma.init( model );

				}
				/* print out selection of mu and lambda */
// 				std::cout << "Mu:" << cma.mu() << " Lambda: " << cma.lambda() << std::endl;

				/* solve.. */
				do {
					cma.step( model );
					auto p = cma.solution().point;
					auto v = p[0]*p[0] + p[1]*p[1] + p[2]*p[2];
					v = std::sqrt(v);

// #ifdef _CoordTransform
					/* get the coords of the ref antenna */
					auto refAntCoords = coords_k0[std::stoi( names[0].substr(0,1))];
// #endif
					f << model.evaluationCounter() << " "
							<< cma.solution().value << " "
							<< cma.solution().point << " "
							<< cma.sigma() << " "
							<<  v 
// #ifdef _CoordTransform
							<< " "
							<< p[0]+refAntCoords[0] << " "
							<< p[1]+refAntCoords[1] << " "
							<< p[2]+refAntCoords[2] << " "
// #endif

	// 									<< cma.solution().value * 1e10 << " "
	// 									<< cma.solution().value / epsilon << " "
	// 									<< (1e-20) * epsilon / cma.solution().value << ""

							<< std::endl;
/*
					for( auto p: cma.solution().point ) {
						std::cout << p << " " ;
					}
					
					std::cout << std::endl;*/
					
// 					if( cma.solution().value == 10000 );
// 						break;
					
				} while(cma.solution().value > epsilon	
					&& model.evaluationCounter() < maxEvaluations);
#else
				SOLVE(model);
#endif

				return 0;
			}

			/*=============================================================*/
			/**
			 *
			 */
			int WholeTomatoReduced( double lambda ) {
// 				std::cout << " WholeTomatoMkII:: Start with " << f_count;

#ifdef _Write_Result
				std::ofstream f;
				std::ostringstream s;
				if( f_path == "")
					s << f_pathBase << "_" << f_count << ".dat";

				f_path = s.str();

				if( f_path != "" )
					f.open( f_path );

				if( !f.is_open() )
					return -1;

				f_path = "";

				for( auto name : names )
					f << name << " ";

#endif
				PRPSEvolution::Models::WholeTomatoReduced model;

				model.setParams( A, b, names, coords_k0, lambda );
				
#ifdef _Write_Result
				/* init the algorithm */
				shark::CMA cma;

				/* if we specify the Mu and Lamdba ourself */
				if( Mu != 0 && Lambda != 0) {
					RealVector p;
					model.proposeStartingPoint( p );
					cma.init(p.size(), Lambda, Mu, p, 3.0 );

				} else {
					cma.init( model );

				}

				auto refAntCoords = coords_k0[ std::stoi( names[0].substr(0,1)) ];
	
				std::cout << "Searching for: "
					<< refAntCoords[0] << " "
					<< refAntCoords[1] << " "
					<< refAntCoords[2]
					<< std::endl;

				std::array<std::array<double,3>,5> lastfive;

				int i = 0;
				double test = .0;
// 				bool test = true;
				/* solve.. */
				do {
					cma.step( model );
					auto p = cma.solution().point;
					auto v = p[0]*p[0] + p[1]*p[1] + p[2]*p[2];
					v = std::sqrt(v);

					f << model.evaluationCounter() << " "
							<< cma.solution().value << " "
							<< cma.solution().point << " "
							<< cma.sigma() << " "
							<<  v
							<< " "
							<< p[0]+refAntCoords[0] << " "
							<< p[1]+refAntCoords[1] << " "
							<< p[2]+refAntCoords[2] << " "
							<< std::endl;


					lastfive[i][0] = p[0];
					lastfive[i][1] = p[1];
					lastfive[i][2] = p[2];
					i++;
					
					test = .0;
					
					for( int j = 0; j < 5; j++ ) {
						test += std::pow( lastfive[j][0] - p[0],2);
						test += std::pow( lastfive[j][1] - p[1],2);
						test += std::pow( lastfive[j][2] - p[2],2);

					}
// 					std::cout << "test = " << test << std::endl; 
					
					if( test < 10e-5 )
						break;

					if( i >= 5 )
						i=0;
// 					for( auto p: cma.solution().point ) {
// 						std::cout << p << " " ;
// 					}

// 					std::cout << std::endl;

				} while( cma.solution().value > epsilon
					&& model.evaluationCounter() < maxEvaluations );

				std::cout << "Fitness: "<< cma.solution().value << std::endl;
				
				std::cout << "Sigma: " << cma.sigma() << std::endl;
				/* print the wavenumbers */
				auto p = cma.solution().point;

				std::cout << "Found Points: ";
				for( auto _p: p )
					std::cout << _p << " ";

				std::cout << std::endl;

				auto wave = model.calcWavenumbers2( 0, 0, 0 );
				std::cout << "Ref Wavenumbers: ";
				for( auto wn: wave )
					std::cout << wn << " | ";

				std::cout << std::endl;
				
				wave = model.calcWavenumbers2( p[0], p[1], p[2] );
				
				std::cout << "Found Wavenumbers: ";
				for( auto wn: wave )
					std::cout << wn << " | ";
				
				std::cout << std::endl << std::endl;
				
#else
				SOLVE(model);
				
#endif

				return 0;
			}
			
			/*=============================================================*/
			/**
			 * Concurrent variant of the WholeTomatoMkII approach
			 * 
			 */
			int cWholeTomatoMkII( int dimension, int n ) {

				std::cerr << " WholeTomatoMkII:: Start with " << n;

#ifdef _Write_Result
				std::ofstream f;
				std::ostringstream s;
				if( f_path == "")
					s << f_pathBase << "_" << n << ".dat";

				f_path = s.str();

				if( f_path != "" )
					f.open( f_path );

				if( !f.is_open() )
					return -1;

				f_path = "";

				for( auto name : names )
					f << name << " ";
				f << dimension << std::endl;

#endif
				auto dim = Solve::ProblemDimensions::WholeTomatoMkII;
				dim += dimension;
				PRPSEvolution::Models::WholeTomatoMkII model( dim );

				model.setNumberOfVariables( dim );

				model.setParams( A, b, names );

#ifdef _Write_Result
				/* init the algorithm */
				shark::CMA cma;
				/* if we specify the Mu and Lamdba ourself */
				if( Mu != 0 && Lambda != 0 ) {
					RealVector p;
					model.proposeStartingPoint( p );
					cma.init( p.size(), Lambda, Mu, p, 3.0 );

				} else {
					cma.init( model );

				}
				/* print out selection of mu and lambda */
// 				std::cout << "Mu:" << cma.mu() << " Lambda: " << cma.lambda() << std::endl;

				/* solve.. */
				do {
					cma.step( model );
					auto p = cma.solution().point;
					auto v = p[0]*p[0] + p[1]*p[1] + p[2]*p[2];
					v = std::sqrt(v);

// #ifdef _CoordTransform
					/* get the coords of the ref antenna */
					auto refAntCoords = coords_k0[std::stoi( names[0].substr(0,1))];
// #endif
					f << model.evaluationCounter() << " "
							<< cma.solution().value << " "
							<< cma.solution().point << " "
							<< cma.sigma() << " "
							<<  v
// #ifdef _CoordTransform
							<< " "
							<< p[0]+refAntCoords[0] << " "
							<< p[1]+refAntCoords[1] << " "
							<< p[2]+refAntCoords[2] << " "
// #endif

	// 									<< cma.solution().value * 1e10 << " "
	// 									<< cma.solution().value / epsilon << " "
	// 									<< (1e-20) * epsilon / cma.solution().value << ""

							<< std::endl;
/*
					for( auto p: cma.solution().point ) {
						std::cout << p << " " ;
					}

					std::cout << std::endl;*/

// 					if( cma.solution().value == 10000 );
// 						break;

				} while(cma.solution().value > epsilon
					&& model.evaluationCounter() < maxEvaluations);
#else
				SOLVE(model);
#endif

				return 0;
			}
			
			/*=============================================================*/
			/**
			 *
			 */
			int WholeTomatoMkII_B( int dimension ) {
#ifdef _Write_Result
				std::ofstream f;
				std::ostringstream s;
				if( f_path == "")
					s << f_pathBase << "_" << f_count << ".dat";

				f_path = s.str();

				if( f_path != "" )
					f.open( f_path );

				if( !f.is_open() )
					return -1;

				f_path = "";

				for( auto name : names )
					f << name << " ";
				f << dimension << std::endl;

#endif
				auto dim = Solve::ProblemDimensions::WholeTomatoMkII;
				dim += dimension;
				PRPSEvolution::Models::WholeTomatoMkII_B model( dim );
				model.setNumberOfVariables( dim );

				model.setParams( A, b, names );

#ifdef _Write_Result
				/* init the algorithm */
				shark::CMA cma;
				/* if we specify the Mu and Lamdba ourself */
				if( Mu != 0 && Lambda != 0) {
					RealVector p;
					model.proposeStartingPoint( p );
					cma.init(p.size(), Lambda, Mu, p, 1.0 );

				} else {
					cma.init( model );

				}
				
				/* solve.. */
				do {
					cma.step( model );
					f << model.evaluationCounter() << " "
									<< cma.solution().value << " "
									<< cma.solution().point << " "
									<< cma.sigma() << " "
// 									<< cma.solution().value * 1e10 << " "
// 									<< cma.solution().value / epsilon << " "
// 									<< (1e-20) * epsilon / cma.solution().value
									<< std::endl;

				} while(cma.solution().value > epsilon
					&& model.evaluationCounter() < maxEvaluations);
#else
				SOLVE(model);
#endif

			}
			
			/*=============================================================*/
			/**
			 * 
			 */
			int WholeTomatoMkI_A( ) {

#ifdef _Write_Result
				std::ofstream f;
				std::ostringstream s;
				if( f_path == "")
					s << f_pathBase << "_" << f_count << ".dat";

				f_path = s.str();

				if( f_path != "" )
					f.open( f_path );

				if( !f.is_open() )
					return -1;

				f_path = "";
				f << names[0] << std::endl;
				
#endif
				auto dim = Solve::ProblemDimensions::WholeTomatoMkI;
				
				auto model = PRPSEvolution::WholeTomatoMkI_A( dim );
				
				model.setNumberOfVariables( dim );

				model.setParams( A[0], b[0] );

#ifdef _Write_Result
				SOLVE_AND_WRITE(model);
#else
				SOLVE(model);
#endif

			}
			
			/*=============================================================*/
			/**
			 *
			 */
			int WholeTomatoMkI_B( ) {

#ifdef _Write_Result
				std::ofstream f;
				std::ostringstream s;
				if( f_path == "")
					s << f_pathBase << "_" << f_count << ".dat";

				f_path = s.str();

				if( f_path != "" )
					f.open( f_path );

				if( !f.is_open() )
					return -1;

				f_path = "";
				f << names[0] << std::endl;

#endif
				auto dim = Solve::ProblemDimensions::WholeTomatoMkI_B;

				auto model = PRPSEvolution::WholeTomatoMkI_B( dim );

				model.setNumberOfVariables( dim );

				model.setParams( A[0], b[0] );

#ifdef _Write_Result
				SOLVE_AND_WRITE(model);
#else
				SOLVE(model);
#endif

			}
			
			/*=============================================================*/
			/**
			 *
			 */
			int Process_MkII_test( ) {

#ifdef _Write_Result
				std::ofstream f;
				std::ostringstream s;
				if( f_path == "")
					s << f_pathBase << "_" << f_count << ".dat";

				f_path = s.str();

				if( f_path != "" )
					f.open( f_path );

				if( !f.is_open() )
					return -1;

				f_path = "";
#endif
				// Adjust the floating-point format to scientific and increase output precision.
				std::cout.setf( std::ios_base::scientific );
				std::cout.precision( 10 );

				std::chrono::time_point<std::chrono::system_clock> now = std::chrono::system_clock::now();

				auto duration = now.time_since_epoch();
				auto millis = std::chrono::duration_cast<std::chrono::milliseconds>(duration).count();

				Rng::seed(millis);

				// Instantiate both the problem and the optimizer.
				shark::Sphere model( ProblemDimensions::Sphere );
				model.setNumberOfVariables( ProblemDimensions::Sphere );
				shark::CMA cma;

				// Initialize the optimizer for the objective function instance.
				cma.init( model );

				// Iterate the optimizer until a solution of sufficient quality is found.
				do {
					cma.step( model );

					if( !printLastSolutionOnly ) {
					// Report information on the optimizer state and the current solution to the console.
						f << model.evaluationCounter() << " "
							<< cma.solution().value << " "
							<< cma.solution().point << " "
							<< cma.sigma() << std::endl;
					}
				} while(cma.solution().value > epsilon );

				if( printLastSolutionOnly ) {
					f << model.evaluationCounter() << " "
						<< cma.solution().value << " "
						<< cma.solution().point << " "
						<< cma.sigma() << std::endl;
				}

				f.close();
				
			}

			/*=============================================================*/
			/**
			 * 
			 */
			int EvolutionaryCalibration(  ) {

#ifdef _Write_Result
				std::ofstream f;
				std::ostringstream s;
				if( f_path == "")
					s << f_pathBase << "_" << f_count << ".dat";

				f_path = s.str();

				if( f_path != "" )
					f.open( f_path );

				if( !f.is_open() )
					return -1;

				f_path = "";
#endif

				// Adjust the floating-point format to scientific and increase output precision.
				std::cout.setf( std::ios_base::scientific );
				std::cout.precision( 10 );

				std::chrono::time_point<std::chrono::system_clock> now = std::chrono::system_clock::now();

				auto duration = now.time_since_epoch();
				auto millis = std::chrono::duration_cast<std::chrono::milliseconds>(duration).count();

				Rng::seed(millis);

				// Instantiate both the problem and the optimizer.
				PRPSEvolution::Models::EvolutionaryCalibration model;

				model.setParams( A[0], b[0] );
				
				shark::CMA cma;

				// Initialize the optimizer for the objective function instance.
				cma.init( model );

				// Iterate the optimizer until a solution of sufficient quality is found.
				do {
					cma.step( model );

					auto p = cma.solution().point;
					auto v = p[0]*p[0] + p[1]*p[1] + p[2]*p[2];
					v = std::sqrt(v);

// #ifdef _CoordTransform
					/* get the coords of the ref antenna */
					auto refAntCoords = coords_k0[std::stoi( names[0].substr(0,1))];
// #endif
					f << model.evaluationCounter() << " "
							<< cma.solution().value << " "
							<< cma.solution().point << " "
							<< cma.sigma() << " "
							<<  v
// #ifdef _CoordTransform
							<< " "
							<< p[0]+refAntCoords[0] << " "
							<< p[1]+refAntCoords[1] << " "
							<< p[2]+refAntCoords[2] << " "
// #endif

	// 									<< cma.solution().value * 1e10 << " "
	// 									<< cma.solution().value / epsilon << " "
	// 									<< (1e-20) * epsilon / cma.solution().value << ""

							<< std::endl;
							
// 					if( !printLastSolutionOnly ) {
// 					// Report information on the optimizer state and the current solution to the console.
// 						f << model.evaluationCounter() << " "
// 							<< cma.solution().value << " "
// 							<< cma.solution().point << " "
// 							<< cma.sigma() << std::endl;
// 					}
				} while(cma.solution().value > epsilon
					&& model.evaluationCounter() < maxEvaluations );

				if( printLastSolutionOnly ) {
					f << model.evaluationCounter() << " "
						<< cma.solution().value << " "
						<< cma.solution().point << " "
						<< cma.sigma() << std::endl;
				}

				f.close();

			}

			/*=============================================================*/
			void calcFitnessMkII ( int offset )
			{
				PRPSEvolution::Models::WholeTomatoMkII model( 7 );
				model.setNumberOfVariables( 7 );
				
				model.setParams( A, b, names );

				Support::FitnessPlaneCalculator<7> fpc( offset );
				
				std::cout << " calculate " << std::endl;
				fpc.calculate( model );

				
			}

			/*=============================================================*/
			void calcFitnessMkIIReduced ( int offset, const double _lambda )
			{
				PRPSEvolution::Models::WholeTomatoReduced model;

				model.setParams( A, b, names, coords_k0, _lambda );
				
// 				PRPSEvolution::Models::WholeTomatoMkII model( 7 );
// 				model.setNumberOfVariables( 7 );
				
// 				model.setParams( A, b, names );

				Support::FitnessPlaneCalculator<3> fpc( offset );

				std::cout << " calculate " << std::endl;
				fpc.calculate( model );


			}
			
			/*=============================================================*/
			/**
			 * 
			 */
			void setEpsilon( double Value) { epsilon = Value; }

			/*=============================================================*/
			/**
			 * 
			 */
			void setOutputFilePath( std::string file ) { f_path = file; }

			void setOutputFilePathBase( std::string file ) { f_pathBase = file; }

			/*=============================================================*/
			/**
			 * 
			 */
			void setPrintLastOnly( void ) { printLastSolutionOnly = !printLastSolutionOnly; }

			/*=============================================================*/
			/**
			 * increment the File counter 
			 */
			void incrementFileCounter( void ) { f_count++; }

			/*=============================================================*/
			/**
			 * increment the File counter
			 */
			void setFileCounter( int count ) { f_count=count; }

			/*=============================================================*/
			void resetFileCounter() { f_count = 0; }

			/*=============================================================*/
			void toggleVariant() { VariantA = !VariantA; }

			/*=============================================================*/
			/**
			 * @param[in] evaluations The new value for the evaluations
			 * @todo remove typo
			 */
			void setMaxEvauations( const int evaluations) { maxEvaluations = evaluations; }

			/*=============================================================*/
			void setAntennaCoords( std::array< NRvector< Doub >, 8 > coords )
			{
				for( auto c : coords ) {
					coords_k0.push_back( c );
					
				}

// 				int i = 0;
// 				for( auto vec : coords_k0 ) {
// 					std::cout << vec[0] << " "
// 						<< vec[1] << " "
// 						<< vec[2] << std::endl;
// 
// 				}

			}
			
		private:
			/* store the antenna coordinates */
			std::vector<NRvector< Doub >> coords_k0;
			
			/** The Matrices we need to solve the Problem */
			std::vector<NRmatrix< Doub >> A;

			/** The b-vector needed to find a Solution */
			std::vector<NRvector< Doub >> b;

			std::vector<std::string> names;

			std::vector<std::vector<int>> idxs;

			/* init with base epsilon */
			double epsilon = 1e-21;

			std::string f_path;
			
			std::string f_pathBase;
			
			bool printLastSolutionOnly = false;

			int f_count = 0;

			int maxEvaluations = 30000;

			int VariantA = true;

			int Lambda = 0;
			
			int Mu = 0;

		};
	}
}

#endif