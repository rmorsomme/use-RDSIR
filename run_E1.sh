#!/bin/bash
#SBATCH --output=test.out
#SBATCH --error=test.err
#SBATCH --mem=1G # GB RAM
#SBATCH --partition=scavenger#
hostname # print hostname
module load R
Export R_LIBS_USER = ~/R/x86_64-pc-linux-gnu-library/4.0
R CMD BATCH E1.R
