#!/bin/bash

Skrypty/Combine_ref_into_one_geonm.sh



path="/home/jarek/Project_NGS/SRR0645"

end_name=".fastq"

l_of_names_1=(45 46 47)
l_of_names_2=("_1" "_2")


for marker in ${l_of_names_1[*]};do

	for number in ${l_of_names_2[*]};do	

		fastqc $path$l_of_names_1$l_of_names_2$end_name

					done
				done

multiqc .
