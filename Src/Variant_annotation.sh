#!/bin/bash

l_of_names_1=(45 46 47 "Call_all")
path_dyd="/home/jarek/Project_NGS/zmapowane/VCF/"
for number in ${l_of_names_1[*]};do	
	java -Xmx4g -jar "/home/jarek/snpEff/snpEff.jar" -c "/home/jarek/snpEff/snpEff.config" R64-1-1.105 $path_dyd$number"_filtered.recode.vcf" > $path_dyd$number"_annotaed.EFF.vcf"


done

