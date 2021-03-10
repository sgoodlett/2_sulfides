#!/bin/bash
#SBATCH --partition=batch
#SBATCH --constraint="EPYC|Intel"
#SBATCH --job-name=ccsd_t_tz--06-7
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=6-20:00:00
#SBATCH --mem=48GB
#SBATCH --output="%x.%j".out    # Standard output log
#SBATCH --error="%x.%j".err     # Standard error log

cd $SLURM_SUBMIT_DIR
export NSLOTS=12

module load PSI4/1.3.2_conda

export PSI_SCRATCH=/scratch/$USER/tmp/$SLURM_JOB_ID
mkdir -p $PSI_SCRATCH

psi4 -n $NSLOTS

rm $PSI_SCRATCH -r

# ignored line -- do not remove
