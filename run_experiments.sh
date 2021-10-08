#!/bin/bash
#SBATCH -o slurm/experiment.out
#SBATCH -e slurm/experiment.err
#SBATCH --mem=2G
#SBATCH -p scavenger
hostname # print hostname
module load R
Export R_LIBS_USER = ~/R/x86_64-pc-linux-gnu-library/4.1
R CMD BATCH Experiments.R
