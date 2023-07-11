#!/bin/bash
#BATCH --job-name=plinktest
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem-per-cpu=1G
#SBATCH --time=01:00:00 # D-HH:MM
#SBATCH --partition=cpu_p
#SBATCH --qos=icb
#SBATCH --error=plinktest.%J.err
#SBATCH --output=plinktest.%J.out

# script
echo "Script starts here"
echo "Check plink version"
singularity exec -B /lustre/groups/itg /lustre/groups/itg/shared/containers/worker_3.2.2 plink