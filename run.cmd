#!/bin/bash
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --time 00:05:00
#SBATCH --reservation=bootcamp

#set up environment

#module load openmpi/intel-17.0 intel/17.0
module load pgi-llvm/18.5/64

#launch job with srun, not mpirun/mpiexec
./jsolvec.exe
#make c++ OPT="-tp haswell-64 -ta=multicore -Minfo=accel"
