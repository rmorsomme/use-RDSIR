#!/bin/bash
#SBATCH -o slurm/experiment_m_%a.out
#SBATCH -e slurm/experiment_m_%a.err
#SBATCH --mem=3G
#SBATCH -p scavenger
#SBATCH -a 1-5
hostname # print hostname
module load R
Export R_LIBS_USER = ~/R/x86_64-pc-linux-gnu-library/4.1
R CMD BATCH Experiments_array.R
