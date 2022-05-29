#!/bin/bash

path="/home/jarek/Project_NGS/zmapowane/"

start_name="_hisat.bam"
middle_new="_hisat_sorted.bam"


l_of_names_1=(45 46 47)

for number in ${l_of_names[*]};do
	
	nazwa_f="SRR_"$number

	samtools sort $path$nazwa_f"/"$number$start_name -o $path$nazwa_f"/"$number$middle_new
		      
	samtools index $path$nazwa_f"/"$number$middle_new 


done


