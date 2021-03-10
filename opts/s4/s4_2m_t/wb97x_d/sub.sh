#!/bin/bash
#SBATCH --job-name=2m_t_xd   		# Job name (testBowtie2)
#SBATCH --partition=batch		# Partition name (batch, highmem_p, or gpu_p)
#SBATCH --ntasks=1			# Run job in single task, by default using 1 CPU core on a single node
#SBATCH --cpus-per-task=2	 	# CPU core count per task, by default 1 CPU core per task
#SBATCH --mem=18G			# Memory per node (4GB); by default using M as unit
#SBATCH --time=6-12:00:00              	# Time limit hrs:min:sec or days-hours:minutes:seconds
#SBATCH --export=NONE                   # Do not export any user’s explicit environment variables to compute node
#SBATCH --output=%x_%j.out		# Standard output log, e.g., testBowtie2_12345.out
#SBATCH --error=%x_%j.err		# Standard error log, e.g., testBowtie2_12345.err


cd $SLURM_SUBMIT_DIR			# Change directory to job submission directory (Optional!)

ml PSI4/1.4.0_conda
source conda ${ROOT_PSI4}

psi4 input.dat
conda deactivate
