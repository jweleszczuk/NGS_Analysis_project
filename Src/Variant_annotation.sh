#!/bin/bash

l_of_names_1=(45 46 47 )
path_dyd="Project_NGS/mapped/VCF/"
for number in ${l_of_names_1[*]};do	
	java -Xmx4g -jar "snpEff/snpEff.jar" -c "snpEff/snpEff.config" R64-1-1.105 $path_dyd$number"_filtered.recode.vcf" > $path_dyd$number"_annotaed.EFF.vcf"
done

