#!/bin/bash

#!/bin/bash
#SBATCH --job-name=splitCHR
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=10G
#SBATCH --time=01:00:00
#SBATCH --partition=cpu_p
#SBATCH --qos=icb
#SBATCH --error=splitCHR.%J.%a.err
#SBATCH --output=splitCHR.%J.%a.out



#run script
echo "== This is the scripting step! =="
./split2.sh 
echo "== End of Job =="

