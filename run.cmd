#!/bin/bash
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --time 00:05:00
#SBATCH --reservation=bootcamp

#set up environment

#module load openmpi/intel-17.0 intel/17.0
#module load pgi/17.3/64

#launch job with srun, not mpirun/mpiexec
./jsolvec.exe
#make c++ OPT="-tp haswell -ta=multicore -Minfo=accel"
