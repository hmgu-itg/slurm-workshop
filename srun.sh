#!/bin/bash

#Request resources for interactive sessioni
# First check for nodes with free resources using: sinfo --state=idle,  then run one of the following:

#srun -p cpu_p -q cpu_normal  --time=1-0:0:0 --mem=5G --pty /bin/bash

srun -p interactive_cpu_p -q interactive_cpu --time=0-10:0:0 --mem=10G --pty /bin/bash
