#!/bin/bash

path="/Project_NGS/mapped/"

start_name="_hisat.bam"
middle_new="_hisat_sorted.bam"


l_of_names_1=(45 46 47)

for number in ${l_of_names_1[*]};do
	
	name_f="SRR_"$number

	samtools sort $path$name_f"/"$number$start_name -o $path$name_f"/"$number$middle_new
		      
	samtools index $path$name_f"/"$number$middle_new 


done


