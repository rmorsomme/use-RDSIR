#!/bin/bash
#SBATCH --output=DCC/experiment_a.out
#SBATCH --error=DCC/experiment_a.err
#SBATCH --mem=2G
#SBATCH --partition=scavenger#
#SBATCH --array=1-2
hostname # print hostname
module load R
Export R_LIBS_USER = ~/R/x86_64-pc-linux-gnu-library/4.1
R CMD BATCH Experiments_array.R
