#!/bin/bash
#SBATCH -o slurm/experiment_thin_%a.out
#SBATCH -e slurm/experiment_thin_%a.err
#SBATCH --mem=1G
#SBATCH -p scavenger
#SBATCH -a 0-3
hostname # print hostname
module load R
Export R_LIBS_USER = ~/R/x86_64-pc-linux-gnu-library/4.1
R CMD BATCH Experiments_array.R
