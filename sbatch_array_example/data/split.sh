#!/bin/bash
# Bind singularity
#singularity shell -B /lustre/groups/itg /lustre/groups/itg/shared/containers/worker_3.2.2  

for chr in {1..22}; do \
singularity exec -B /lustre/groups/itg /lustre/groups/itg/shared/containers/worker_3.2.2 plink --bfile VSS-chr1-22 --chr $chr --make-bed --out chr_${chr}; \
done
