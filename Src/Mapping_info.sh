#!/bin/bash
path_dyd="Project_NGS/mapped/"

l_of_names=(45 46 47)

for number in ${l_of_names[*]};do
	echo "Mapping info $number"
	
	name_bam=$number"_hisat_sorted.bam"
	name_flag=$number"_hisat_sorted_flagstat.txt"
	
	samtools flagstat $path_dyd"SRR_"$number"/"$nazwa_bam > $path_dyd"SRR_"$number"/"$nazwa_flag
done

