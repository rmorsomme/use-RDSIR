#!/bin/bash
#SBATCH -o DCC/experiment_N_%a.out
#SBATCH -e DCC/experiment_N_%a.err
#SBATCH --mem=5G
#SBATCH -p scavenger
#SBATCH -a 2-5
hostname # print hostname
module load R
Export R_LIBS_USER = ~/R/x86_64-pc-linux-gnu-library/4.1
R CMD BATCH Experiments_array.R
