#!/bin/bash 

## Job Name 
#SBATCH --job-name=SHAMP


## Allocation Definition
#SBATCH --account=csde
#SBATCH --partition=csde

## Nodes
#SBATCH --nodes=1

## Tasks per node
#SBATCH --ntasks-per-node=6

## Walltime
#SBATCH --time=12-12 

## E-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=dth2@uw.edu

## Memory per node
#SBATCH --mem=52G

## Specify the working directory
#SBATCH --workdir=/gscratch/csde/deven/SHAMP/scenarios/base


. /suppscr/csde/sjenness/spack/share/spack/setup-env.sh
module load r-3.5.0-gcc-8.1.0-bcqjjkd
module load gcc-8.1.0-gcc-4.4.7-eaajvcy



Rscript sim.R