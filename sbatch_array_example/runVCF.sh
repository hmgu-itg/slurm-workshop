#!/bin/bash

out=`basename $1`
echo "Counting for $1"
zgrep -v '#' $1 | wc -l > ${out}.snpcount

exitVal=$?
if [[ $exitVal -ne 0 ]]; then
        echo "Error: runVCF.sh exited abnormally."
        exit 1
fi
echo "Done"