#!/bin/bash
#SBATCH --output=experiment_a.out
#SBATCH --error=experiment_a.err
#SBATCH --mem=1G
#SBATCH --partition=scavenger#
#SBATCH --array=1-200
hostname # print hostname
module load R
Export R_LIBS_USER = ~/R/x86_64-pc-linux-gnu-library/4.1
R CMD BATCH Experiments_array.R
