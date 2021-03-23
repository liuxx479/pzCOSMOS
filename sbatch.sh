#! /bin/bash

#SBATCH --nodes=1
#SBATCH --tasks-per-node=68
###32
#SBATCH --cpus-per-task=1
#SBATCH -C knl
##haswell
#SBATCH -t 00:30:00
#SBATCH -J cosmos_kappa
#SBATCH -o cosmos_kappa.o%j
#SBATCH -e cosmos_kappa.e%j
#SBATCH --qos=debug
##regular
#SBATCH -A mp107
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jialiu@berkeley.edu

#source /global/common/software/m3035/conda-activate.sh 3.7

#module load python3
srun python /global/homes/j/jialiu/pzCOSMOS/kappaTNG_COSMOS.py
