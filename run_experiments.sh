#!/bin/bash
#SBATCH --output=DCC/experiment.out
#SBATCH --error=DCC/experiment.err
#SBATCH --mem=1G # GB RAM
#SBATCH --partition=scavenger#
hostname # print hostname
module load R
Export R_LIBS_USER = ~/R/x86_64-pc-linux-gnu-library/4.1
R CMD BATCH Experiments.R
