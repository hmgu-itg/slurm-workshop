#!/bin/bash
#SBATCH --job-name=HelloWorld
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem-per-cpu=1G
#SBATCH --time=01:00:00
#SBATCH --partition=normal_q
#SBATCH --error=job.%J.err
#SBATCH --output=job.%J.out


#run script
echo "== This is the scripting step! =="
sleep 5
./example2.sh
echo "== End of Job =="