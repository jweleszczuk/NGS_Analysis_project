#!/bin/bash

l_of_names_1=(45 46 47)

for number in ${l_of_names_1[*]};do

	vcftools --gzvcf $number".vcf.gz" --remove-indels --max-missing 0.8 --minGQ 20  --recode-INFO-all --recode  --out $number"_filtered"

done

