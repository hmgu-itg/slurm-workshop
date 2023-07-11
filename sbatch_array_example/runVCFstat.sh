#!/bin/bash

out=`basename $1`
scriptPath="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"
outDir="${scriptPath}/output"

echo "$PWD"
echo "${scriptPath}"
echo "output directory is: ${outDir}"
grep -v "#" $1 | wc -l > ${outDir}/${out}.snpcount

#missing site frequency for potential filtering purposes on a per site and overall individual basis
vcftools --gzvcf $1   --missing-site --out ${outDir}/${out}
vcftools --gzvcf $1  --missing-indv --out ${outDir}/${out}


#determine the depth of coverage by individual
#vcftools --gzvcf $1  --depth --out ${outDir}/${out}