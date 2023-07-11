#!/bin/bash

#!/bin/bash
#SBATCH --job-name=countSNP
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem-per-cpu=1G
#SBATCH --time=01:00:00
#SBATCH --partition=normal_q
#SBATCH --error=countSNP.%J.%a.err
#SBATCH --output=countSNP.%J.%a.out
##SBATCH --array=1-5


#run script
echo "== This is the scripting step! =="
./runVCF.sh chr$SLURM_ARRAY_TASK_ID.vcf.gz
echo "== End of Job =="