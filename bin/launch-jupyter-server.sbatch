#!/bin/bash --login
#SBATCH --time 2:00:00
#SBATCH --cpus-per-task=4  
#SBATCH --mem-per-cpu=9G
#SBATCH --partition=debug 
#SBATCH --job-name=launch-jupyter-server
#SBATCH --mail-type=ALL
#SBATCH --output=bin/%x-%j-slurm.out
#SBATCH --error=bin/%x-%j-slurm.err

# use srun to launch Jupyter server in order to reserve a port
export PROJECT_DIR="$PWD"
srun --resv-ports=1 "$PROJECT_DIR"/bin/launch-jupyter-server.srun
