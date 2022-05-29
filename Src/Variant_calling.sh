#!/bin/bash

samtools faidx "Project_NGS/chromosomes/whole_genom.fa"

bcftools mpileup  -Ou --fasta-ref  "Project_NGS/chromosomes/whole_genom.fa" "Project_NGS/mapped/SRR_45/45_hisat_sorted.bam" "Project_NGS/mapped/SRR_46/46_hisat_sorted.bam" "Project_NGS/mapped/SRR_47/47_hisat_sorted.bam" > "Project_NGS/mapped/my_raw.bcf" 


bcftools call "Project_NGS/mapped/my_raw.bcf" -vmO z -o "Project_NGS/mapped/Call_all.vcf.gz"


l_of_names_1=(45 46 47)

for number in ${l_of_names_1[*]};do
	
	bcftools mpileup  -Ou --fasta-ref  "Project_NGS/chromosomes/whole_genom.fa" "Project_NGS/mapped/SRR_"$number"/"$number"_hisat_sorted.bam"  > "Project_NGS/mapped/"$number".bcf"
	
	bcftools call "Project_NGS/mapped/"$number".bcf" -vmO z -o "Project_NGS/mapped/"$number".vcf.gz"
done
