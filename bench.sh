#!/bin/bash
###
#job name
#SBATCH --job-name=imb_bench
#SBATCH --partition=normal_q
#job stdout file
#SBATCH --output=bench.out.%J
#job stderr file
#SBATCH --error=bench.err.%J
#maximum job time in D-HH:MM
#SBATCH --time=0-00:20
#number of parallel processes (tasks) you are requesting - maps to MPI processes
#SBATCH --ntasks=80
#memory per process in MB
#SBATCH --mem-per-cpu=4000
#tasks to run per node (change for hybrid OpenMP/MPI)
#SBATCH --ntasks-per-node=40
#SBATCH --mail-user=amabel.tenghe@helmholtz-munich.de
#SBATCH --mail-type=ALL #Send all job status to the email address above
###

#now run normal batch commands
#module load compiler/intel mpi/intel

#run Intel MPI Benchmarks with mpirun - will automatically pick up Slurm parallel environment
#mpirun $MPI_HOME/intel64/bin/IMB-MPI1