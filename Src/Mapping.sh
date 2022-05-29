#!/bin/bash
path_dyd="/home/jarek/Project_NGS/"

ref_path="/home/jarek/Project_NGS/chromosomes/genom_ref/genom"

output="/home/jarek/Project_NGS/zmapowane/"

l_of_names=(45 46 47)

for number in ${l_of_names[*]};do
	echo "Mapping $number"
	name_f="SRR_"$number
	name_p="SRR_"$number"_hisat.sam"
	name_bam="SRR_"$number"_hisat.bam"
	
	
	hisat2 -q -x $ref_path -1 $path_dyd$name_f$number"/SRR0645"$number"_1.fastq" -2 $path_dyd$name_f$number"/SRR0645"$number"_2.fastq" -S $output$nazwa_f"/"$nazwa_p
	samtools view -Sb $output$nazwa_f"/"$nazwa_p > $output$nazwa_f"/"$nazwa_bam
	rm $output$nazwa_f"/"$nazwa_p
done

